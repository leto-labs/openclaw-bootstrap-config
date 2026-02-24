# Data Labeling API - API Reference

**Version**: `v1beta1` | **Methods**: 47 | **Schemas**: 194

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datalabeling.projects.datasets.create` | POST | `v1beta1/{+parent}/datasets` | Creates dataset. If success return a Dataset resource. |
| `datalabeling.projects.datasets.list` | GET | `v1beta1/{+parent}/datasets` | Lists datasets under a project. Pagination is supported. |
| `datalabeling.projects.datasets.exportData` | POST | `v1beta1/{+name}:exportData` | Exports data and annotations from dataset. |
| `datalabeling.projects.datasets.get` | GET | `v1beta1/{+name}` | Gets dataset by resource name. |
| `datalabeling.projects.datasets.delete` | DELETE | `v1beta1/{+name}` | Deletes a dataset by resource name. |
| `datalabeling.projects.datasets.importData` | POST | `v1beta1/{+name}:importData` | Imports data into dataset based on source locations defined in request. It can be called multiple... |
| `datalabeling.projects.datasets.text.label` | POST | `v1beta1/{+parent}/text:label` | Starts a labeling task for text. The type of text labeling task is configured by feature in the r... |
| `datalabeling.projects.datasets.dataItems.list` | GET | `v1beta1/{+parent}/dataItems` | Lists data items in a dataset. This API can be called after data are imported into dataset. Pagin... |
| `datalabeling.projects.datasets.dataItems.get` | GET | `v1beta1/{+name}` | Gets a data item in a dataset by resource name. This API can be called after data are imported in... |
| `datalabeling.projects.datasets.video.label` | POST | `v1beta1/{+parent}/video:label` | Starts a labeling task for video. The type of video labeling task is configured by feature in the... |
| `datalabeling.projects.datasets.annotatedDatasets.list` | GET | `v1beta1/{+parent}/annotatedDatasets` | Lists annotated datasets for a dataset. Pagination is supported. |
| `datalabeling.projects.datasets.annotatedDatasets.get` | GET | `v1beta1/{+name}` | Gets an annotated dataset by resource name. |
| `datalabeling.projects.datasets.annotatedDatasets.delete` | DELETE | `v1beta1/{+name}` | Deletes an annotated dataset by resource name. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.delete` | DELETE | `v1beta1/{+name}` | Delete a FeedbackThread. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.get` | GET | `v1beta1/{+name}` | Get a FeedbackThread object. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.list` | GET | `v1beta1/{+parent}/feedbackThreads` | List FeedbackThreads with pagination. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.create` | POST | `v1beta1/{+parent}/feedbackMessages` | Create a FeedbackMessage object. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.get` | GET | `v1beta1/{+name}` | Get a FeedbackMessage object. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.list` | GET | `v1beta1/{+parent}/feedbackMessages` | List FeedbackMessages with pagination. |
| `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.delete` | DELETE | `v1beta1/{+name}` | Delete a FeedbackMessage. |
| `datalabeling.projects.datasets.annotatedDatasets.dataItems.list` | GET | `v1beta1/{+parent}/dataItems` | Lists data items in a dataset. This API can be called after data are imported into dataset. Pagin... |
| `datalabeling.projects.datasets.annotatedDatasets.dataItems.get` | GET | `v1beta1/{+name}` | Gets a data item in a dataset by resource name. This API can be called after data are imported in... |
| `datalabeling.projects.datasets.annotatedDatasets.examples.get` | GET | `v1beta1/{+name}` | Gets an example by resource name, including both data and annotation. |
| `datalabeling.projects.datasets.annotatedDatasets.examples.list` | GET | `v1beta1/{+parent}/examples` | Lists examples in an annotated dataset. Pagination is supported. |
| `datalabeling.projects.datasets.image.label` | POST | `v1beta1/{+parent}/image:label` | Starts a labeling task for image. The type of image labeling task is configured by feature in the... |
| `datalabeling.projects.datasets.evaluations.get` | GET | `v1beta1/{+name}` | Gets an evaluation by resource name (to search, use projects.evaluations.search). |
| `datalabeling.projects.datasets.evaluations.exampleComparisons.search` | POST | `v1beta1/{+parent}/exampleComparisons:search` | Searches example comparisons from an evaluation. The return format is a list of example compariso... |
| `datalabeling.projects.evaluations.search` | GET | `v1beta1/{+parent}/evaluations:search` | Searches evaluations within a project. |
| `datalabeling.projects.evaluationJobs.patch` | PATCH | `v1beta1/{+name}` | Updates an evaluation job. You can only update certain fields of the job's EvaluationJobConfig: `... |
| `datalabeling.projects.evaluationJobs.get` | GET | `v1beta1/{+name}` | Gets an evaluation job by resource name. |
| `datalabeling.projects.evaluationJobs.delete` | DELETE | `v1beta1/{+name}` | Stops and deletes an evaluation job. |
| `datalabeling.projects.evaluationJobs.resume` | POST | `v1beta1/{+name}:resume` | Resumes a paused evaluation job. A deleted evaluation job can't be resumed. Resuming a running or... |
| `datalabeling.projects.evaluationJobs.create` | POST | `v1beta1/{+parent}/evaluationJobs` | Creates an evaluation job. |
| `datalabeling.projects.evaluationJobs.pause` | POST | `v1beta1/{+name}:pause` | Pauses an evaluation job. Pausing an evaluation job that is already in a `PAUSED` state is a no-op. |
| `datalabeling.projects.evaluationJobs.list` | GET | `v1beta1/{+parent}/evaluationJobs` | Lists all evaluation jobs within a project with possible filters. Pagination is supported. |
| `datalabeling.projects.operations.get` | GET | `v1beta1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datalabeling.projects.operations.delete` | DELETE | `v1beta1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datalabeling.projects.operations.list` | GET | `v1beta1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datalabeling.projects.operations.cancel` | GET | `v1beta1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datalabeling.projects.instructions.create` | POST | `v1beta1/{+parent}/instructions` | Creates an instruction for how data should be labeled. |
| `datalabeling.projects.instructions.list` | GET | `v1beta1/{+parent}/instructions` | Lists instructions for a project. Pagination is supported. |
| `datalabeling.projects.instructions.get` | GET | `v1beta1/{+name}` | Gets an instruction by resource name. |
| `datalabeling.projects.instructions.delete` | DELETE | `v1beta1/{+name}` | Deletes an instruction object by resource name. |
| `datalabeling.projects.annotationSpecSets.delete` | DELETE | `v1beta1/{+name}` | Deletes an annotation spec set by resource name. |
| `datalabeling.projects.annotationSpecSets.get` | GET | `v1beta1/{+name}` | Gets an annotation spec set by resource name. |
| `datalabeling.projects.annotationSpecSets.create` | POST | `v1beta1/{+parent}/annotationSpecSets` | Creates an annotation spec set by providing a set of labels. |
| `datalabeling.projects.annotationSpecSets.list` | GET | `v1beta1/{+parent}/annotationSpecSets` | Lists annotation spec sets for a project. Pagination is supported. |

### `datalabeling.projects.datasets.create`

**POST** `v1beta1/{+parent}/datasets`

Creates dataset. If success return a Dataset resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Dataset resource parent, format: projects/{project_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1CreateDatasetRequest`

**Response**: `GoogleCloudDatalabelingV1beta1Dataset`

```typescript
const res = await datalabeling.datasets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.list`

**GET** `v1beta1/{+parent}/datasets`

Lists datasets under a project. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Dataset resource parent, format: projects/{project_id} |
| `filter` | `string` | query | No | Optional. Filter on dataset is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListDatasetsResponse.... |

**Response**: `GoogleCloudDatalabelingV1beta1ListDatasetsResponse`

```typescript
const res = await datalabeling.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.exportData`

**POST** `v1beta1/{+name}:exportData`

Exports data and annotations from dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Dataset resource name, format: projects/{project_id}/datasets/{dataset_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1ExportDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.datasets.exportData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.get`

**GET** `v1beta1/{+name}`

Gets dataset by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Dataset resource name, format: projects/{project_id}/datasets/{dataset_id} |

**Response**: `GoogleCloudDatalabelingV1beta1Dataset`

```typescript
const res = await datalabeling.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.delete`

**DELETE** `v1beta1/{+name}`

Deletes a dataset by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Dataset resource name, format: projects/{project_id}/datasets/{dataset_id} |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.datasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.importData`

**POST** `v1beta1/{+name}:importData`

Imports data into dataset based on source locations defined in request. It can be called multiple times for the same dataset. Each dataset can only have one long running operation running on it. For example, no labeling task (also long running operation) can be started while importing is still ongoing. Vice versa.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Dataset resource name, format: projects/{project_id}/datasets/{dataset_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1ImportDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.datasets.importData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.text.label`

**POST** `v1beta1/{+parent}/text:label`

Starts a labeling task for text. The type of text labeling task is configured by feature in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the data set to request labeling task, format: projects/{project_id}/datasets/{dataset_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1LabelTextRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.text.label({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.dataItems.list`

**GET** `v1beta1/{+parent}/dataItems`

Lists data items in a dataset. This API can be called after data are imported into dataset. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset to list data items, format: projects/{project_id}/datasets/{dataset_id} |
| `filter` | `string` | query | No | Optional. Filter is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListDataItemsResponse... |

**Response**: `GoogleCloudDatalabelingV1beta1ListDataItemsResponse`

```typescript
const res = await datalabeling.dataItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.dataItems.get`

**GET** `v1beta1/{+name}`

Gets a data item in a dataset by resource name. This API can be called after data are imported into dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data item to get, format: projects/{project_id}/datasets/{dataset_id}/dataItems/{data_item_id} |

**Response**: `GoogleCloudDatalabelingV1beta1DataItem`

```typescript
const res = await datalabeling.dataItems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.video.label`

**POST** `v1beta1/{+parent}/video:label`

Starts a labeling task for video. The type of video labeling task is configured by feature in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset to request labeling task, format: projects/{project_id}/datasets/{dataset_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1LabelVideoRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.video.label({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.list`

**GET** `v1beta1/{+parent}/annotatedDatasets`

Lists annotated datasets for a dataset. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset to list annotated datasets, format: projects/{project_id}/datasets/{dataset_id} |
| `filter` | `string` | query | No | Optional. Filter is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListAnnotatedDatasets... |

**Response**: `GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse`

```typescript
const res = await datalabeling.annotatedDatasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.get`

**GET** `v1beta1/{+name}`

Gets an annotated dataset by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the annotated dataset to get, format: projects/{project_id}/datasets/{dataset_id}/annotatedDatasets... |

**Response**: `GoogleCloudDatalabelingV1beta1AnnotatedDataset`

```typescript
const res = await datalabeling.annotatedDatasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.delete`

**DELETE** `v1beta1/{+name}`

Deletes an annotated dataset by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the annotated dataset to delete, format: projects/{project_id}/datasets/{dataset_id}/annotatedDatas... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.annotatedDatasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.delete`

**DELETE** `v1beta1/{+name}`

Delete a FeedbackThread.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the FeedbackThread that is going to be deleted. Format: 'projects/{project_id}/datasets/{dataset_id... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.feedbackThreads.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.get`

**GET** `v1beta1/{+name}`

Get a FeedbackThread object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the feedback. Format: 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dat... |

**Response**: `GoogleCloudDatalabelingV1beta1FeedbackThread`

```typescript
const res = await datalabeling.feedbackThreads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.list`

**GET** `v1beta1/{+parent}/feedbackThreads`

List FeedbackThreads with pagination.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. FeedbackThread resource parent. Format: "projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{ann... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListFeedbackThreads.n... |

**Response**: `GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse`

```typescript
const res = await datalabeling.feedbackThreads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.create`

**POST** `v1beta1/{+parent}/feedbackMessages`

Create a FeedbackMessage object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. FeedbackMessage resource parent, format: projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{ann... |

**Request body**: `GoogleCloudDatalabelingV1beta1FeedbackMessage`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.feedbackMessages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.get`

**GET** `v1beta1/{+name}`

Get a FeedbackMessage object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the feedback. Format: 'projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dat... |

**Response**: `GoogleCloudDatalabelingV1beta1FeedbackMessage`

```typescript
const res = await datalabeling.feedbackMessages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.list`

**GET** `v1beta1/{+parent}/feedbackMessages`

List FeedbackMessages with pagination.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. FeedbackMessage resource parent. Format: "projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/{an... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListFeedbackMessages.... |

**Response**: `GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse`

```typescript
const res = await datalabeling.feedbackMessages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.feedbackThreads.feedbackMessages.delete`

**DELETE** `v1beta1/{+name}`

Delete a FeedbackMessage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the FeedbackMessage that is going to be deleted. Format: 'projects/{project_id}/datasets/{dataset_i... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.feedbackMessages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.dataItems.list`

**GET** `v1beta1/{+parent}/dataItems`

Lists data items in a dataset. This API can be called after data are imported into dataset. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset to list data items, format: projects/{project_id}/datasets/{dataset_id} |
| `filter` | `string` | query | No | Optional. Filter is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListDataItemsResponse... |

**Response**: `GoogleCloudDatalabelingV1beta1ListDataItemsResponse`

```typescript
const res = await datalabeling.dataItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.dataItems.get`

**GET** `v1beta1/{+name}`

Gets a data item in a dataset by resource name. This API can be called after data are imported into dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data item to get, format: projects/{project_id}/datasets/{dataset_id}/dataItems/{data_item_id} |

**Response**: `GoogleCloudDatalabelingV1beta1DataItem`

```typescript
const res = await datalabeling.dataItems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.examples.get`

**GET** `v1beta1/{+name}`

Gets an example by resource name, including both data and annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of example, format: projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/ {annotated_dataset_... |
| `filter` | `string` | query | No | Optional. An expression for filtering Examples. Filter by annotation_spec.display_name is supported. Format "annotati... |

**Response**: `GoogleCloudDatalabelingV1beta1Example`

```typescript
const res = await datalabeling.examples.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.annotatedDatasets.examples.list`

**GET** `v1beta1/{+parent}/examples`

Lists examples in an annotated dataset. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example resource parent. |
| `filter` | `string` | query | No | Optional. An expression for filtering Examples. For annotated datasets that have annotation spec set, filter by annot... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListExamplesResponse.... |

**Response**: `GoogleCloudDatalabelingV1beta1ListExamplesResponse`

```typescript
const res = await datalabeling.examples.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.image.label`

**POST** `v1beta1/{+parent}/image:label`

Starts a labeling task for image. The type of image labeling task is configured by feature in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the dataset to request labeling task, format: projects/{project_id}/datasets/{dataset_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1LabelImageRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.image.label({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.evaluations.get`

**GET** `v1beta1/{+name}`

Gets an evaluation by resource name (to search, use projects.evaluations.search).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the evaluation. Format: "projects/{project_id}/datasets/ {dataset_id}/evaluations/{evaluation_id}' |

**Response**: `GoogleCloudDatalabelingV1beta1Evaluation`

```typescript
const res = await datalabeling.evaluations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.datasets.evaluations.exampleComparisons.search`

**POST** `v1beta1/{+parent}/exampleComparisons:search`

Searches example comparisons from an evaluation. The return format is a list of example comparisons that show ground truth and prediction(s) for a single input. Search by providing an evaluation ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the Evaluation resource to search for example comparisons from. Format: "projects/{project_id}/data... |

**Request body**: `GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest`

**Response**: `GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse`

```typescript
const res = await datalabeling.exampleComparisons.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluations.search`

**GET** `v1beta1/{+parent}/evaluations:search`

Searches evaluations within a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Evaluation search parent (project ID). Format: "projects/ {project_id}" |
| `filter` | `string` | query | No | Optional. To search evaluations, you can filter by the following: * evaluation_job.evaluation_job_id (the last part o... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by the nextPageToken of ... |

**Response**: `GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse`

```typescript
const res = await datalabeling.evaluations.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.patch`

**PATCH** `v1beta1/{+name}`

Updates an evaluation job. You can only update certain fields of the job's EvaluationJobConfig: `humanAnnotationConfig.instruction`, `exampleCount`, and `exampleSamplePercentage`. If you want to change any other aspect of the evaluation job, you must delete the job and create a new one.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. After you create a job, Data Labeling Service assigns a name to the job with the following format: "proj... |
| `updateMask` | `string` | query | No | Optional. Mask for which fields to update. You can only provide the following fields: * `evaluationJobConfig.humanAnn... |

**Request body**: `GoogleCloudDatalabelingV1beta1EvaluationJob`

**Response**: `GoogleCloudDatalabelingV1beta1EvaluationJob`

```typescript
const res = await datalabeling.evaluationJobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.get`

**GET** `v1beta1/{+name}`

Gets an evaluation job by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the evaluation job. Format: "projects/{project_id} /evaluationJobs/{evaluation_job_id}" |

**Response**: `GoogleCloudDatalabelingV1beta1EvaluationJob`

```typescript
const res = await datalabeling.evaluationJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.delete`

**DELETE** `v1beta1/{+name}`

Stops and deletes an evaluation job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the evaluation job that is going to be deleted. Format: "projects/{project_id}/evaluationJobs/{eval... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.evaluationJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.resume`

**POST** `v1beta1/{+name}:resume`

Resumes a paused evaluation job. A deleted evaluation job can't be resumed. Resuming a running or scheduled evaluation job is a no-op.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the evaluation job that is going to be resumed. Format: "projects/{project_id}/evaluationJobs/{eval... |

**Request body**: `GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.evaluationJobs.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.create`

**POST** `v1beta1/{+parent}/evaluationJobs`

Creates an evaluation job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Evaluation job resource parent. Format: "projects/{project_id}" |

**Request body**: `GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest`

**Response**: `GoogleCloudDatalabelingV1beta1EvaluationJob`

```typescript
const res = await datalabeling.evaluationJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.pause`

**POST** `v1beta1/{+name}:pause`

Pauses an evaluation job. Pausing an evaluation job that is already in a `PAUSED` state is a no-op.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the evaluation job that is going to be paused. Format: "projects/{project_id}/evaluationJobs/{evalu... |

**Request body**: `GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.evaluationJobs.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.evaluationJobs.list`

**GET** `v1beta1/{+parent}/evaluationJobs`

Lists all evaluation jobs within a project with possible filters. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Evaluation job resource parent. Format: "projects/{project_id}" |
| `filter` | `string` | query | No | Optional. You can filter the jobs to list by model_id (also known as model_name, as described in EvaluationJob.modelV... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by the nextPageToken in ... |

**Response**: `GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse`

```typescript
const res = await datalabeling.evaluationJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.operations.get`

**GET** `v1beta1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.operations.delete`

**DELETE** `v1beta1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.operations.list`

**GET** `v1beta1/{+name}/operations`

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
const res = await datalabeling.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.operations.cancel`

**GET** `v1beta1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.instructions.create`

**POST** `v1beta1/{+parent}/instructions`

Creates an instruction for how data should be labeled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Instruction resource parent, format: projects/{project_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1CreateInstructionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalabeling.instructions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.instructions.list`

**GET** `v1beta1/{+parent}/instructions`

Lists instructions for a project. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Instruction resource parent, format: projects/{project_id} |
| `filter` | `string` | query | No | Optional. Filter is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListInstructionsRespo... |

**Response**: `GoogleCloudDatalabelingV1beta1ListInstructionsResponse`

```typescript
const res = await datalabeling.instructions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.instructions.get`

**GET** `v1beta1/{+name}`

Gets an instruction by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Instruction resource name, format: projects/{project_id}/instructions/{instruction_id} |

**Response**: `GoogleCloudDatalabelingV1beta1Instruction`

```typescript
const res = await datalabeling.instructions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.instructions.delete`

**DELETE** `v1beta1/{+name}`

Deletes an instruction object by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Instruction resource name, format: projects/{project_id}/instructions/{instruction_id} |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.instructions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.annotationSpecSets.delete`

**DELETE** `v1beta1/{+name}`

Deletes an annotation spec set by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. AnnotationSpec resource name, format: `projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalabeling.annotationSpecSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.annotationSpecSets.get`

**GET** `v1beta1/{+name}`

Gets an annotation spec set by resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. AnnotationSpecSet resource name, format: projects/{project_id}/annotationSpecSets/{annotation_spec_set_id} |

**Response**: `GoogleCloudDatalabelingV1beta1AnnotationSpecSet`

```typescript
const res = await datalabeling.annotationSpecSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.annotationSpecSets.create`

**POST** `v1beta1/{+parent}/annotationSpecSets`

Creates an annotation spec set by providing a set of labels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. AnnotationSpecSet resource parent, format: projects/{project_id} |

**Request body**: `GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest`

**Response**: `GoogleCloudDatalabelingV1beta1AnnotationSpecSet`

```typescript
const res = await datalabeling.annotationSpecSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalabeling.projects.annotationSpecSets.list`

**GET** `v1beta1/{+parent}/annotationSpecSets`

Lists annotation spec sets for a project. Pagination is supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of AnnotationSpecSet resource, format: projects/{project_id} |
| `filter` | `string` | query | No | Optional. Filter is not supported at this moment. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained by ListAnnotationSpecSet... |

**Response**: `GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse`

```typescript
const res = await datalabeling.annotationSpecSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata`

Metadata of a CreateInstruction operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when create instruction request was created. |
| `instruction` | `string` | The name of the created Instruction. projects/{project_id}/instructions/{instruction_id} |
| `partialFailures` | `array<GoogleRpcStatus>` | Partial failures encountered. E.g. single files that couldn't be read. Status details field will ... |

### `GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata`

Metadata of an ExportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when export dataset request was created. |
| `dataset` | `string` | Output only. The name of dataset to be exported. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse`

Response used for ExportDataset longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `dataset` | `string` | Ouptut only. The name of dataset. "projects/*/datasets/*" |
| `exportCount` | `integer` | Output only. Number of examples exported successfully. |
| `labelStats` | `GoogleCloudDatalabelingV1alpha1LabelStats` | Output only. Statistic infos of labels in the exported dataset. |
| `outputConfig` | `GoogleCloudDatalabelingV1alpha1OutputConfig` | Output only. output_config in the ExportData request. |
| `totalCount` | `integer` | Output only. Total number of examples requested to export |

### `GoogleCloudDatalabelingV1alpha1GcsDestination`

Export destination of the data.Only gcs path is allowed in output_uri.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | Required. The format of the gcs destination. Only "text/csv" and "application/json" are supported. |
| `outputUri` | `string` | Required. The output uri of destination file. |

### `GoogleCloudDatalabelingV1alpha1GcsFolderDestination`

Export folder destination of the data.

| Property | Type | Description |
|----------|------|-------------|
| `outputFolderUri` | `string` | Required. Cloud Storage directory to export data to. |

### `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig`

Configuration for how human labeling task should be done.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDatasetDescription` | `string` | Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 c... |
| `annotatedDatasetDisplayName` | `string` | Required. A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters . |
| `contributorEmails` | `array<string>` | Optional. If you want your own labeling contributors to manage and work on this labeling request,... |
| `instruction` | `string` | Required. Instruction resource name. |
| `labelGroup` | `string` | Optional. A human-readable label used to logically group labeling tasks. This string must match t... |
| `languageCode` | `string` | Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `questionDuration` | `string` | Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Defaul... |
| `replicaCount` | `integer` | Optional. Replication of questions. Each question will be sent to up to this number of contributo... |
| `userEmailAddress` | `string` | Email of the user who started the labeling task and should be notified by email. If empty no noti... |

### `GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata`

Metadata of an ImportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when import dataset request was created. |
| `dataset` | `string` | Output only. The name of imported dataset. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse`

Response used for ImportData longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Ouptut only. The name of imported dataset. |
| `importCount` | `integer` | Output only. Number of examples imported successfully. |
| `totalCount` | `integer` | Output only. Total number of examples requested to import |

### `GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata`

Details of a LabelImageBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata`

Details of LabelImageBoundingPoly operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata`

Metadata of a LabelImageClassification operation.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata`

Details of a LabelImageOrientedBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata`

Details of LabelImagePolyline operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata`

Details of a LabelImageSegmentation operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1alpha1LabelOperationMetadata`

Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag: 23

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when labeling request was created. |
| `dataset` | `string` | Output only. The name of dataset to be labeled. "projects/*/datasets/*" |
| `imageBoundingBoxDetails` | `GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata` | Details of label image bounding box operation. |
| `imageBoundingPolyDetails` | `GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata` | Details of label image bounding poly operation. |
| `imageClassificationDetails` | `GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata` | Details of label image classification operation. |
| `imageOrientedBoundingBoxDetails` | `GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata` | Details of label image oriented bounding box operation. |
| `imagePolylineDetails` | `GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata` | Details of label image polyline operation. |
| `imageSegmentationDetails` | `GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata` | Details of label image segmentation operation. |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |
| `progressPercent` | `integer` | Output only. Progress of label operation. Range: [0, 100]. |
| `textClassificationDetails` | `GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata` | Details of label text classification operation. |
| `textEntityExtractionDetails` | `GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata` | Details of label text entity extraction operation. |
| `videoClassificationDetails` | `GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata` | Details of label video classification operation. |
| `videoEventDetails` | `GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata` | Details of label video event operation. |
| `videoObjectDetectionDetails` | `GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata` | Details of label video object detection operation. |
| `videoObjectTrackingDetails` | `GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata` | Details of label video object tracking operation. |

### `GoogleCloudDatalabelingV1alpha1LabelStats`

Statistics about annotation specs.

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `object` | Map of each annotation spec's example count. Key is the annotation spec name and value is the num... |

### `GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata`

Details of a LabelTextClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata`

Details of a LabelTextEntityExtraction operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata`

Details of a LabelVideoClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata`

Details of a LabelVideoEvent operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata`

Details of a LabelVideoObjectDetection operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata`

Details of a LabelVideoObjectTracking operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1alpha1OutputConfig`

The configuration of output data.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudDatalabelingV1alpha1GcsDestination` | Output to a file in Cloud Storage. Should be used for labeling output other than image segmentation. |
| `gcsFolderDestination` | `GoogleCloudDatalabelingV1alpha1GcsFolderDestination` | Output to a folder in Cloud Storage. Should be used for image segmentation or document de-identif... |

### `GoogleCloudDatalabelingV1beta1AnnotatedDataset`

AnnotatedDataset is a set holding annotations for data in a Dataset. Each labeling task will generate an AnnotatedDataset under the Dataset that the task is requested for.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSource` | `string` | Output only. Source of the annotation. |
| `annotationType` | `string` | Output only. Type of the annotation. It is specified when starting labeling task. |
| `blockingResources` | `array<string>` | Output only. The names of any related resources that are blocking changes to the annotated dataset. |
| `completedExampleCount` | `string` | Output only. Number of examples that have annotation in the annotated dataset. |
| `createTime` | `string` | Output only. Time the AnnotatedDataset was created. |
| `description` | `string` | Output only. The description of the AnnotatedDataset. It is specified in HumanAnnotationConfig wh... |
| `displayName` | `string` | Output only. The display name of the AnnotatedDataset. It is specified in HumanAnnotationConfig w... |
| `exampleCount` | `string` | Output only. Number of examples in the annotated dataset. |
| `labelStats` | `GoogleCloudDatalabelingV1beta1LabelStats` | Output only. Per label statistics. |
| `metadata` | `GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata` | Output only. Additional information about AnnotatedDataset. |
| `name` | `string` | Output only. AnnotatedDataset resource name in format of: projects/{project_id}/datasets/{dataset... |

### `GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata`

Metadata on AnnotatedDataset.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPolyConfig` | `GoogleCloudDatalabelingV1beta1BoundingPolyConfig` | Configuration for image bounding box and bounding poly task. |
| `eventConfig` | `GoogleCloudDatalabelingV1beta1EventConfig` | Configuration for video event labeling task. |
| `humanAnnotationConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | HumanAnnotationConfig used when requesting the human labeling task for this AnnotatedDataset. |
| `imageClassificationConfig` | `GoogleCloudDatalabelingV1beta1ImageClassificationConfig` | Configuration for image classification task. |
| `objectDetectionConfig` | `GoogleCloudDatalabelingV1beta1ObjectDetectionConfig` | Configuration for video object detection task. |
| `objectTrackingConfig` | `GoogleCloudDatalabelingV1beta1ObjectTrackingConfig` | Configuration for video object tracking task. |
| `polylineConfig` | `GoogleCloudDatalabelingV1beta1PolylineConfig` | Configuration for image polyline task. |
| `segmentationConfig` | `GoogleCloudDatalabelingV1beta1SegmentationConfig` | Configuration for image segmentation task. |
| `textClassificationConfig` | `GoogleCloudDatalabelingV1beta1TextClassificationConfig` | Configuration for text classification task. |
| `textEntityExtractionConfig` | `GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig` | Configuration for text entity extraction task. |
| `videoClassificationConfig` | `GoogleCloudDatalabelingV1beta1VideoClassificationConfig` | Configuration for video classification task. |

### `GoogleCloudDatalabelingV1beta1Annotation`

Annotation for Example. Each example may have one or more annotations. For example in image classification problem, each image might have one or more labels. We call labels binded with this image an Annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationMetadata` | `GoogleCloudDatalabelingV1beta1AnnotationMetadata` | Output only. Annotation metadata, including information like votes for labels. |
| `annotationSentiment` | `string` | Output only. Sentiment for this annotation. |
| `annotationSource` | `string` | Output only. The source of the annotation. |
| `annotationValue` | `GoogleCloudDatalabelingV1beta1AnnotationValue` | Output only. This is the actual annotation value, e.g classification, bounding box values are sto... |
| `name` | `string` | Output only. Unique name of this annotation, format is: projects/{project_id}/datasets/{dataset_i... |

### `GoogleCloudDatalabelingV1beta1AnnotationMetadata`

Additional information associated with the annotation.

| Property | Type | Description |
|----------|------|-------------|
| `operatorMetadata` | `GoogleCloudDatalabelingV1beta1OperatorMetadata` | Metadata related to human labeling. |

### `GoogleCloudDatalabelingV1beta1AnnotationSpec`

Container of information related to one possible annotation that can be used in a labeling task. For example, an image classification task where images are labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an AnnotationSpec for `cat`.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. User-provided description of the annotation specification. The description can be up to... |
| `displayName` | `string` | Required. The display name of the AnnotationSpec. Maximum of 64 characters. |
| `index` | `integer` | Output only. This is the integer index of the AnnotationSpec. The index for the whole AnnotationS... |

### `GoogleCloudDatalabelingV1beta1AnnotationSpecSet`

An AnnotationSpecSet is a collection of label definitions. For example, in image classification tasks, you define a set of possible labels for images as an AnnotationSpecSet. An AnnotationSpecSet is immutable upon creation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecs` | `array<GoogleCloudDatalabelingV1beta1AnnotationSpec>` | Required. The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. The... |
| `blockingResources` | `array<string>` | Output only. The names of any related resources that are blocking changes to the annotation spec ... |
| `description` | `string` | Optional. User-provided description of the annotation specification set. The description can be u... |
| `displayName` | `string` | Required. The display name for AnnotationSpecSet that you define when you create it. Maximum of 6... |
| `name` | `string` | Output only. The AnnotationSpecSet resource name in the following format: "projects/{project_id}/... |

### `GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig`

Annotation spec set with the setting of allowing multi labels or not.

| Property | Type | Description |
|----------|------|-------------|
| `allowMultiLabel` | `boolean` | Optional. If allow_multi_label is true, contributors are able to choose multiple labels from one ... |
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |

### `GoogleCloudDatalabelingV1beta1AnnotationValue`

Annotation value for an example.

| Property | Type | Description |
|----------|------|-------------|
| `imageBoundingPolyAnnotation` | `GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation` | Annotation value for image bounding box, oriented bounding box and polygon cases. |
| `imageClassificationAnnotation` | `GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation` | Annotation value for image classification case. |
| `imagePolylineAnnotation` | `GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation` | Annotation value for image polyline cases. Polyline here is different from BoundingPoly. It is fo... |
| `imageSegmentationAnnotation` | `GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation` | Annotation value for image segmentation. |
| `textClassificationAnnotation` | `GoogleCloudDatalabelingV1beta1TextClassificationAnnotation` | Annotation value for text classification case. |
| `textEntityExtractionAnnotation` | `GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation` | Annotation value for text entity extraction case. |
| `videoClassificationAnnotation` | `GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation` | Annotation value for video classification case. |
| `videoEventAnnotation` | `GoogleCloudDatalabelingV1beta1VideoEventAnnotation` | Annotation value for video event case. |
| `videoObjectTrackingAnnotation` | `GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation` | Annotation value for video object detection and tracking case. |

### `GoogleCloudDatalabelingV1beta1Attempt`

Records a failed evaluation job run.

| Property | Type | Description |
|----------|------|-------------|
| `attemptTime` | `string` |  |
| `partialFailures` | `array<GoogleRpcStatus>` | Details of errors that occurred. |

### `GoogleCloudDatalabelingV1beta1BigQuerySource`

The BigQuery location for input data. If used in an EvaluationJob, this is where the service saves the prediction input and output sampled from the model version.

| Property | Type | Description |
|----------|------|-------------|
| `inputUri` | `string` | Required. BigQuery URI to a table, up to 2,000 characters long. If you specify the URI of a table... |

### `GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions`

Options regarding evaluation between bounding boxes.

| Property | Type | Description |
|----------|------|-------------|
| `iouThreshold` | `number` | Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersectio... |

### `GoogleCloudDatalabelingV1beta1BoundingPoly`

A bounding polygon in the image.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudDatalabelingV1beta1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudDatalabelingV1beta1BoundingPolyConfig`

Config for image bounding poly (and bounding box) human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `instructionMessage` | `string` | Optional. Instruction message showed on contributors UI. |

### `GoogleCloudDatalabelingV1beta1ClassificationMetadata`

Metadata for classification annotations.

| Property | Type | Description |
|----------|------|-------------|
| `isMultiLabel` | `boolean` | Whether the classification task is multi-label or not. |

### `GoogleCloudDatalabelingV1beta1ClassificationMetrics`

Metrics calculated for a classification model.

| Property | Type | Description |
|----------|------|-------------|
| `confusionMatrix` | `GoogleCloudDatalabelingV1beta1ConfusionMatrix` | Confusion matrix of predicted labels vs. ground truth labels. |
| `prCurve` | `GoogleCloudDatalabelingV1beta1PrCurve` | Precision-recall curve based on ground truth labels, predicted labels, and scores for the predict... |

### `GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry`

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | Threshold used for this entry. For classification tasks, this is a classification threshold: a pr... |
| `f1Score` | `number` | Harmonic mean of recall and precision. |
| `f1ScoreAt1` | `number` | The harmonic mean of recall_at1 and precision_at1. |
| `f1ScoreAt5` | `number` | The harmonic mean of recall_at5 and precision_at5. |
| `precision` | `number` | Precision value. |
| `precisionAt1` | `number` | Precision value for entries with label that has highest score. |
| `precisionAt5` | `number` | Precision value for entries with label that has highest 5 scores. |
| `recall` | `number` | Recall value. |
| `recallAt1` | `number` | Recall value for entries with label that has highest score. |
| `recallAt5` | `number` | Recall value for entries with label that has highest 5 scores. |

### `GoogleCloudDatalabelingV1beta1ConfusionMatrix`

Confusion matrix of the model running the classification. Only applicable when the metrics entry aggregates multiple labels. Not applicable when the entry is for a single label.

| Property | Type | Description |
|----------|------|-------------|
| `row` | `array<GoogleCloudDatalabelingV1beta1Row>` |  |

### `GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry`

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | The annotation spec of a predicted label. |
| `itemCount` | `integer` | Number of items predicted to have this label. (The ground truth label for these items is the `Row... |

### `GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest`

Request message for CreateAnnotationSpecSet.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `GoogleCloudDatalabelingV1beta1AnnotationSpecSet` | Required. Annotation spec set to create. Annotation specs must be included. Only one annotation s... |

### `GoogleCloudDatalabelingV1beta1CreateDatasetRequest`

Request message for CreateDataset.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `GoogleCloudDatalabelingV1beta1Dataset` | Required. The dataset to be created. |

### `GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest`

Request message for CreateEvaluationJob.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `GoogleCloudDatalabelingV1beta1EvaluationJob` | Required. The evaluation job to create. |

### `GoogleCloudDatalabelingV1beta1CreateInstructionMetadata`

Metadata of a CreateInstruction operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when create instruction request was created. |
| `instruction` | `string` | The name of the created Instruction. projects/{project_id}/instructions/{instruction_id} |
| `partialFailures` | `array<GoogleRpcStatus>` | Partial failures encountered. E.g. single files that couldn't be read. Status details field will ... |

### `GoogleCloudDatalabelingV1beta1CreateInstructionRequest`

Request message for CreateInstruction.

| Property | Type | Description |
|----------|------|-------------|
| `instruction` | `GoogleCloudDatalabelingV1beta1Instruction` | Required. Instruction of how to perform the labeling task. |

### `GoogleCloudDatalabelingV1beta1CsvInstruction`

Deprecated: this instruction format is not supported any more. Instruction from a CSV file.

| Property | Type | Description |
|----------|------|-------------|
| `gcsFileUri` | `string` | CSV file for the instruction. Only gcs path is allowed. |

### `GoogleCloudDatalabelingV1beta1DataItem`

DataItem is a piece of data, without annotation. For example, an image.

| Property | Type | Description |
|----------|------|-------------|
| `imagePayload` | `GoogleCloudDatalabelingV1beta1ImagePayload` | The image payload, a container of the image bytes/uri. |
| `name` | `string` | Output only. Name of the data item, in format of: projects/{project_id}/datasets/{dataset_id}/dat... |
| `textPayload` | `GoogleCloudDatalabelingV1beta1TextPayload` | The text payload, a container of text content. |
| `videoPayload` | `GoogleCloudDatalabelingV1beta1VideoPayload` | The video payload, a container of the video uri. |

### `GoogleCloudDatalabelingV1beta1Dataset`

Dataset is the resource to hold your data. You can request multiple labeling tasks for a dataset while each one will generate an AnnotatedDataset.

| Property | Type | Description |
|----------|------|-------------|
| `blockingResources` | `array<string>` | Output only. The names of any related resources that are blocking changes to the dataset. |
| `createTime` | `string` | Output only. Time the dataset is created. |
| `dataItemCount` | `string` | Output only. The number of data items in the dataset. |
| `description` | `string` | Optional. User-provided description of the annotation specification set. The description can be u... |
| `displayName` | `string` | Required. The display name of the dataset. Maximum of 64 characters. |
| `inputConfigs` | `array<GoogleCloudDatalabelingV1beta1InputConfig>` | Output only. This is populated with the original input configs where ImportData is called. It is ... |
| `lastMigrateTime` | `string` | Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migra... |
| `name` | `string` | Output only. Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id} |

### `GoogleCloudDatalabelingV1beta1Evaluation`

Describes an evaluation between a machine learning model's predictions and ground truth labels. Created when an EvaluationJob runs successfully.

| Property | Type | Description |
|----------|------|-------------|
| `annotationType` | `string` | Output only. Type of task that the model version being evaluated performs, as defined in the eval... |
| `config` | `GoogleCloudDatalabelingV1beta1EvaluationConfig` | Output only. Options used in the evaluation job that created this evaluation. |
| `createTime` | `string` | Output only. Timestamp for when this evaluation was created. |
| `evaluatedItemCount` | `string` | Output only. The number of items in the ground truth dataset that were used for this evaluation. ... |
| `evaluationJobRunTime` | `string` | Output only. Timestamp for when the evaluation job that created this evaluation ran. |
| `evaluationMetrics` | `GoogleCloudDatalabelingV1beta1EvaluationMetrics` | Output only. Metrics comparing predictions to ground truth labels. |
| `name` | `string` | Output only. Resource name of an evaluation. The name has the following format: "projects/{projec... |

### `GoogleCloudDatalabelingV1beta1EvaluationConfig`

Configuration details used for calculating evaluation metrics and creating an Evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `boundingBoxEvaluationOptions` | `GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions` | Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX... |

### `GoogleCloudDatalabelingV1beta1EvaluationJob`

Defines an evaluation job that runs periodically to generate Evaluations. [Creating an evaluation job](/ml-engine/docs/continuous-evaluation/create-job) is the starting point for using continuous evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Name of the AnnotationSpecSet describing all the labels that your machine learning mode... |
| `attempts` | `array<GoogleCloudDatalabelingV1beta1Attempt>` | Output only. Every time the evaluation job runs and an error occurs, the failed attempt is append... |
| `createTime` | `string` | Output only. Timestamp of when this evaluation job was created. |
| `description` | `string` | Required. Description of the job. The description can be up to 25,000 characters long. |
| `evaluationJobConfig` | `GoogleCloudDatalabelingV1beta1EvaluationJobConfig` | Required. Configuration details for the evaluation job. |
| `labelMissingGroundTruth` | `boolean` | Required. Whether you want Data Labeling Service to provide ground truth labels for prediction in... |
| `modelVersion` | `string` | Required. The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be e... |
| `name` | `string` | Output only. After you create a job, Data Labeling Service assigns a name to the job with the fol... |
| `schedule` | `string` | Required. Describes the interval at which the job runs. This interval must be at least 1 day, and... |
| `state` | `string` | Output only. Describes the current state of the job. |

### `GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig`

Provides details for how an evaluation job sends email alerts based on the results of a run.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. An email address to send alerts to. |
| `minAcceptableMeanAveragePrecision` | `number` | Required. A number between 0 and 1 that describes a minimum mean average precision threshold. Whe... |

### `GoogleCloudDatalabelingV1beta1EvaluationJobConfig`

Configures specific details of how a continuous evaluation job works. Provide this configuration when you create an EvaluationJob.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryImportKeys` | `object` | Required. Prediction keys that tell Data Labeling Service where to find the data for evaluation i... |
| `boundingPolyConfig` | `GoogleCloudDatalabelingV1beta1BoundingPolyConfig` | Specify this field if your model version performs image object detection (bounding box detection)... |
| `evaluationConfig` | `GoogleCloudDatalabelingV1beta1EvaluationConfig` | Required. Details for calculating evaluation metrics and creating Evaulations. If your model vers... |
| `evaluationJobAlertConfig` | `GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig` | Optional. Configuration details for evaluation job alerts. Specify this field if you want to rece... |
| `exampleCount` | `integer` | Required. The maximum number of predictions to sample and save to BigQuery during each evaluation... |
| `exampleSamplePercentage` | `number` | Required. Fraction of predictions to sample and save to BigQuery during each evaluation interval.... |
| `humanAnnotationConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Optional. Details for human annotation of your data. If you set labelMissingGroundTruth to `true`... |
| `imageClassificationConfig` | `GoogleCloudDatalabelingV1beta1ImageClassificationConfig` | Specify this field if your model version performs image classification or general classification.... |
| `inputConfig` | `GoogleCloudDatalabelingV1beta1InputConfig` | Rquired. Details for the sampled prediction input. Within this configuration, there are requireme... |
| `textClassificationConfig` | `GoogleCloudDatalabelingV1beta1TextClassificationConfig` | Specify this field if your model version performs text classification. `annotationSpecSet` in thi... |

### `GoogleCloudDatalabelingV1beta1EvaluationMetrics`

| Property | Type | Description |
|----------|------|-------------|
| `classificationMetrics` | `GoogleCloudDatalabelingV1beta1ClassificationMetrics` |  |
| `objectDetectionMetrics` | `GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics` |  |

### `GoogleCloudDatalabelingV1beta1EventConfig`

Config for video event human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSets` | `array<string>` | Required. The list of annotation spec set resource name. Similar to video classification, we supp... |
| `clipLength` | `integer` | Videos will be cut to smaller clips to make it easier for labelers to work on. Users can configur... |
| `overlapLength` | `integer` | The overlap length between different video clips. Users can configure is field in seconds, if not... |

### `GoogleCloudDatalabelingV1beta1Example`

An Example is a piece of data and its annotation. For example, an image with label "house".

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<GoogleCloudDatalabelingV1beta1Annotation>` | Output only. Annotations for the piece of data in Example. One piece of data can have multiple an... |
| `imagePayload` | `GoogleCloudDatalabelingV1beta1ImagePayload` | The image payload, a container of the image bytes/uri. |
| `name` | `string` | Output only. Name of the example, in format of: projects/{project_id}/datasets/{dataset_id}/annot... |
| `textPayload` | `GoogleCloudDatalabelingV1beta1TextPayload` | The text payload, a container of the text content. |
| `videoPayload` | `GoogleCloudDatalabelingV1beta1VideoPayload` | The video payload, a container of the video uri. |

### `GoogleCloudDatalabelingV1beta1ExampleComparison`

Example comparisons comparing ground truth output and predictions for a specific input.

| Property | Type | Description |
|----------|------|-------------|
| `groundTruthExample` | `GoogleCloudDatalabelingV1beta1Example` | The ground truth output for the input. |
| `modelCreatedExamples` | `array<GoogleCloudDatalabelingV1beta1Example>` | Predictions by the model for the input. |

### `GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata`

Metadata of an ExportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when export dataset request was created. |
| `dataset` | `string` | Output only. The name of dataset to be exported. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1beta1ExportDataOperationResponse`

Response used for ExportDataset longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `dataset` | `string` | Ouptut only. The name of dataset. "projects/*/datasets/*" |
| `exportCount` | `integer` | Output only. Number of examples exported successfully. |
| `labelStats` | `GoogleCloudDatalabelingV1beta1LabelStats` | Output only. Statistic infos of labels in the exported dataset. |
| `outputConfig` | `GoogleCloudDatalabelingV1beta1OutputConfig` | Output only. output_config in the ExportData request. |
| `totalCount` | `integer` | Output only. Total number of examples requested to export |

### `GoogleCloudDatalabelingV1beta1ExportDataRequest`

Request message for ExportData API.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Required. Annotated dataset resource name. DataItem in Dataset and their annotations in specified... |
| `filter` | `string` | Optional. Filter is not supported at this moment. |
| `outputConfig` | `GoogleCloudDatalabelingV1beta1OutputConfig` | Required. Specify the output destination. |
| `userEmailAddress` | `string` | Email of the user who started the export task and should be notified by email. If empty no notifi... |

### `GoogleCloudDatalabelingV1beta1FeedbackMessage`

A feedback message inside a feedback thread.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | String content of the feedback. Maximum of 10000 characters. |
| `createTime` | `string` | Create time. |
| `image` | `string` | The image storing this feedback if the feedback is an image representing operator's comments. |
| `name` | `string` | Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{datase... |
| `operatorFeedbackMetadata` | `GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata` |  |
| `requesterFeedbackMetadata` | `GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata` |  |

### `GoogleCloudDatalabelingV1beta1FeedbackThread`

A feedback thread of a certain labeling task on a certain annotated dataset.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackThreadMetadata` | `GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata` | Metadata regarding the feedback thread. |
| `name` | `string` | Name of the feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDataset... |

### `GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | When the thread is created |
| `lastUpdateTime` | `string` | When the thread is last updated. |
| `status` | `string` |  |
| `thumbnail` | `string` | An image thumbnail of this thread. |

### `GoogleCloudDatalabelingV1beta1GcsDestination`

Export destination of the data.Only gcs path is allowed in output_uri.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | Required. The format of the gcs destination. Only "text/csv" and "application/json" are supported. |
| `outputUri` | `string` | Required. The output uri of destination file. |

### `GoogleCloudDatalabelingV1beta1GcsFolderDestination`

Export folder destination of the data.

| Property | Type | Description |
|----------|------|-------------|
| `outputFolderUri` | `string` | Required. Cloud Storage directory to export data to. |

### `GoogleCloudDatalabelingV1beta1GcsSource`

Source of the Cloud Storage file to be imported.

| Property | Type | Description |
|----------|------|-------------|
| `inputUri` | `string` | Required. The input URI of source file. This must be a Cloud Storage path (`gs://...`). |
| `mimeType` | `string` | Required. The format of the source file. Only "text/csv" is supported. |

### `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig`

Configuration for how human labeling task should be done.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDatasetDescription` | `string` | Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 c... |
| `annotatedDatasetDisplayName` | `string` | Required. A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters . |
| `contributorEmails` | `array<string>` | Optional. If you want your own labeling contributors to manage and work on this labeling request,... |
| `instruction` | `string` | Required. Instruction resource name. |
| `labelGroup` | `string` | Optional. A human-readable label used to logically group labeling tasks. This string must match t... |
| `languageCode` | `string` | Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `questionDuration` | `string` | Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Defaul... |
| `replicaCount` | `integer` | Optional. Replication of questions. Each question will be sent to up to this number of contributo... |
| `userEmailAddress` | `string` | Email of the user who started the labeling task and should be notified by email. If empty no noti... |

### `GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation`

Image bounding poly annotation. It represents a polygon including bounding box in the image.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of object in this bounding polygon. |
| `boundingPoly` | `GoogleCloudDatalabelingV1beta1BoundingPoly` |  |
| `normalizedBoundingPoly` | `GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly` |  |

### `GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation`

Image classification annotation definition.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of image. |

### `GoogleCloudDatalabelingV1beta1ImageClassificationConfig`

Config for image classification human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `allowMultiLabel` | `boolean` | Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one i... |
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `answerAggregationType` | `string` | Optional. The type of how to aggregate answers. |

### `GoogleCloudDatalabelingV1beta1ImagePayload`

Container of information about an image.

| Property | Type | Description |
|----------|------|-------------|
| `imageThumbnail` | `string` | A byte string of a thumbnail image. |
| `imageUri` | `string` | Image uri from the user bucket. |
| `mimeType` | `string` | Image format. |
| `signedUri` | `string` | Signed uri of the image file in the service bucket. |

### `GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation`

A polyline for the image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of this polyline. |
| `normalizedPolyline` | `GoogleCloudDatalabelingV1beta1NormalizedPolyline` |  |
| `polyline` | `GoogleCloudDatalabelingV1beta1Polyline` |  |

### `GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation`

Image segmentation annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationColors` | `object` | The mapping between rgb color and annotation spec. The key is the rgb color represented in format... |
| `imageBytes` | `string` | A byte string of a full image's color map. |
| `mimeType` | `string` | Image format. |

### `GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata`

Metadata of an ImportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when import dataset request was created. |
| `dataset` | `string` | Output only. The name of imported dataset. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1beta1ImportDataOperationResponse`

Response used for ImportData longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Ouptut only. The name of imported dataset. |
| `importCount` | `integer` | Output only. Number of examples imported successfully. |
| `totalCount` | `integer` | Output only. Total number of examples requested to import |

### `GoogleCloudDatalabelingV1beta1ImportDataRequest`

Request message for ImportData API.

| Property | Type | Description |
|----------|------|-------------|
| `inputConfig` | `GoogleCloudDatalabelingV1beta1InputConfig` | Required. Specify the input source of the data. |
| `userEmailAddress` | `string` | Email of the user who started the import task and should be notified by email. If empty no notifi... |

### `GoogleCloudDatalabelingV1beta1InputConfig`

The configuration of input data, including data type, location, etc.

| Property | Type | Description |
|----------|------|-------------|
| `annotationType` | `string` | Optional. The type of annotation to be performed on this data. You must specify this field if you... |
| `bigquerySource` | `GoogleCloudDatalabelingV1beta1BigQuerySource` | Source located in BigQuery. You must specify this field if you are using this InputConfig in an E... |
| `classificationMetadata` | `GoogleCloudDatalabelingV1beta1ClassificationMetadata` | Optional. Metadata about annotations for the input. You must specify this field if you are using ... |
| `dataType` | `string` | Required. Data type must be specifed when user tries to import data. |
| `gcsSource` | `GoogleCloudDatalabelingV1beta1GcsSource` | Source located in Cloud Storage. |
| `textMetadata` | `GoogleCloudDatalabelingV1beta1TextMetadata` | Required for text import, as language code must be specified. |

### `GoogleCloudDatalabelingV1beta1Instruction`

Instruction of how to perform the labeling task for human operators. Currently only PDF instruction is supported.

| Property | Type | Description |
|----------|------|-------------|
| `blockingResources` | `array<string>` | Output only. The names of any related resources that are blocking changes to the instruction. |
| `createTime` | `string` | Output only. Creation time of instruction. |
| `csvInstruction` | `GoogleCloudDatalabelingV1beta1CsvInstruction` | Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such ... |
| `dataType` | `string` | Required. The data type of this instruction. |
| `description` | `string` | Optional. User-provided description of the instruction. The description can be up to 10000 charac... |
| `displayName` | `string` | Required. The display name of the instruction. Maximum of 64 characters. |
| `name` | `string` | Output only. Instruction resource name, format: projects/{project_id}/instructions/{instruction_id} |
| `pdfInstruction` | `GoogleCloudDatalabelingV1beta1PdfInstruction` | Instruction from a PDF document. The PDF should be in a Cloud Storage bucket. |
| `updateTime` | `string` | Output only. Last update time of instruction. |

### `GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata`

Details of a LabelImageBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata`

Details of LabelImageBoundingPoly operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata`

Metadata of a LabelImageClassification operation.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata`

Details of a LabelImageOrientedBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata`

Details of LabelImagePolyline operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelImageRequest`

Request message for starting an image labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Required. Basic human annotation config. |
| `boundingPolyConfig` | `GoogleCloudDatalabelingV1beta1BoundingPolyConfig` | Configuration for bounding box and bounding poly task. One of image_classification_config, boundi... |
| `feature` | `string` | Required. The type of image labeling task. |
| `imageClassificationConfig` | `GoogleCloudDatalabelingV1beta1ImageClassificationConfig` | Configuration for image classification task. One of image_classification_config, bounding_poly_co... |
| `polylineConfig` | `GoogleCloudDatalabelingV1beta1PolylineConfig` | Configuration for polyline task. One of image_classification_config, bounding_poly_config, polyli... |
| `segmentationConfig` | `GoogleCloudDatalabelingV1beta1SegmentationConfig` | Configuration for segmentation task. One of image_classification_config, bounding_poly_config, po... |

### `GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata`

Details of a LabelImageSegmentation operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1beta1LabelOperationMetadata`

Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag: 23

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when labeling request was created. |
| `dataset` | `string` | Output only. The name of dataset to be labeled. "projects/*/datasets/*" |
| `imageBoundingBoxDetails` | `GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata` | Details of label image bounding box operation. |
| `imageBoundingPolyDetails` | `GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata` | Details of label image bounding poly operation. |
| `imageClassificationDetails` | `GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata` | Details of label image classification operation. |
| `imageOrientedBoundingBoxDetails` | `GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata` | Details of label image oriented bounding box operation. |
| `imagePolylineDetails` | `GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata` | Details of label image polyline operation. |
| `imageSegmentationDetails` | `GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata` | Details of label image segmentation operation. |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |
| `progressPercent` | `integer` | Output only. Progress of label operation. Range: [0, 100]. |
| `textClassificationDetails` | `GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata` | Details of label text classification operation. |
| `textEntityExtractionDetails` | `GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata` | Details of label text entity extraction operation. |
| `videoClassificationDetails` | `GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata` | Details of label video classification operation. |
| `videoEventDetails` | `GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata` | Details of label video event operation. |
| `videoObjectDetectionDetails` | `GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata` | Details of label video object detection operation. |
| `videoObjectTrackingDetails` | `GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata` | Details of label video object tracking operation. |

### `GoogleCloudDatalabelingV1beta1LabelStats`

Statistics about annotation specs.

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `object` | Map of each annotation spec's example count. Key is the annotation spec name and value is the num... |

### `GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata`

Details of a LabelTextClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata`

Details of a LabelTextEntityExtraction operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelTextRequest`

Request message for LabelText.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Required. Basic human annotation config. |
| `feature` | `string` | Required. The type of text labeling task. |
| `textClassificationConfig` | `GoogleCloudDatalabelingV1beta1TextClassificationConfig` | Configuration for text classification task. One of text_classification_config and text_entity_ext... |
| `textEntityExtractionConfig` | `GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig` | Configuration for entity extraction task. One of text_classification_config and text_entity_extra... |

### `GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata`

Details of a LabelVideoClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata`

Details of a LabelVideoEvent operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata`

Details of a LabelVideoObjectDetection operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata`

Details of a LabelVideoObjectTracking operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1beta1LabelVideoRequest`

Request message for LabelVideo.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1beta1HumanAnnotationConfig` | Required. Basic human annotation config. |
| `eventConfig` | `GoogleCloudDatalabelingV1beta1EventConfig` | Configuration for video event task. One of video_classification_config, object_detection_config, ... |
| `feature` | `string` | Required. The type of video labeling task. |
| `objectDetectionConfig` | `GoogleCloudDatalabelingV1beta1ObjectDetectionConfig` | Configuration for video object detection task. One of video_classification_config, object_detecti... |
| `objectTrackingConfig` | `GoogleCloudDatalabelingV1beta1ObjectTrackingConfig` | Configuration for video object tracking task. One of video_classification_config, object_detectio... |
| `videoClassificationConfig` | `GoogleCloudDatalabelingV1beta1VideoClassificationConfig` | Configuration for video classification task. One of video_classification_config, object_detection... |

### `GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse`

Results of listing annotated datasets for a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDatasets` | `array<GoogleCloudDatalabelingV1beta1AnnotatedDataset>` | The list of annotated datasets to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse`

Results of listing annotation spec set under a project.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSets` | `array<GoogleCloudDatalabelingV1beta1AnnotationSpecSet>` | The list of annotation spec sets. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListDataItemsResponse`

Results of listing data items in a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `dataItems` | `array<GoogleCloudDatalabelingV1beta1DataItem>` | The list of data items to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListDatasetsResponse`

Results of listing datasets within a project.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<GoogleCloudDatalabelingV1beta1Dataset>` | The list of datasets to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse`

Results for listing evaluation jobs.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationJobs` | `array<GoogleCloudDatalabelingV1beta1EvaluationJob>` | The list of evaluation jobs to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListExamplesResponse`

Results of listing Examples in and annotated dataset.

| Property | Type | Description |
|----------|------|-------------|
| `examples` | `array<GoogleCloudDatalabelingV1beta1Example>` | The list of examples to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse`

Results for listing FeedbackMessages.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackMessages` | `array<GoogleCloudDatalabelingV1beta1FeedbackMessage>` | The list of feedback messages to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse`

Results for listing FeedbackThreads.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackThreads` | `array<GoogleCloudDatalabelingV1beta1FeedbackThread>` | The list of feedback threads to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1ListInstructionsResponse`

Results of listing instructions under a project.

| Property | Type | Description |
|----------|------|-------------|
| `instructions` | `array<GoogleCloudDatalabelingV1beta1Instruction>` | The list of Instructions to return. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly`

Normalized bounding polygon.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudDatalabelingV1beta1NormalizedVertex>` | The bounding polygon normalized vertices. |

### `GoogleCloudDatalabelingV1beta1NormalizedPolyline`

Normalized polyline.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudDatalabelingV1beta1NormalizedVertex>` | The normalized polyline vertices. |

### `GoogleCloudDatalabelingV1beta1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate. |

### `GoogleCloudDatalabelingV1beta1ObjectDetectionConfig`

Config for video object detection human labeling task. Object detection will be conducted on the images extracted from the video, and those objects will be labeled with bounding boxes. User need to specify the number of images to be extracted per second as the extraction frame rate.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `extractionFrameRate` | `number` | Required. Number of frames per second to be extracted from the video. |

### `GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics`

Metrics calculated for an image object detection (bounding box) model.

| Property | Type | Description |
|----------|------|-------------|
| `prCurve` | `GoogleCloudDatalabelingV1beta1PrCurve` | Precision-recall curve. |

### `GoogleCloudDatalabelingV1beta1ObjectTrackingConfig`

Config for video object tracking human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `clipLength` | `integer` | Videos will be cut to smaller clips to make it easier for labelers to work on. Users can configur... |
| `overlapLength` | `integer` | The overlap length between different video clips. Users can configure is field in seconds, if not... |

### `GoogleCloudDatalabelingV1beta1ObjectTrackingFrame`

Video frame level annotation for object detection and tracking.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudDatalabelingV1beta1BoundingPoly` |  |
| `normalizedBoundingPoly` | `GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly` |  |
| `timeOffset` | `string` | The time offset of this frame relative to the beginning of the video. |

### `GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata`

Metadata describing the feedback from the operator.

### `GoogleCloudDatalabelingV1beta1OperatorMetadata`

General information useful for labels coming from contributors.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `array<string>` | Comments from contributors. |
| `labelVotes` | `integer` | The total number of contributors that choose this label. |
| `score` | `number` | Confidence score corresponding to a label. For examle, if 3 contributors have answered the questi... |
| `totalVotes` | `integer` | The total number of contributors that answer this question. |

### `GoogleCloudDatalabelingV1beta1OutputConfig`

The configuration of output data.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudDatalabelingV1beta1GcsDestination` | Output to a file in Cloud Storage. Should be used for labeling output other than image segmentation. |
| `gcsFolderDestination` | `GoogleCloudDatalabelingV1beta1GcsFolderDestination` | Output to a folder in Cloud Storage. Should be used for image segmentation or document de-identif... |

### `GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest`

Request message for PauseEvaluationJob.

### `GoogleCloudDatalabelingV1beta1PdfInstruction`

Instruction from a PDF file.

| Property | Type | Description |
|----------|------|-------------|
| `gcsFileUri` | `string` | PDF file for the instruction. Only gcs path is allowed. |

### `GoogleCloudDatalabelingV1beta1Polyline`

A line with multiple line segments.

| Property | Type | Description |
|----------|------|-------------|
| `vertices` | `array<GoogleCloudDatalabelingV1beta1Vertex>` | The polyline vertices. |

### `GoogleCloudDatalabelingV1beta1PolylineConfig`

Config for image polyline human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `instructionMessage` | `string` | Optional. Instruction message showed on contributors UI. |

### `GoogleCloudDatalabelingV1beta1PrCurve`

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | The annotation spec of the label for which the precision-recall curve calculated. If this field i... |
| `areaUnderCurve` | `number` | Area under the precision-recall curve. Not to be confused with area under a receiver operating ch... |
| `confidenceMetricsEntries` | `array<GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>` | Entries that make up the precision-recall graph. Each entry is a "point" on the graph drawn for a... |
| `meanAveragePrecision` | `number` | Mean average prcision of this curve. |

### `GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata`

Metadata describing the feedback from the labeling task requester.

### `GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest`

Request message ResumeEvaluationJob.

### `GoogleCloudDatalabelingV1beta1Row`

A row in the confusion matrix. Each entry in this row has the same ground truth label.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | The annotation spec of the ground truth label for this row. |
| `entries` | `array<GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry>` | A list of the confusion matrix entries. One entry for each possible predicted label. |

### `GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse`

Results of searching evaluations.

| Property | Type | Description |
|----------|------|-------------|
| `evaluations` | `array<GoogleCloudDatalabelingV1beta1Evaluation>` | The list of evaluations matching the search. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest`

Request message of SearchExampleComparisons.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | Optional. Requested page size. Server may return fewer results than requested. Default value is 100. |
| `pageToken` | `string` | Optional. A token identifying a page of results for the server to return. Typically obtained by t... |

### `GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse`

Results of searching example comparisons.

| Property | Type | Description |
|----------|------|-------------|
| `exampleComparisons` | `array<GoogleCloudDatalabelingV1beta1ExampleComparison>` | A list of example comparisons matching the search criteria. |
| `nextPageToken` | `string` | A token to retrieve next page of results. |

### `GoogleCloudDatalabelingV1beta1SegmentationConfig`

Config for image segmentation

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. format: projects/{project_id}/annotationSpecSets/{an... |
| `instructionMessage` | `string` | Instruction message showed on labelers UI. |

### `GoogleCloudDatalabelingV1beta1SentimentConfig`

Config for setting up sentiments.

| Property | Type | Description |
|----------|------|-------------|
| `enableLabelSentimentSelection` | `boolean` | If set to true, contributors will have the option to select sentiment of the label they selected,... |

### `GoogleCloudDatalabelingV1beta1SequentialSegment`

Start and end position in a sequence (e.g. text segment).

| Property | Type | Description |
|----------|------|-------------|
| `end` | `integer` | End position (exclusive). |
| `start` | `integer` | Start position (inclusive). |

### `GoogleCloudDatalabelingV1beta1TextClassificationAnnotation`

Text classification annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of the text. |

### `GoogleCloudDatalabelingV1beta1TextClassificationConfig`

Config for text classification human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `allowMultiLabel` | `boolean` | Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one t... |
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |
| `sentimentConfig` | `GoogleCloudDatalabelingV1beta1SentimentConfig` | Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side ... |

### `GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation`

Text entity extraction annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of the text entities. |
| `sequentialSegment` | `GoogleCloudDatalabelingV1beta1SequentialSegment` | Position of the entity. |

### `GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig`

Config for text entity extraction human labeling task.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSet` | `string` | Required. Annotation spec set resource name. |

### `GoogleCloudDatalabelingV1beta1TextMetadata`

Metadata for the text.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default v... |

### `GoogleCloudDatalabelingV1beta1TextPayload`

Container of information about a piece of text.

| Property | Type | Description |
|----------|------|-------------|
| `textContent` | `string` | Text content. |

### `GoogleCloudDatalabelingV1beta1TimeSegment`

A time period inside of an example that has a time dimension (e.g. video).

| Property | Type | Description |
|----------|------|-------------|
| `endTimeOffset` | `string` | End of the time segment (exclusive), represented as the duration since the example start. |
| `startTimeOffset` | `string` | Start of the time segment (inclusive), represented as the duration since the example start. |

### `GoogleCloudDatalabelingV1beta1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate. |

### `GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation`

Video classification annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of the segment specified by time_segment. |
| `timeSegment` | `GoogleCloudDatalabelingV1beta1TimeSegment` | The time segment of the video to which the annotation applies. |

### `GoogleCloudDatalabelingV1beta1VideoClassificationConfig`

Config for video classification human labeling task. Currently two types of video classification are supported: 1. Assign labels on the entire video. 2. Split the video into multiple video clips based on camera shot, and assign labels on each video clip.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpecSetConfigs` | `array<GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>` | Required. The list of annotation spec set configs. Since watching a video clip takes much longer ... |
| `applyShotDetection` | `boolean` | Optional. Option to apply shot detection on the video. |

### `GoogleCloudDatalabelingV1beta1VideoEventAnnotation`

Video event annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of the event in this annotation. |
| `timeSegment` | `GoogleCloudDatalabelingV1beta1TimeSegment` | The time segment of the video to which the annotation applies. |

### `GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation`

Video object tracking annotation.

| Property | Type | Description |
|----------|------|-------------|
| `annotationSpec` | `GoogleCloudDatalabelingV1beta1AnnotationSpec` | Label of the object tracked in this annotation. |
| `objectTrackingFrames` | `array<GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>` | The list of frames where this object track appears. |
| `timeSegment` | `GoogleCloudDatalabelingV1beta1TimeSegment` | The time segment of the video to which object tracking applies. |

### `GoogleCloudDatalabelingV1beta1VideoPayload`

Container of information of a video.

| Property | Type | Description |
|----------|------|-------------|
| `frameRate` | `number` | FPS of the video. |
| `mimeType` | `string` | Video format. |
| `signedUri` | `string` | Signed uri of the video file in the service bucket. |
| `videoThumbnails` | `array<GoogleCloudDatalabelingV1beta1VideoThumbnail>` | The list of video thumbnails. |
| `videoUri` | `string` | Video uri from the user bucket. |

### `GoogleCloudDatalabelingV1beta1VideoThumbnail`

Container of information of a video thumbnail.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnail` | `string` | A byte string of the video frame. |
| `timeOffset` | `string` | Time offset relative to the beginning of the video, corresponding to the video frame where the th... |

### `GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata`

Metadata of a CreateInstruction operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when create instruction request was created. |
| `instruction` | `string` | The name of the created Instruction. projects/{project_id}/instructions/{instruction_id} |
| `partialFailures` | `array<GoogleRpcStatus>` | Partial failures encountered. E.g. single files that couldn't be read. Status details field will ... |

### `GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata`

Metadata of an ExportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when export dataset request was created. |
| `dataset` | `string` | Output only. The name of dataset to be exported. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse`

Response used for ExportDataset longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `dataset` | `string` | Ouptut only. The name of dataset. "projects/*/datasets/*" |
| `exportCount` | `integer` | Output only. Number of examples exported successfully. |
| `labelStats` | `GoogleCloudDatalabelingV1p1alpha1LabelStats` | Output only. Statistic infos of labels in the exported dataset. |
| `outputConfig` | `GoogleCloudDatalabelingV1p1alpha1OutputConfig` | Output only. output_config in the ExportData request. |
| `totalCount` | `integer` | Output only. Total number of examples requested to export |

### `GoogleCloudDatalabelingV1p1alpha1GcsDestination`

Export destination of the data.Only gcs path is allowed in output_uri.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | Required. The format of the gcs destination. Only "text/csv" and "application/json" are supported. |
| `outputUri` | `string` | Required. The output uri of destination file. |

### `GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination`

Export folder destination of the data.

| Property | Type | Description |
|----------|------|-------------|
| `outputFolderUri` | `string` | Required. Cloud Storage directory to export data to. |

### `GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata`

Metadata of an GenerateAnalysisReport operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when generate report request was created. |
| `dataset` | `string` | The name of the dataset for which the analysis report is generated. Format: "projects/*/datasets/*" |

### `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig`

Configuration for how human labeling task should be done.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDatasetDescription` | `string` | Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 c... |
| `annotatedDatasetDisplayName` | `string` | Required. A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters . |
| `contributorEmails` | `array<string>` | Optional. If you want your own labeling contributors to manage and work on this labeling request,... |
| `instruction` | `string` | Required. Instruction resource name. |
| `labelGroup` | `string` | Optional. A human-readable label used to logically group labeling tasks. This string must match t... |
| `languageCode` | `string` | Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `questionDuration` | `string` | Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Defaul... |
| `replicaCount` | `integer` | Optional. Replication of questions. Each question will be sent to up to this number of contributo... |
| `userEmailAddress` | `string` | Email of the user who started the labeling task and should be notified by email. If empty no noti... |

### `GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata`

Metadata of an ImportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when import dataset request was created. |
| `dataset` | `string` | Output only. The name of imported dataset. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse`

Response used for ImportData longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Ouptut only. The name of imported dataset. |
| `importCount` | `integer` | Output only. Number of examples imported successfully. |
| `totalCount` | `integer` | Output only. Total number of examples requested to import |

### `GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata`

Details of a LabelImageBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata`

Details of LabelImageBoundingPoly operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata`

Metadata of a LabelImageClassification operation.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata`

Details of a LabelImageOrientedBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata`

Details of LabelImagePolyline operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata`

Details of a LabelImageSegmentation operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata`

Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag: 23

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when labeling request was created. |
| `dataset` | `string` | Output only. The name of dataset to be labeled. "projects/*/datasets/*" |
| `imageBoundingBoxDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata` | Details of label image bounding box operation. |
| `imageBoundingPolyDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata` | Details of label image bounding poly operation. |
| `imageClassificationDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata` | Details of label image classification operation. |
| `imageOrientedBoundingBoxDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata` | Details of label image oriented bounding box operation. |
| `imagePolylineDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata` | Details of label image polyline operation. |
| `imageSegmentationDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata` | Details of label image segmentation operation. |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |
| `progressPercent` | `integer` | Output only. Progress of label operation. Range: [0, 100]. |
| `textClassificationDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata` | Details of label text classification operation. |
| `textEntityExtractionDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata` | Details of label text entity extraction operation. |
| `videoClassificationDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata` | Details of label video classification operation. |
| `videoEventDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata` | Details of label video event operation. |
| `videoObjectDetectionDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata` | Details of label video object detection operation. |
| `videoObjectTrackingDetails` | `GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata` | Details of label video object tracking operation. |

### `GoogleCloudDatalabelingV1p1alpha1LabelStats`

Statistics about annotation specs.

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `object` | Map of each annotation spec's example count. Key is the annotation spec name and value is the num... |

### `GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata`

Details of a LabelTextClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata`

Details of a LabelTextEntityExtraction operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata`

Details of a LabelVideoClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata`

Details of a LabelVideoEvent operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata`

Details of a LabelVideoObjectDetection operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata`

Details of a LabelVideoObjectTracking operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p1alpha1OutputConfig`

The configuration of output data.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudDatalabelingV1p1alpha1GcsDestination` | Output to a file in Cloud Storage. Should be used for labeling output other than image segmentation. |
| `gcsFolderDestination` | `GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination` | Output to a folder in Cloud Storage. Should be used for image segmentation or document de-identif... |

### `GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata`

Metadata of a CreateInstruction operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when create instruction request was created. |
| `instruction` | `string` | The name of the created Instruction. projects/{project_id}/instructions/{instruction_id} |
| `partialFailures` | `array<GoogleRpcStatus>` | Partial failures encountered. E.g. single files that couldn't be read. Status details field will ... |

### `GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata`

Metadata of an ExportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when export dataset request was created. |
| `dataset` | `string` | Output only. The name of dataset to be exported. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse`

Response used for ExportDataset longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `dataset` | `string` | Ouptut only. The name of dataset. "projects/*/datasets/*" |
| `exportCount` | `integer` | Output only. Number of examples exported successfully. |
| `labelStats` | `GoogleCloudDatalabelingV1p2alpha1LabelStats` | Output only. Statistic infos of labels in the exported dataset. |
| `outputConfig` | `GoogleCloudDatalabelingV1p2alpha1OutputConfig` | Output only. output_config in the ExportData request. |
| `totalCount` | `integer` | Output only. Total number of examples requested to export |

### `GoogleCloudDatalabelingV1p2alpha1GcsDestination`

Export destination of the data.Only gcs path is allowed in output_uri.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | Required. The format of the gcs destination. Only "text/csv" and "application/json" are supported. |
| `outputUri` | `string` | Required. The output uri of destination file. |

### `GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination`

Export folder destination of the data.

| Property | Type | Description |
|----------|------|-------------|
| `outputFolderUri` | `string` | Required. Cloud Storage directory to export data to. |

### `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig`

Configuration for how human labeling task should be done.

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDatasetDescription` | `string` | Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 c... |
| `annotatedDatasetDisplayName` | `string` | Required. A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters . |
| `contributorEmails` | `array<string>` | Optional. If you want your own labeling contributors to manage and work on this labeling request,... |
| `instruction` | `string` | Required. Instruction resource name. |
| `labelGroup` | `string` | Optional. A human-readable label used to logically group labeling tasks. This string must match t... |
| `languageCode` | `string` | Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `questionDuration` | `string` | Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Defaul... |
| `replicaCount` | `integer` | Optional. Replication of questions. Each question will be sent to up to this number of contributo... |
| `userEmailAddress` | `string` | Email of the user who started the labeling task and should be notified by email. If empty no noti... |

### `GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata`

Metadata of an ImportData operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when import dataset request was created. |
| `dataset` | `string` | Output only. The name of imported dataset. "projects/*/datasets/*" |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |

### `GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse`

Response used for ImportData longrunning operation.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Ouptut only. The name of imported dataset. |
| `importCount` | `integer` | Output only. Number of examples imported successfully. |
| `totalCount` | `integer` | Output only. Total number of examples requested to import |

### `GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata`

Details of a LabelImageBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata`

Details of LabelImageBoundingPoly operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata`

Metadata of a LabelImageClassification operation.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata`

Details of a LabelImageOrientedBoundingBox operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata`

Details of LabelImagePolyline operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata`

Details of a LabelImageSegmentation operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config. |

### `GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata`

Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag: 23

| Property | Type | Description |
|----------|------|-------------|
| `annotatedDataset` | `string` | Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*". |
| `createTime` | `string` | Output only. Timestamp when labeling request was created. |
| `dataset` | `string` | Output only. The name of dataset to be labeled. "projects/*/datasets/*" |
| `imageBoundingBoxDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata` | Details of label image bounding box operation. |
| `imageBoundingPolyDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata` | Details of label image bounding poly operation. |
| `imageClassificationDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata` | Details of label image classification operation. |
| `imageOrientedBoundingBoxDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata` | Details of label image oriented bounding box operation. |
| `imagePolylineDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata` | Details of label image polyline operation. |
| `imageSegmentationDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata` | Details of label image segmentation operation. |
| `partialFailures` | `array<GoogleRpcStatus>` | Output only. Partial failures encountered. E.g. single files that couldn't be read. Status detail... |
| `progressPercent` | `integer` | Output only. Progress of label operation. Range: [0, 100]. |
| `textClassificationDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata` | Details of label text classification operation. |
| `textEntityExtractionDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata` | Details of label text entity extraction operation. |
| `videoClassificationDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata` | Details of label video classification operation. |
| `videoEventDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata` | Details of label video event operation. |
| `videoObjectDetectionDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata` | Details of label video object detection operation. |
| `videoObjectTrackingDetails` | `GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata` | Details of label video object tracking operation. |

### `GoogleCloudDatalabelingV1p2alpha1LabelStats`

Statistics about annotation specs.

| Property | Type | Description |
|----------|------|-------------|
| `exampleCount` | `object` | Map of each annotation spec's example count. Key is the annotation spec name and value is the num... |

### `GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata`

Details of a LabelTextClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata`

Details of a LabelTextEntityExtraction operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata`

Details of a LabelVideoClassification operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata`

Details of a LabelVideoEvent operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata`

Details of a LabelVideoObjectDetection operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata`

Details of a LabelVideoObjectTracking operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `basicConfig` | `GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig` | Basic human annotation config used in labeling request. |

### `GoogleCloudDatalabelingV1p2alpha1OutputConfig`

The configuration of output data.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudDatalabelingV1p2alpha1GcsDestination` | Output to a file in Cloud Storage. Should be used for labeling output other than image segmentation. |
| `gcsFolderDestination` | `GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination` | Output to a folder in Cloud Storage. Should be used for image segmentation or document de-identif... |

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
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

