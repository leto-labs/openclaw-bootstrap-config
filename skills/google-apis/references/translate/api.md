# Cloud Translation API - API Reference

**Version**: `v3` | **Methods**: 51 | **Schemas**: 76

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `translate.projects.translateText` | POST | `v3/{+parent}:translateText` | Translates input text and returns translated text. |
| `translate.projects.romanizeText` | POST | `v3/{+parent}:romanizeText` | Romanize input text written in non-Latin scripts to Latin text. |
| `translate.projects.detectLanguage` | POST | `v3/{+parent}:detectLanguage` | Detects the language of text within a request. |
| `translate.projects.getSupportedLanguages` | GET | `v3/{+parent}/supportedLanguages` | Returns a list of supported languages for translation. |
| `translate.projects.locations.list` | GET | `v3/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `translate.projects.locations.get` | GET | `v3/{+name}` | Gets information about a location. |
| `translate.projects.locations.translateText` | POST | `v3/{+parent}:translateText` | Translates input text and returns translated text. |
| `translate.projects.locations.romanizeText` | POST | `v3/{+parent}:romanizeText` | Romanize input text written in non-Latin scripts to Latin text. |
| `translate.projects.locations.detectLanguage` | POST | `v3/{+parent}:detectLanguage` | Detects the language of text within a request. |
| `translate.projects.locations.getSupportedLanguages` | GET | `v3/{+parent}/supportedLanguages` | Returns a list of supported languages for translation. |
| `translate.projects.locations.translateDocument` | POST | `v3/{+parent}:translateDocument` | Translates documents in synchronous mode. |
| `translate.projects.locations.batchTranslateText` | POST | `v3/{+parent}:batchTranslateText` | Translates a large volume of text in asynchronous batch mode. This function provides real-time ou... |
| `translate.projects.locations.batchTranslateDocument` | POST | `v3/{+parent}:batchTranslateDocument` | Translates a large volume of document in asynchronous batch mode. This function provides real-tim... |
| `translate.projects.locations.adaptiveMtTranslate` | POST | `v3/{+parent}:adaptiveMtTranslate` | Translate text using Adaptive MT. |
| `translate.projects.locations.refineText` | POST | `v3/{+parent}:refineText` | Refines the input translated text to improve the quality. |
| `translate.projects.locations.operations.list` | GET | `v3/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `translate.projects.locations.operations.get` | GET | `v3/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `translate.projects.locations.operations.delete` | DELETE | `v3/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `translate.projects.locations.operations.cancel` | POST | `v3/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `translate.projects.locations.operations.wait` | POST | `v3/{+name}:wait` | Waits until the specified long-running operation is done or reaches at most a specified timeout, ... |
| `translate.projects.locations.glossaries.create` | POST | `v3/{+parent}/glossaries` | Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project does... |
| `translate.projects.locations.glossaries.patch` | PATCH | `v3/{+name}` | Updates a glossary. A LRO is used since the update can be async if the glossary's entry file is u... |
| `translate.projects.locations.glossaries.list` | GET | `v3/{+parent}/glossaries` | Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't exist. |
| `translate.projects.locations.glossaries.get` | GET | `v3/{+name}` | Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist. |
| `translate.projects.locations.glossaries.delete` | DELETE | `v3/{+name}` | Deletes a glossary, or cancels glossary construction if the glossary isn't created yet. Returns N... |
| `translate.projects.locations.glossaries.glossaryEntries.get` | GET | `v3/{+name}` | Gets a single glossary entry by the given id. |
| `translate.projects.locations.glossaries.glossaryEntries.list` | GET | `v3/{+parent}/glossaryEntries` | List the entries for the glossary. |
| `translate.projects.locations.glossaries.glossaryEntries.create` | POST | `v3/{+parent}/glossaryEntries` | Creates a glossary entry. |
| `translate.projects.locations.glossaries.glossaryEntries.patch` | PATCH | `v3/{+name}` | Updates a glossary entry. |
| `translate.projects.locations.glossaries.glossaryEntries.delete` | DELETE | `v3/{+name}` | Deletes a single entry from the glossary |
| `translate.projects.locations.datasets.create` | POST | `v3/{+parent}/datasets` | Creates a Dataset. |
| `translate.projects.locations.datasets.get` | GET | `v3/{+name}` | Gets a Dataset. |
| `translate.projects.locations.datasets.list` | GET | `v3/{+parent}/datasets` | Lists datasets. |
| `translate.projects.locations.datasets.delete` | DELETE | `v3/{+name}` | Deletes a dataset and all of its contents. |
| `translate.projects.locations.datasets.importData` | POST | `v3/{+dataset}:importData` | Import sentence pairs into translation Dataset. |
| `translate.projects.locations.datasets.exportData` | POST | `v3/{+dataset}:exportData` | Exports dataset's data to the provided output location. |
| `translate.projects.locations.datasets.examples.list` | GET | `v3/{+parent}/examples` | Lists sentence pairs in the dataset. |
| `translate.projects.locations.adaptiveMtDatasets.create` | POST | `v3/{+parent}/adaptiveMtDatasets` | Creates an Adaptive MT dataset. |
| `translate.projects.locations.adaptiveMtDatasets.delete` | DELETE | `v3/{+name}` | Deletes an Adaptive MT dataset, including all its entries and associated metadata. |
| `translate.projects.locations.adaptiveMtDatasets.get` | GET | `v3/{+name}` | Gets the Adaptive MT dataset. |
| `translate.projects.locations.adaptiveMtDatasets.list` | GET | `v3/{+parent}/adaptiveMtDatasets` | Lists all Adaptive MT datasets for which the caller has read permission. |
| `translate.projects.locations.adaptiveMtDatasets.importAdaptiveMtFile` | POST | `v3/{+parent}:importAdaptiveMtFile` | Imports an AdaptiveMtFile and adds all of its sentences into the AdaptiveMtDataset. |
| `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.get` | GET | `v3/{+name}` | Gets and AdaptiveMtFile |
| `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.delete` | DELETE | `v3/{+name}` | Deletes an AdaptiveMtFile along with its sentences. |
| `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.list` | GET | `v3/{+parent}/adaptiveMtFiles` | Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset. |
| `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.adaptiveMtSentences.list` | GET | `v3/{+parent}/adaptiveMtSentences` | Lists all AdaptiveMtSentences under a given file/dataset. |
| `translate.projects.locations.adaptiveMtDatasets.adaptiveMtSentences.list` | GET | `v3/{+parent}/adaptiveMtSentences` | Lists all AdaptiveMtSentences under a given file/dataset. |
| `translate.projects.locations.models.create` | POST | `v3/{+parent}/models` | Creates a Model. |
| `translate.projects.locations.models.list` | GET | `v3/{+parent}/models` | Lists models. |
| `translate.projects.locations.models.get` | GET | `v3/{+name}` | Gets a model. |
| `translate.projects.locations.models.delete` | DELETE | `v3/{+name}` | Deletes a model. |

### `translate.projects.translateText`

**POST** `v3/{+parent}:translateText`

Translates input text and returns translated text.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `TranslateTextRequest`

**Response**: `TranslateTextResponse`

```typescript
const res = await translate.projects.translateText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.romanizeText`

**POST** `v3/{+parent}:romanizeText`

Romanize input text written in non-Latin scripts to Latin text.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `RomanizeTextRequest`

**Response**: `RomanizeTextResponse`

```typescript
const res = await translate.projects.romanizeText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.detectLanguage`

**POST** `v3/{+parent}:detectLanguage`

Detects the language of text within a request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `DetectLanguageRequest`

**Response**: `DetectLanguageResponse`

```typescript
const res = await translate.projects.detectLanguage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.getSupportedLanguages`

**GET** `v3/{+parent}/supportedLanguages`

Returns a list of supported languages for translation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |
| `displayLanguageCode` | `string` | query | No | Optional. The language to use to return localized, human readable names of supported languages. If missing, then disp... |
| `model` | `string` | query | No | Optional. Get supported languages of this model. The format depends on model type: - AutoML Translation models: `proj... |

**Response**: `SupportedLanguages`

```typescript
const res = await translate.projects.getSupportedLanguages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.list`

**GET** `v3/{+name}/locations`

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
const res = await translate.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.get`

**GET** `v3/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await translate.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.translateText`

**POST** `v3/{+parent}:translateText`

Translates input text and returns translated text.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `TranslateTextRequest`

**Response**: `TranslateTextResponse`

```typescript
const res = await translate.locations.translateText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.romanizeText`

**POST** `v3/{+parent}:romanizeText`

Romanize input text written in non-Latin scripts to Latin text.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `RomanizeTextRequest`

**Response**: `RomanizeTextResponse`

```typescript
const res = await translate.locations.romanizeText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.detectLanguage`

**POST** `v3/{+parent}:detectLanguage`

Detects the language of text within a request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `DetectLanguageRequest`

**Response**: `DetectLanguageResponse`

```typescript
const res = await translate.locations.detectLanguage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.getSupportedLanguages`

**GET** `v3/{+parent}/supportedLanguages`

Returns a list of supported languages for translation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |
| `displayLanguageCode` | `string` | query | No | Optional. The language to use to return localized, human readable names of supported languages. If missing, then disp... |
| `model` | `string` | query | No | Optional. Get supported languages of this model. The format depends on model type: - AutoML Translation models: `proj... |

**Response**: `SupportedLanguages`

```typescript
const res = await translate.locations.getSupportedLanguages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.translateDocument`

**POST** `v3/{+parent}:translateDocument`

Translates documents in synchronous mode.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Location to make a regional call. Format: `projects/{project-number-or-id}/locations/{location-id}`. For gl... |

**Request body**: `TranslateDocumentRequest`

**Response**: `TranslateDocumentResponse`

```typescript
const res = await translate.locations.translateDocument({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.batchTranslateText`

**POST** `v3/{+parent}:batchTranslateText`

Translates a large volume of text in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it's all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-id}/locatio... |

**Request body**: `BatchTranslateTextRequest`

**Response**: `Operation`

```typescript
const res = await translate.locations.batchTranslateText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.batchTranslateDocument`

**POST** `v3/{+parent}:batchTranslateDocument`

Translates a large volume of document in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it's all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Location to make a regional call. Format: `projects/{project-number-or-id}/locations/{location-id}`. The `g... |

**Request body**: `BatchTranslateDocumentRequest`

**Response**: `Operation`

```typescript
const res = await translate.locations.batchTranslateDocument({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtTranslate`

**POST** `v3/{+parent}:adaptiveMtTranslate`

Translate text using Adaptive MT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Location to make a regional call. Format: `projects/{project-number-or-id}/locations/{location-id}`. |

**Request body**: `AdaptiveMtTranslateRequest`

**Response**: `AdaptiveMtTranslateResponse`

```typescript
const res = await translate.locations.adaptiveMtTranslate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.refineText`

**POST** `v3/{+parent}:refineText`

Refines the input translated text to improve the quality.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project or location to make a call. Must refer to a caller's project. Format: `projects/{project-number-or-... |

**Request body**: `RefineTextRequest`

**Response**: `RefineTextResponse`

```typescript
const res = await translate.locations.refineText({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.operations.list`

**GET** `v3/{+name}/operations`

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
const res = await translate.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.operations.get`

**GET** `v3/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await translate.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.operations.delete`

**DELETE** `v3/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await translate.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.operations.cancel`

**POST** `v3/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await translate.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.operations.wait`

**POST** `v3/{+name}:wait`

Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to wait on. |

**Request body**: `WaitOperationRequest`

**Response**: `Operation`

```typescript
const res = await translate.operations.wait({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.create`

**POST** `v3/{+parent}/glossaries`

Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project name. |

**Request body**: `Glossary`

**Response**: `Operation`

```typescript
const res = await translate.glossaries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.patch`

**PATCH** `v3/{+name}`

Updates a glossary. A LRO is used since the update can be async if the glossary's entry file is updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/location... |
| `updateMask` | `string` | query | No | The list of fields to be updated. Currently, only `display_name` and `input_config` are supported. |

**Request body**: `Glossary`

**Response**: `Operation`

```typescript
const res = await translate.glossaries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.list`

**GET** `v3/{+parent}/glossaries`

Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project from which to list all of the glossaries. |
| `filter` | `string` | query | No | Optional. Filter specifying constraints of a list operation. Specify the constraint by the format of "key=value", whe... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server may return fewer glossaries than requested. If unspecified, the server pick... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossa... |

**Response**: `ListGlossariesResponse`

```typescript
const res = await translate.glossaries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.get`

**GET** `v3/{+name}`

Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the glossary to retrieve. |

**Response**: `Glossary`

```typescript
const res = await translate.glossaries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.delete`

**DELETE** `v3/{+name}`

Deletes a glossary, or cancels glossary construction if the glossary isn't created yet. Returns NOT_FOUND, if the glossary doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the glossary to delete. |

**Response**: `Operation`

```typescript
const res = await translate.glossaries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.glossaryEntries.get`

**GET** `v3/{+name}`

Gets a single glossary entry by the given id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the glossary entry to get |

**Response**: `GlossaryEntry`

```typescript
const res = await translate.glossaryEntries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.glossaryEntries.list`

**GET** `v3/{+parent}/glossaryEntries`

List the entries for the glossary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent glossary resource name for listing the glossary's entries. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server may return fewer glossary entries than requested. If unspecified, the serve... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossa... |

**Response**: `ListGlossaryEntriesResponse`

```typescript
const res = await translate.glossaryEntries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.glossaryEntries.create`

**POST** `v3/{+parent}/glossaryEntries`

Creates a glossary entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the glossary to create the entry under. |

**Request body**: `GlossaryEntry`

**Response**: `GlossaryEntry`

```typescript
const res = await translate.glossaryEntries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.glossaryEntries.patch`

**PATCH** `v3/{+name}`

Updates a glossary entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the entry. Format: `projects/*/locations/*/glossaries/*/glossaryEntries/*` |

**Request body**: `GlossaryEntry`

**Response**: `GlossaryEntry`

```typescript
const res = await translate.glossaryEntries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.glossaries.glossaryEntries.delete`

**DELETE** `v3/{+name}`

Deletes a single entry from the glossary

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the glossary entry to delete |

**Response**: `Empty`

```typescript
const res = await translate.glossaryEntries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.create`

**POST** `v3/{+parent}/datasets`

Creates a Dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project name. |

**Request body**: `Dataset`

**Response**: `Operation`

```typescript
const res = await translate.datasets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.get`

**GET** `v3/{+name}`

Gets a Dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the dataset to retrieve. |

**Response**: `Dataset`

```typescript
const res = await translate.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.list`

**GET** `v3/{+parent}/datasets`

Lists datasets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent project. In form of `projects/{project-number-or-id}/locations/{location-id}` |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server can return fewer results than requested. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token fie... |

**Response**: `ListDatasetsResponse`

```typescript
const res = await translate.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.delete`

**DELETE** `v3/{+name}`

Deletes a dataset and all of its contents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dataset to delete. |

**Response**: `Operation`

```typescript
const res = await translate.datasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.importData`

**POST** `v3/{+dataset}:importData`

Import sentence pairs into translation Dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataset` | `string` | path | Yes | Required. Name of the dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{dataset-... |

**Request body**: `ImportDataRequest`

**Response**: `Operation`

```typescript
const res = await translate.datasets.importData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.exportData`

**POST** `v3/{+dataset}:exportData`

Exports dataset's data to the provided output location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataset` | `string` | path | Yes | Required. Name of the dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{dataset-... |

**Request body**: `ExportDataRequest`

**Response**: `Operation`

```typescript
const res = await translate.datasets.exportData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.datasets.examples.list`

**GET** `v3/{+parent}/examples`

Lists sentence pairs in the dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent dataset. In form of `projects/{project-number-or-id}/locations/{location-id}/datasets/{d... |
| `filter` | `string` | query | No | Optional. An expression for filtering the examples that will be returned. Example filter: * `usage=TRAIN` |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server can return fewer results than requested. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token fie... |

**Response**: `ListExamplesResponse`

```typescript
const res = await translate.examples.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.create`

**POST** `v3/{+parent}/adaptiveMtDatasets`

Creates an Adaptive MT dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent project. In form of `projects/{project-number-or-id}/locations/{location-id}` |

**Request body**: `AdaptiveMtDataset`

**Response**: `AdaptiveMtDataset`

```typescript
const res = await translate.adaptiveMtDatasets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.delete`

**DELETE** `v3/{+name}`

Deletes an Adaptive MT dataset, including all its entries and associated metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the dataset. In the form of `projects/{project-number-or-id}/locations/{location-id}/adaptiveMtData... |

**Response**: `Empty`

```typescript
const res = await translate.adaptiveMtDatasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.get`

**GET** `v3/{+name}`

Gets the Adaptive MT dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the dataset. In the form of `projects/{project-number-or-id}/locations/{location-id}/adaptiveMtData... |

**Response**: `AdaptiveMtDataset`

```typescript
const res = await translate.adaptiveMtDatasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.list`

**GET** `v3/{+parent}/adaptiveMtDatasets`

Lists all Adaptive MT datasets for which the caller has read permission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project from which to list the Adaptive MT datasets. `projects/{project-number-or-... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter is not supported yet. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server may return fewer results than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiv... |

**Response**: `ListAdaptiveMtDatasetsResponse`

```typescript
const res = await translate.adaptiveMtDatasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.importAdaptiveMtFile`

**POST** `v3/{+parent}:importAdaptiveMtFile`

Imports an AdaptiveMtFile and adds all of its sentences into the AdaptiveMtDataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the file, in form of `projects/{project-number-or-id}/locations/{location_id}/adaptive... |

**Request body**: `ImportAdaptiveMtFileRequest`

**Response**: `ImportAdaptiveMtFileResponse`

```typescript
const res = await translate.adaptiveMtDatasets.importAdaptiveMtFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.get`

**GET** `v3/{+name}`

Gets and AdaptiveMtFile

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the file, in form of `projects/{project-number-or-id}/locations/{location_id}/adaptive... |

**Response**: `AdaptiveMtFile`

```typescript
const res = await translate.adaptiveMtFiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.delete`

**DELETE** `v3/{+name}`

Deletes an AdaptiveMtFile along with its sentences.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the file to delete, in form of `projects/{project-number-or-id}/locations/{location_id... |

**Response**: `Empty`

```typescript
const res = await translate.adaptiveMtFiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.list`

**GET** `v3/{+parent}/adaptiveMtFiles`

Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the dataset from which to list the Adaptive MT files. `projects/{project}/locations/{l... |
| `pageSize` | `integer` | query | No | Optional. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiv... |

**Response**: `ListAdaptiveMtFilesResponse`

```typescript
const res = await translate.adaptiveMtFiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.adaptiveMtSentences.list`

**GET** `v3/{+parent}/adaptiveMtSentences`

Lists all AdaptiveMtSentences under a given file/dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Adaptive MT file from which to list the sentences. The following format lists all ... |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiveMtSentenc... |

**Response**: `ListAdaptiveMtSentencesResponse`

```typescript
const res = await translate.adaptiveMtSentences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.adaptiveMtDatasets.adaptiveMtSentences.list`

**GET** `v3/{+parent}/adaptiveMtSentences`

Lists all AdaptiveMtSentences under a given file/dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Adaptive MT file from which to list the sentences. The following format lists all ... |
| `pageSize` | `integer` | query | No |  |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListAdaptiveMtSentenc... |

**Response**: `ListAdaptiveMtSentencesResponse`

```typescript
const res = await translate.adaptiveMtSentences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.models.create`

**POST** `v3/{+parent}/models`

Creates a Model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project name, in form of `projects/{project}/locations/{location}` |

**Request body**: `Model`

**Response**: `Operation`

```typescript
const res = await translate.models.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.models.list`

**GET** `v3/{+parent}/models`

Lists models.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent project. In form of `projects/{project-number-or-id}/locations/{location-id}` |
| `filter` | `string` | query | No | Optional. An expression for filtering the models that will be returned. Supported filter: `dataset_id=${dataset_id}` |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server can return fewer results than requested. |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results for the server to return. Typically obtained from next_page_token fie... |

**Response**: `ListModelsResponse`

```typescript
const res = await translate.models.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.models.get`

**GET** `v3/{+name}`

Gets a model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the model to retrieve. |

**Response**: `Model`

```typescript
const res = await translate.models.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

### `translate.projects.locations.models.delete`

**DELETE** `v3/{+name}`

Deletes a model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model to delete. |

**Response**: `Operation`

```typescript
const res = await translate.models.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-translation`

---

## Schemas

### `AdaptiveMtDataset`

An Adaptive MT Dataset.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when this dataset was created. |
| `displayName` | `string` | The name of the dataset to show in the interface. The name can be up to 32 characters long and ca... |
| `exampleCount` | `integer` | The number of examples in the dataset. |
| `name` | `string` | Identifier. The resource name of the dataset, in form of `projects/{project-number-or-id}/locatio... |
| `sourceLanguageCode` | `string` | The BCP-47 language code of the source language. |
| `targetLanguageCode` | `string` | The BCP-47 language code of the target language. |
| `updateTime` | `string` | Output only. Timestamp when this dataset was last updated. |

### `AdaptiveMtFile`

An AdaptiveMtFile.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when this file was created. |
| `displayName` | `string` | The file's display name. |
| `entryCount` | `integer` | The number of entries that the file contains. |
| `name` | `string` | Identifier. The resource name of the file, in form of `projects/{project-number-or-id}/locations/... |
| `updateTime` | `string` | Output only. Timestamp when this file was last updated. |

### `AdaptiveMtSentence`

An AdaptiveMt sentence entry.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when this sentence was created. |
| `name` | `string` | Identifier. The resource name of the file, in form of `projects/{project-number-or-id}/locations/... |
| `sourceSentence` | `string` | Required. The source sentence. |
| `targetSentence` | `string` | Required. The target sentence. |
| `updateTime` | `string` | Output only. Timestamp when this sentence was last updated. |

### `AdaptiveMtTranslateRequest`

The request for sending an AdaptiveMt translation query.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<string>` | Required. The content of the input in string format. |
| `dataset` | `string` | Required. The resource name for the dataset to use for adaptive MT translation. `projects/{projec... |
| `glossaryConfig` | `GlossaryConfig` | Optional. Glossary to be applied. The glossary must be within the same region (have the same loca... |
| `referenceSentenceConfig` | `ReferenceSentenceConfig` | Configuration for caller provided reference sentences. |

### `AdaptiveMtTranslateResponse`

An AdaptiveMtTranslate response.

| Property | Type | Description |
|----------|------|-------------|
| `glossaryTranslations` | `array<AdaptiveMtTranslation>` | Text translation response if a glossary is provided in the request. This could be the same as 'tr... |
| `languageCode` | `string` | Output only. The translation's language code. |
| `translations` | `array<AdaptiveMtTranslation>` | Output only. The translation. |

### `AdaptiveMtTranslation`

An AdaptiveMt translation.

| Property | Type | Description |
|----------|------|-------------|
| `translatedText` | `string` | Output only. The translated text. |

### `BatchDocumentInputConfig`

Input configuration for BatchTranslateDocument request.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsSource` | Google Cloud Storage location for the source input. This can be a single file (for example, `gs:/... |

### `BatchDocumentOutputConfig`

Output configuration for BatchTranslateDocument request.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsDestination` | Google Cloud Storage destination for output content. For every single input document (for example... |

### `BatchTranslateDocumentRequest`

The BatchTranslateDocument request.

| Property | Type | Description |
|----------|------|-------------|
| `customizedAttribution` | `string` | Optional. This flag is to support user customized attribution. If not provided, the default is `M... |
| `enableRotationCorrection` | `boolean` | Optional. If true, enable auto rotation correction in DVS. |
| `enableShadowRemovalNativePdf` | `boolean` | Optional. If true, use the text removal server to remove the shadow text on background image for ... |
| `formatConversions` | `object` | Optional. The file format conversion map that is applied to all input files. The map key is the o... |
| `glossaries` | `object` | Optional. Glossaries to be applied. It's keyed by target language code. |
| `inputConfigs` | `array<BatchDocumentInputConfig>` | Required. Input configurations. The total number of files matched should be <= 100. The total con... |
| `models` | `object` | Optional. The models to use for translation. Map's key is target language code. Map's value is th... |
| `outputConfig` | `BatchDocumentOutputConfig` | Required. Output configuration. If 2 input configs match to the same file (that is, same input pa... |
| `pdfNativeOnly` | `boolean` | Optional. If true, only native pdf pages will be translated. |
| `sourceLanguageCode` | `string` | Required. The ISO-639 language code of the input document if known, for example, "en-US" or "sr-L... |
| `targetLanguageCodes` | `array<string>` | Required. The ISO-639 language code to use for translation of the input document. Specify up to 1... |

### `BatchTranslateTextRequest`

The batch translation request.

| Property | Type | Description |
|----------|------|-------------|
| `glossaries` | `object` | Optional. Glossaries to be applied for translation. It's keyed by target language code. |
| `inputConfigs` | `array<InputConfig>` | Required. Input configurations. The total number of files matched should be <= 100. The total con... |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `models` | `object` | Optional. The models to use for translation. Map's key is target language code. Map's value is mo... |
| `outputConfig` | `OutputConfig` | Required. Output configuration. If 2 input configs match to the same file (that is, same input pa... |
| `sourceLanguageCode` | `string` | Required. Source language code. Supported language codes are listed in [Language Support](https:/... |
| `targetLanguageCodes` | `array<string>` | Required. Specify up to 10 language codes here. Supported language codes are listed in [Language ... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Dataset`

A dataset that hosts the examples (sentence pairs) used for translation models.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when this dataset was created. |
| `displayName` | `string` | The name of the dataset to show in the interface. The name can be up to 32 characters long and ca... |
| `exampleCount` | `integer` | Output only. The number of examples in the dataset. |
| `name` | `string` | The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location... |
| `sourceLanguageCode` | `string` | The BCP-47 language code of the source language. |
| `targetLanguageCode` | `string` | The BCP-47 language code of the target language. |
| `testExampleCount` | `integer` | Output only. Number of test examples (sentence pairs). |
| `trainExampleCount` | `integer` | Output only. Number of training examples (sentence pairs). |
| `updateTime` | `string` | Output only. Timestamp when this dataset was last updated. |
| `validateExampleCount` | `integer` | Output only. Number of validation examples (sentence pairs). |

### `DatasetInputConfig`

Input configuration for datasets.

| Property | Type | Description |
|----------|------|-------------|
| `inputFiles` | `array<InputFile>` | Files containing the sentence pairs to be imported to the dataset. |

### `DatasetOutputConfig`

Output configuration for datasets.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsOutputDestination` | Google Cloud Storage destination to write the output. |

### `DetectLanguageRequest`

The request message for language detection.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The content of the input stored as a string. |
| `documentInputConfig` | `DocumentInputConfig` | Optional. The document configuration of the input. |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `mimeType` | `string` | Optional. The format of the source text, for example, "text/html", "text/plain". If left blank, t... |
| `model` | `string` | Optional. The language detection model to be used. Format: `projects/{project-number-or-id}/locat... |

### `DetectLanguageResponse`

The response message for language detection.

| Property | Type | Description |
|----------|------|-------------|
| `languages` | `array<DetectedLanguage>` | The most probable language detected by the Translation API. For each request, the Translation API... |

### `DetectedLanguage`

The response message for language detection.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence of the detection result for this language. |
| `languageCode` | `string` | The ISO-639 language code of the source content in the request, detected automatically. |

### `DocumentInputConfig`

A document translation request input config.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Document's content represented as a stream of bytes. |
| `gcsSource` | `GcsSource` | Google Cloud Storage location. This must be a single file. For example: gs://example_bucket/examp... |
| `mimeType` | `string` | Specifies the input document's mime_type. If not specified it will be determined using the file e... |

### `DocumentOutputConfig`

A document translation request output config.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsDestination` | Optional. Google Cloud Storage destination for the translation output, e.g., `gs://my_bucket/my_d... |
| `mimeType` | `string` | Optional. Specifies the translated document's mime_type. If not specified, the translated file's ... |

### `DocumentTranslation`

A translated document message.

| Property | Type | Description |
|----------|------|-------------|
| `byteStreamOutputs` | `array<string>` | The array of translated documents. It is expected to be size 1 for now. We may produce multiple t... |
| `detectedLanguageCode` | `string` | The detected language for the input document. If the user did not provide the source language for... |
| `mimeType` | `string` | The translated document's mime type. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Example`

A sentence pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the example, in form of `projects/{project-number-or-id}/locati... |
| `sourceText` | `string` | Sentence in source language. |
| `targetText` | `string` | Sentence in target language. |
| `usage` | `string` | Output only. Usage of the sentence pair. Options are TRAIN|VALIDATION|TEST. |

### `ExportDataRequest`

Request message for ExportData.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `DatasetOutputConfig` | Required. The config for the output content. |

### `FileInputSource`

An inlined file.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. The file's byte contents. |
| `displayName` | `string` | Required. The file's display name. |
| `mimeType` | `string` | Required. The file's mime type. |

### `GcsDestination`

The Google Cloud Storage location for the output content.

| Property | Type | Description |
|----------|------|-------------|
| `outputUriPrefix` | `string` | Required. The bucket used in 'output_uri_prefix' must exist and there must be no files under 'out... |

### `GcsInputSource`

The Google Cloud Storage location for the input content.

| Property | Type | Description |
|----------|------|-------------|
| `inputUri` | `string` | Required. Source data URI. For example, `gs://my_bucket/my_object`. |

### `GcsOutputDestination`

The Google Cloud Storage location for the output content.

| Property | Type | Description |
|----------|------|-------------|
| `outputUriPrefix` | `string` | Required. Google Cloud Storage URI to output directory. For example, `gs://bucket/directory`. The... |

### `GcsSource`

The Google Cloud Storage location for the input content.

| Property | Type | Description |
|----------|------|-------------|
| `inputUri` | `string` | Required. Source data URI. For example, `gs://my_bucket/my_object`. |

### `Glossary`

Represents a glossary built from user-provided data.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. The display name of the glossary. |
| `endTime` | `string` | Output only. When the glossary creation was finished. |
| `entryCount` | `integer` | Output only. The number of entries defined in the glossary. |
| `inputConfig` | `GlossaryInputConfig` | Required. Provides examples to build the glossary from. Total glossary must not exceed 10M Unicod... |
| `languageCodesSet` | `LanguageCodesSet` | Used with equivalent term set glossaries. |
| `languagePair` | `LanguageCodePair` | Used with unidirectional glossaries. |
| `name` | `string` | Identifier. The resource name of the glossary. Glossary names have the form `projects/{project-nu... |
| `submitTime` | `string` | Output only. When CreateGlossary was called. |

### `GlossaryConfig`

Configures which glossary is used for a specific target language and defines options for applying that glossary.

| Property | Type | Description |
|----------|------|-------------|
| `contextualTranslationEnabled` | `boolean` | Optional. If set to true, the glossary will be used for contextual translation. |
| `glossary` | `string` | Required. The `glossary` to be applied for this translation. The format depends on the glossary: ... |
| `ignoreCase` | `boolean` | Optional. Indicates match is case insensitive. The default value is `false` if missing. |

### `GlossaryEntry`

Represents a single entry in a glossary.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes the glossary entry. |
| `name` | `string` | Identifier. The resource name of the entry. Format: `projects/*/locations/*/glossaries/*/glossary... |
| `termsPair` | `GlossaryTermsPair` | Used for an unidirectional glossary. |
| `termsSet` | `GlossaryTermsSet` | Used for an equivalent term sets glossary. |

### `GlossaryInputConfig`

Input configuration for glossaries.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsSource` | Required. Google Cloud Storage location of glossary data. File format is determined based on the ... |

### `GlossaryTerm`

Represents a single glossary term

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The language for this glossary term. |
| `text` | `string` | The text for the glossary term. |

### `GlossaryTermsPair`

Represents a single entry for an unidirectional glossary.

| Property | Type | Description |
|----------|------|-------------|
| `sourceTerm` | `GlossaryTerm` | The source term is the term that will get match in the text, |
| `targetTerm` | `GlossaryTerm` | The term that will replace the match source term. |

### `GlossaryTermsSet`

Represents a single entry for an equivalent term set glossary. This is used for equivalent term sets where each term can be replaced by the other terms in the set.

| Property | Type | Description |
|----------|------|-------------|
| `terms` | `array<GlossaryTerm>` | Each term in the set represents a term that can be replaced by the other terms. |

### `ImportAdaptiveMtFileRequest`

The request for importing an AdaptiveMt file along with its sentences.

| Property | Type | Description |
|----------|------|-------------|
| `fileInputSource` | `FileInputSource` | Inline file source. |
| `gcsInputSource` | `GcsInputSource` | Google Cloud Storage file source. |

### `ImportAdaptiveMtFileResponse`

The response for importing an AdaptiveMtFile

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveMtFile` | `AdaptiveMtFile` | Output only. The Adaptive MT file that was imported. |

### `ImportDataRequest`

Request message for ImportData.

| Property | Type | Description |
|----------|------|-------------|
| `inputConfig` | `DatasetInputConfig` | Required. The config for the input content. |

### `InputConfig`

Input configuration for BatchTranslateText request.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsSource` | Required. Google Cloud Storage location for the source input. This can be a single file (for exam... |
| `mimeType` | `string` | Optional. Can be "text/plain" or "text/html". For `.tsv`, "text/html" is used if mime_type is mis... |

### `InputFile`

An input file.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsInputSource` | Google Cloud Storage file source. |
| `usage` | `string` | Optional. Usage of the file contents. Options are TRAIN|VALIDATION|TEST, or UNASSIGNED (by defaul... |

### `LanguageCodePair`

Used with unidirectional glossaries.

| Property | Type | Description |
|----------|------|-------------|
| `sourceLanguageCode` | `string` | Required. The ISO-639 language code of the input text, for example, "en-US". Expected to be an ex... |
| `targetLanguageCode` | `string` | Required. The ISO-639 language code for translation output, for example, "zh-CN". Expected to be ... |

### `LanguageCodesSet`

Used with equivalent term set glossaries.

| Property | Type | Description |
|----------|------|-------------|
| `languageCodes` | `array<string>` | Optional. The ISO-639 language code(s) for terms defined in the glossary. All entries are unique.... |

### `ListAdaptiveMtDatasetsResponse`

A list of AdaptiveMtDatasets.

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveMtDatasets` | `array<AdaptiveMtDataset>` | Output only. A list of Adaptive MT datasets. |
| `nextPageToken` | `string` | Optional. A token to retrieve a page of results. Pass this value in the [ListAdaptiveMtDatasetsRe... |

### `ListAdaptiveMtFilesResponse`

The response for listing all AdaptiveMt files under a given dataset.

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveMtFiles` | `array<AdaptiveMtFile>` | Output only. The Adaptive MT files. |
| `nextPageToken` | `string` | Optional. A token to retrieve a page of results. Pass this value in the ListAdaptiveMtFilesReques... |

### `ListAdaptiveMtSentencesResponse`

List AdaptiveMt sentences response.

| Property | Type | Description |
|----------|------|-------------|
| `adaptiveMtSentences` | `array<AdaptiveMtSentence>` | Output only. The list of AdaptiveMtSentences. |
| `nextPageToken` | `string` | Optional. |

### `ListDatasetsResponse`

Response message for ListDatasets.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<Dataset>` | The datasets read. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this token to the page_token field in the ListData... |

### `ListExamplesResponse`

Response message for ListExamples.

| Property | Type | Description |
|----------|------|-------------|
| `examples` | `array<Example>` | The sentence pairs. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this token to the page_token field in the ListExam... |

### `ListGlossariesResponse`

Response message for ListGlossaries.

| Property | Type | Description |
|----------|------|-------------|
| `glossaries` | `array<Glossary>` | The list of glossaries for a project. |
| `nextPageToken` | `string` | A token to retrieve a page of results. Pass this value in the [ListGlossariesRequest.page_token] ... |

### `ListGlossaryEntriesResponse`

Response message for ListGlossaryEntries

| Property | Type | Description |
|----------|------|-------------|
| `glossaryEntries` | `array<GlossaryEntry>` | Optional. The Glossary Entries |
| `nextPageToken` | `string` | Optional. A token to retrieve a page of results. Pass this value in the [ListGLossaryEntriesReque... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListModelsResponse`

Response message for ListModels.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<Model>` | The models read. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this token to the page_token field in the ListMode... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Model`

A trained translation model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the model resource was created, which is also when the training started. |
| `dataset` | `string` | Required. The dataset from which the model is trained, in form of `projects/{project-number-or-id... |
| `displayName` | `string` | The name of the model to show in the interface. The name can be up to 32 characters long and can ... |
| `name` | `string` | The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_i... |
| `sourceLanguageCode` | `string` | Output only. The BCP-47 language code of the source language. |
| `targetLanguageCode` | `string` | Output only. The BCP-47 language code of the target language. |
| `testExampleCount` | `integer` | Output only. Number of examples (sentence pairs) used to test the model. |
| `trainExampleCount` | `integer` | Output only. Number of examples (sentence pairs) used to train the model. |
| `updateTime` | `string` | Output only. Timestamp when this model was last updated. |
| `validateExampleCount` | `integer` | Output only. Number of examples (sentence pairs) used to validate the model. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OutputConfig`

Output configuration for BatchTranslateText request.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsDestination` | Google Cloud Storage destination for output content. For every single input file (for example, gs... |

### `ReferenceSentenceConfig`

Message of caller-provided reference configuration.

| Property | Type | Description |
|----------|------|-------------|
| `referenceSentencePairLists` | `array<ReferenceSentencePairList>` | Reference sentences pair lists. Each list will be used as the references to translate the sentenc... |
| `sourceLanguageCode` | `string` | Source language code. |
| `targetLanguageCode` | `string` | Target language code. |

### `ReferenceSentencePair`

A pair of sentences used as reference in source and target languages.

| Property | Type | Description |
|----------|------|-------------|
| `sourceSentence` | `string` | Source sentence in the sentence pair. |
| `targetSentence` | `string` | Target sentence in the sentence pair. |

### `ReferenceSentencePairList`

A list of reference sentence pairs.

| Property | Type | Description |
|----------|------|-------------|
| `referenceSentencePairs` | `array<ReferenceSentencePair>` | Reference sentence pairs. |

### `RefineTextRequest`

Request message for RefineText.

| Property | Type | Description |
|----------|------|-------------|
| `refinementEntries` | `array<RefinementEntry>` | Required. The source texts and original translations in the source and target languages. |
| `sourceLanguageCode` | `string` | Required. The BCP-47 language code of the source text in the request, for example, "en-US". |
| `targetLanguageCode` | `string` | Required. The BCP-47 language code for translation output, for example, "zh-CN". |

### `RefineTextResponse`

Response message for RefineText.

| Property | Type | Description |
|----------|------|-------------|
| `refinedTranslations` | `array<string>` | The refined translations obtained from the original translations. |

### `RefinementEntry`

A single refinement entry for RefineTextRequest.

| Property | Type | Description |
|----------|------|-------------|
| `originalTranslation` | `string` | Required. The original translation of the source text. |
| `sourceText` | `string` | Required. The source text to be refined. |

### `Romanization`

A single romanization response.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguageCode` | `string` | The ISO-639 language code of source text in the initial request, detected automatically, if no so... |
| `romanizedText` | `string` | Romanized text. If an error occurs during romanization, this field might be excluded from the res... |

### `RomanizeTextRequest`

The request message for synchronous romanization.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `array<string>` | Required. The content of the input in string format. |
| `sourceLanguageCode` | `string` | Optional. The ISO-639 language code of the input text if known, for example, "hi" or "zh". Suppor... |

### `RomanizeTextResponse`

The response message for synchronous romanization.

| Property | Type | Description |
|----------|------|-------------|
| `romanizations` | `array<Romanization>` | Text romanization responses. This field has the same length as `contents`. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SupportedLanguage`

A single supported language response corresponds to information related to one supported language.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Human-readable name of the language localized in the display language specified in the request. |
| `languageCode` | `string` | Supported language code, generally consisting of its ISO 639-1 identifier, for example, 'en', 'ja... |
| `supportSource` | `boolean` | Can be used as a source language. |
| `supportTarget` | `boolean` | Can be used as a target language. |

### `SupportedLanguages`

The response message for discovering supported languages.

| Property | Type | Description |
|----------|------|-------------|
| `languages` | `array<SupportedLanguage>` | A list of supported language responses. This list contains an entry for each language the Transla... |

### `TranslateDocumentRequest`

A document translation request.

| Property | Type | Description |
|----------|------|-------------|
| `customizedAttribution` | `string` | Optional. This flag is to support user customized attribution. If not provided, the default is `M... |
| `documentInputConfig` | `DocumentInputConfig` | Required. Input configurations. |
| `documentOutputConfig` | `DocumentOutputConfig` | Optional. Output configurations. Defines if the output file should be stored within Cloud Storage... |
| `enableRotationCorrection` | `boolean` | Optional. If true, enable auto rotation correction in DVS. |
| `enableShadowRemovalNativePdf` | `boolean` | Optional. If true, use the text removal server to remove the shadow text on background image for ... |
| `glossaryConfig` | `TranslateTextGlossaryConfig` | Optional. Glossary to be applied. The glossary must be within the same region (have the same loca... |
| `isTranslateNativePdfOnly` | `boolean` | Optional. is_translate_native_pdf_only field for external customers. If true, the page limit of o... |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `model` | `string` | Optional. The `model` type requested for this translation. The format depends on model type: - Au... |
| `sourceLanguageCode` | `string` | Optional. The ISO-639 language code of the input document if known, for example, "en-US" or "sr-L... |
| `targetLanguageCode` | `string` | Required. The ISO-639 language code to use for translation of the input document, set to one of t... |

### `TranslateDocumentResponse`

A translated document response message.

| Property | Type | Description |
|----------|------|-------------|
| `documentTranslation` | `DocumentTranslation` | Translated document. |
| `glossaryConfig` | `TranslateTextGlossaryConfig` | The `glossary_config` used for this translation. |
| `glossaryDocumentTranslation` | `DocumentTranslation` | The document's translation output if a glossary is provided in the request. This can be the same ... |
| `model` | `string` | Only present when 'model' is present in the request. 'model' is normalized to have a project numb... |

### `TranslateTextGlossaryConfig`

Configures which glossary is used for a specific target language and defines options for applying that glossary.

| Property | Type | Description |
|----------|------|-------------|
| `contextualTranslationEnabled` | `boolean` | Optional. If set to true, the glossary will be used for contextual translation. |
| `glossary` | `string` | Required. The `glossary` to be applied for this translation. The format depends on the glossary: ... |
| `ignoreCase` | `boolean` | Optional. Indicates match is case insensitive. The default value is `false` if missing. |

### `TranslateTextRequest`

The request message for synchronous translation.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `array<string>` | Required. The content of the input in string format. We recommend the total content be less than ... |
| `glossaryConfig` | `TranslateTextGlossaryConfig` | Optional. Glossary to be applied. The glossary must be within the same region (have the same loca... |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `mimeType` | `string` | Optional. The format of the source text, for example, "text/html", "text/plain". If left blank, t... |
| `model` | `string` | Optional. The `model` type requested for this translation. The format depends on model type: - Au... |
| `sourceLanguageCode` | `string` | Optional. The ISO-639 language code of the input text if known, for example, "en-US" or "sr-Latn"... |
| `targetLanguageCode` | `string` | Required. The ISO-639 language code to use for translation of the input text, set to one of the l... |
| `transliterationConfig` | `TransliterationConfig` | Optional. Transliteration to be applied. |

### `TranslateTextResponse`

| Property | Type | Description |
|----------|------|-------------|
| `glossaryTranslations` | `array<Translation>` | Text translation responses if a glossary is provided in the request. This can be the same as `tra... |
| `translations` | `array<Translation>` | Text translation responses with no glossary applied. This field has the same length as `contents`. |

### `Translation`

A single translation response.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguageCode` | `string` | The ISO-639 language code of source text in the initial request, detected automatically, if no so... |
| `glossaryConfig` | `TranslateTextGlossaryConfig` | The `glossary_config` used for this translation. |
| `model` | `string` | Only present when `model` is present in the request. `model` here is normalized to have project n... |
| `translatedText` | `string` | Text translated into the target language. If an error occurs during translation, this field might... |

### `TransliterationConfig`

Configures transliteration feature on top of translation.

| Property | Type | Description |
|----------|------|-------------|
| `enableTransliteration` | `boolean` | If true, source text in romanized form can be translated to the target language. |

### `WaitOperationRequest`

The request message for Operations.WaitOperation.

| Property | Type | Description |
|----------|------|-------------|
| `timeout` | `string` | The maximum duration to wait before timing out. If left blank, the wait will be at most the time ... |

