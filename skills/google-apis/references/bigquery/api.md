# BigQuery API - API Reference

**Version**: `v2` | **Methods**: 47 | **Schemas**: 208

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigquery.projects.list` | GET | `projects` | RPC to list projects to which the user has been granted any project role. Users of this method ar... |
| `bigquery.projects.getServiceAccount` | GET | `projects/{+projectId}/serviceAccount` | RPC to get the service account for a project used for interactions with Google Cloud KMS |
| `bigquery.models.delete` | DELETE | `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}` | Deletes the model specified by modelId from the dataset. |
| `bigquery.models.patch` | PATCH | `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}` | Patch specific fields in the specified model. |
| `bigquery.models.list` | GET | `projects/{+projectId}/datasets/{+datasetId}/models` | Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the... |
| `bigquery.models.get` | GET | `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}` | Gets the specified model resource by model ID. |
| `bigquery.datasets.delete` | DELETE | `projects/{+projectId}/datasets/{+datasetId}` | Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must d... |
| `bigquery.datasets.get` | GET | `projects/{+projectId}/datasets/{+datasetId}` | Returns the dataset specified by datasetID. |
| `bigquery.datasets.patch` | PATCH | `projects/{+projectId}/datasets/{+datasetId}` | Updates information in an existing dataset. The update method replaces the entire dataset resourc... |
| `bigquery.datasets.list` | GET | `projects/{+projectId}/datasets` | Lists all datasets in the specified project to which the user has been granted the READER dataset... |
| `bigquery.datasets.undelete` | POST | `projects/{+projectId}/datasets/{+datasetId}:undelete` | Undeletes a dataset which is within time travel window based on datasetId. If a time is specified... |
| `bigquery.datasets.update` | PUT | `projects/{+projectId}/datasets/{+datasetId}` | Updates information in an existing dataset. The update method replaces the entire dataset resourc... |
| `bigquery.datasets.insert` | POST | `projects/{+projectId}/datasets` | Creates a new empty dataset. |
| `bigquery.rowAccessPolicies.delete` | DELETE | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}` | Deletes a row access policy. |
| `bigquery.rowAccessPolicies.list` | GET | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies` | Lists all row access policies on the specified table. |
| `bigquery.rowAccessPolicies.insert` | POST | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies` | Creates a row access policy. |
| `bigquery.rowAccessPolicies.batchDelete` | POST | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies:batchDelete` | Deletes provided row access policies. |
| `bigquery.rowAccessPolicies.get` | GET | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}` | Gets the specified row access policy by policy ID. |
| `bigquery.rowAccessPolicies.getIamPolicy` | POST | `{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `bigquery.rowAccessPolicies.update` | PUT | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}` | Updates a row access policy. |
| `bigquery.rowAccessPolicies.testIamPermissions` | POST | `{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `bigquery.routines.insert` | POST | `projects/{+projectId}/datasets/{+datasetId}/routines` | Creates a new routine in the dataset. |
| `bigquery.routines.update` | PUT | `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}` | Updates information in an existing routine. The update method replaces the entire Routine resource. |
| `bigquery.routines.list` | GET | `projects/{+projectId}/datasets/{+datasetId}/routines` | Lists all routines in the specified dataset. Requires the READER dataset role. |
| `bigquery.routines.testIamPermissions` | POST | `{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `bigquery.routines.delete` | DELETE | `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}` | Deletes the routine specified by routineId from the dataset. |
| `bigquery.routines.get` | GET | `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}` | Gets the specified routine resource by routine ID. |
| `bigquery.routines.setIamPolicy` | POST | `{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `bigquery.routines.getIamPolicy` | POST | `{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `bigquery.jobs.list` | GET | `projects/{+projectId}/jobs` | Lists all jobs that you started in the specified project. Job information is available for a six ... |
| `bigquery.jobs.cancel` | POST | `projects/{+projectId}/jobs/{+jobId}/cancel` | Requests that a job be cancelled. This call will return immediately, and the client will need to ... |
| `bigquery.jobs.getQueryResults` | GET | `projects/{+projectId}/queries/{+jobId}` | RPC to get the results of a query job. |
| `bigquery.jobs.get` | GET | `projects/{+projectId}/jobs/{+jobId}` | Returns information about a specific job. Job information is available for a six month period aft... |
| `bigquery.jobs.insert` | POST | `projects/{+projectId}/jobs` | Starts a new asynchronous job. This API has two different kinds of endpoint URIs, as this method ... |
| `bigquery.jobs.delete` | DELETE | `projects/{+projectId}/jobs/{+jobId}/delete` | Requests the deletion of the metadata of a job. This call returns when the job's metadata is dele... |
| `bigquery.jobs.query` | POST | `projects/{+projectId}/queries` | Runs a BigQuery SQL query synchronously and returns query results if the query completes within a... |
| `bigquery.tabledata.list` | GET | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/data` | List the content of a table in rows. |
| `bigquery.tabledata.insertAll` | POST | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/insertAll` | Streams data into BigQuery one record at a time without needing to run a load job. |
| `bigquery.tables.getIamPolicy` | POST | `{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `bigquery.tables.testIamPermissions` | POST | `{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `bigquery.tables.delete` | DELETE | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}` | Deletes the table specified by tableId from the dataset. If the table contains data, all the data... |
| `bigquery.tables.insert` | POST | `projects/{+projectId}/datasets/{+datasetId}/tables` | Creates a new, empty table in the dataset. |
| `bigquery.tables.update` | PUT | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}` | Updates information in an existing table. The update method replaces the entire Table resource, w... |
| `bigquery.tables.get` | GET | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}` | Gets the specified table resource by table ID. This method does not return the data in the table,... |
| `bigquery.tables.list` | GET | `projects/{+projectId}/datasets/{+datasetId}/tables` | Lists all tables in the specified dataset. Requires the READER dataset role. |
| `bigquery.tables.patch` | PATCH | `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}` | Updates information in an existing table. The update method replaces the entire table resource, w... |
| `bigquery.tables.setIamPolicy` | POST | `{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |

### `bigquery.projects.list`

**GET** `projects`

RPC to list projects to which the user has been granted any project role. Users of this method are encouraged to consider the [Resource Manager](https://cloud.google.com/resource-manager/docs/) API, which provides the underlying data for this method and has more capabilities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | `maxResults` unset returns all results, up to 50 per page. Additionally, the number of projects in a page may be fewe... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. If not present, no further pages are pr... |

**Response**: `ProjectList`

```typescript
const res = await bigquery.projects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.projects.getServiceAccount`

**GET** `projects/{+projectId}/serviceAccount`

RPC to get the service account for a project used for interactions with Google Cloud KMS

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. ID of the project. |

**Response**: `GetServiceAccountResponse`

```typescript
const res = await bigquery.projects.getServiceAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.models.delete`

**DELETE** `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}`

Deletes the model specified by modelId from the dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the model to delete. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the model to delete. |
| `modelId` | `string` | path | Yes | Required. Model ID of the model to delete. |

```typescript
const res = await bigquery.models.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.models.patch`

**PATCH** `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}`

Patch specific fields in the specified model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the model to patch. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the model to patch. |
| `modelId` | `string` | path | Yes | Required. Model ID of the model to patch. |

**Request body**: `Model`

**Response**: `Model`

```typescript
const res = await bigquery.models.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.models.list`

**GET** `projects/{+projectId}/datasets/{+datasetId}/models`

Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the list of models, you can get information about a particular model by calling the models.get method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the models to list. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the models to list. |
| `maxResults` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call to request the next page of results |

**Response**: `ListModelsResponse`

```typescript
const res = await bigquery.models.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.models.get`

**GET** `projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}`

Gets the specified model resource by model ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the requested model. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the requested model. |
| `modelId` | `string` | path | Yes | Required. Model ID of the requested model. |

**Response**: `Model`

```typescript
const res = await bigquery.models.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.datasets.delete`

**DELETE** `projects/{+projectId}/datasets/{+datasetId}`

Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the dataset being deleted |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of dataset being deleted |
| `deleteContents` | `boolean` | query | No | If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Defau... |

```typescript
const res = await bigquery.datasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.datasets.get`

**GET** `projects/{+projectId}/datasets/{+datasetId}`

Returns the dataset specified by datasetID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the requested dataset |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the requested dataset |
| `accessPolicyVersion` | `integer` | query | No | Optional. The version of the access policy schema to fetch. Valid values are 0, 1, and 3. Requests specifying an inva... |
| `datasetView` | `string` | query | No | Optional. Specifies the view that determines which dataset information is returned. By default, metadata and ACL info... |

**Response**: `Dataset`

```typescript
const res = await bigquery.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.datasets.patch`

**PATCH** `projects/{+projectId}/datasets/{+datasetId}`

Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports RFC5789 patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the dataset being updated |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the dataset being updated |
| `accessPolicyVersion` | `integer` | query | No | Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an inva... |
| `updateMode` | `string` | query | No | Optional. Specifies the fields of dataset that update/patch operation is targeting By default, both metadata and ACL ... |

**Request body**: `Dataset`

**Response**: `Dataset`

```typescript
const res = await bigquery.datasets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.datasets.list`

**GET** `projects/{+projectId}/datasets`

Lists all datasets in the specified project to which the user has been granted the READER dataset role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the datasets to be listed |
| `all` | `boolean` | query | No | Whether to list all datasets, including hidden ones |
| `filter` | `string` | query | No | An expression for filtering the results of the request by label. The syntax is `labels.[:]`. Multiple filters can be ... |
| `maxResults` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results |

**Response**: `DatasetList`

```typescript
const res = await bigquery.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.datasets.undelete`

**POST** `projects/{+projectId}/datasets/{+datasetId}:undelete`

Undeletes a dataset which is within time travel window based on datasetId. If a time is specified, the dataset version deleted at that time is undeleted, else the last live version is undeleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the dataset to be undeleted |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of dataset being deleted |

**Request body**: `UndeleteDatasetRequest`

**Response**: `Dataset`

```typescript
const res = await bigquery.datasets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.datasets.update`

**PUT** `projects/{+projectId}/datasets/{+datasetId}`

Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the dataset being updated |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the dataset being updated |
| `accessPolicyVersion` | `integer` | query | No | Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an inva... |
| `updateMode` | `string` | query | No | Optional. Specifies the fields of dataset that update/patch operation is targeting By default, both metadata and ACL ... |

**Request body**: `Dataset`

**Response**: `Dataset`

```typescript
const res = await bigquery.datasets.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.datasets.insert`

**POST** `projects/{+projectId}/datasets`

Creates a new empty dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the new dataset |
| `accessPolicyVersion` | `integer` | query | No | Optional. The version of the provided access policy schema. Valid values are 0, 1, and 3. Requests specifying an inva... |

**Request body**: `Dataset`

**Response**: `Dataset`

```typescript
const res = await bigquery.datasets.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.rowAccessPolicies.delete`

**DELETE** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}`

Deletes a row access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to delete the row access policy. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to delete the row access policy. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to delete the row access policy. |
| `policyId` | `string` | path | Yes | Required. Policy ID of the row access policy. |
| `force` | `boolean` | query | No | If set to true, it deletes the row access policy even if it's the last row access policy on the table and the deletio... |

```typescript
const res = await bigquery.rowAccessPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.rowAccessPolicies.list`

**GET** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies`

Lists all row access policies on the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the row access policies to list. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of row access policies to list. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to list row access policies. |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |

**Response**: `ListRowAccessPoliciesResponse`

```typescript
const res = await bigquery.rowAccessPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.rowAccessPolicies.insert`

**POST** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies`

Creates a row access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to get the row access policy. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to get the row access policy. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to get the row access policy. |

**Request body**: `RowAccessPolicy`

**Response**: `RowAccessPolicy`

```typescript
const res = await bigquery.rowAccessPolicies.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.rowAccessPolicies.batchDelete`

**POST** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies:batchDelete`

Deletes provided row access policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to delete the row access policies. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to delete the row access policies. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to delete the row access policies. |

**Request body**: `BatchDeleteRowAccessPoliciesRequest`

```typescript
const res = await bigquery.rowAccessPolicies.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.rowAccessPolicies.get`

**GET** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}`

Gets the specified row access policy by policy ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to get the row access policy. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to get the row access policy. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to get the row access policy. |
| `policyId` | `string` | path | Yes | Required. Policy ID of the row access policy. |

**Response**: `RowAccessPolicy`

```typescript
const res = await bigquery.rowAccessPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.rowAccessPolicies.getIamPolicy`

**POST** `{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquery.rowAccessPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.rowAccessPolicies.update`

**PUT** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies/{+policyId}`

Updates a row access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to get the row access policy. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to get the row access policy. |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to get the row access policy. |
| `policyId` | `string` | path | Yes | Required. Policy ID of the row access policy. |

**Request body**: `RowAccessPolicy`

**Response**: `RowAccessPolicy`

```typescript
const res = await bigquery.rowAccessPolicies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.rowAccessPolicies.testIamPermissions`

**POST** `{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigquery.rowAccessPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.routines.insert`

**POST** `projects/{+projectId}/datasets/{+datasetId}/routines`

Creates a new routine in the dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the new routine |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the new routine |

**Request body**: `Routine`

**Response**: `Routine`

```typescript
const res = await bigquery.routines.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.routines.update`

**PUT** `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}`

Updates information in an existing routine. The update method replaces the entire Routine resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the routine to update |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the routine to update |
| `routineId` | `string` | path | Yes | Required. Routine ID of the routine to update |

**Request body**: `Routine`

**Response**: `Routine`

```typescript
const res = await bigquery.routines.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.routines.list`

**GET** `projects/{+projectId}/datasets/{+datasetId}/routines`

Lists all routines in the specified dataset. Requires the READER dataset role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the routines to list |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the routines to list |
| `filter` | `string` | query | No | If set, then only the Routines matching this filter are returned. The supported format is `routineType:{RoutineType}`... |
| `maxResults` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results |
| `readMask` | `string` | query | No | If set, then only the Routine fields in the field mask, as well as project_id, dataset_id and routine_id, are returne... |

**Response**: `ListRoutinesResponse`

```typescript
const res = await bigquery.routines.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.routines.testIamPermissions`

**POST** `{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigquery.routines.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.routines.delete`

**DELETE** `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}`

Deletes the routine specified by routineId from the dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the routine to delete |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the routine to delete |
| `routineId` | `string` | path | Yes | Required. Routine ID of the routine to delete |

```typescript
const res = await bigquery.routines.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.routines.get`

**GET** `projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}`

Gets the specified routine resource by routine ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the requested routine |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the requested routine |
| `routineId` | `string` | path | Yes | Required. Routine ID of the requested routine |
| `readMask` | `string` | query | No | If set, only the Routine fields in the field mask are returned in the response. If unset, all Routine fields are retu... |

**Response**: `Routine`

```typescript
const res = await bigquery.routines.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.routines.setIamPolicy`

**POST** `{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquery.routines.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.routines.getIamPolicy`

**POST** `{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquery.routines.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.jobs.list`

**GET** `projects/{+projectId}/jobs`

Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID of the jobs to list. |
| `allUsers` | `boolean` | query | No | Whether to display jobs owned by all users in the project. Default False. |
| `maxCreationTime` | `string` | query | No | Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this t... |
| `maxResults` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `minCreationTime` | `string` | query | No | Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this ti... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |
| `parentJobId` | `string` | query | No | If set, show only child jobs of the specified parent. Otherwise, show all top-level jobs. |
| `projection` | `string` | query | No | Restrict information returned to a set of selected fields |
| `stateFilter` | `string` | query | No | Filter for job state |

**Response**: `JobList`

```typescript
const res = await bigquery.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.jobs.cancel`

**POST** `projects/{+projectId}/jobs/{+jobId}/cancel`

Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the job to cancel |
| `jobId` | `string` | path | Yes | Required. Job ID of the job to cancel |
| `location` | `string` | query | No | The geographic location of the job. You must [specify the location](https://cloud.google.com/bigquery/docs/locations#... |

**Response**: `JobCancelResponse`

```typescript
const res = await bigquery.jobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.jobs.getQueryResults`

**GET** `projects/{+projectId}/queries/{+jobId}`

RPC to get the results of a query job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the query job. |
| `jobId` | `string` | path | Yes | Required. Job ID of the query job. |
| `formatOptions.timestampOutputFormat` | `string` | query | No | Optional. The API output format for a timestamp. This offers more explicit control over the timestamp output format a... |
| `formatOptions.useInt64Timestamp` | `boolean` | query | No | Optional. Output timestamp as usec int64. Default is false. |
| `location` | `string` | query | No | The geographic location of the job. You must specify the location to run the job for the following scenarios: * If th... |
| `maxResults` | `integer` | query | No | Maximum number of results to read. |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |
| `startIndex` | `string` | query | No | Zero-based index of the starting row. |
| `timeoutMs` | `integer` | query | No | Optional: Specifies the maximum amount of time, in milliseconds, that the client is willing to wait for the query to ... |

**Response**: `GetQueryResultsResponse`

```typescript
const res = await bigquery.jobs.getQueryResults({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.jobs.get`

**GET** `projects/{+projectId}/jobs/{+jobId}`

Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the requested job. |
| `jobId` | `string` | path | Yes | Required. Job ID of the requested job. |
| `location` | `string` | query | No | The geographic location of the job. You must specify the location to run the job for the following scenarios: * If th... |

**Response**: `Job`

```typescript
const res = await bigquery.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.jobs.insert`

**POST** `projects/{+projectId}/jobs`

Starts a new asynchronous job. This API has two different kinds of endpoint URIs, as this method supports a variety of use cases. * The *Metadata* URI is used for most interactions, as it accepts the job configuration directly. * The *Upload* URI is ONLY for the case when you're sending both a load job configuration and a data stream together. In this case, the Upload URI accepts the job configuration and the data as two distinct multipart MIME parts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID of project that will be billed for the job. |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await bigquery.jobs.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `bigquery.jobs.delete`

**DELETE** `projects/{+projectId}/jobs/{+jobId}/delete`

Requests the deletion of the metadata of a job. This call returns when the job's metadata is deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the job for which metadata is to be deleted. |
| `jobId` | `string` | path | Yes | Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the me... |
| `location` | `string` | query | No | The geographic location of the job. Required. For more information, see how to [specify locations](https://cloud.goog... |

```typescript
const res = await bigquery.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.jobs.query`

**POST** `projects/{+projectId}/queries`

Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the query request. |

**Request body**: `QueryRequest`

**Response**: `QueryResponse`

```typescript
const res = await bigquery.jobs.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tabledata.list`

**GET** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/data`

List the content of a table in rows.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project id of the table to list. |
| `datasetId` | `string` | path | Yes | Required. Dataset id of the table to list. |
| `tableId` | `string` | path | Yes | Required. Table id of the table to list. |
| `formatOptions.timestampOutputFormat` | `string` | query | No | Optional. The API output format for a timestamp. This offers more explicit control over the timestamp output format a... |
| `formatOptions.useInt64Timestamp` | `boolean` | query | No | Optional. Output timestamp as usec int64. Default is false. |
| `maxResults` | `integer` | query | No | Row limit of the table. |
| `pageToken` | `string` | query | No | To retrieve the next page of table data, set this field to the string provided in the pageToken field of the response... |
| `selectedFields` | `string` | query | No | Subset of fields to return, supports select into sub fields. Example: selected_fields = "a,e.d.f"; |
| `startIndex` | `string` | query | No | Start row index of the table. |

**Response**: `TableDataList`

```typescript
const res = await bigquery.tabledata.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tabledata.insertAll`

**POST** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/insertAll`

Streams data into BigQuery one record at a time without needing to run a load job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the destination. |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the destination. |
| `tableId` | `string` | path | Yes | Required. Table ID of the destination. |

**Request body**: `TableDataInsertAllRequest`

**Response**: `TableDataInsertAllResponse`

```typescript
const res = await bigquery.tabledata.insertAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/bigquery.insertdata`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.tables.getIamPolicy`

**POST** `{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquery.tables.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tables.testIamPermissions`

**POST** `{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigquery.tables.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tables.delete`

**DELETE** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}`

Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to delete |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to delete |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to delete |

```typescript
const res = await bigquery.tables.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.tables.insert`

**POST** `projects/{+projectId}/datasets/{+datasetId}/tables`

Creates a new, empty table in the dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the new table |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the new table |

**Request body**: `Table`

**Response**: `Table`

```typescript
const res = await bigquery.tables.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.tables.update`

**PUT** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}`

Updates information in an existing table. The update method replaces the entire Table resource, whereas the patch method only replaces fields that are provided in the submitted Table resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to update |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to update |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to update |
| `autodetect_schema` | `boolean` | query | No | Optional.  When true will autodetect schema, else will keep original schema |

**Request body**: `Table`

**Response**: `Table`

```typescript
const res = await bigquery.tables.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.tables.get`

**GET** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}`

Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the requested table |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the requested table |
| `tableId` | `string` | path | Yes | Required. Table ID of the requested table |
| `selectedFields` | `string` | query | No | List of table schema fields to return (comma-separated). If unspecified, all fields are returned. A fieldMask cannot ... |
| `view` | `string` | query | No | Optional. Specifies the view that determines which table information is returned. By default, basic table information... |

**Response**: `Table`

```typescript
const res = await bigquery.tables.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tables.list`

**GET** `projects/{+projectId}/datasets/{+datasetId}/tables`

Lists all tables in the specified dataset. Requires the READER dataset role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the tables to list |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the tables to list |
| `maxResults` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results |

**Response**: `TableList`

```typescript
const res = await bigquery.tables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquery.tables.patch`

**PATCH** `projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}`

Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports RFC5789 patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID of the table to update |
| `datasetId` | `string` | path | Yes | Required. Dataset ID of the table to update |
| `tableId` | `string` | path | Yes | Required. Table ID of the table to update |
| `autodetect_schema` | `boolean` | query | No | Optional.  When true will autodetect schema, else will keep original schema |

**Request body**: `Table`

**Response**: `Table`

```typescript
const res = await bigquery.tables.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquery.tables.setIamPolicy`

**POST** `{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquery.tables.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AggregateClassificationMetrics`

Aggregate metrics for classification/classifier models. For multi-class models, the metrics are either macro-averaged or micro-averaged. When macro-averaged, the metrics are calculated for each label and then an unweighted average is taken of those values. When micro-averaged, the metric is calculated globally by counting the total number of correctly predicted rows.

| Property | Type | Description |
|----------|------|-------------|
| `accuracy` | `number` | Accuracy is the fraction of predictions given the correct label. For multiclass this is a micro-a... |
| `f1Score` | `number` | The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric. |
| `logLoss` | `number` | Logarithmic Loss. For multiclass this is a macro-averaged metric. |
| `precision` | `number` | Precision is the fraction of actual positive predictions that had positive actual labels. For mul... |
| `recall` | `number` | Recall is the fraction of actual positive labels that were given a positive prediction. For multi... |
| `rocAuc` | `number` | Area Under a ROC Curve. For multiclass this is a macro-averaged metric. |
| `threshold` | `number` | Threshold at which the metrics are computed. For binary classification models this is the positiv... |

### `AggregationThresholdPolicy`

Represents privacy policy associated with "aggregation threshold" method.

| Property | Type | Description |
|----------|------|-------------|
| `privacyUnitColumns` | `array<string>` | Optional. The privacy unit column(s) associated with this policy. For now, only one column per da... |
| `threshold` | `string` | Optional. The threshold for the "aggregation threshold" policy. |

### `Argument`

Input/output argument of a function or a stored procedure.

| Property | Type | Description |
|----------|------|-------------|
| `argumentKind` | `string` | Optional. Defaults to FIXED_TYPE. |
| `dataType` | `StandardSqlDataType` | Set if argument_kind == FIXED_TYPE. |
| `isAggregate` | `boolean` | Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine type... |
| `mode` | `string` | Optional. Specifies whether the argument is input or output. Can be set for procedures only. |
| `name` | `string` | Optional. The name of this argument. Can be absent for function return argument. |

### `ArimaCoefficients`

Arima coefficients.

| Property | Type | Description |
|----------|------|-------------|
| `autoRegressiveCoefficients` | `array<number>` | Auto-regressive coefficients, an array of double. |
| `interceptCoefficient` | `number` | Intercept coefficient, just a double not an array. |
| `movingAverageCoefficients` | `array<number>` | Moving-average coefficients, an array of double. |

### `ArimaFittingMetrics`

ARIMA model fitting metrics.

| Property | Type | Description |
|----------|------|-------------|
| `aic` | `number` | AIC. |
| `logLikelihood` | `number` | Log-likelihood. |
| `variance` | `number` | Variance. |

### `ArimaForecastingMetrics`

Model evaluation metrics for ARIMA forecasting models.

| Property | Type | Description |
|----------|------|-------------|
| `arimaFittingMetrics` | `array<ArimaFittingMetrics>` | Arima model fitting metrics. |
| `arimaSingleModelForecastingMetrics` | `array<ArimaSingleModelForecastingMetrics>` | Repeated as there can be many metric sets (one for each model) in auto-arima and the large-scale ... |
| `hasDrift` | `array<boolean>` | Whether Arima model fitted with drift or not. It is always false when d is not 1. |
| `nonSeasonalOrder` | `array<ArimaOrder>` | Non-seasonal order. |
| `seasonalPeriods` | `array<string>` | Seasonal periods. Repeated because multiple periods are supported for one time series. |
| `timeSeriesId` | `array<string>` | Id to differentiate different time series for the large-scale case. |

### `ArimaModelInfo`

Arima model information.

| Property | Type | Description |
|----------|------|-------------|
| `arimaCoefficients` | `ArimaCoefficients` | Arima coefficients. |
| `arimaFittingMetrics` | `ArimaFittingMetrics` | Arima fitting metrics. |
| `hasDrift` | `boolean` | Whether Arima model fitted with drift or not. It is always false when d is not 1. |
| `hasHolidayEffect` | `boolean` | If true, holiday_effect is a part of time series decomposition result. |
| `hasSpikesAndDips` | `boolean` | If true, spikes_and_dips is a part of time series decomposition result. |
| `hasStepChanges` | `boolean` | If true, step_changes is a part of time series decomposition result. |
| `nonSeasonalOrder` | `ArimaOrder` | Non-seasonal order. |
| `seasonalPeriods` | `array<string>` | Seasonal periods. Repeated because multiple periods are supported for one time series. |
| `timeSeriesId` | `string` | The time_series_id value for this time series. It will be one of the unique values from the time_... |
| `timeSeriesIds` | `array<string>` | The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of... |

### `ArimaOrder`

Arima order, can be used for both non-seasonal and seasonal parts.

| Property | Type | Description |
|----------|------|-------------|
| `d` | `string` | Order of the differencing part. |
| `p` | `string` | Order of the autoregressive part. |
| `q` | `string` | Order of the moving-average part. |

### `ArimaResult`

(Auto-)arima fitting result. Wrap everything in ArimaResult for easier refactoring if we want to use model-specific iteration results.

| Property | Type | Description |
|----------|------|-------------|
| `arimaModelInfo` | `array<ArimaModelInfo>` | This message is repeated because there are multiple arima models fitted in auto-arima. For non-au... |
| `seasonalPeriods` | `array<string>` | Seasonal periods. Repeated because multiple periods are supported for one time series. |

### `ArimaSingleModelForecastingMetrics`

Model evaluation metrics for a single ARIMA forecasting model.

| Property | Type | Description |
|----------|------|-------------|
| `arimaFittingMetrics` | `ArimaFittingMetrics` | Arima fitting metrics. |
| `hasDrift` | `boolean` | Is arima model fitted with drift or not. It is always false when d is not 1. |
| `hasHolidayEffect` | `boolean` | If true, holiday_effect is a part of time series decomposition result. |
| `hasSpikesAndDips` | `boolean` | If true, spikes_and_dips is a part of time series decomposition result. |
| `hasStepChanges` | `boolean` | If true, step_changes is a part of time series decomposition result. |
| `nonSeasonalOrder` | `ArimaOrder` | Non-seasonal order. |
| `seasonalPeriods` | `array<string>` | Seasonal periods. Repeated because multiple periods are supported for one time series. |
| `timeSeriesId` | `string` | The time_series_id value for this time series. It will be one of the unique values from the time_... |
| `timeSeriesIds` | `array<string>` | The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of... |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `AvroOptions`

Options for external data sources.

| Property | Type | Description |
|----------|------|-------------|
| `useAvroLogicalTypes` | `boolean` | Optional. If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the c... |

### `BatchDeleteRowAccessPoliciesRequest`

Request message for the BatchDeleteRowAccessPoliciesRequest method.

| Property | Type | Description |
|----------|------|-------------|
| `force` | `boolean` | If set to true, it deletes the row access policy even if it's the last row access policy on the t... |
| `policyIds` | `array<string>` | Required. Policy IDs of the row access policies. |

### `BiEngineReason`

Reason why BI Engine didn't accelerate the query (or sub-query).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. High-level BI Engine reason for partial or disabled acceleration |
| `message` | `string` | Output only. Free form human-readable reason for partial or disabled acceleration. |

### `BiEngineStatistics`

Statistics for a BI Engine specific query. Populated as part of JobStatistics2

| Property | Type | Description |
|----------|------|-------------|
| `accelerationMode` | `string` | Output only. Specifies which mode of BI Engine acceleration was performed (if any). |
| `biEngineMode` | `string` | Output only. Specifies which mode of BI Engine acceleration was performed (if any). |
| `biEngineReasons` | `array<BiEngineReason>` | In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI... |

### `BigLakeConfiguration`

Configuration for BigQuery tables for Apache Iceberg (formerly BigLake managed tables.)

| Property | Type | Description |
|----------|------|-------------|
| `connectionId` | `string` | Optional. The connection specifying the credentials to be used to read and write to external stor... |
| `fileFormat` | `string` | Optional. The file format the table data is stored in. |
| `storageUri` | `string` | Optional. The fully qualified location prefix of the external folder where table data is stored. ... |
| `tableFormat` | `string` | Optional. The table format the metadata only snapshots are stored in. |

### `BigQueryModelTraining`

| Property | Type | Description |
|----------|------|-------------|
| `currentIteration` | `integer` | Deprecated. |
| `expectedTotalIterations` | `string` | Deprecated. |

### `BigtableColumn`

Information related to a Bigtable column.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | Optional. The encoding of the values when the type is not STRING. Acceptable encoding values are:... |
| `fieldName` | `string` | Optional. If the qualifier is not a valid BigQuery field identifier i.e. does not match a-zA-Z*, ... |
| `onlyReadLatest` | `boolean` | Optional. If this is set, only the latest version of value in this column are exposed. 'onlyReadL... |
| `protoConfig` | `BigtableProtoConfig` | Optional. Protobuf-specific configurations, only takes effect when the encoding is PROTO_BINARY. |
| `qualifierEncoded` | `string` | [Required] Qualifier of the column. Columns in the parent column family that has this exact quali... |
| `qualifierString` | `string` | Qualifier string. |
| `type` | `string` | Optional. The type to convert the value in cells of this column. The values are expected to be en... |

### `BigtableColumnFamily`

Information related to a Bigtable column family.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<BigtableColumn>` | Optional. Lists of columns that should be exposed as individual fields as opposed to a list of (c... |
| `encoding` | `string` | Optional. The encoding of the values when the type is not STRING. Acceptable encoding values are:... |
| `familyId` | `string` | Identifier of the column family. |
| `onlyReadLatest` | `boolean` | Optional. If this is set only the latest version of value are exposed for all columns in this col... |
| `protoConfig` | `BigtableProtoConfig` | Optional. Protobuf-specific configurations, only takes effect when the encoding is PROTO_BINARY. |
| `type` | `string` | Optional. The type to convert the value in cells of this column family. The values are expected t... |

### `BigtableOptions`

Options specific to Google Cloud Bigtable data sources.

| Property | Type | Description |
|----------|------|-------------|
| `columnFamilies` | `array<BigtableColumnFamily>` | Optional. List of column families to expose in the table schema along with their types. This list... |
| `ignoreUnspecifiedColumnFamilies` | `boolean` | Optional. If field is true, then the column families that are not specified in columnFamilies lis... |
| `outputColumnFamiliesAsJson` | `boolean` | Optional. If field is true, then each column family will be read as a single JSON column. Otherwi... |
| `readRowkeyAsString` | `boolean` | Optional. If field is true, then the rowkey column families will be read and converted to string.... |

### `BigtableProtoConfig`

Information related to a Bigtable protobuf column.

| Property | Type | Description |
|----------|------|-------------|
| `protoMessageName` | `string` | Optional. The fully qualified proto message name of the protobuf. In the format of "foo.bar.Messa... |
| `schemaBundleId` | `string` | Optional. The ID of the Bigtable SchemaBundle resource associated with this protobuf. The ID shou... |

### `BinaryClassificationMetrics`

Evaluation metrics for binary classification/classifier models.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateClassificationMetrics` | `AggregateClassificationMetrics` | Aggregate classification metrics. |
| `binaryConfusionMatrixList` | `array<BinaryConfusionMatrix>` | Binary confusion matrix at multiple thresholds. |
| `negativeLabel` | `string` | Label representing the negative class. |
| `positiveLabel` | `string` | Label representing the positive class. |

### `BinaryConfusionMatrix`

Confusion matrix for binary classification models.

| Property | Type | Description |
|----------|------|-------------|
| `accuracy` | `number` | The fraction of predictions given the correct label. |
| `f1Score` | `number` | The equally weighted average of recall and precision. |
| `falseNegatives` | `string` | Number of false samples predicted as false. |
| `falsePositives` | `string` | Number of false samples predicted as true. |
| `positiveClassThreshold` | `number` | Threshold value used when computing each of the following metric. |
| `precision` | `number` | The fraction of actual positive predictions that had positive actual labels. |
| `recall` | `number` | The fraction of actual positive labels that were given a positive prediction. |
| `trueNegatives` | `string` | Number of true samples predicted as false. |
| `truePositives` | `string` | Number of true samples predicted as true. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BqmlIterationResult`

| Property | Type | Description |
|----------|------|-------------|
| `durationMs` | `string` | Deprecated. |
| `evalLoss` | `number` | Deprecated. |
| `index` | `integer` | Deprecated. |
| `learnRate` | `number` | Deprecated. |
| `trainingLoss` | `number` | Deprecated. |

### `BqmlTrainingRun`

| Property | Type | Description |
|----------|------|-------------|
| `iterationResults` | `array<BqmlIterationResult>` | Deprecated. |
| `startTime` | `string` | Deprecated. |
| `state` | `string` | Deprecated. |
| `trainingOptions` | `object` | Deprecated. |

### `CategoricalValue`

Representative value of a categorical feature.

| Property | Type | Description |
|----------|------|-------------|
| `categoryCounts` | `array<CategoryCount>` | Counts of all categories for the categorical feature. If there are more than ten categories, we r... |

### `CategoryCount`

Represents the count of a single category within the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The name of category. |
| `count` | `string` | The count of training samples matching the category within the cluster. |

### `CloneDefinition`

Information about base table and clone time of a table clone.

| Property | Type | Description |
|----------|------|-------------|
| `baseTableReference` | `TableReference` | Required. Reference describing the ID of the table that was cloned. |
| `cloneTime` | `string` | Required. The time at which the base table was cloned. This value is reported in the JSON respons... |

### `Cluster`

Message containing the information about one cluster.

| Property | Type | Description |
|----------|------|-------------|
| `centroidId` | `string` | Centroid id. |
| `count` | `string` | Count of training data rows that were assigned to this cluster. |
| `featureValues` | `array<FeatureValue>` | Values of highly variant features for this cluster. |

### `ClusterInfo`

Information about a single cluster for clustering model.

| Property | Type | Description |
|----------|------|-------------|
| `centroidId` | `string` | Centroid id. |
| `clusterRadius` | `number` | Cluster radius, the average distance from centroid to each point assigned to the cluster. |
| `clusterSize` | `string` | Cluster size, the total number of points assigned to the cluster. |

### `Clustering`

Configures table clustering.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<string>` | One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type f... |

### `ClusteringMetrics`

Evaluation metrics for clustering models.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | Information for all clusters. |
| `daviesBouldinIndex` | `number` | Davies-Bouldin index. |
| `meanSquaredDistance` | `number` | Mean of squared distances between each sample to its cluster centroid. |

### `ConfusionMatrix`

Confusion matrix for multi-class classification models.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | Confidence threshold used when computing the entries of the confusion matrix. |
| `rows` | `array<Row>` | One row per actual label. |

### `ConnectionProperty`

A connection-level property to customize query behavior. Under JDBC, these correspond directly to connection properties passed to the DriverManager. Under ODBC, these correspond to properties in the connection string. Currently supported connection properties: * **dataset_project_id**: represents the default project for datasets that are used in the query. Setting the system variable `@@dataset_project_id` achieves the same behavior. For more information about system variables, see: https://cloud.google.com/bigquery/docs/reference/system-variables * **time_zone**: represents the default timezone used to run the query. * **session_id**: associates the query with a given session. * **query_label**: associates the query with a given job label. If set, all subsequent queries in a script or session will have this label. For the format in which a you can specify a query label, see labels in the JobConfiguration resource type: https://cloud.google.com/bigquery/docs/reference/rest/v2/Job#jobconfiguration * **service_account**: indicates the service account to use to run a continuous query. If set, the query job uses the service account to access Google Cloud resources. Service account access is bounded by the IAM permissions that you have granted to the service account. Additional properties are allowed, but ignored. Specifying multiple connection properties with the same key returns an error.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the property to set. |
| `value` | `string` | The value of the property to set. |

### `CsvOptions`

Information related to a CSV data source.

| Property | Type | Description |
|----------|------|-------------|
| `allowJaggedRows` | `boolean` | Optional. Indicates if BigQuery should accept rows that are missing trailing optional columns. If... |
| `allowQuotedNewlines` | `boolean` | Optional. Indicates if BigQuery should allow quoted data sections that contain newline characters... |
| `encoding` | `string` | Optional. The character encoding of the data. The supported values are UTF-8, ISO-8859-1, UTF-16B... |
| `fieldDelimiter` | `string` | Optional. The separator character for fields in a CSV file. The separator is interpreted as a sin... |
| `nullMarker` | `string` | Optional. Specifies a string that represents a null value in a CSV file. For example, if you spec... |
| `nullMarkers` | `array<string>` | Optional. A list of strings represented as SQL NULL value in a CSV file. null_marker and null_mar... |
| `preserveAsciiControlCharacters` | `boolean` | Optional. Indicates if the embedded ASCII control characters (the first 32 characters in the ASCI... |
| `quote` | `string` | Optional. The value that is used to quote data sections in a CSV file. BigQuery converts the stri... |
| `skipLeadingRows` | `string` | Optional. The number of rows at the top of a CSV file that BigQuery will skip when reading the da... |
| `sourceColumnMatch` | `string` | Optional. Controls the strategy used to match loaded columns to the schema. If not set, a sensibl... |

### `DataFormatOptions`

Options for data format adjustments.

| Property | Type | Description |
|----------|------|-------------|
| `timestampOutputFormat` | `string` | Optional. The API output format for a timestamp. This offers more explicit control over the times... |
| `useInt64Timestamp` | `boolean` | Optional. Output timestamp as usec int64. Default is false. |

### `DataMaskingStatistics`

Statistics for data-masking.

| Property | Type | Description |
|----------|------|-------------|
| `dataMaskingApplied` | `boolean` | Whether any accessed data was protected by the data masking. |

### `DataPolicyOption`

Data policy option. For more information, see [Mask data by applying data policies to a column](https://cloud.google.com/bigquery/docs/column-data-masking#data-policies-on-column/).

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Data policy resource name in the form of projects/project_id/locations/location_id/dataPolicies/d... |

### `DataSplitResult`

Data split result. This contains references to the training and evaluation data tables that were used to train the model.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationTable` | `TableReference` | Table reference of the evaluation data after split. |
| `testTable` | `TableReference` | Table reference of the test data after split. |
| `trainingTable` | `TableReference` | Table reference of the training data after split. |

### `Dataset`

Represents a BigQuery dataset.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `array<object>` | Optional. An array of objects that define dataset access for one or more entities. You can set th... |
| `creationTime` | `string` | Output only. The time when this dataset was created, in milliseconds since the epoch. |
| `datasetReference` | `DatasetReference` | Required. A reference that identifies the dataset. |
| `defaultCollation` | `string` | Optional. Defines the default collation specification of future tables created in the dataset. If... |
| `defaultEncryptionConfiguration` | `EncryptionConfiguration` | The default encryption key for all tables in the dataset. After this property is set, the encrypt... |
| `defaultPartitionExpirationMs` | `string` | This default partition expiration, expressed in milliseconds. When new time-partitioned tables ar... |
| `defaultRoundingMode` | `string` | Optional. Defines the default rounding mode specification of new tables created within this datas... |
| `defaultTableExpirationMs` | `string` | Optional. The default lifetime of all tables in the dataset, in milliseconds. The minimum lifetim... |
| `description` | `string` | Optional. A user-friendly description of the dataset. |
| `etag` | `string` | Output only. A hash of the resource. |
| `externalCatalogDatasetOptions` | `ExternalCatalogDatasetOptions` | Optional. Options defining open source compatible datasets living in the BigQuery catalog. Contai... |
| `externalDatasetReference` | `ExternalDatasetReference` | Optional. Reference to a read-only external dataset defined in data catalogs outside of BigQuery.... |
| `friendlyName` | `string` | Optional. A descriptive name for the dataset. |
| `id` | `string` | Output only. The fully-qualified unique name of the dataset in the format projectId:datasetId. Th... |
| `isCaseInsensitive` | `boolean` | Optional. TRUE if the dataset and its table names are case-insensitive, otherwise FALSE. By defau... |
| `kind` | `string` | Output only. The resource type. |
| `labels` | `object` | The labels associated with this dataset. You can use these to organize and group your datasets. Y... |
| `lastModifiedTime` | `string` | Output only. The date when this dataset was last modified, in milliseconds since the epoch. |
| `linkedDatasetMetadata` | `LinkedDatasetMetadata` | Output only. Metadata about the LinkedDataset. Filled out when the dataset type is LINKED. |
| `linkedDatasetSource` | `LinkedDatasetSource` | Optional. The source dataset reference when the dataset is of type LINKED. For all other dataset ... |
| `location` | `string` | The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/do... |
| `maxTimeTravelHours` | `string` | Optional. Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 ... |
| `resourceTags` | `object` | Optional. The [tags](https://cloud.google.com/bigquery/docs/tags) attached to this dataset. Tag k... |
| `restrictions` | `RestrictionConfig` | Optional. Output only. Restriction config for all tables and dataset. If set, restrict certain ac... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `selfLink` | `string` | Output only. A URL that can be used to access the resource again. You can use this URL in Get or ... |
| `storageBillingModel` | `string` | Optional. Updates storage_billing_model for the dataset. |
| `tags` | `array<object>` | Output only. Tags for the dataset. To provide tags as inputs, use the `resourceTags` field. |
| `type` | `string` | Output only. Same as `type` in `ListFormatDataset`. The type of the dataset, one of: * DEFAULT - ... |

### `DatasetAccessEntry`

Grants all resources of particular types in a particular dataset read access to the current dataset. Similar to how individually authorized views work, updates to any resource granted through its dataset (including creation of new resources) requires read permission to referenced resources, plus write permission to the authorizing dataset.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `DatasetReference` | The dataset this entry applies to |
| `targetTypes` | `array<string>` | Which resources in the dataset this entry applies to. Currently, only views are supported, but ad... |

### `DatasetList`

Response format for a page of results when listing datasets.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<object>` | An array of the dataset resources in the project. Each resource contains basic information. For f... |
| `etag` | `string` | Output only. A hash value of the results page. You can use this property to determine if the page... |
| `kind` | `string` | Output only. The resource type. This property always returns the value "bigquery#datasetList" |
| `nextPageToken` | `string` | A token that can be used to request the next results page. This property is omitted on the final ... |
| `unreachable` | `array<string>` | A list of skipped locations that were unreachable. For more information about BigQuery locations,... |

### `DatasetReference`

Identifier for a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. A unique ID for this dataset, without the project name. The ID must contain only letter... |
| `projectId` | `string` | Optional. The ID of the project containing this dataset. |

### `DestinationTableProperties`

Properties for the destination table.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The description for the destination table. This will only be used if the destination ta... |
| `expirationTime` | `string` | Internal use only. |
| `friendlyName` | `string` | Optional. Friendly name for the destination table. If the table already exists, it should be same... |
| `labels` | `object` | Optional. The labels associated with this table. You can use these to organize and group your tab... |

### `DifferentialPrivacyPolicy`

Represents privacy policy associated with "differential privacy" method.

| Property | Type | Description |
|----------|------|-------------|
| `deltaBudget` | `number` | Optional. The total delta budget for all queries against the privacy-protected view. Each subscri... |
| `deltaBudgetRemaining` | `number` | Output only. The delta budget remaining. If budget is exhausted, no more queries are allowed. Not... |
| `deltaPerQuery` | `number` | Optional. The delta value that is used per query. Delta represents the probability that any row w... |
| `epsilonBudget` | `number` | Optional. The total epsilon budget for all queries against the privacy-protected view. Each subsc... |
| `epsilonBudgetRemaining` | `number` | Output only. The epsilon budget remaining. If budget is exhausted, no more queries are allowed. N... |
| `maxEpsilonPerQuery` | `number` | Optional. The maximum epsilon value that a query can consume. If the subscriber specifies epsilon... |
| `maxGroupsContributed` | `string` | Optional. The maximum groups contributed value that is used per query. Represents the maximum num... |
| `privacyUnitColumn` | `string` | Optional. The privacy unit column associated with this policy. Differential privacy policies can ... |

### `DimensionalityReductionMetrics`

Model evaluation metrics for dimensionality reduction models.

| Property | Type | Description |
|----------|------|-------------|
| `totalExplainedVarianceRatio` | `number` | Total percentage of variance explained by the selected principal components. |

### `DmlStatistics`

Detailed statistics for DML statements

| Property | Type | Description |
|----------|------|-------------|
| `deletedRowCount` | `string` | Output only. Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements. |
| `insertedRowCount` | `string` | Output only. Number of inserted Rows. Populated by DML INSERT and MERGE statements |
| `updatedRowCount` | `string` | Output only. Number of updated Rows. Populated by DML UPDATE and MERGE statements. |

### `DoubleCandidates`

Discrete candidates of a double hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `array<number>` | Candidates for the double parameter in increasing order. |

### `DoubleHparamSearchSpace`

Search space for a double hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `DoubleCandidates` | Candidates of the double hyperparameter. |
| `range` | `DoubleRange` | Range of the double hyperparameter. |

### `DoubleRange`

Range of a double hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | Max value of the double parameter. |
| `min` | `number` | Min value of the double parameter. |

### `EncryptionConfiguration`

Configuration for Cloud KMS encryption settings.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. Describes the Cloud KMS encryption key that will be used to protect destination BigQuer... |

### `Entry`

A single entry in the confusion matrix.

| Property | Type | Description |
|----------|------|-------------|
| `itemCount` | `string` | Number of items being predicted as this label. |
| `predictedLabel` | `string` | The predicted label. For confidence_threshold > 0, we will also add an entry indicating the numbe... |

### `ErrorProto`

Error details.

| Property | Type | Description |
|----------|------|-------------|
| `debugInfo` | `string` | Debugging information. This property is internal to Google and should not be used. |
| `location` | `string` | Specifies where the error occurred, if present. |
| `message` | `string` | A human-readable description of the error. |
| `reason` | `string` | A short error code that summarizes the error. |

### `EvaluationMetrics`

Evaluation metrics of a model. These are either computed on all training data or just the eval data based on whether eval data was used during training. These are not present for imported models.

| Property | Type | Description |
|----------|------|-------------|
| `arimaForecastingMetrics` | `ArimaForecastingMetrics` | Populated for ARIMA models. |
| `binaryClassificationMetrics` | `BinaryClassificationMetrics` | Populated for binary classification/classifier models. |
| `clusteringMetrics` | `ClusteringMetrics` | Populated for clustering models. |
| `dimensionalityReductionMetrics` | `DimensionalityReductionMetrics` | Evaluation metrics when the model is a dimensionality reduction model, which currently includes PCA. |
| `multiClassClassificationMetrics` | `MultiClassClassificationMetrics` | Populated for multi-class classification/classifier models. |
| `rankingMetrics` | `RankingMetrics` | Populated for implicit feedback type matrix factorization models. |
| `regressionMetrics` | `RegressionMetrics` | Populated for regression models and explicit feedback type matrix factorization models. |

### `ExplainQueryStage`

A single stage of query execution.

| Property | Type | Description |
|----------|------|-------------|
| `completedParallelInputs` | `string` | Number of parallel input segments completed. |
| `computeMode` | `string` | Output only. Compute mode for this stage. |
| `computeMsAvg` | `string` | Milliseconds the average shard spent on CPU-bound tasks. |
| `computeMsMax` | `string` | Milliseconds the slowest shard spent on CPU-bound tasks. |
| `computeRatioAvg` | `number` | Relative amount of time the average shard spent on CPU-bound tasks. |
| `computeRatioMax` | `number` | Relative amount of time the slowest shard spent on CPU-bound tasks. |
| `endMs` | `string` | Stage end time represented as milliseconds since the epoch. |
| `id` | `string` | Unique ID for the stage within the plan. |
| `inputStages` | `array<string>` | IDs for stages that are inputs to this stage. |
| `name` | `string` | Human-readable name for the stage. |
| `parallelInputs` | `string` | Number of parallel input segments to be processed |
| `readMsAvg` | `string` | Milliseconds the average shard spent reading input. |
| `readMsMax` | `string` | Milliseconds the slowest shard spent reading input. |
| `readRatioAvg` | `number` | Relative amount of time the average shard spent reading input. |
| `readRatioMax` | `number` | Relative amount of time the slowest shard spent reading input. |
| `recordsRead` | `string` | Number of records read into the stage. |
| `recordsWritten` | `string` | Number of records written by the stage. |
| `shuffleOutputBytes` | `string` | Total number of bytes written to shuffle. |
| `shuffleOutputBytesSpilled` | `string` | Total number of bytes written to shuffle and spilled to disk. |
| `slotMs` | `string` | Slot-milliseconds used by the stage. |
| `startMs` | `string` | Stage start time represented as milliseconds since the epoch. |
| `status` | `string` | Current status for this stage. |
| `steps` | `array<ExplainQueryStep>` | List of operations within the stage in dependency order (approximately chronological). |
| `waitMsAvg` | `string` | Milliseconds the average shard spent waiting to be scheduled. |
| `waitMsMax` | `string` | Milliseconds the slowest shard spent waiting to be scheduled. |
| `waitRatioAvg` | `number` | Relative amount of time the average shard spent waiting to be scheduled. |
| `waitRatioMax` | `number` | Relative amount of time the slowest shard spent waiting to be scheduled. |
| `writeMsAvg` | `string` | Milliseconds the average shard spent on writing output. |
| `writeMsMax` | `string` | Milliseconds the slowest shard spent on writing output. |
| `writeRatioAvg` | `number` | Relative amount of time the average shard spent on writing output. |
| `writeRatioMax` | `number` | Relative amount of time the slowest shard spent on writing output. |

### `ExplainQueryStep`

An operation within a stage.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Machine-readable operation type. |
| `substeps` | `array<string>` | Human-readable description of the step(s). |

### `Explanation`

Explanation for a single feature.

| Property | Type | Description |
|----------|------|-------------|
| `attribution` | `number` | Attribution of feature. |
| `featureName` | `string` | The full feature name. For non-numerical features, will be formatted like `.`. Overall size of fe... |

### `ExportDataStatistics`

Statistics for the EXPORT DATA statement as part of Query Job. EXTRACT JOB statistics are populated in JobStatistics4.

| Property | Type | Description |
|----------|------|-------------|
| `fileCount` | `string` | Number of destination files generated in case of EXPORT DATA statement only. |
| `rowCount` | `string` | [Alpha] Number of destination rows generated in case of EXPORT DATA statement only. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExternalCatalogDatasetOptions`

Options defining open source compatible datasets living in the BigQuery catalog. Contains metadata of open source database, schema, or namespace represented by the current dataset.

| Property | Type | Description |
|----------|------|-------------|
| `defaultStorageLocationUri` | `string` | Optional. The storage location URI for all tables in the dataset. Equivalent to hive metastore's ... |
| `parameters` | `object` | Optional. A map of key value pairs defining the parameters and properties of the open source sche... |

### `ExternalCatalogTableOptions`

Metadata about open source compatible table. The fields contained in these options correspond to Hive metastore's table-level properties.

| Property | Type | Description |
|----------|------|-------------|
| `connectionId` | `string` | Optional. A connection ID that specifies the credentials to be used to read external storage, suc... |
| `parameters` | `object` | Optional. A map of the key-value pairs defining the parameters and properties of the open source ... |
| `storageDescriptor` | `StorageDescriptor` | Optional. A storage descriptor containing information about the physical storage of this table. |

### `ExternalDataConfiguration`

| Property | Type | Description |
|----------|------|-------------|
| `autodetect` | `boolean` | Try to detect schema and format options automatically. Any option specified explicitly will be ho... |
| `avroOptions` | `AvroOptions` | Optional. Additional properties to set if sourceFormat is set to AVRO. |
| `bigtableOptions` | `BigtableOptions` | Optional. Additional options if sourceFormat is set to BIGTABLE. |
| `compression` | `string` | Optional. The compression type of the data source. Possible values include GZIP and NONE. The def... |
| `connectionId` | `string` | Optional. The connection specifying the credentials to be used to read external storage, such as ... |
| `csvOptions` | `CsvOptions` | Optional. Additional properties to set if sourceFormat is set to CSV. |
| `dateFormat` | `string` | Optional. Format used to parse DATE values. Supports C-style and SQL-style values. |
| `datetimeFormat` | `string` | Optional. Format used to parse DATETIME values. Supports C-style and SQL-style values. |
| `decimalTargetTypes` | `array<string>` | Defines the list of possible SQL data types to which the source decimal values are converted. Thi... |
| `fileSetSpecType` | `string` | Optional. Specifies how source URIs are interpreted for constructing the file set to load. By def... |
| `googleSheetsOptions` | `GoogleSheetsOptions` | Optional. Additional options if sourceFormat is set to GOOGLE_SHEETS. |
| `hivePartitioningOptions` | `HivePartitioningOptions` | Optional. When set, configures hive partitioning support. Not all storage formats support hive pa... |
| `ignoreUnknownValues` | `boolean` | Optional. Indicates if BigQuery should allow extra values that are not represented in the table s... |
| `jsonExtension` | `string` | Optional. Load option to be used together with source_format newline-delimited JSON to indicate t... |
| `jsonOptions` | `JsonOptions` | Optional. Additional properties to set if sourceFormat is set to JSON. |
| `maxBadRecords` | `integer` | Optional. The maximum number of bad records that BigQuery can ignore when reading data. If the nu... |
| `metadataCacheMode` | `string` | Optional. Metadata Cache Mode for the table. Set this to enable caching of metadata from external... |
| `objectMetadata` | `string` | Optional. ObjectMetadata is used to create Object Tables. Object Tables contain a listing of obje... |
| `parquetOptions` | `ParquetOptions` | Optional. Additional properties to set if sourceFormat is set to PARQUET. |
| `referenceFileSchemaUri` | `string` | Optional. When creating an external table, the user can provide a reference file with the table s... |
| `schema` | `TableSchema` | Optional. The schema for the data. Schema is required for CSV and JSON formats if autodetect is n... |
| `sourceFormat` | `string` | [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEE... |
| `sourceUris` | `array<string>` | [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Sto... |
| `timeFormat` | `string` | Optional. Format used to parse TIME values. Supports C-style and SQL-style values. |
| `timeZone` | `string` | Optional. Time zone used when parsing timestamp values that do not have specific time zone inform... |
| `timestampFormat` | `string` | Optional. Format used to parse TIMESTAMP values. Supports C-style and SQL-style values. |
| `timestampTargetPrecision` | `array<integer>` | Precisions (maximum number of total digits in base 10) for seconds of TIMESTAMP types that are al... |

### `ExternalDatasetReference`

Configures the access a dataset defined in an external metadata storage.

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `string` | Required. The connection id that is used to access the external_source. Format: projects/{project... |
| `externalSource` | `string` | Required. External source that backs this dataset. |

### `ExternalRuntimeOptions`

Options for the runtime of the external system.

| Property | Type | Description |
|----------|------|-------------|
| `containerCpu` | `number` | Optional. Amount of CPU provisioned for a Python UDF container instance. For more information, se... |
| `containerMemory` | `string` | Optional. Amount of memory provisioned for a Python UDF container instance. Format: {number}{unit... |
| `maxBatchingRows` | `string` | Optional. Maximum number of rows in each batch sent to the external runtime. If absent or if 0, B... |
| `runtimeConnection` | `string` | Optional. Fully qualified name of the connection whose service account will be used to execute th... |
| `runtimeVersion` | `string` | Optional. Language runtime version. Example: `python-3.11`. |

### `ExternalServiceCost`

The external service cost is a portion of the total cost, these costs are not additive with total_bytes_billed. Moreover, this field only track external service costs that will show up as BigQuery costs (e.g. training BigQuery ML job with google cloud CAIP or Automl Tables services), not other costs which may be accrued by running the query (e.g. reading from Bigtable or Cloud Storage). The external service costs with different billing sku (e.g. CAIP job is charged based on VM usage) are converted to BigQuery billed_bytes and slot_ms with equivalent amount of US dollars. Services may not directly correlate to these metrics, but these are the equivalents for billing purposes. Output only.

| Property | Type | Description |
|----------|------|-------------|
| `billingMethod` | `string` | The billing method used for the external job. This field, set to `SERVICES_SKU`, is only used whe... |
| `bytesBilled` | `string` | External service cost in terms of bigquery bytes billed. |
| `bytesProcessed` | `string` | External service cost in terms of bigquery bytes processed. |
| `externalService` | `string` | External service name. |
| `reservedSlotCount` | `string` | Non-preemptable reserved slots used for external job. For example, reserved slots for Cloua AI Pl... |
| `slotMs` | `string` | External service cost in terms of bigquery slot milliseconds. |

### `FeatureValue`

Representative value of a single feature within the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalValue` | `CategoricalValue` | The categorical feature value. |
| `featureColumn` | `string` | The feature column name. |
| `numericalValue` | `number` | The numerical feature value. This is the centroid value for this feature. |

### `ForeignTypeInfo`

Metadata about the foreign data type definition such as the system in which the type is defined.

| Property | Type | Description |
|----------|------|-------------|
| `typeSystem` | `string` | Required. Specifies the system which defines the foreign data type. |

### `ForeignViewDefinition`

A view can be represented in multiple ways. Each representation has its own dialect. This message stores the metadata required for these representations.

| Property | Type | Description |
|----------|------|-------------|
| `dialect` | `string` | Optional. Represents the dialect of the query. |
| `query` | `string` | Required. The query that defines the view. |

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

### `GetQueryResultsResponse`

Response object of GetQueryResults.

| Property | Type | Description |
|----------|------|-------------|
| `cacheHit` | `boolean` | Whether the query result was fetched from the query cache. |
| `errors` | `array<ErrorProto>` | Output only. The first errors or warnings encountered during the running of the job. The final me... |
| `etag` | `string` | A hash of this response. |
| `jobComplete` | `boolean` | Whether the query has completed or not. If rows or totalRows are present, this will always be tru... |
| `jobReference` | `JobReference` | Reference to the BigQuery Job that was created to run the query. This field will be present even ... |
| `kind` | `string` | The resource type of the response. |
| `numDmlAffectedRows` | `string` | Output only. The number of rows affected by a DML statement. Present only for DML statements INSE... |
| `pageToken` | `string` | A token used for paging results. When this token is non-empty, it indicates additional results ar... |
| `rows` | `array<TableRow>` | An object with as many results as can be contained within the maximum permitted reply size. To ge... |
| `schema` | `TableSchema` | The schema of the results. Present only when the query completes successfully. |
| `totalBytesProcessed` | `string` | The total number of bytes processed for this query. |
| `totalRows` | `string` | The total number of rows in the complete query result set, which can be more than the number of r... |

### `GetServiceAccountResponse`

Response object of GetServiceAccount

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The service account email address. |
| `kind` | `string` | The resource type of the response. |

### `GlobalExplanation`

Global explanations containing the top most important features after training.

| Property | Type | Description |
|----------|------|-------------|
| `classLabel` | `string` | Class label for this set of global explanations. Will be empty/null for binary logistic and linea... |
| `explanations` | `array<Explanation>` | A list of the top global explanations. Sorted by absolute value of attribution in descending order. |

### `GoogleSheetsOptions`

Options specific to Google Sheets data sources.

| Property | Type | Description |
|----------|------|-------------|
| `range` | `string` | Optional. Range of a sheet to query from. Only used when non-empty. Typical format: sheet_name!to... |
| `skipLeadingRows` | `string` | Optional. The number of rows at the top of a sheet that BigQuery will skip when reading the data.... |

### `HighCardinalityJoin`

High cardinality join detailed information.

| Property | Type | Description |
|----------|------|-------------|
| `leftRows` | `string` | Output only. Count of left input rows. |
| `outputRows` | `string` | Output only. Count of the output rows. |
| `rightRows` | `string` | Output only. Count of right input rows. |
| `stepIndex` | `integer` | Output only. The index of the join operator in the ExplainQueryStep lists. |

### `HivePartitioningOptions`

Options for configuring hive partitioning detect.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<string>` | Output only. For permanent external tables, this field is populated with the hive partition keys ... |
| `mode` | `string` | Optional. When set, what mode of hive partitioning to use when reading data. The following modes ... |
| `requirePartitionFilter` | `boolean` | Optional. If set to true, queries over this table require a partition filter that can be used for... |
| `sourceUriPrefix` | `string` | Optional. When hive partition detection is requested, a common prefix for all source uris must be... |

### `HparamSearchSpaces`

Hyperparameter search spaces. These should be a subset of training_options.

| Property | Type | Description |
|----------|------|-------------|
| `activationFn` | `StringHparamSearchSpace` | Activation functions of neural network models. |
| `batchSize` | `IntHparamSearchSpace` | Mini batch sample size. |
| `boosterType` | `StringHparamSearchSpace` | Booster type for boosted tree models. |
| `colsampleBylevel` | `DoubleHparamSearchSpace` | Subsample ratio of columns for each level for boosted tree models. |
| `colsampleBynode` | `DoubleHparamSearchSpace` | Subsample ratio of columns for each node(split) for boosted tree models. |
| `colsampleBytree` | `DoubleHparamSearchSpace` | Subsample ratio of columns when constructing each tree for boosted tree models. |
| `dartNormalizeType` | `StringHparamSearchSpace` | Dart normalization type for boosted tree models. |
| `dropout` | `DoubleHparamSearchSpace` | Dropout probability for dnn model training and boosted tree models using dart booster. |
| `hiddenUnits` | `IntArrayHparamSearchSpace` | Hidden units for neural network models. |
| `l1Reg` | `DoubleHparamSearchSpace` | L1 regularization coefficient. |
| `l2Reg` | `DoubleHparamSearchSpace` | L2 regularization coefficient. |
| `learnRate` | `DoubleHparamSearchSpace` | Learning rate of training jobs. |
| `maxTreeDepth` | `IntHparamSearchSpace` | Maximum depth of a tree for boosted tree models. |
| `minSplitLoss` | `DoubleHparamSearchSpace` | Minimum split loss for boosted tree models. |
| `minTreeChildWeight` | `IntHparamSearchSpace` | Minimum sum of instance weight needed in a child for boosted tree models. |
| `numClusters` | `IntHparamSearchSpace` | Number of clusters for k-means. |
| `numFactors` | `IntHparamSearchSpace` | Number of latent factors to train on. |
| `numParallelTree` | `IntHparamSearchSpace` | Number of parallel trees for boosted tree models. |
| `optimizer` | `StringHparamSearchSpace` | Optimizer of TF models. |
| `subsample` | `DoubleHparamSearchSpace` | Subsample the training data to grow tree to prevent overfitting for boosted tree models. |
| `treeMethod` | `StringHparamSearchSpace` | Tree construction algorithm for boosted tree models. |
| `walsAlpha` | `DoubleHparamSearchSpace` | Hyperparameter for matrix factoration when implicit feedback type is specified. |

### `HparamTuningTrial`

Training info of a trial in [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeMs` | `string` | Ending time of the trial. |
| `errorMessage` | `string` | Error message for FAILED and INFEASIBLE trial. |
| `evalLoss` | `number` | Loss computed on the eval data at the end of trial. |
| `evaluationMetrics` | `EvaluationMetrics` | Evaluation metrics of this trial calculated on the test data. Empty in Job API. |
| `hparamTuningEvaluationMetrics` | `EvaluationMetrics` | Hyperparameter tuning evaluation metrics of this trial calculated on the eval data. Unlike evalua... |
| `hparams` | `TrainingOptions` | The hyperprameters selected for this trial. |
| `startTimeMs` | `string` | Starting time of the trial. |
| `status` | `string` | The status of the trial. |
| `trainingLoss` | `number` | Loss computed on the training data at the end of trial. |
| `trialId` | `string` | 1-based index of the trial. |

### `IncrementalResultStats`

Statistics related to Incremental Query Results. Populated as part of JobStatistics2. This feature is not yet available.

| Property | Type | Description |
|----------|------|-------------|
| `disabledReason` | `string` | Output only. Reason why incremental query results are/were not written by the query. |
| `resultSetLastModifyTime` | `string` | Output only. The time at which the result table's contents were modified. May be absent if no res... |
| `resultSetLastReplaceTime` | `string` | Output only. The time at which the result table's contents were completely replaced. May be absen... |

### `IndexPruningStats`

Statistics for index pruning.

| Property | Type | Description |
|----------|------|-------------|
| `baseTable` | `TableReference` | The base table reference. |
| `indexId` | `string` | The index id. |
| `postIndexPruningParallelInputCount` | `string` | The number of parallel inputs after index pruning. |
| `preIndexPruningParallelInputCount` | `string` | The number of parallel inputs before index pruning. |

### `IndexUnusedReason`

Reason about why no search index was used in the search query (or sub-query).

| Property | Type | Description |
|----------|------|-------------|
| `baseTable` | `TableReference` | Specifies the base table involved in the reason that no search index was used. |
| `code` | `string` | Specifies the high-level reason for the scenario when no search index was used. |
| `indexName` | `string` | Specifies the name of the unused search index, if available. |
| `message` | `string` | Free form human-readable reason for the scenario when no search index was used. |

### `InputDataChange`

Details about the input data change insight.

| Property | Type | Description |
|----------|------|-------------|
| `recordsReadDiffPercentage` | `number` | Output only. Records read difference percentage compared to a previous run. |

### `IntArray`

An array of int.

| Property | Type | Description |
|----------|------|-------------|
| `elements` | `array<string>` | Elements in the int array. |

### `IntArrayHparamSearchSpace`

Search space for int array.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `array<IntArray>` | Candidates for the int array parameter. |

### `IntCandidates`

Discrete candidates of an int hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `array<string>` | Candidates for the int parameter in increasing order. |

### `IntHparamSearchSpace`

Search space for an int hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `IntCandidates` | Candidates of the int hyperparameter. |
| `range` | `IntRange` | Range of the int hyperparameter. |

### `IntRange`

Range of an int hyperparameter.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `string` | Max value of the int parameter. |
| `min` | `string` | Min value of the int parameter. |

### `IterationResult`

Information about a single iteration of the training run.

| Property | Type | Description |
|----------|------|-------------|
| `arimaResult` | `ArimaResult` | Arima result. |
| `clusterInfos` | `array<ClusterInfo>` | Information about top clusters for clustering models. |
| `durationMs` | `string` | Time taken to run the iteration in milliseconds. |
| `evalLoss` | `number` | Loss computed on the eval data at the end of iteration. |
| `index` | `integer` | Index of the iteration, 0 based. |
| `learnRate` | `number` | Learn rate used for this iteration. |
| `principalComponentInfos` | `array<PrincipalComponentInfo>` | The information of the principal components. |
| `trainingLoss` | `number` | Loss computed on the training data at the end of iteration. |

### `Job`

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `JobConfiguration` | Required. Describes the job configuration. |
| `etag` | `string` | Output only. A hash of this resource. |
| `id` | `string` | Output only. Opaque ID field of the job. |
| `jobCreationReason` | `JobCreationReason` | Output only. The reason why a Job was created. |
| `jobReference` | `JobReference` | Optional. Reference describing the unique-per-user name of the job. |
| `kind` | `string` | Output only. The type of the resource. |
| `principal_subject` | `string` | Output only. [Full-projection-only] String representation of identity of requesting party. Popula... |
| `selfLink` | `string` | Output only. A URL that can be used to access the resource again. |
| `statistics` | `JobStatistics` | Output only. Information about the job, including starting time and ending time of the job. |
| `status` | `JobStatus` | Output only. The status of this job. Examine this value when polling an asynchronous job to see i... |
| `user_email` | `string` | Output only. Email address of the user who ran the job. |

### `JobCancelResponse`

Describes format of a jobs cancellation response.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `Job` | The final state of the job. |
| `kind` | `string` | The resource type of the response. |

### `JobConfiguration`

| Property | Type | Description |
|----------|------|-------------|
| `copy` | `JobConfigurationTableCopy` | [Pick one] Copies a table. |
| `dryRun` | `boolean` | Optional. If set, don't actually run this job. A valid query will return a mostly empty response ... |
| `extract` | `JobConfigurationExtract` | [Pick one] Configures an extract job. |
| `jobTimeoutMs` | `string` | Optional. Job timeout in milliseconds relative to the job creation time. If this time limit is ex... |
| `jobType` | `string` | Output only. The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN. |
| `labels` | `object` | The labels associated with this job. You can use these to organize and group your jobs. Label key... |
| `load` | `JobConfigurationLoad` | [Pick one] Configures a load job. |
| `maxSlots` | `integer` | Optional. A target limit on the rate of slot consumption by this job. If set to a value > 0, BigQ... |
| `query` | `JobConfigurationQuery` | [Pick one] Configures a query job. |
| `reservation` | `string` | Optional. The reservation that job would use. User can specify a reservation to execute the job. ... |

### `JobConfigurationExtract`

JobConfigurationExtract configures a job that exports data from a BigQuery table into Google Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `compression` | `string` | Optional. The compression type to use for exported files. Possible values include DEFLATE, GZIP, ... |
| `destinationFormat` | `string` | Optional. The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET,... |
| `destinationUri` | `string` | [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-... |
| `destinationUris` | `array<string>` | [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should b... |
| `fieldDelimiter` | `string` | Optional. When extracting data in CSV format, this defines the delimiter to use between fields in... |
| `modelExtractOptions` | `ModelExtractOptions` | Optional. Model extract options only applicable when extracting models. |
| `printHeader` | `boolean` | Optional. Whether to print out a header row in the results. Default is true. Not applicable when ... |
| `sourceModel` | `ModelReference` | A reference to the model being exported. |
| `sourceTable` | `TableReference` | A reference to the table being exported. |
| `useAvroLogicalTypes` | `boolean` | Whether to use logical types when extracting to AVRO format. Not applicable when extracting models. |

### `JobConfigurationLoad`

JobConfigurationLoad contains the configuration properties for loading data into a destination table.

| Property | Type | Description |
|----------|------|-------------|
| `allowJaggedRows` | `boolean` | Optional. Accept rows that are missing trailing optional columns. The missing values are treated ... |
| `allowQuotedNewlines` | `boolean` | Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV ... |
| `autodetect` | `boolean` | Optional. Indicates if we should automatically infer the options and schema for CSV and JSON sour... |
| `clustering` | `Clustering` | Clustering specification for the destination table. |
| `columnNameCharacterMap` | `string` | Optional. Character map supported for column names in CSV/Parquet loads. Defaults to STRICT and c... |
| `connectionProperties` | `array<ConnectionProperty>` | Optional. Connection properties which can modify the load job behavior. Currently, only the 'sess... |
| `copyFilesOnly` | `boolean` | Optional. [Experimental] Configures the load job to copy files directly to the destination BigLak... |
| `createDisposition` | `string` | Optional. Specifies whether the job is allowed to create new tables. The following values are sup... |
| `createSession` | `boolean` | Optional. If this property is true, the job creates a new session using a randomly generated sess... |
| `dateFormat` | `string` | Optional. Date format used for parsing DATE values. |
| `datetimeFormat` | `string` | Optional. Date format used for parsing DATETIME values. |
| `decimalTargetTypes` | `array<string>` | Defines the list of possible SQL data types to which the source decimal values are converted. Thi... |
| `destinationEncryptionConfiguration` | `EncryptionConfiguration` | Custom encryption configuration (e.g., Cloud KMS keys) |
| `destinationTable` | `TableReference` | [Required] The destination table to load the data into. |
| `destinationTableProperties` | `DestinationTableProperties` | Optional. [Experimental] Properties with which to create the destination table if it is new. |
| `encoding` | `string` | Optional. The character encoding of the data. The supported values are UTF-8, ISO-8859-1, UTF-16B... |
| `fieldDelimiter` | `string` | Optional. The separator character for fields in a CSV file. The separator is interpreted as a sin... |
| `fileSetSpecType` | `string` | Optional. Specifies how source URIs are interpreted for constructing the file set to load. By def... |
| `hivePartitioningOptions` | `HivePartitioningOptions` | Optional. When set, configures hive partitioning support. Not all storage formats support hive pa... |
| `ignoreUnknownValues` | `boolean` | Optional. Indicates if BigQuery should allow extra values that are not represented in the table s... |
| `jsonExtension` | `string` | Optional. Load option to be used together with source_format newline-delimited JSON to indicate t... |
| `maxBadRecords` | `integer` | Optional. The maximum number of bad records that BigQuery can ignore when running the job. If the... |
| `nullMarker` | `string` | Optional. Specifies a string that represents a null value in a CSV file. For example, if you spec... |
| `nullMarkers` | `array<string>` | Optional. A list of strings represented as SQL NULL value in a CSV file. null_marker and null_mar... |
| `parquetOptions` | `ParquetOptions` | Optional. Additional properties to set if sourceFormat is set to PARQUET. |
| `preserveAsciiControlCharacters` | `boolean` | Optional. When sourceFormat is set to "CSV", this indicates whether the embedded ASCII control ch... |
| `projectionFields` | `array<string>` | If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQ... |
| `quote` | `string` | Optional. The value that is used to quote data sections in a CSV file. BigQuery converts the stri... |
| `rangePartitioning` | `RangePartitioning` | Range partitioning specification for the destination table. Only one of timePartitioning and rang... |
| `referenceFileSchemaUri` | `string` | Optional. The user can provide a reference file with the reader schema. This file is only loaded ... |
| `schema` | `TableSchema` | Optional. The schema for the destination table. The schema can be omitted if the destination tabl... |
| `schemaInline` | `string` | [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For e... |
| `schemaInlineFormat` | `string` | [Deprecated] The format of the schemaInline property. |
| `schemaUpdateOptions` | `array<string>` | Allows the schema of the destination table to be updated as a side effect of the load job if a sc... |
| `skipLeadingRows` | `integer` | Optional. The number of rows at the top of a CSV file that BigQuery will skip when loading the da... |
| `sourceColumnMatch` | `string` | Optional. Controls the strategy used to match loaded columns to the schema. If not set, a sensibl... |
| `sourceFormat` | `string` | Optional. The format of the data files. For CSV files, specify "CSV". For datastore backups, spec... |
| `sourceUris` | `array<string>` | [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Sto... |
| `timeFormat` | `string` | Optional. Date format used for parsing TIME values. |
| `timePartitioning` | `TimePartitioning` | Time-based partitioning specification for the destination table. Only one of timePartitioning and... |
| `timeZone` | `string` | Optional. Default time zone that will apply when parsing timestamp values that have no specific t... |
| `timestampFormat` | `string` | Optional. Date format used for parsing TIMESTAMP values. |
| `timestampTargetPrecision` | `array<integer>` | Precisions (maximum number of total digits in base 10) for seconds of TIMESTAMP types that are al... |
| `useAvroLogicalTypes` | `boolean` | Optional. If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the c... |
| `writeDisposition` | `string` | Optional. Specifies the action that occurs if the destination table already exists. The following... |

### `JobConfigurationQuery`

JobConfigurationQuery configures a BigQuery query job.

| Property | Type | Description |
|----------|------|-------------|
| `allowLargeResults` | `boolean` | Optional. If true and query uses legacy SQL dialect, allows the query to produce arbitrarily larg... |
| `clustering` | `Clustering` | Clustering specification for the destination table. |
| `connectionProperties` | `array<ConnectionProperty>` | Connection properties which can modify the query behavior. |
| `continuous` | `boolean` | [Optional] Specifies whether the query should be executed as a continuous query. The default valu... |
| `createDisposition` | `string` | Optional. Specifies whether the job is allowed to create new tables. The following values are sup... |
| `createSession` | `boolean` | If this property is true, the job creates a new session using a randomly generated session_id. To... |
| `defaultDataset` | `DatasetReference` | Optional. Specifies the default dataset to use for unqualified table names in the query. This set... |
| `destinationEncryptionConfiguration` | `EncryptionConfiguration` | Custom encryption configuration (e.g., Cloud KMS keys) |
| `destinationTable` | `TableReference` | Optional. Describes the table where the query results should be stored. This property must be set... |
| `flattenResults` | `boolean` | Optional. If true and query uses legacy SQL dialect, flattens all nested and repeated fields in t... |
| `maximumBillingTier` | `integer` | Optional. [Deprecated] Maximum billing tier allowed for this query. The billing tier controls the... |
| `maximumBytesBilled` | `string` | Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will ... |
| `parameterMode` | `string` | GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named... |
| `preserveNulls` | `boolean` | [Deprecated] This property is deprecated. |
| `priority` | `string` | Optional. Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The ... |
| `query` | `string` | [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the ... |
| `queryParameters` | `array<QueryParameter>` | Query parameters for GoogleSQL queries. |
| `rangePartitioning` | `RangePartitioning` | Range partitioning specification for the destination table. Only one of timePartitioning and rang... |
| `schemaUpdateOptions` | `array<string>` | Allows the schema of the destination table to be updated as a side effect of the query job. Schem... |
| `scriptOptions` | `ScriptOptions` | Options controlling the execution of scripts. |
| `systemVariables` | `SystemVariables` | Output only. System variables for GoogleSQL queries. A system variable is output if the variable ... |
| `tableDefinitions` | `object` | Optional. You can specify external table definitions, which operate as ephemeral tables that can ... |
| `timePartitioning` | `TimePartitioning` | Time-based partitioning specification for the destination table. Only one of timePartitioning and... |
| `useLegacySql` | `boolean` | Optional. Specifies whether to use BigQuery's legacy SQL dialect for this query. The default valu... |
| `useQueryCache` | `boolean` | Optional. Whether to look for the result in the query cache. The query cache is a best-effort cac... |
| `userDefinedFunctionResources` | `array<UserDefinedFunctionResource>` | Describes user-defined function resources used in the query. |
| `writeDisposition` | `string` | Optional. Specifies the action that occurs if the destination table already exists. The following... |
| `writeIncrementalResults` | `boolean` | Optional. This is only supported for a SELECT query using a temporary table. If set, the query is... |

### `JobConfigurationTableCopy`

JobConfigurationTableCopy configures a job that copies data from one table to another. For more information on copying tables, see [Copy a table](https://cloud.google.com/bigquery/docs/managing-tables#copy-table).

| Property | Type | Description |
|----------|------|-------------|
| `createDisposition` | `string` | Optional. Specifies whether the job is allowed to create new tables. The following values are sup... |
| `destinationEncryptionConfiguration` | `EncryptionConfiguration` | Custom encryption configuration (e.g., Cloud KMS keys). |
| `destinationExpirationTime` | `string` | Optional. The time when the destination table expires. Expired tables will be deleted and their s... |
| `destinationTable` | `TableReference` | [Required] The destination table. |
| `operationType` | `string` | Optional. Supported operation types in table copy job. |
| `sourceTable` | `TableReference` | [Pick one] Source table to copy. |
| `sourceTables` | `array<TableReference>` | [Pick one] Source tables to copy. |
| `writeDisposition` | `string` | Optional. Specifies the action that occurs if the destination table already exists. The following... |

### `JobCreationReason`

Reason about why a Job was created from a [`jobs.query`](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query) method when used with `JOB_CREATION_OPTIONAL` Job creation mode. For [`jobs.insert`](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/insert) method calls it will always be `REQUESTED`.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. Specifies the high level reason why a Job was created. |

### `JobList`

JobList is the response format for a jobs.list call.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A hash of this page of results. |
| `jobs` | `array<object>` | List of jobs that were requested. |
| `kind` | `string` | The resource type of the response. |
| `nextPageToken` | `string` | A token to request the next page of results. |
| `unreachable` | `array<string>` | A list of skipped locations that were unreachable. For more information about BigQuery locations,... |

### `JobReference`

A job reference is a fully qualified identifier for referring to a job.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Required. The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), undersco... |
| `location` | `string` | Optional. The geographic location of the job. The default value is US. For more information about... |
| `projectId` | `string` | Required. The ID of the project containing this job. |

### `JobStatistics`

Statistics for a single job execution.

| Property | Type | Description |
|----------|------|-------------|
| `completionRatio` | `number` | Output only. [TrustedTester] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs. |
| `copy` | `JobStatistics5` | Output only. Statistics for a copy job. |
| `creationTime` | `string` | Output only. Creation time of this job, in milliseconds since the epoch. This field will be prese... |
| `dataMaskingStatistics` | `DataMaskingStatistics` | Output only. Statistics for data-masking. Present only for query and extract jobs. |
| `edition` | `string` | Output only. Name of edition corresponding to the reservation for this job at the time of this up... |
| `endTime` | `string` | Output only. End time of this job, in milliseconds since the epoch. This field will be present wh... |
| `extract` | `JobStatistics4` | Output only. Statistics for an extract job. |
| `finalExecutionDurationMs` | `string` | Output only. The duration in milliseconds of the execution of the final attempt of this job, as B... |
| `load` | `JobStatistics3` | Output only. Statistics for a load job. |
| `numChildJobs` | `string` | Output only. Number of child jobs executed. |
| `parentJobId` | `string` | Output only. If this is a child job, specifies the job ID of the parent. |
| `query` | `JobStatistics2` | Output only. Statistics for a query job. |
| `quotaDeferments` | `array<string>` | Output only. Quotas which delayed this job's start time. |
| `reservationGroupPath` | `array<string>` | Output only. The reservation group path of the reservation assigned to this job. This field has a... |
| `reservationUsage` | `array<object>` | Output only. Job resource usage breakdown by reservation. This field reported misleading informat... |
| `reservation_id` | `string` | Output only. Name of the primary reservation assigned to this job. Note that this could be differ... |
| `rowLevelSecurityStatistics` | `RowLevelSecurityStatistics` | Output only. Statistics for row-level security. Present only for query and extract jobs. |
| `scriptStatistics` | `ScriptStatistics` | Output only. If this a child job of a script, specifies information about the context of this job... |
| `sessionInfo` | `SessionInfo` | Output only. Information of the session if this job is part of one. |
| `startTime` | `string` | Output only. Start time of this job, in milliseconds since the epoch. This field will be present ... |
| `totalBytesProcessed` | `string` | Output only. Total bytes processed for the job. |
| `totalSlotMs` | `string` | Output only. Slot-milliseconds for the job. |
| `transactionInfo` | `TransactionInfo` | Output only. [Alpha] Information of the multi-statement transaction if this job is part of one. T... |

### `JobStatistics2`

Statistics for a query job.

| Property | Type | Description |
|----------|------|-------------|
| `biEngineStatistics` | `BiEngineStatistics` | Output only. BI Engine specific Statistics. |
| `billingTier` | `integer` | Output only. Billing tier for the job. This is a BigQuery-specific concept which is not related t... |
| `cacheHit` | `boolean` | Output only. Whether the query result was fetched from the query cache. |
| `dclTargetDataset` | `DatasetReference` | Output only. Referenced dataset for DCL statement. |
| `dclTargetTable` | `TableReference` | Output only. Referenced table for DCL statement. |
| `dclTargetView` | `TableReference` | Output only. Referenced view for DCL statement. |
| `ddlAffectedRowAccessPolicyCount` | `string` | Output only. The number of row access policies affected by a DDL statement. Present only for DROP... |
| `ddlDestinationTable` | `TableReference` | Output only. The table after rename. Present only for ALTER TABLE RENAME TO query. |
| `ddlOperationPerformed` | `string` | Output only. The DDL operation performed, possibly dependent on the pre-existence of the DDL target. |
| `ddlTargetDataset` | `DatasetReference` | Output only. The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA(dataset) queries. |
| `ddlTargetRoutine` | `RoutineReference` | Output only. [Beta] The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries. |
| `ddlTargetRowAccessPolicy` | `RowAccessPolicyReference` | Output only. The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY que... |
| `ddlTargetTable` | `TableReference` | Output only. The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCES... |
| `dmlStats` | `DmlStatistics` | Output only. Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or TRUNCATE. |
| `estimatedBytesProcessed` | `string` | Output only. The original estimate of bytes processed for the job. |
| `exportDataStatistics` | `ExportDataStatistics` | Output only. Stats for EXPORT DATA statement. |
| `externalServiceCosts` | `array<ExternalServiceCost>` | Output only. Job cost breakdown as bigquery internal cost and external service costs. |
| `incrementalResultStats` | `IncrementalResultStats` | Output only. Statistics related to incremental query results, if enabled for the query. This feat... |
| `loadQueryStatistics` | `LoadQueryStatistics` | Output only. Statistics for a LOAD query. |
| `materializedViewStatistics` | `MaterializedViewStatistics` | Output only. Statistics of materialized views of a query job. |
| `metadataCacheStatistics` | `MetadataCacheStatistics` | Output only. Statistics of metadata cache usage in a query for BigLake tables. |
| `mlStatistics` | `MlStatistics` | Output only. Statistics of a BigQuery ML training job. |
| `modelTraining` | `BigQueryModelTraining` | Deprecated. |
| `modelTrainingCurrentIteration` | `integer` | Deprecated. |
| `modelTrainingExpectedTotalIteration` | `string` | Deprecated. |
| `numDmlAffectedRows` | `string` | Output only. The number of rows affected by a DML statement. Present only for DML statements INSE... |
| `performanceInsights` | `PerformanceInsights` | Output only. Performance insights. |
| `queryInfo` | `QueryInfo` | Output only. Query optimization information for a QUERY job. |
| `queryPlan` | `array<ExplainQueryStage>` | Output only. Describes execution plan for the query. |
| `referencedRoutines` | `array<RoutineReference>` | Output only. Referenced routines for the job. |
| `referencedTables` | `array<TableReference>` | Output only. Referenced tables for the job. |
| `reservationUsage` | `array<object>` | Output only. Job resource usage breakdown by reservation. This field reported misleading informat... |
| `schema` | `TableSchema` | Output only. The schema of the results. Present only for successful dry run of non-legacy SQL que... |
| `searchStatistics` | `SearchStatistics` | Output only. Search query specific statistics. |
| `sparkStatistics` | `SparkStatistics` | Output only. Statistics of a Spark procedure job. |
| `statementType` | `string` | Output only. The type of query statement, if valid. Possible values: * `SELECT`: [`SELECT`](https... |
| `timeline` | `array<QueryTimelineSample>` | Output only. Describes a timeline of job execution. |
| `totalBytesBilled` | `string` | Output only. If the project is configured to use on-demand pricing, then this field contains the ... |
| `totalBytesProcessed` | `string` | Output only. Total bytes processed for the job. |
| `totalBytesProcessedAccuracy` | `string` | Output only. For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the ac... |
| `totalPartitionsProcessed` | `string` | Output only. Total number of partitions processed from all partitioned tables referenced in the job. |
| `totalServicesSkuSlotMs` | `string` | Output only. Total slot milliseconds for the job that ran on external services and billed on the ... |
| `totalSlotMs` | `string` | Output only. Slot-milliseconds for the job. |
| `transferredBytes` | `string` | Output only. Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CRE... |
| `undeclaredQueryParameters` | `array<QueryParameter>` | Output only. GoogleSQL only: list of undeclared query parameters detected during a dry run valida... |
| `vectorSearchStatistics` | `VectorSearchStatistics` | Output only. Vector Search query specific statistics. |

### `JobStatistics3`

Statistics for a load job.

| Property | Type | Description |
|----------|------|-------------|
| `badRecords` | `string` | Output only. The number of bad records encountered. Note that if the job has failed because of mo... |
| `inputFileBytes` | `string` | Output only. Number of bytes of source data in a load job. |
| `inputFiles` | `string` | Output only. Number of source files in a load job. |
| `outputBytes` | `string` | Output only. Size of the loaded data in bytes. Note that while a load job is in the running state... |
| `outputRows` | `string` | Output only. Number of rows imported in a load job. Note that while an import job is in the runni... |
| `timeline` | `array<QueryTimelineSample>` | Output only. Describes a timeline of job execution. |

### `JobStatistics4`

Statistics for an extract job.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUriFileCounts` | `array<string>` | Output only. Number of files per destination URI or URI pattern specified in the extract configur... |
| `inputBytes` | `string` | Output only. Number of user bytes extracted into the result. This is the byte count as computed b... |
| `timeline` | `array<QueryTimelineSample>` | Output only. Describes a timeline of job execution. |

### `JobStatistics5`

Statistics for a copy job.

| Property | Type | Description |
|----------|------|-------------|
| `copiedLogicalBytes` | `string` | Output only. Number of logical bytes copied to the destination table. |
| `copiedRows` | `string` | Output only. Number of rows copied to the destination table. |

### `JobStatus`

| Property | Type | Description |
|----------|------|-------------|
| `errorResult` | `ErrorProto` | Output only. Final error result of the job. If present, indicates that the job has completed and ... |
| `errors` | `array<ErrorProto>` | Output only. The first errors encountered during the running of the job. The final message includ... |
| `state` | `string` | Output only. Running state of the job. Valid states include 'PENDING', 'RUNNING', and 'DONE'. |

### `JoinRestrictionPolicy`

Represents privacy policy associated with "join restrictions". Join restriction gives data providers the ability to enforce joins on the 'join_allowed_columns' when data is queried from a privacy protected view.

| Property | Type | Description |
|----------|------|-------------|
| `joinAllowedColumns` | `array<string>` | Optional. The only columns that joins are allowed on. This field is must be specified for join_co... |
| `joinCondition` | `string` | Optional. Specifies if a join is required or not on queries for the view. Default is JOIN_CONDITI... |

### `JsonObject`

Represents a single JSON object.

### `JsonOptions`

Json Options for load and make external tables.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | Optional. The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE,... |

### `JsonValue`

### `LinkedDatasetMetadata`

Metadata about the Linked Dataset.

| Property | Type | Description |
|----------|------|-------------|
| `linkState` | `string` | Output only. Specifies whether Linked Dataset is currently in a linked state or not. |

### `LinkedDatasetSource`

A dataset source type which refers to another BigQuery dataset.

| Property | Type | Description |
|----------|------|-------------|
| `sourceDataset` | `DatasetReference` | The source dataset reference contains project numbers and not project ids. |

### `ListModelsResponse`

Response format for a single page when listing BigQuery ML models.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<Model>` | Models in the requested dataset. Only the following fields are populated: model_reference, model_... |
| `nextPageToken` | `string` | A token to request the next page of results. |

### `ListRoutinesResponse`

Describes the format of a single result page when listing routines.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of results. |
| `routines` | `array<Routine>` | Routines in the requested dataset. Unless read_mask is set in the request, only the following fie... |

### `ListRowAccessPoliciesResponse`

Response message for the ListRowAccessPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of results. |
| `rowAccessPolicies` | `array<RowAccessPolicy>` | Row access policies on the requested table. |

### `LoadQueryStatistics`

Statistics for a LOAD query.

| Property | Type | Description |
|----------|------|-------------|
| `badRecords` | `string` | Output only. The number of bad records encountered while processing a LOAD query. Note that if th... |
| `bytesTransferred` | `string` | Output only. This field is deprecated. The number of bytes of source data copied over the network... |
| `inputFileBytes` | `string` | Output only. Number of bytes of source data in a LOAD query. |
| `inputFiles` | `string` | Output only. Number of source files in a LOAD query. |
| `outputBytes` | `string` | Output only. Size of the loaded data in bytes. Note that while a LOAD query is in the running sta... |
| `outputRows` | `string` | Output only. Number of rows imported in a LOAD query. Note that while a LOAD query is in the runn... |

### `LocationMetadata`

BigQuery-specific metadata about a location. This will be set on google.cloud.location.Location.metadata in Cloud Location API responses.

| Property | Type | Description |
|----------|------|-------------|
| `legacyLocationId` | `string` | The legacy BigQuery location ID, e.g. “EU” for the “europe” location. This is for any API consume... |

### `MaterializedView`

A materialized view considered for a query job.

| Property | Type | Description |
|----------|------|-------------|
| `chosen` | `boolean` | Whether the materialized view is chosen for the query. A materialized view can be chosen to rewri... |
| `estimatedBytesSaved` | `string` | If present, specifies a best-effort estimation of the bytes saved by using the materialized view ... |
| `rejectedReason` | `string` | If present, specifies the reason why the materialized view was not chosen for the query. |
| `tableReference` | `TableReference` | The candidate materialized view. |

### `MaterializedViewDefinition`

Definition and configuration of a materialized view.

| Property | Type | Description |
|----------|------|-------------|
| `allowNonIncrementalDefinition` | `boolean` | Optional. This option declares the intention to construct a materialized view that isn't refreshe... |
| `enableRefresh` | `boolean` | Optional. Enable automatic refresh of the materialized view when the base table is updated. The d... |
| `lastRefreshTime` | `string` | Output only. The time when this materialized view was last refreshed, in milliseconds since the e... |
| `maxStaleness` | `string` | [Optional] Max staleness of data that could be returned when materizlized view is queried (format... |
| `query` | `string` | Required. A query whose results are persisted. |
| `refreshIntervalMs` | `string` | Optional. The maximum frequency at which this materialized view will be refreshed. The default va... |

### `MaterializedViewStatistics`

Statistics of materialized views considered in a query job.

| Property | Type | Description |
|----------|------|-------------|
| `materializedView` | `array<MaterializedView>` | Materialized views considered for the query job. Only certain materialized views are used. For a ... |

### `MaterializedViewStatus`

Status of a materialized view. The last refresh timestamp status is omitted here, but is present in the MaterializedViewDefinition message.

| Property | Type | Description |
|----------|------|-------------|
| `lastRefreshStatus` | `ErrorProto` | Output only. Error result of the last automatic refresh. If present, indicates that the last auto... |
| `refreshWatermark` | `string` | Output only. Refresh watermark of materialized view. The base tables' data were collected into th... |

### `MetadataCacheStatistics`

Statistics for metadata caching in queried tables.

| Property | Type | Description |
|----------|------|-------------|
| `tableMetadataCacheUsage` | `array<TableMetadataCacheUsage>` | Set for the Metadata caching eligible tables referenced in the query. |

### `MlStatistics`

Job statistics specific to a BigQuery ML training job.

| Property | Type | Description |
|----------|------|-------------|
| `hparamTrials` | `array<HparamTuningTrial>` | Output only. Trials of a [hyperparameter tuning job](https://cloud.google.com/bigquery-ml/docs/re... |
| `iterationResults` | `array<IterationResult>` | Results for all completed iterations. Empty for [hyperparameter tuning jobs](https://cloud.google... |
| `maxIterations` | `string` | Output only. Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query... |
| `modelType` | `string` | Output only. The type of the model that is being trained. |
| `trainingType` | `string` | Output only. Training type of the job. |

### `Model`

| Property | Type | Description |
|----------|------|-------------|
| `bestTrialId` | `string` | The best trial_id across all training runs. |
| `creationTime` | `string` | Output only. The time when this model was created, in millisecs since the epoch. |
| `defaultTrialId` | `string` | Output only. The default trial_id to use in TVFs when the trial_id is not passed in. For single-o... |
| `description` | `string` | Optional. A user-friendly description of this model. |
| `encryptionConfiguration` | `EncryptionConfiguration` | Custom encryption configuration (e.g., Cloud KMS keys). This shows the encryption configuration o... |
| `etag` | `string` | Output only. A hash of this resource. |
| `expirationTime` | `string` | Optional. The time when this model expires, in milliseconds since the epoch. If not present, the ... |
| `featureColumns` | `array<StandardSqlField>` | Output only. Input feature columns for the model inference. If the model is trained with TRANSFOR... |
| `friendlyName` | `string` | Optional. A descriptive name for this model. |
| `hparamSearchSpaces` | `HparamSearchSpaces` | Output only. All hyperparameter search spaces in this model. |
| `hparamTrials` | `array<HparamTuningTrial>` | Output only. Trials of a [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/refere... |
| `labelColumns` | `array<StandardSqlField>` | Output only. Label columns that were used to train this model. The output of the model will have ... |
| `labels` | `object` | The labels associated with this model. You can use these to organize and group your models. Label... |
| `lastModifiedTime` | `string` | Output only. The time when this model was last modified, in millisecs since the epoch. |
| `location` | `string` | Output only. The geographic location where the model resides. This value is inherited from the da... |
| `modelReference` | `ModelReference` | Required. Unique identifier for this model. |
| `modelType` | `string` | Output only. Type of the model resource. |
| `optimalTrialIds` | `array<string>` | Output only. For single-objective [hyperparameter tuning](https://cloud.google.com/bigquery-ml/do... |
| `remoteModelInfo` | `RemoteModelInfo` | Output only. Remote model info |
| `trainingRuns` | `array<TrainingRun>` | Information for all training runs in increasing order of start_time. |
| `transformColumns` | `array<TransformColumn>` | Output only. This field will be populated if a TRANSFORM clause was used to train a model. TRANSF... |

### `ModelDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `modelOptions` | `object` | Deprecated. |
| `trainingRuns` | `array<BqmlTrainingRun>` | Deprecated. |

### `ModelExtractOptions`

Options related to model extraction.

| Property | Type | Description |
|----------|------|-------------|
| `trialId` | `string` | The 1-based ID of the trial to be exported from a hyperparameter tuning model. If not specified, ... |

### `ModelReference`

Id path of a model.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. The ID of the dataset containing this model. |
| `modelId` | `string` | Required. The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or und... |
| `projectId` | `string` | Required. The ID of the project containing this model. |

### `MultiClassClassificationMetrics`

Evaluation metrics for multi-class classification/classifier models.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateClassificationMetrics` | `AggregateClassificationMetrics` | Aggregate classification metrics. |
| `confusionMatrixList` | `array<ConfusionMatrix>` | Confusion matrix at different thresholds. |

### `ParquetOptions`

Parquet Options for load and make external tables.

| Property | Type | Description |
|----------|------|-------------|
| `enableListInference` | `boolean` | Optional. Indicates whether to use schema inference specifically for Parquet LIST logical type. |
| `enumAsString` | `boolean` | Optional. Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by defa... |
| `mapTargetType` | `string` | Optional. Indicates how to represent a Parquet map if present. |

### `PartitionSkew`

Partition skew detailed information.

| Property | Type | Description |
|----------|------|-------------|
| `skewSources` | `array<SkewSource>` | Output only. Source stages which produce skewed data. |

### `PartitionedColumn`

The partitioning column information.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | Required. The name of the partition column. |

### `PartitioningDefinition`

The partitioning information, which includes managed table, external table and metastore partitioned table partition information.

| Property | Type | Description |
|----------|------|-------------|
| `partitionedColumn` | `array<PartitionedColumn>` | Optional. Details about each partitioning column. This field is output only for all partitioning ... |

### `PerformanceInsights`

Performance insights for the job.

| Property | Type | Description |
|----------|------|-------------|
| `avgPreviousExecutionMs` | `string` | Output only. Average execution ms of previous runs. Indicates the job ran slow compared to previo... |
| `stagePerformanceChangeInsights` | `array<StagePerformanceChangeInsight>` | Output only. Query stage performance insights compared to previous runs, for diagnosing performan... |
| `stagePerformanceStandaloneInsights` | `array<StagePerformanceStandaloneInsight>` | Output only. Standalone query stage performance insights, for exploring potential improvements. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PrincipalComponentInfo`

Principal component infos, used only for eigen decomposition based models, e.g., PCA. Ordered by explained_variance in the descending order.

| Property | Type | Description |
|----------|------|-------------|
| `cumulativeExplainedVarianceRatio` | `number` | The explained_variance is pre-ordered in the descending order to compute the cumulative explained... |
| `explainedVariance` | `number` | Explained variance by this principal component, which is simply the eigenvalue. |
| `explainedVarianceRatio` | `number` | Explained_variance over the total explained variance. |
| `principalComponentId` | `string` | Id of the principal component. |

### `PrivacyPolicy`

Represents privacy policy that contains the privacy requirements specified by the data owner. Currently, this is only supported on views.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationThresholdPolicy` | `AggregationThresholdPolicy` | Optional. Policy used for aggregation thresholds. |
| `differentialPrivacyPolicy` | `DifferentialPrivacyPolicy` | Optional. Policy used for differential privacy. |
| `joinRestrictionPolicy` | `JoinRestrictionPolicy` | Optional. Join restriction policy is outside of the one of policies, since this policy can be set... |

### `ProjectList`

Response object of ListProjects

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A hash of the page of results. |
| `kind` | `string` | The resource type of the response. |
| `nextPageToken` | `string` | Use this token to request the next page of results. |
| `projects` | `array<object>` | Projects to which the user has at least READ access. |
| `totalItems` | `integer` | The total number of projects in the page. A wrapper is used here because the field should still b... |

### `ProjectReference`

A unique reference to a project.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. ID of the project. Can be either the numeric ID or the assigned ID of the project. |

### `PruningStats`

The column metadata index pruning statistics.

| Property | Type | Description |
|----------|------|-------------|
| `postCmetaPruningParallelInputCount` | `string` | The number of parallel inputs matched. |
| `postCmetaPruningPartitionCount` | `string` | The number of partitions matched. |
| `preCmetaPruningParallelInputCount` | `string` | The number of parallel inputs scanned. |

### `PythonOptions`

Options for a user-defined Python function.

| Property | Type | Description |
|----------|------|-------------|
| `entryPoint` | `string` | Required. The name of the function defined in Python code as the entry point when the Python UDF ... |
| `packages` | `array<string>` | Optional. A list of Python package names along with versions to be installed. Example: ["pandas>=... |

### `QueryInfo`

Query optimization information for a QUERY job.

| Property | Type | Description |
|----------|------|-------------|
| `optimizationDetails` | `object` | Output only. Information about query optimizations. |

### `QueryParameter`

A parameter given to a query.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. If unset, this is a positional parameter. Otherwise, should be unique within a query. |
| `parameterType` | `QueryParameterType` | Required. The type of this parameter. |
| `parameterValue` | `QueryParameterValue` | Required. The value of this parameter. |

### `QueryParameterType`

The type of a query parameter.

| Property | Type | Description |
|----------|------|-------------|
| `arrayType` | `QueryParameterType` | Optional. The type of the array's elements, if this is an array. |
| `rangeElementType` | `QueryParameterType` | Optional. The element type of the range, if this is a range. |
| `structTypes` | `array<object>` | Optional. The types of the fields of this struct, in order, if this is a struct. |
| `timestampPrecision` | `string` | Optional. Precision (maximum number of total digits in base 10) for seconds of TIMESTAMP type. Po... |
| `type` | `string` | Required. The top level type of this field. |

### `QueryParameterValue`

The value of a query parameter.

| Property | Type | Description |
|----------|------|-------------|
| `arrayValues` | `array<QueryParameterValue>` | Optional. The array values, if this is an array type. |
| `rangeValue` | `RangeValue` | Optional. The range value, if this is a range type. |
| `structValues` | `object` | The struct field values. |
| `value` | `string` | Optional. The value of this value, if a simple scalar type. |

### `QueryRequest`

Describes the format of the jobs.query request.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProperties` | `array<ConnectionProperty>` | Optional. Connection properties which can modify the query behavior. |
| `continuous` | `boolean` | [Optional] Specifies whether the query should be executed as a continuous query. The default valu... |
| `createSession` | `boolean` | Optional. If true, creates a new session using a randomly generated session_id. If false, runs qu... |
| `defaultDataset` | `DatasetReference` | Optional. Specifies the default datasetId and projectId to assume for any unqualified table names... |
| `destinationEncryptionConfiguration` | `EncryptionConfiguration` | Optional. Custom encryption configuration (e.g., Cloud KMS keys) |
| `dryRun` | `boolean` | Optional. If set to true, BigQuery doesn't run the job. Instead, if the query is valid, BigQuery ... |
| `formatOptions` | `DataFormatOptions` | Optional. Output format adjustments. |
| `jobCreationMode` | `string` | Optional. If not set, jobs are always required. If set, the query request will follow the behavio... |
| `jobTimeoutMs` | `string` | Optional. Job timeout in milliseconds. If this time limit is exceeded, BigQuery will attempt to s... |
| `kind` | `string` | The resource type of the request. |
| `labels` | `object` | Optional. The labels associated with this query. Labels can be used to organize and group query j... |
| `location` | `string` | The geographic location where the job should run. For more information, see how to [specify locat... |
| `maxResults` | `integer` | Optional. The maximum number of rows of data to return per page of results. Setting this flag to ... |
| `maxSlots` | `integer` | Optional. A target limit on the rate of slot consumption by this query. If set to a value > 0, Bi... |
| `maximumBytesBilled` | `string` | Optional. Limits the bytes billed for this query. Queries with bytes billed above this limit will... |
| `parameterMode` | `string` | GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named... |
| `preserveNulls` | `boolean` | This property is deprecated. |
| `query` | `string` | Required. A query string to execute, using Google Standard SQL or legacy SQL syntax. Example: "SE... |
| `queryParameters` | `array<QueryParameter>` | Query parameters for GoogleSQL queries. |
| `requestId` | `string` | Optional. A unique user provided identifier to ensure idempotent behavior for queries. Note that ... |
| `reservation` | `string` | Optional. The reservation that jobs.query request would use. User can specify a reservation to ex... |
| `timeoutMs` | `integer` | Optional. Optional: Specifies the maximum amount of time, in milliseconds, that the client is wil... |
| `useLegacySql` | `boolean` | Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.... |
| `useQueryCache` | `boolean` | Optional. Whether to look for the result in the query cache. The query cache is a best-effort cac... |
| `writeIncrementalResults` | `boolean` | Optional. This is only supported for SELECT query. If set, the query is allowed to write results ... |

### `QueryResponse`

| Property | Type | Description |
|----------|------|-------------|
| `cacheHit` | `boolean` | Whether the query result was fetched from the query cache. |
| `creationTime` | `string` | Output only. Creation time of this query, in milliseconds since the epoch. This field will be pre... |
| `dmlStats` | `DmlStatistics` | Output only. Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or TRUNCATE. |
| `endTime` | `string` | Output only. End time of this query, in milliseconds since the epoch. This field will be present ... |
| `errors` | `array<ErrorProto>` | Output only. The first errors or warnings encountered during the running of the job. The final me... |
| `jobComplete` | `boolean` | Whether the query has completed or not. If rows or totalRows are present, this will always be tru... |
| `jobCreationReason` | `JobCreationReason` | Optional. The reason why a Job was created. Only relevant when a job_reference is present in the ... |
| `jobReference` | `JobReference` | Reference to the Job that was created to run the query. This field will be present even if the or... |
| `kind` | `string` | The resource type. |
| `location` | `string` | Output only. The geographic location of the query. For more information about BigQuery locations,... |
| `numDmlAffectedRows` | `string` | Output only. The number of rows affected by a DML statement. Present only for DML statements INSE... |
| `pageToken` | `string` | A token used for paging results. A non-empty token indicates that additional results are availabl... |
| `queryId` | `string` | Auto-generated ID for the query. |
| `rows` | `array<TableRow>` | An object with as many results as can be contained within the maximum permitted reply size. To ge... |
| `schema` | `TableSchema` | The schema of the results. Present only when the query completes successfully. |
| `sessionInfo` | `SessionInfo` | Output only. Information of the session if this job is part of one. |
| `startTime` | `string` | Output only. Start time of this query, in milliseconds since the epoch. This field will be presen... |
| `totalBytesBilled` | `string` | Output only. If the project is configured to use on-demand pricing, then this field contains the ... |
| `totalBytesProcessed` | `string` | The total number of bytes processed for this query. If this query was a dry run, this is the numb... |
| `totalRows` | `string` | The total number of rows in the complete query result set, which can be more than the number of r... |
| `totalSlotMs` | `string` | Output only. Number of slot ms the user is actually billed for. |

### `QueryTimelineSample`

Summary of the state of query execution at a given time.

| Property | Type | Description |
|----------|------|-------------|
| `activeUnits` | `string` | Total number of active workers. This does not correspond directly to slot usage. This is the larg... |
| `completedUnits` | `string` | Total parallel units of work completed by this query. |
| `elapsedMs` | `string` | Milliseconds elapsed since the start of query execution. |
| `estimatedRunnableUnits` | `string` | Units of work that can be scheduled immediately. Providing additional slots for these units of wo... |
| `pendingUnits` | `string` | Total units of work remaining for the query. This number can be revised (increased or decreased) ... |
| `shuffleRamUsageRatio` | `number` | Total shuffle usage ratio in shuffle RAM per reservation of this query. This will be provided for... |
| `totalSlotMs` | `string` | Cumulative slot-ms consumed by the query. |

### `RangePartitioning`

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | Required. The name of the column to partition the table on. It must be a top-level, INT64 column ... |
| `range` | `object` | [Experimental] Defines the ranges for range partitioning. |

### `RangeValue`

Represents the value of a range.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `QueryParameterValue` | Optional. The end value of the range. A missing value represents an unbounded end. |
| `start` | `QueryParameterValue` | Optional. The start value of the range. A missing value represents an unbounded start. |

### `RankingMetrics`

Evaluation metrics used by weighted-ALS models specified by feedback_type=implicit.

| Property | Type | Description |
|----------|------|-------------|
| `averageRank` | `number` | Determines the goodness of a ranking by computing the percentile rank from the predicted confiden... |
| `meanAveragePrecision` | `number` | Calculates a precision per user for all the items by ranking them and then averages all the preci... |
| `meanSquaredError` | `number` | Similar to the mean squared error computed in regression and explicit recommendation models excep... |
| `normalizedDiscountedCumulativeGain` | `number` | A metric to determine the goodness of a ranking calculated from the predicted confidence by compa... |

### `RegressionMetrics`

Evaluation metrics for regression and explicit feedback type matrix factorization models.

| Property | Type | Description |
|----------|------|-------------|
| `meanAbsoluteError` | `number` | Mean absolute error. |
| `meanSquaredError` | `number` | Mean squared error. |
| `meanSquaredLogError` | `number` | Mean squared log error. |
| `medianAbsoluteError` | `number` | Median absolute error. |
| `rSquared` | `number` | R^2 score. This corresponds to r2_score in ML.EVALUATE. |

### `RemoteFunctionOptions`

Options for a remote user-defined function.

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `string` | Fully qualified name of the user-provided connection object which holds the authentication inform... |
| `endpoint` | `string` | Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfuncti... |
| `maxBatchingRows` | `string` | Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamica... |
| `userDefinedContext` | `object` | User-defined context as a set of key/value pairs, which will be sent as function invocation conte... |

### `RemoteModelInfo`

Remote Model Info

| Property | Type | Description |
|----------|------|-------------|
| `connection` | `string` | Output only. Fully qualified name of the user-provided connection object of the remote model. For... |
| `endpoint` | `string` | Output only. The endpoint for remote model. |
| `maxBatchingRows` | `string` | Output only. Max number of rows in each batch sent to the remote service. If unset, the number of... |
| `remoteModelVersion` | `string` | Output only. The model version for LLM. |
| `remoteServiceType` | `string` | Output only. The remote service type for remote model. |
| `speechRecognizer` | `string` | Output only. The name of the speech recognizer to use for speech recognition. The expected format... |

### `RestrictionConfig`

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Output only. Specifies the type of dataset/table restriction. |

### `Routine`

A user-defined function or a stored procedure.

| Property | Type | Description |
|----------|------|-------------|
| `arguments` | `array<Argument>` | Optional. |
| `creationTime` | `string` | Output only. The time when this routine was created, in milliseconds since the epoch. |
| `dataGovernanceType` | `string` | Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking fun... |
| `definitionBody` | `string` | Required. The body of the routine. For functions, this is the expression in the AS clause. If `la... |
| `description` | `string` | Optional. The description of the routine, if defined. |
| `determinismLevel` | `string` | Optional. The determinism level of the JavaScript UDF, if defined. |
| `etag` | `string` | Output only. A hash of this resource. |
| `externalRuntimeOptions` | `ExternalRuntimeOptions` | Optional. Options for the runtime of the external system executing the routine. This field is onl... |
| `importedLibraries` | `array<string>` | Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libra... |
| `language` | `string` | Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise. |
| `lastModifiedTime` | `string` | Output only. The time when this routine was last modified, in milliseconds since the epoch. |
| `pythonOptions` | `PythonOptions` | Optional. Options for the Python UDF. [Preview](https://cloud.google.com/products/#product-launch... |
| `remoteFunctionOptions` | `RemoteFunctionOptions` | Optional. Remote function specific options. |
| `returnTableType` | `StandardSqlTableType` | Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table ... |
| `returnType` | `StandardSqlDataType` | Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_F... |
| `routineReference` | `RoutineReference` | Required. Reference describing the ID of this routine. |
| `routineType` | `string` | Required. The type of routine. |
| `securityMode` | `string` | Optional. The security mode of the routine, if defined. If not defined, the security mode is auto... |
| `sparkOptions` | `SparkOptions` | Optional. Spark specific options. |
| `strictMode` | `boolean` | Optional. Use this option to catch many common errors. Error checking is not exhaustive, and succ... |

### `RoutineReference`

Id path of a routine.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. The ID of the dataset containing this routine. |
| `projectId` | `string` | Required. The ID of the project containing this routine. |
| `routineId` | `string` | Required. The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or u... |

### `Row`

A single row in the confusion matrix.

| Property | Type | Description |
|----------|------|-------------|
| `actualLabel` | `string` | The original label of this row. |
| `entries` | `array<Entry>` | Info describing predicted label distribution. |

### `RowAccessPolicy`

Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | Output only. The time when this row access policy was created, in milliseconds since the epoch. |
| `etag` | `string` | Output only. A hash of this resource. |
| `filterPredicate` | `string` | Required. A SQL boolean expression that represents the rows defined by this row access policy, si... |
| `grantees` | `array<string>` | Optional. Input only. The optional list of iam_member users or groups that specifies the initial ... |
| `lastModifiedTime` | `string` | Output only. The time when this row access policy was last modified, in milliseconds since the ep... |
| `rowAccessPolicyReference` | `RowAccessPolicyReference` | Required. Reference describing the ID of this row access policy. |

### `RowAccessPolicyReference`

Id path of a row access policy.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. The ID of the dataset containing this row access policy. |
| `policyId` | `string` | Required. The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (... |
| `projectId` | `string` | Required. The ID of the project containing this row access policy. |
| `tableId` | `string` | Required. The ID of the table containing this row access policy. |

### `RowLevelSecurityStatistics`

Statistics for row-level security.

| Property | Type | Description |
|----------|------|-------------|
| `rowLevelSecurityApplied` | `boolean` | Whether any accessed data was protected by row access policies. |

### `ScriptOptions`

Options related to script execution.

| Property | Type | Description |
|----------|------|-------------|
| `keyResultStatement` | `string` | Determines which statement in the script represents the "key result", used to populate the schema... |
| `statementByteBudget` | `string` | Limit on the number of bytes billed per statement. Exceeding this budget results in an error. |
| `statementTimeoutMs` | `string` | Timeout period for each statement in a script. |

### `ScriptStackFrame`

Represents the location of the statement/expression being evaluated. Line and column numbers are defined as follows: - Line and column numbers start with one. That is, line 1 column 1 denotes the start of the script. - When inside a stored procedure, all line/column numbers are relative to the procedure body, not the script in which the procedure was defined. - Start/end positions exclude leading/trailing comments and whitespace. The end position always ends with a ";", when present. - Multi-byte Unicode characters are treated as just one column. - If the original script (or procedure definition) contains TAB characters, a tab "snaps" the indentation forward to the nearest multiple of 8 characters, plus 1. For example, a TAB on column 1, 2, 3, 4, 5, 6 , or 8 will advance the next character to column 9. A TAB on column 9, 10, 11, 12, 13, 14, 15, or 16 will advance the next character to column 17.

| Property | Type | Description |
|----------|------|-------------|
| `endColumn` | `integer` | Output only. One-based end column. |
| `endLine` | `integer` | Output only. One-based end line. |
| `procedureId` | `string` | Output only. Name of the active procedure, empty if in a top-level script. |
| `startColumn` | `integer` | Output only. One-based start column. |
| `startLine` | `integer` | Output only. One-based start line. |
| `text` | `string` | Output only. Text of the current statement/expression. |

### `ScriptStatistics`

Job statistics specific to the child job of a script.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationKind` | `string` | Whether this child job was a statement or expression. |
| `stackFrames` | `array<ScriptStackFrame>` | Stack trace showing the line/column/procedure name of each frame on the stack at the point where ... |

### `SearchStatistics`

Statistics for a search query. Populated as part of JobStatistics2.

| Property | Type | Description |
|----------|------|-------------|
| `indexPruningStats` | `array<IndexPruningStats>` | Search index pruning statistics, one for each base table that has a search index. If a base table... |
| `indexUnusedReasons` | `array<IndexUnusedReason>` | When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why indexes were not u... |
| `indexUsageMode` | `string` | Specifies the index usage mode for the query. |

### `SerDeInfo`

Serializer and deserializer information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the SerDe. The maximum length is 256 characters. |
| `parameters` | `object` | Optional. Key-value pairs that define the initialization parameters for the serialization library... |
| `serializationLibrary` | `string` | Required. Specifies a fully-qualified class name of the serialization library that is responsible... |

### `SessionInfo`

[Preview] Information related to sessions.

| Property | Type | Description |
|----------|------|-------------|
| `sessionId` | `string` | Output only. The id of the session. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SkewSource`

Details about source stages which produce skewed data.

| Property | Type | Description |
|----------|------|-------------|
| `stageId` | `string` | Output only. Stage id of the skew source stage. |

### `SnapshotDefinition`

Information about base table and snapshot time of the snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `baseTableReference` | `TableReference` | Required. Reference describing the ID of the table that was snapshot. |
| `snapshotTime` | `string` | Required. The time at which the base table was snapshot. This value is reported in the JSON respo... |

### `SparkLoggingInfo`

Spark job logs can be filtered by these fields in Cloud Logging.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Output only. Project ID where the Spark logs were written. |
| `resourceType` | `string` | Output only. Resource type used for logging. |

### `SparkOptions`

Options for a user-defined Spark routine.

| Property | Type | Description |
|----------|------|-------------|
| `archiveUris` | `array<string>` | Archive files to be extracted into the working directory of each executor. For more information a... |
| `connection` | `string` | Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_... |
| `containerImage` | `string` | Custom container image for the runtime environment. |
| `fileUris` | `array<string>` | Files to be placed in the working directory of each executor. For more information about Apache S... |
| `jarUris` | `array<string>` | JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, se... |
| `mainClass` | `string` | The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one ... |
| `mainFileUri` | `string` | The main file/jar URI of the Spark application. Exactly one of the definition_body field and the ... |
| `properties` | `object` | Configuration properties as a set of key/value pairs, which will be passed on to the Spark applic... |
| `pyFileUris` | `array<string>` | Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`,... |
| `runtimeVersion` | `string` | Runtime version. If not specified, the default runtime version is used. |

### `SparkStatistics`

Statistics for a BigSpark query. Populated as part of JobStatistics2

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `object` | Output only. Endpoints returned from Dataproc. Key list: - history_server_endpoint: A link to Spa... |
| `gcsStagingBucket` | `string` | Output only. The Google Cloud Storage bucket that is used as the default file system by the Spark... |
| `kmsKeyName` | `string` | Output only. The Cloud KMS encryption key that is used to protect the resources created by the Sp... |
| `loggingInfo` | `SparkLoggingInfo` | Output only. Logging info is used to generate a link to Cloud Logging. |
| `sparkJobId` | `string` | Output only. Spark job ID if a Spark job is created successfully. |
| `sparkJobLocation` | `string` | Output only. Location where the Spark job is executed. A location is selected by BigQueury for jo... |

### `StagePerformanceChangeInsight`

Performance insights compared to the previous executions for a specific stage.

| Property | Type | Description |
|----------|------|-------------|
| `inputDataChange` | `InputDataChange` | Output only. Input data change insight of the query stage. |
| `stageId` | `string` | Output only. The stage id that the insight mapped to. |

### `StagePerformanceStandaloneInsight`

Standalone performance insights for a specific stage.

| Property | Type | Description |
|----------|------|-------------|
| `biEngineReasons` | `array<BiEngineReason>` | Output only. If present, the stage had the following reasons for being disqualified from BI Engin... |
| `highCardinalityJoins` | `array<HighCardinalityJoin>` | Output only. High cardinality joins in the stage. |
| `insufficientShuffleQuota` | `boolean` | Output only. True if the stage has insufficient shuffle quota. |
| `partitionSkew` | `PartitionSkew` | Output only. Partition skew in the stage. |
| `slotContention` | `boolean` | Output only. True if the stage has a slot contention issue. |
| `stageId` | `string` | Output only. The stage id that the insight mapped to. |

### `StandardSqlDataType`

The data type of a variable such as a function argument. Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT>: { "typeKind": "STRUCT", "structType": { "fields": [ { "name": "x", "type": {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "DATE"} } } ] } } * RANGE: { "typeKind": "RANGE", "rangeElementType": {"typeKind": "DATE"} }

| Property | Type | Description |
|----------|------|-------------|
| `arrayElementType` | `StandardSqlDataType` | The type of the array's elements, if type_kind = "ARRAY". |
| `rangeElementType` | `StandardSqlDataType` | The type of the range's elements, if type_kind = "RANGE". |
| `structType` | `StandardSqlStructType` | The fields of this struct, in order, if type_kind = "STRUCT". |
| `typeKind` | `string` | Required. The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE"... |

### `StandardSqlField`

A field or a column.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. The name of this field. Can be absent for struct fields. |
| `type` | `StandardSqlDataType` | Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION s... |

### `StandardSqlStructType`

The representation of a SQL STRUCT type.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<StandardSqlField>` | Fields within the struct. |

### `StandardSqlTableType`

A table type

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<StandardSqlField>` | The columns in this table type |

### `StorageDescriptor`

Contains information about how a table's data is stored and accessed by open source query engines.

| Property | Type | Description |
|----------|------|-------------|
| `inputFormat` | `string` | Optional. Specifies the fully qualified class name of the InputFormat (e.g. "org.apache.hadoop.hi... |
| `locationUri` | `string` | Optional. The physical location of the table (e.g. `gs://spark-dataproc-data/pangea-data/case_sen... |
| `outputFormat` | `string` | Optional. Specifies the fully qualified class name of the OutputFormat (e.g. "org.apache.hadoop.h... |
| `serdeInfo` | `SerDeInfo` | Optional. Serializer and deserializer information. |

### `StoredColumnsUnusedReason`

If the stored column was not used, explain why.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Specifies the high-level reason for the unused scenario, each reason must have a code associated. |
| `message` | `string` | Specifies the detailed description for the scenario. |
| `uncoveredColumns` | `array<string>` | Specifies which columns were not covered by the stored columns for the specified code up to 20 co... |

### `StoredColumnsUsage`

Indicates the stored columns usage in the query.

| Property | Type | Description |
|----------|------|-------------|
| `baseTable` | `TableReference` | Specifies the base table. |
| `isQueryAccelerated` | `boolean` | Specifies whether the query was accelerated with stored columns. |
| `storedColumnsUnusedReasons` | `array<StoredColumnsUnusedReason>` | If stored columns were not used, explain why. |

### `Streamingbuffer`

| Property | Type | Description |
|----------|------|-------------|
| `estimatedBytes` | `string` | Output only. A lower-bound estimate of the number of bytes currently in the streaming buffer. |
| `estimatedRows` | `string` | Output only. A lower-bound estimate of the number of rows currently in the streaming buffer. |
| `oldestEntryTime` | `string` | Output only. Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds ... |

### `StringHparamSearchSpace`

Search space for string and enum.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `array<string>` | Canididates for the string or enum parameter in lower case. |

### `SystemVariables`

System variables given to a query.

| Property | Type | Description |
|----------|------|-------------|
| `types` | `object` | Output only. Data type for each system variable. |
| `values` | `object` | Output only. Value for each system variable. |

### `Table`

| Property | Type | Description |
|----------|------|-------------|
| `biglakeConfiguration` | `BigLakeConfiguration` | Optional. Specifies the configuration of a BigQuery table for Apache Iceberg. |
| `cloneDefinition` | `CloneDefinition` | Output only. Contains information about the clone. This value is set via the clone operation. |
| `clustering` | `Clustering` | Clustering specification for the table. Must be specified with time-based partitioning, data in t... |
| `creationTime` | `string` | Output only. The time when this table was created, in milliseconds since the epoch. |
| `defaultCollation` | `string` | Optional. Defines the default collation specification of new STRING fields in the table. During t... |
| `defaultRoundingMode` | `string` | Optional. Defines the default rounding mode specification of new decimal fields (NUMERIC OR BIGNU... |
| `description` | `string` | Optional. A user-friendly description of this table. |
| `encryptionConfiguration` | `EncryptionConfiguration` | Custom encryption configuration (e.g., Cloud KMS keys). |
| `etag` | `string` | Output only. A hash of this resource. |
| `expirationTime` | `string` | Optional. The time when this table expires, in milliseconds since the epoch. If not present, the ... |
| `externalCatalogTableOptions` | `ExternalCatalogTableOptions` | Optional. Options defining open source compatible table. |
| `externalDataConfiguration` | `ExternalDataConfiguration` | Optional. Describes the data format, location, and other properties of a table stored outside of ... |
| `friendlyName` | `string` | Optional. A descriptive name for this table. |
| `id` | `string` | Output only. An opaque ID uniquely identifying the table. |
| `kind` | `string` | The type of resource ID. |
| `labels` | `object` | The labels associated with this table. You can use these to organize and group your tables. Label... |
| `lastModifiedTime` | `string` | Output only. The time when this table was last modified, in milliseconds since the epoch. |
| `location` | `string` | Output only. The geographic location where the table resides. This value is inherited from the da... |
| `managedTableType` | `string` | Optional. If set, overrides the default managed table type configured in the dataset. |
| `materializedView` | `MaterializedViewDefinition` | Optional. The materialized view definition. |
| `materializedViewStatus` | `MaterializedViewStatus` | Output only. The materialized view status. |
| `maxStaleness` | `string` | Optional. The maximum staleness of data that could be returned when the table (or stale MV) is qu... |
| `model` | `ModelDefinition` | Deprecated. |
| `numActiveLogicalBytes` | `string` | Output only. Number of logical bytes that are less than 90 days old. |
| `numActivePhysicalBytes` | `string` | Output only. Number of physical bytes less than 90 days old. This data is not kept in real time, ... |
| `numBytes` | `string` | Output only. The size of this table in logical bytes, excluding any data in the streaming buffer. |
| `numCurrentPhysicalBytes` | `string` | Output only. Number of physical bytes used by current live data storage. This data is not kept in... |
| `numLongTermBytes` | `string` | Output only. The number of logical bytes in the table that are considered "long-term storage". |
| `numLongTermLogicalBytes` | `string` | Output only. Number of logical bytes that are more than 90 days old. |
| `numLongTermPhysicalBytes` | `string` | Output only. Number of physical bytes more than 90 days old. This data is not kept in real time, ... |
| `numPartitions` | `string` | Output only. The number of partitions present in the table or materialized view. This data is not... |
| `numPhysicalBytes` | `string` | Output only. The physical size of this table in bytes. This includes storage used for time travel. |
| `numRows` | `string` | Output only. The number of rows of data in this table, excluding any data in the streaming buffer. |
| `numTimeTravelPhysicalBytes` | `string` | Output only. Number of physical bytes used by time travel storage (deleted or changed data). This... |
| `numTotalLogicalBytes` | `string` | Output only. Total number of logical bytes in the table or materialized view. |
| `numTotalPhysicalBytes` | `string` | Output only. The physical size of this table in bytes. This also includes storage used for time t... |
| `partitionDefinition` | `PartitioningDefinition` | Optional. The partition information for all table formats, including managed partitioned tables, ... |
| `rangePartitioning` | `RangePartitioning` | If specified, configures range partitioning for this table. |
| `replicas` | `array<TableReference>` | Optional. Output only. Table references of all replicas currently active on the table. |
| `requirePartitionFilter` | `boolean` | Optional. If set to true, queries over this table require a partition filter that can be used for... |
| `resourceTags` | `object` | [Optional] The tags associated with this table. Tag keys are globally unique. See additional info... |
| `restrictions` | `RestrictionConfig` | Optional. Output only. Restriction config for table. If set, restrict certain accesses on the tab... |
| `schema` | `TableSchema` | Optional. Describes the schema of this table. |
| `selfLink` | `string` | Output only. A URL that can be used to access this resource again. |
| `snapshotDefinition` | `SnapshotDefinition` | Output only. Contains information about the snapshot. This value is set via snapshot creation. |
| `streamingBuffer` | `Streamingbuffer` | Output only. Contains information regarding this table's streaming buffer, if one is present. Thi... |
| `tableConstraints` | `TableConstraints` | Optional. Tables Primary Key and Foreign Key information |
| `tableReference` | `TableReference` | Required. Reference describing the ID of this table. |
| `tableReplicationInfo` | `TableReplicationInfo` | Optional. Table replication info for table created `AS REPLICA` DDL like: `CREATE MATERIALIZED VI... |
| `timePartitioning` | `TimePartitioning` | If specified, configures time-based partitioning for this table. |
| `type` | `string` | Output only. Describes the table type. The following values are supported: * `TABLE`: A normal Bi... |
| `view` | `ViewDefinition` | Optional. The view definition. |

### `TableCell`

| Property | Type | Description |
|----------|------|-------------|
| `v` | `any` |  |

### `TableConstraints`

The TableConstraints defines the primary key and foreign key.

| Property | Type | Description |
|----------|------|-------------|
| `foreignKeys` | `array<object>` | Optional. Present only if the table has a foreign key. The foreign key is not enforced. |
| `primaryKey` | `object` | Represents the primary key constraint on a table's columns. |

### `TableDataInsertAllRequest`

Request for sending a single streaming insert.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreUnknownValues` | `boolean` | Optional. Accept rows that contain values that do not match the schema. The unknown values are ig... |
| `kind` | `string` | Optional. The resource type of the response. The value is not checked at the backend. Historicall... |
| `rows` | `array<object>` |  |
| `skipInvalidRows` | `boolean` | Optional. Insert all valid rows of a request, even if invalid rows exist. The default value is fa... |
| `templateSuffix` | `string` | Optional. If specified, treats the destination table as a base template, and inserts the rows int... |
| `traceId` | `string` | Optional. Unique request trace id. Used for debugging purposes only. It is case-sensitive, limite... |

### `TableDataInsertAllResponse`

Describes the format of a streaming insert response.

| Property | Type | Description |
|----------|------|-------------|
| `insertErrors` | `array<object>` | Describes specific errors encountered while processing the request. |
| `kind` | `string` | Returns "bigquery#tableDataInsertAllResponse". |

### `TableDataList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A hash of this page of results. |
| `kind` | `string` | The resource type of the response. |
| `pageToken` | `string` | A token used for paging results. Providing this token instead of the startIndex parameter can hel... |
| `rows` | `array<TableRow>` | Rows of results. |
| `totalRows` | `string` | Total rows of the entire table. In order to show default value 0 we have to present it as string. |

### `TableFieldSchema`

A field in TableSchema

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `object` | Deprecated. |
| `collation` | `string` | Optional. Field collation can be set only when the type of field is STRING. The following values ... |
| `dataPolicies` | `array<DataPolicyOption>` | Optional. Data policies attached to this field, used for field-level access control. |
| `defaultValueExpression` | `string` | Optional. A SQL expression to specify the [default value] (https://cloud.google.com/bigquery/docs... |
| `description` | `string` | Optional. The field description. The maximum length is 1,024 characters. |
| `fields` | `array<TableFieldSchema>` | Optional. Describes the nested schema fields if the type property is set to RECORD. |
| `foreignTypeDefinition` | `string` | Optional. Definition of the foreign data type. Only valid for top-level schema fields (not nested... |
| `maxLength` | `string` | Optional. Maximum length of values of this field for STRINGS or BYTES. If max_length is not speci... |
| `mode` | `string` | Optional. The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default va... |
| `name` | `string` | Required. The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or unders... |
| `policyTags` | `object` | Optional. The policy tags attached to this field, used for field-level access control. If not set... |
| `precision` | `string` | Optional. Precision (maximum number of total digits in base 10) and scale (maximum number of digi... |
| `rangeElementType` | `object` | Represents the type of a field element. |
| `roundingMode` | `string` | Optional. Specifies the rounding mode to be used when storing values of NUMERIC and BIGNUMERIC type. |
| `scale` | `string` | Optional. See documentation for precision. |
| `timestampPrecision` | `string` | Optional. Precision (maximum number of total digits in base 10) for seconds of TIMESTAMP type. Po... |
| `type` | `string` | Required. The field data type. Possible values include: * STRING * BYTES * INTEGER (or INT64) * F... |

### `TableList`

Partial projection of the metadata for a given table in a list response.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A hash of this page of results. |
| `kind` | `string` | The type of list. |
| `nextPageToken` | `string` | A token to request the next page of results. |
| `tables` | `array<object>` | Tables in the requested dataset. |
| `totalItems` | `integer` | The total number of tables in the dataset. |

### `TableMetadataCacheUsage`

Table level detail on the usage of metadata caching. Only set for Metadata caching eligible tables referenced in the query.

| Property | Type | Description |
|----------|------|-------------|
| `explanation` | `string` | Free form human-readable reason metadata caching was unused for the job. |
| `pruningStats` | `PruningStats` | The column metadata index pruning statistics. |
| `staleness` | `string` | Duration since last refresh as of this job for managed tables (indicates metadata cache staleness... |
| `tableReference` | `TableReference` | Metadata caching eligible table referenced in the query. |
| `tableType` | `string` | [Table type](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#Table.FIELDS.type). |
| `unusedReason` | `string` | Reason for not using metadata caching for the table. |

### `TableReference`

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. The ID of the dataset containing this table. |
| `projectId` | `string` | Required. The ID of the project containing this table. |
| `tableId` | `string` | Required. The ID of the table. The ID can contain Unicode characters in category L (letter), M (m... |

### `TableReplicationInfo`

Replication info of a table created using `AS REPLICA` DDL like: `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`

| Property | Type | Description |
|----------|------|-------------|
| `replicatedSourceLastRefreshTime` | `string` | Optional. Output only. If source is a materialized view, this field signifies the last refresh ti... |
| `replicationError` | `ErrorProto` | Optional. Output only. Replication error that will permanently stopped table replication. |
| `replicationIntervalMs` | `string` | Optional. Specifies the interval at which the source table is polled for updates. It's Optional. ... |
| `replicationStatus` | `string` | Optional. Output only. Replication status of configured replication. |
| `sourceTable` | `TableReference` | Required. Source table reference that is replicated. |

### `TableRow`

| Property | Type | Description |
|----------|------|-------------|
| `f` | `array<TableCell>` | Represents a single row in the result set, consisting of one or more fields. |

### `TableSchema`

Schema of a table

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<TableFieldSchema>` | Describes the fields in a table. |
| `foreignTypeInfo` | `ForeignTypeInfo` | Optional. Specifies metadata of the foreign data type definition in field schema (TableFieldSchem... |

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

### `TimePartitioning`

| Property | Type | Description |
|----------|------|-------------|
| `expirationMs` | `string` | Optional. Number of milliseconds for which to keep the storage for a partition. A wrapper is used... |
| `field` | `string` | Optional. If not set, the table is partitioned by pseudo column '_PARTITIONTIME'; if set, the tab... |
| `requirePartitionFilter` | `boolean` | If set to true, queries over this table require a partition filter that can be used for partition... |
| `type` | `string` | Required. The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition p... |

### `TrainingOptions`

Options used in model training.

| Property | Type | Description |
|----------|------|-------------|
| `activationFn` | `string` | Activation function of the neural nets. |
| `adjustStepChanges` | `boolean` | If true, detect step changes and make data adjustment in the input time series. |
| `approxGlobalFeatureContrib` | `boolean` | Whether to use approximate feature contribution method in XGBoost model explanation for global ex... |
| `autoArima` | `boolean` | Whether to enable auto ARIMA or not. |
| `autoArimaMaxOrder` | `string` | The max value of the sum of non-seasonal p and q. |
| `autoArimaMinOrder` | `string` | The min value of the sum of non-seasonal p and q. |
| `autoClassWeights` | `boolean` | Whether to calculate class weights automatically based on the popularity of each label. |
| `batchSize` | `string` | Batch size for dnn models. |
| `boosterType` | `string` | Booster type for boosted tree models. |
| `budgetHours` | `number` | Budget in hours for AutoML training. |
| `calculatePValues` | `boolean` | Whether or not p-value test should be computed for this model. Only available for linear and logi... |
| `categoryEncodingMethod` | `string` | Categorical feature encoding method. |
| `cleanSpikesAndDips` | `boolean` | If true, clean spikes and dips in the input time series. |
| `colorSpace` | `string` | Enums for color space, used for processing images in Object Table. See more details at https://ww... |
| `colsampleBylevel` | `number` | Subsample ratio of columns for each level for boosted tree models. |
| `colsampleBynode` | `number` | Subsample ratio of columns for each node(split) for boosted tree models. |
| `colsampleBytree` | `number` | Subsample ratio of columns when constructing each tree for boosted tree models. |
| `contributionMetric` | `string` | The contribution metric. Applies to contribution analysis models. Allowed formats supported are f... |
| `dartNormalizeType` | `string` | Type of normalization algorithm for boosted tree models using dart booster. |
| `dataFrequency` | `string` | The data frequency of a time series. |
| `dataSplitColumn` | `string` | The column to split data with. This column won't be used as a feature. 1. When data_split_method ... |
| `dataSplitEvalFraction` | `number` | The fraction of evaluation data over the whole input data. The rest of data will be used as train... |
| `dataSplitMethod` | `string` | The data split type for training and evaluation, e.g. RANDOM. |
| `decomposeTimeSeries` | `boolean` | If true, perform decompose time series and save the results. |
| `dimensionIdColumns` | `array<string>` | Optional. Names of the columns to slice on. Applies to contribution analysis models. |
| `distanceType` | `string` | Distance type for clustering models. |
| `dropout` | `number` | Dropout probability for dnn models. |
| `earlyStop` | `boolean` | Whether to stop early when the loss doesn't improve significantly any more (compared to min_relat... |
| `enableGlobalExplain` | `boolean` | If true, enable global explanation during training. |
| `endpointIdleTtl` | `string` | The idle TTL of the endpoint before the resources get destroyed. The default value is 6.5 hours. |
| `feedbackType` | `string` | Feedback type that specifies which algorithm to run for matrix factorization. |
| `fitIntercept` | `boolean` | Whether the model should include intercept during model training. |
| `forecastLimitLowerBound` | `number` | The forecast limit lower bound that was used during ARIMA model training with limits. To see more... |
| `forecastLimitUpperBound` | `number` | The forecast limit upper bound that was used during ARIMA model training with limits. |
| `hiddenUnits` | `array<string>` | Hidden units for dnn models. |
| `holidayRegion` | `string` | The geographical region based on which the holidays are considered in time series modeling. If a ... |
| `holidayRegions` | `array<string>` | A list of geographical regions that are used for time series modeling. |
| `horizon` | `string` | The number of periods ahead that need to be forecasted. |
| `hparamTuningObjectives` | `array<string>` | The target evaluation metrics to optimize the hyperparameters for. |
| `huggingFaceModelId` | `string` | The id of a Hugging Face model. For example, `google/gemma-2-2b-it`. |
| `includeDrift` | `boolean` | Include drift when fitting an ARIMA model. |
| `initialLearnRate` | `number` | Specifies the initial learning rate for the line search learn rate strategy. |
| `inputLabelColumns` | `array<string>` | Name of input label columns in training data. |
| `instanceWeightColumn` | `string` | Name of the instance weight column for training data. This column isn't be used as a feature. |
| `integratedGradientsNumSteps` | `string` | Number of integral steps for the integrated gradients explain method. |
| `isTestColumn` | `string` | Name of the column used to determine the rows corresponding to control and test. Applies to contr... |
| `itemColumn` | `string` | Item column specified for matrix factorization models. |
| `kmeansInitializationColumn` | `string` | The column used to provide the initial centroids for kmeans algorithm when kmeans_initialization_... |
| `kmeansInitializationMethod` | `string` | The method used to initialize the centroids for kmeans algorithm. |
| `l1RegActivation` | `number` | L1 regularization coefficient to activations. |
| `l1Regularization` | `number` | L1 regularization coefficient. |
| `l2Regularization` | `number` | L2 regularization coefficient. |
| `labelClassWeights` | `object` | Weights associated with each label class, for rebalancing the training data. Only applicable for ... |
| `learnRate` | `number` | Learning rate in training. Used only for iterative training algorithms. |
| `learnRateStrategy` | `string` | The strategy to determine learn rate for the current iteration. |
| `lossType` | `string` | Type of loss function used during training run. |
| `machineType` | `string` | The type of the machine used to deploy and serve the model. |
| `maxIterations` | `string` | The maximum number of iterations in training. Used only for iterative training algorithms. |
| `maxParallelTrials` | `string` | Maximum number of trials to run in parallel. |
| `maxReplicaCount` | `string` | The maximum number of machine replicas that will be deployed on an endpoint. The default value is... |
| `maxTimeSeriesLength` | `string` | The maximum number of time points in a time series that can be used in modeling the trend compone... |
| `maxTreeDepth` | `string` | Maximum depth of a tree for boosted tree models. |
| `minAprioriSupport` | `number` | The apriori support minimum. Applies to contribution analysis models. |
| `minRelativeProgress` | `number` | When early_stop is true, stops training when accuracy improvement is less than 'min_relative_prog... |
| `minReplicaCount` | `string` | The minimum number of machine replicas that will be always deployed on an endpoint. This value mu... |
| `minSplitLoss` | `number` | Minimum split loss for boosted tree models. |
| `minTimeSeriesLength` | `string` | The minimum number of time points in a time series that are used in modeling the trend component ... |
| `minTreeChildWeight` | `string` | Minimum sum of instance weight needed in a child for boosted tree models. |
| `modelGardenModelName` | `string` | The name of a Vertex model garden publisher model. Format is `publishers/{publisher}/models/{mode... |
| `modelRegistry` | `string` | The model registry. |
| `modelUri` | `string` | Google Cloud Storage URI from which the model was imported. Only applicable for imported models. |
| `nonSeasonalOrder` | `ArimaOrder` | A specification of the non-seasonal part of the ARIMA model: the three components (p, d, q) are t... |
| `numClusters` | `string` | Number of clusters for clustering models. |
| `numFactors` | `string` | Num factors specified for matrix factorization models. |
| `numParallelTree` | `string` | Number of parallel trees constructed during each iteration for boosted tree models. |
| `numPrincipalComponents` | `string` | Number of principal components to keep in the PCA model. Must be <= the number of features. |
| `numTrials` | `string` | Number of trials to run this hyperparameter tuning job. |
| `optimizationStrategy` | `string` | Optimization strategy for training linear regression models. |
| `optimizer` | `string` | Optimizer used for training the neural nets. |
| `pcaExplainedVarianceRatio` | `number` | The minimum ratio of cumulative explained variance that needs to be given by the PCA model. |
| `pcaSolver` | `string` | The solver for PCA. |
| `reservationAffinityKey` | `string` | Corresponds to the label key of a reservation resource used by Vertex AI. To target a SPECIFIC_RE... |
| `reservationAffinityType` | `string` | Specifies the reservation affinity type used to configure a Vertex AI resource. The default value... |
| `reservationAffinityValues` | `array<string>` | Corresponds to the label values of a reservation resource used by Vertex AI. This must be the ful... |
| `sampledShapleyNumPaths` | `string` | Number of paths for the sampled Shapley explain method. |
| `scaleFeatures` | `boolean` | If true, scale the feature values by dividing the feature standard deviation. Currently only appl... |
| `standardizeFeatures` | `boolean` | Whether to standardize numerical features. Default to true. |
| `subsample` | `number` | Subsample fraction of the training data to grow tree to prevent overfitting for boosted tree models. |
| `tfVersion` | `string` | Based on the selected TF version, the corresponding docker image is used to train external models. |
| `timeSeriesDataColumn` | `string` | Column to be designated as time series data for ARIMA model. |
| `timeSeriesIdColumn` | `string` | The time series id column that was used during ARIMA model training. |
| `timeSeriesIdColumns` | `array<string>` | The time series id columns that were used during ARIMA model training. |
| `timeSeriesLengthFraction` | `number` | The fraction of the interpolated length of the time series that's used to model the time series t... |
| `timeSeriesTimestampColumn` | `string` | Column to be designated as time series timestamp for ARIMA model. |
| `treeMethod` | `string` | Tree construction algorithm for boosted tree models. |
| `trendSmoothingWindowSize` | `string` | Smoothing window size for the trend component. When a positive value is specified, a center movin... |
| `userColumn` | `string` | User column specified for matrix factorization models. |
| `vertexAiModelVersionAliases` | `array<string>` | The version aliases to apply in Vertex AI model registry. Always overwrite if the version aliases... |
| `walsAlpha` | `number` | Hyperparameter for matrix factoration when implicit feedback type is specified. |
| `warmStart` | `boolean` | Whether to train a model from the last checkpoint. |
| `xgboostVersion` | `string` | User-selected XGBoost versions for training of XGBoost models. |

### `TrainingRun`

Information about a single training query run for the model.

| Property | Type | Description |
|----------|------|-------------|
| `classLevelGlobalExplanations` | `array<GlobalExplanation>` | Output only. Global explanation contains the explanation of top features on the class level. Appl... |
| `dataSplitResult` | `DataSplitResult` | Output only. Data split result of the training run. Only set when the input data is actually split. |
| `evaluationMetrics` | `EvaluationMetrics` | Output only. The evaluation metrics over training/eval data that were computed at the end of trai... |
| `modelLevelGlobalExplanation` | `GlobalExplanation` | Output only. Global explanation contains the explanation of top features on the model level. Appl... |
| `results` | `array<IterationResult>` | Output only. Output of each iteration run, results.size() <= max_iterations. |
| `startTime` | `string` | Output only. The start time of this training run. |
| `trainingOptions` | `TrainingOptions` | Output only. Options that were used for this training run, includes user specified and default op... |
| `trainingStartTime` | `string` | Output only. The start time of this training run, in milliseconds since epoch. |
| `vertexAiModelId` | `string` | The model id in the [Vertex AI Model Registry](https://cloud.google.com/vertex-ai/docs/model-regi... |
| `vertexAiModelVersion` | `string` | Output only. The model version in the [Vertex AI Model Registry](https://cloud.google.com/vertex-... |

### `TransactionInfo`

[Alpha] Information of a multi-statement transaction.

| Property | Type | Description |
|----------|------|-------------|
| `transactionId` | `string` | Output only. [Alpha] Id of the transaction. |

### `TransformColumn`

Information about a single transform column.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Name of the column. |
| `transformSql` | `string` | Output only. The SQL expression used in the column transform. |
| `type` | `StandardSqlDataType` | Output only. Data type of the column after the transform. |

### `UndeleteDatasetRequest`

Request format for undeleting a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `deletionTime` | `string` | Optional. The exact time when the dataset was deleted. If not specified, the most recently delete... |

### `UserDefinedFunctionResource`

This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of GoogleSQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions

| Property | Type | Description |
|----------|------|-------------|
| `inlineCode` | `string` | [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a i... |
| `resourceUri` | `string` | [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path). |

### `VectorSearchStatistics`

Statistics for a vector search query. Populated as part of JobStatistics2.

| Property | Type | Description |
|----------|------|-------------|
| `indexUnusedReasons` | `array<IndexUnusedReason>` | When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why indexes were not u... |
| `indexUsageMode` | `string` | Specifies the index usage mode for the query. |
| `storedColumnsUsages` | `array<StoredColumnsUsage>` | Specifies the usage of stored columns in the query when stored columns are used in the query. |

### `ViewDefinition`

Describes the definition of a logical view.

| Property | Type | Description |
|----------|------|-------------|
| `foreignDefinitions` | `array<ForeignViewDefinition>` | Optional. Foreign view representations. |
| `privacyPolicy` | `PrivacyPolicy` | Optional. Specifies the privacy policy for the view. |
| `query` | `string` | Required. A query that BigQuery executes when the view is referenced. |
| `useExplicitColumnNames` | `boolean` | True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2... |
| `useLegacySql` | `boolean` | Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set t... |
| `userDefinedFunctionResources` | `array<UserDefinedFunctionResource>` | Describes user-defined function resources used in the query. |

