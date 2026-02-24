# Cloud Document AI API - API Reference

**Version**: `v1` | **Methods**: 42 | **Schemas**: 318

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `documentai.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `documentai.projects.locations.fetchProcessorTypes` | GET | `v1/{+parent}:fetchProcessorTypes` | Fetches processor types. Note that we don't use ListProcessorTypes here, because it isn't paginated. |
| `documentai.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `documentai.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `documentai.projects.locations.schemas.create` | POST | `v1/{+parent}/schemas` | Creates a schema. |
| `documentai.projects.locations.schemas.get` | GET | `v1/{+name}` | Gets a schema. |
| `documentai.projects.locations.schemas.delete` | DELETE | `v1/{+name}` | Deletes a schema. |
| `documentai.projects.locations.schemas.list` | GET | `v1/{+parent}/schemas` | Lists Schemas. |
| `documentai.projects.locations.schemas.patch` | PATCH | `v1/{+name}` | Updates a schema. Editable fields are: - `display_name` - `labels` |
| `documentai.projects.locations.schemas.schemaVersions.patch` | PATCH | `v1/{+name}` | Updates a schema version. Editable fields are: - `display_name` - `labels` |
| `documentai.projects.locations.schemas.schemaVersions.delete` | DELETE | `v1/{+name}` | Deletes a schema version. |
| `documentai.projects.locations.schemas.schemaVersions.get` | GET | `v1/{+name}` | Gets a schema version. |
| `documentai.projects.locations.schemas.schemaVersions.generate` | POST | `v1/{+parent}/schemaVersions:generate` | Generates a schema version. |
| `documentai.projects.locations.schemas.schemaVersions.list` | GET | `v1/{+parent}/schemaVersions` | Lists SchemaVersions. |
| `documentai.projects.locations.schemas.schemaVersions.create` | POST | `v1/{+parent}/schemaVersions` | Creates a schema version. |
| `documentai.projects.locations.processors.delete` | DELETE | `v1/{+name}` | Deletes the processor, unloads all deployed model artifacts if it was enabled and then deletes al... |
| `documentai.projects.locations.processors.list` | GET | `v1/{+parent}/processors` | Lists all processors which belong to this project. |
| `documentai.projects.locations.processors.batchProcess` | POST | `v1/{+name}:batchProcess` | LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in t... |
| `documentai.projects.locations.processors.disable` | POST | `v1/{+name}:disable` | Disables a processor |
| `documentai.projects.locations.processors.setDefaultProcessorVersion` | POST | `v1/{+processor}:setDefaultProcessorVersion` | Set the default (active) version of a Processor that will be used in ProcessDocument and BatchPro... |
| `documentai.projects.locations.processors.enable` | POST | `v1/{+name}:enable` | Enables a processor |
| `documentai.projects.locations.processors.create` | POST | `v1/{+parent}/processors` | Creates a processor from the ProcessorType provided. The processor will be at `ENABLED` state by ... |
| `documentai.projects.locations.processors.process` | POST | `v1/{+name}:process` | Processes a single document. |
| `documentai.projects.locations.processors.get` | GET | `v1/{+name}` | Gets a processor detail. |
| `documentai.projects.locations.processors.processorVersions.deploy` | POST | `v1/{+name}:deploy` | Deploys the processor version. |
| `documentai.projects.locations.processors.processorVersions.get` | GET | `v1/{+name}` | Gets a processor version detail. |
| `documentai.projects.locations.processors.processorVersions.batchProcess` | POST | `v1/{+name}:batchProcess` | LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in t... |
| `documentai.projects.locations.processors.processorVersions.process` | POST | `v1/{+name}:process` | Processes a single document. |
| `documentai.projects.locations.processors.processorVersions.undeploy` | POST | `v1/{+name}:undeploy` | Undeploys the processor version. |
| `documentai.projects.locations.processors.processorVersions.train` | POST | `v1/{+parent}/processorVersions:train` | Trains a new processor version. Operation metadata is returned as TrainProcessorVersionMetadata. |
| `documentai.projects.locations.processors.processorVersions.delete` | DELETE | `v1/{+name}` | Deletes the processor version, all artifacts under the processor version will be deleted. |
| `documentai.projects.locations.processors.processorVersions.list` | GET | `v1/{+parent}/processorVersions` | Lists all versions of a processor. |
| `documentai.projects.locations.processors.processorVersions.evaluateProcessorVersion` | POST | `v1/{+processorVersion}:evaluateProcessorVersion` | Evaluates a ProcessorVersion against annotated documents, producing an Evaluation. |
| `documentai.projects.locations.processors.processorVersions.evaluations.list` | GET | `v1/{+parent}/evaluations` | Retrieves a set of evaluations for a given processor version. |
| `documentai.projects.locations.processors.processorVersions.evaluations.get` | GET | `v1/{+name}` | Retrieves a specific evaluation. |
| `documentai.projects.locations.processors.humanReviewConfig.reviewDocument` | POST | `v1/{+humanReviewConfig}:reviewDocument` | Send a document for Human Review. The input document should be processed by the specified processor. |
| `documentai.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `documentai.projects.locations.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `documentai.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `documentai.projects.locations.processorTypes.get` | GET | `v1/{+name}` | Gets a processor type detail. |
| `documentai.projects.locations.processorTypes.list` | GET | `v1/{+parent}/processorTypes` | Lists the processor types that exist. |
| `documentai.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `documentai.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.fetchProcessorTypes`

**GET** `v1/{+parent}:fetchProcessorTypes`

Fetches processor types. Note that we don't use ListProcessorTypes here, because it isn't paginated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location of processor types to list. Format: `projects/{project}/locations/{location}`. |

**Response**: `GoogleCloudDocumentaiV1FetchProcessorTypesResponse`

```typescript
const res = await documentai.locations.fetchProcessorTypes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.list`

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

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await documentai.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await documentai.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.create`

**POST** `v1/{+parent}/schemas`

Creates a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project and location) under which to create the Schema. Format: `projects/{project}/locations/{... |

**Request body**: `GoogleCloudDocumentaiV1NextSchema`

**Response**: `GoogleCloudDocumentaiV1NextSchema`

```typescript
const res = await documentai.schemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.get`

**GET** `v1/{+name}`

Gets a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Schema to get. Format: `projects/{project}/locations/{location}/schemas/{schema}` |

**Response**: `GoogleCloudDocumentaiV1NextSchema`

```typescript
const res = await documentai.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.delete`

**DELETE** `v1/{+name}`

Deletes a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Schema to be deleted. Format: `projects/{project}/locations/{location}/schemas/{schema}` |
| `force` | `boolean` | query | No | Optional. If set to true, any child resources of this Schema will also be deleted. (Otherwise, the request will only ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.schemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.list`

**GET** `v1/{+parent}/schemas`

Lists Schemas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of schema groups to return. If unspecified, at most `10` Schema will be returned. The ma... |
| `pageToken` | `string` | query | No | Optional. Returns the schema groups sorted by creation time. The page token will point to the next Schema. |

**Response**: `GoogleCloudDocumentaiV1ListSchemasResponse`

```typescript
const res = await documentai.schemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.patch`

**PATCH** `v1/{+name}`

Updates a schema. Editable fields are: - `display_name` - `labels`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the Schema. Format: `projects/{project}/locations/{location}/schemas/{schema}` |
| `updateMask` | `string` | query | No | Optional. The update mask to apply to the resource. **Note:** Only the following fields can be updated: - `display_na... |

**Request body**: `GoogleCloudDocumentaiV1NextSchema`

**Response**: `GoogleCloudDocumentaiV1NextSchema`

```typescript
const res = await documentai.schemas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.patch`

**PATCH** `v1/{+name}`

Updates a schema version. Editable fields are: - `display_name` - `labels`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the SchemaVersion. Format: `projects/{project}/locations/{location}/schemas/{schema}... |
| `updateMask` | `string` | query | No | Optional. The update mask to apply to the resource. **Note:** Only the following fields can be updated: - `display_na... |

**Request body**: `GoogleCloudDocumentaiV1SchemaVersion`

**Response**: `GoogleCloudDocumentaiV1SchemaVersion`

```typescript
const res = await documentai.schemaVersions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.delete`

**DELETE** `v1/{+name}`

Deletes a schema version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SchemaVersion to delete. Format: `projects/{project}/locations/{location}/schemas/{schema}/... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.schemaVersions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.get`

**GET** `v1/{+name}`

Gets a schema version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the SchemaVersion to get. Format: `projects/{project}/locations/{location}/schemas/{schema}/sch... |

**Response**: `GoogleCloudDocumentaiV1SchemaVersion`

```typescript
const res = await documentai.schemaVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.generate`

**POST** `v1/{+parent}/schemaVersions:generate`

Generates a schema version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project, location and schema) under which to generate the SchemaVersion. Format: `projects/{pro... |

**Request body**: `GoogleCloudDocumentaiV1GenerateSchemaVersionRequest`

**Response**: `GoogleCloudDocumentaiV1GenerateSchemaVersionResponse`

```typescript
const res = await documentai.schemaVersions.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.list`

**GET** `v1/{+parent}/schemaVersions`

Lists SchemaVersions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/schemas/{schema}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of SchemaVersion to return. If unspecified, at most `10` SchemaVersion will be returned.... |
| `pageToken` | `string` | query | No | Optional. Returns the SchemaVersion sorted by creation time. The page token will point to the next SchemaVersion. |

**Response**: `GoogleCloudDocumentaiV1ListSchemaVersionsResponse`

```typescript
const res = await documentai.schemaVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.schemas.schemaVersions.create`

**POST** `v1/{+parent}/schemaVersions`

Creates a schema version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project and location) under which to create the SchemaVersion. Format: `projects/{project}/loca... |

**Request body**: `GoogleCloudDocumentaiV1SchemaVersion`

**Response**: `GoogleCloudDocumentaiV1SchemaVersion`

```typescript
const res = await documentai.schemaVersions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.delete`

**DELETE** `v1/{+name}`

Deletes the processor, unloads all deployed model artifacts if it was enabled and then deletes all artifacts associated with this processor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor resource name to be deleted. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.list`

**GET** `v1/{+parent}/processors`

Lists all processors which belong to this project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project and location) which owns this collection of Processors. Format: `projects/{project}/loc... |
| `pageSize` | `integer` | query | No | The maximum number of processors to return. If unspecified, at most `50` processors will be returned. The maximum val... |
| `pageToken` | `string` | query | No | We will return the processors sorted by creation time. The page token will point to the next processor. |

**Response**: `GoogleCloudDocumentaiV1ListProcessorsResponse`

```typescript
const res = await documentai.processors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.batchProcess`

**POST** `v1/{+name}:batchProcess`

LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in the [Document] format.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of Processor or ProcessorVersion. Format: `projects/{project}/locations/{location}/proces... |

**Request body**: `GoogleCloudDocumentaiV1BatchProcessRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processors.batchProcess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.disable`

**POST** `v1/{+name}:disable`

Disables a processor

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor resource name to be disabled. |

**Request body**: `GoogleCloudDocumentaiV1DisableProcessorRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processors.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.setDefaultProcessorVersion`

**POST** `v1/{+processor}:setDefaultProcessorVersion`

Set the default (active) version of a Processor that will be used in ProcessDocument and BatchProcessDocuments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `processor` | `string` | path | Yes | Required. The resource name of the Processor to change default version. |

**Request body**: `GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processors.setDefaultProcessorVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.enable`

**POST** `v1/{+name}:enable`

Enables a processor

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor resource name to be enabled. |

**Request body**: `GoogleCloudDocumentaiV1EnableProcessorRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processors.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.create`

**POST** `v1/{+parent}/processors`

Creates a processor from the ProcessorType provided. The processor will be at `ENABLED` state by default after its creation. Note that this method requires the `documentai.processors.create` permission on the project, which is highly privileged. A user or service account with this permission can create new processors that can interact with any gcs bucket in your project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project and location) under which to create the processor. Format: `projects/{project}/location... |

**Request body**: `GoogleCloudDocumentaiV1Processor`

**Response**: `GoogleCloudDocumentaiV1Processor`

```typescript
const res = await documentai.processors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.process`

**POST** `v1/{+name}:process`

Processes a single document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Processor or ProcessorVersion to use for processing. If a Processor is specified, ... |

**Request body**: `GoogleCloudDocumentaiV1ProcessRequest`

**Response**: `GoogleCloudDocumentaiV1ProcessResponse`

```typescript
const res = await documentai.processors.process({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.get`

**GET** `v1/{+name}`

Gets a processor detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor resource name. |

**Response**: `GoogleCloudDocumentaiV1Processor`

```typescript
const res = await documentai.processors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.deploy`

**POST** `v1/{+name}:deploy`

Deploys the processor version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor version resource name to be deployed. |

**Request body**: `GoogleCloudDocumentaiV1DeployProcessorVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.get`

**GET** `v1/{+name}`

Gets a processor version detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor resource name. |

**Response**: `GoogleCloudDocumentaiV1ProcessorVersion`

```typescript
const res = await documentai.processorVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.batchProcess`

**POST** `v1/{+name}:batchProcess`

LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in the [Document] format.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of Processor or ProcessorVersion. Format: `projects/{project}/locations/{location}/proces... |

**Request body**: `GoogleCloudDocumentaiV1BatchProcessRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.batchProcess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.process`

**POST** `v1/{+name}:process`

Processes a single document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Processor or ProcessorVersion to use for processing. If a Processor is specified, ... |

**Request body**: `GoogleCloudDocumentaiV1ProcessRequest`

**Response**: `GoogleCloudDocumentaiV1ProcessResponse`

```typescript
const res = await documentai.processorVersions.process({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.undeploy`

**POST** `v1/{+name}:undeploy`

Undeploys the processor version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor version resource name to be undeployed. |

**Request body**: `GoogleCloudDocumentaiV1UndeployProcessorVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.undeploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.train`

**POST** `v1/{+parent}/processorVersions:train`

Trains a new processor version. Operation metadata is returned as TrainProcessorVersionMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project, location and processor) to create the new version for. Format: `projects/{project}/loc... |

**Request body**: `GoogleCloudDocumentaiV1TrainProcessorVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.train({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.delete`

**DELETE** `v1/{+name}`

Deletes the processor version, all artifacts under the processor version will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor version resource name to be deleted. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.list`

**GET** `v1/{+parent}/processorVersions`

Lists all versions of a processor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent (project, location and processor) to list all versions. Format: `projects/{project}/locations/{l... |
| `pageSize` | `integer` | query | No | The maximum number of processor versions to return. If unspecified, at most `10` processor versions will be returned.... |
| `pageToken` | `string` | query | No | We will return the processor versions sorted by creation time. The page token will point to the next processor version. |

**Response**: `GoogleCloudDocumentaiV1ListProcessorVersionsResponse`

```typescript
const res = await documentai.processorVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.evaluateProcessorVersion`

**POST** `v1/{+processorVersion}:evaluateProcessorVersion`

Evaluates a ProcessorVersion against annotated documents, producing an Evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `processorVersion` | `string` | path | Yes | Required. The resource name of the ProcessorVersion to evaluate. `projects/{project}/locations/{location}/processors/... |

**Request body**: `GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.processorVersions.evaluateProcessorVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.evaluations.list`

**GET** `v1/{+parent}/evaluations`

Retrieves a set of evaluations for a given processor version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the ProcessorVersion to list evaluations for. `projects/{project}/locations/{location}... |
| `pageSize` | `integer` | query | No | The standard list page size. If unspecified, at most `5` evaluations are returned. The maximum value is `100`. Values... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListEvaluations` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDocumentaiV1ListEvaluationsResponse`

```typescript
const res = await documentai.evaluations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.processorVersions.evaluations.get`

**GET** `v1/{+name}`

Retrieves a specific evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Evaluation to get. `projects/{project}/locations/{location}/processors/{processor}... |

**Response**: `GoogleCloudDocumentaiV1Evaluation`

```typescript
const res = await documentai.evaluations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processors.humanReviewConfig.reviewDocument`

**POST** `v1/{+humanReviewConfig}:reviewDocument`

Send a document for Human Review. The input document should be processed by the specified processor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `humanReviewConfig` | `string` | path | Yes | Required. The resource name of the HumanReviewConfig that the document will be reviewed with. |

**Request body**: `GoogleCloudDocumentaiV1ReviewDocumentRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.humanReviewConfig.reviewDocument({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await documentai.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.operations.list`

**GET** `v1/{+name}`

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
const res = await documentai.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await documentai.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processorTypes.get`

**GET** `v1/{+name}`

Gets a processor type detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The processor type resource name. |

**Response**: `GoogleCloudDocumentaiV1ProcessorType`

```typescript
const res = await documentai.processorTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.projects.locations.processorTypes.list`

**GET** `v1/{+parent}/processorTypes`

Lists the processor types that exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location of processor types to list. Format: `projects/{project}/locations/{location}`. |
| `pageSize` | `integer` | query | No | The maximum number of processor types to return. If unspecified, at most `100` processor types will be returned. The ... |
| `pageToken` | `string` | query | No | Used to retrieve the next page of results, empty if at the end of the list. |

**Response**: `GoogleCloudDocumentaiV1ListProcessorTypesResponse`

```typescript
const res = await documentai.processorTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `documentai.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await documentai.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInput`

Definition of the validation rules. Those are the input to the validator logic and they are used to validate a document. Next ID: 3

| Property | Type | Description |
|----------|------|-------------|
| `validationRules` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule>` |  |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule`

Next ID: 9

| Property | Type | Description |
|----------|------|-------------|
| `childAlignmentRule` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule` |  |
| `description` | `string` | Description of the validation rule. This has no use but for documentation. |
| `entityAlignmentRule` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule` |  |
| `fieldOccurrences` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences` |  |
| `fieldRegex` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex` |  |
| `formValidation` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation` |  |
| `name` | `string` | Name of the validation rule. |
| `ruleId` | `string` | Unique identifier of the rule. Optional. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule`

A rule for checking field alignment. Horizontal alignment checks if fields are on the same row by comparing y-coordinates of bounding box centers, while vertical alignment checks if fields are on the same column by comparing x-coordinates of bounding box centers.

| Property | Type | Description |
|----------|------|-------------|
| `alignmentType` | `string` |  |
| `tolerance` | `number` | The tolerance to use when comparing coordinates. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule`

A rule that aligns specified child fields with a parent field.

| Property | Type | Description |
|----------|------|-------------|
| `alignmentRule` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule` | The alignment rule to apply to the child fields. |
| `childFields` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField>` | The child fields to be aligned within the parent field. |
| `parentField` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField` | The full path of the parent field. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant`

The constant value used in the validation rules.

| Property | Type | Description |
|----------|------|-------------|
| `floatValue` | `number` |  |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule`

A rule that aligns specified fields with each other.

| Property | Type | Description |
|----------|------|-------------|
| `alignmentRule` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule` | The alignment rule to apply to the fields. |
| `fields` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField>` | The fields to be aligned. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField`

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant` | Default value to use if the field is not present. If the field is missing and the default value i... |
| `fieldName` | `string` | The field name to validate. This can be a simple field name or a nested field one using the ':' (... |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences`

| Property | Type | Description |
|----------|------|-------------|
| `field` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField` |  |
| `maxOccurrences` | `integer` |  |
| `minOccurrences` | `integer` | Min and max occurrences of the field. If not set, there is limit set. The defined interval is a c... |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex`

| Property | Type | Description |
|----------|------|-------------|
| `field` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField` |  |
| `pattern` | `string` | Python regex to validate the field values. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation`

| Property | Type | Description |
|----------|------|-------------|
| `leftOperand` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation` |  |
| `rightOperand` | `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation` |  |
| `validationOperator` | `string` | The relational operator to be applied to the operands. |

### `CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation`

| Property | Type | Description |
|----------|------|-------------|
| `constants` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant>` | A list of constants to be used as operands. |
| `fields` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField>` | A list of fields to be used as operands. |
| `operationType` | `string` | The operation type to be applied to all the operands. |
| `operations` | `array<CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation>` | A list of recursive operations to be used as operands. |

### `GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadata`

Metadata of the auto-labeling documents operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `individualAutoLabelStatuses` | `array<GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus>` | The list of individual auto-labeling statuses of the dataset documents. |
| `totalDocumentCount` | `integer` | Total number of the auto-labeling documents. |

### `GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus`

The status of individual documents in the auto-labeling process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document id of the auto-labeled document. This will replace the gcs_uri. |
| `status` | `GoogleRpcStatus` | The status of the document auto-labeling. |

### `GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsResponse`

The response proto of AutoLabelDocuments method.

### `GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `errorDocumentCount` | `integer` | Total number of documents that failed to be deleted in storage. |
| `individualBatchDeleteStatuses` | `array<GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus>` | The list of response details of each document. |
| `totalDocumentCount` | `integer` | Total number of documents deleting from dataset. |

### `GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus`

The status of each individual document in the batch delete process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document id of the document. |
| `status` | `GoogleRpcStatus` | The status of deleting the document in storage. |

### `GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse`

Response of the delete documents operation.

### `GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `destDatasetType` | `string` | The destination dataset split type. |
| `destSplitType` | `string` | The destination dataset split type. |
| `individualBatchMoveStatuses` | `array<GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus>` | The list of response details of each document. |

### `GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus`

The status of each individual document in the batch move process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document id of the document. |
| `status` | `GoogleRpcStatus` | The status of moving the document. |

### `GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse`

Response of the batch move documents operation.

### `GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `individualBatchUpdateStatuses` | `array<GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus>` | The list of response details of each document. |

### `GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus`

The status of each individual document in the batch update process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document id of the document. |
| `status` | `GoogleRpcStatus` | The status of updating the document in storage. |

### `GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsResponse`

Response of the batch update documents operation.

### `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata`

The common metadata for long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the operation. |
| `resource` | `string` | A related resource to this operation. |
| `state` | `string` | The state of the operation. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata`

The long-running operation metadata for the CreateLabelerPool method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata`

The long-running operation metadata for DeleteLabelerPool.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata`

The long-running operation metadata for the DeleteProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata`

The long-running operation metadata for the DeleteProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata`

The long-running operation metadata for the DeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse`

Response message for the DeployProcessorVersion method.

### `GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata`

The long-running operation metadata for the DisableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse`

Response message for the DisableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiUiv1beta3DocumentId`

Document Identifier.

| Property | Type | Description |
|----------|------|-------------|
| `gcsManagedDocId` | `GoogleCloudDocumentaiUiv1beta3DocumentIdGCSManagedDocumentId` | A document id within user-managed Cloud Storage. |
| `revisionRef` | `GoogleCloudDocumentaiUiv1beta3RevisionRef` | Points to a specific revision of the document if set. |
| `unmanagedDocId` | `GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId` | A document id within unmanaged dataset. |

### `GoogleCloudDocumentaiUiv1beta3DocumentIdGCSManagedDocumentId`

Identifies a document uniquely within the scope of a dataset in the user-managed Cloud Storage option.

| Property | Type | Description |
|----------|------|-------------|
| `cwDocId` | `string` | Id of the document (indexed) managed by Content Warehouse. |
| `gcsUri` | `string` | Required. The Cloud Storage URI where the actual document is stored. |

### `GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId`

Identifies a document uniquely within the scope of a dataset in unmanaged option.

| Property | Type | Description |
|----------|------|-------------|
| `docId` | `string` | Required. The id of the document. |

### `GoogleCloudDocumentaiUiv1beta3DocumentSchema`

The schema defines the output of the processed document by a processor.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the schema. |
| `displayName` | `string` | Display name to show users. |
| `documentPrompt` | `string` | Optional. Document level prompt provided by the user. This custom text is injected into the AI mo... |
| `entityTypes` | `array<GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType>` | Entity types of the schema. |
| `metadata` | `GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata` | Metadata of the schema. |

### `GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType`

EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

| Property | Type | Description |
|----------|------|-------------|
| `baseTypes` | `array<string>` | The entity type that this type is derived from. For now, one and only one should be set. |
| `description` | `string` | The description of the entity type. Could be used to provide more information about the entity ty... |
| `displayName` | `string` | User defined name for the type. |
| `entityTypeMetadata` | `GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata` | Metadata for the entity type. |
| `enumValues` | `GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues` | If specified, lists all the possible values for this entity. This should not be more than a handf... |
| `name` | `string` | Name of the type. It must be unique within the schema file and cannot be a "Common Type". The fol... |
| `properties` | `array<GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty>` | Description the nested structure, or composition of an entity. |

### `GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues`

Defines the a list of enum values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The individual values that this enum values type can include. |

### `GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty`

Defines properties that can be part of the entity type.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the property. Could be used to provide more information about the property for... |
| `displayName` | `string` | User defined name for the property. |
| `method` | `string` | Specifies how the entity's value is obtained. |
| `name` | `string` | The name of the property. Follows the same guidelines as the EntityType name. |
| `occurrenceType` | `string` | Occurrence type limits the number of instances an entity type appears in the document. |
| `propertyMetadata` | `GoogleCloudDocumentaiUiv1beta3PropertyMetadata` | Any additional metadata about the property can be added here. |
| `valueType` | `string` | A reference to the value type of the property. This type is subject to the same conventions as th... |

### `GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata`

Metadata for global schema behavior.

| Property | Type | Description |
|----------|------|-------------|
| `documentAllowMultipleLabels` | `boolean` | If true, on a given page, there can be multiple `document` annotations covering it. |
| `documentSplitter` | `boolean` | If true, a `document` entity type can be applied to subdocument (splitting). Otherwise, it can on... |
| `prefixedNamingOnProperties` | `boolean` | If set, all the nested entities must be prefixed with the parents. |
| `skipNamingValidation` | `boolean` | If set, this will skip the naming format validation in the schema. So the string values in `Docum... |

### `GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata`

The long-running operation metadata for the EnableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse`

Response message for the EnableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata`

Metadata about an entity type.

| Property | Type | Description |
|----------|------|-------------|
| `fieldTierMetadata` | `GoogleCloudDocumentaiUiv1beta3FieldTierMetadata` | Field tier metadata on the property |
| `humanReviewLabelingMetadata` | `GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata` | Human review labeling config on the entity. |
| `humanReviewMetadata` | `GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata` | Human review config on the entity. |
| `inactive` | `boolean` | Whether the entity type should be considered inactive. |
| `schemaEditabilityMetadata` | `GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata` | Schema editability metadata on the entity. |
| `schemaInferenceMetadata` | `GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata` | Schema inference metadata on the entity. |

### `GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata`

Metadata of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse`

Response of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `evaluation` | `string` | The resource name of the created evaluation. |

### `GoogleCloudDocumentaiUiv1beta3EvaluationMetrics`

Evaluation metrics, either in aggregate or about a specific entity.

| Property | Type | Description |
|----------|------|-------------|
| `f1Score` | `number` | The calculated F1 score. |
| `falseNegativesCount` | `integer` | The amount of false negatives. |
| `falsePositivesCount` | `integer` | The amount of false positives. |
| `groundTruthDocumentCount` | `integer` | The amount of documents with a ground truth occurrence. |
| `groundTruthOccurrencesCount` | `integer` | The amount of occurrences in ground truth documents. |
| `precision` | `number` | The calculated precision. |
| `predictedDocumentCount` | `integer` | The amount of documents with a predicted occurrence. |
| `predictedOccurrencesCount` | `integer` | The amount of occurrences in predicted documents. |
| `recall` | `number` | The calculated recall. |
| `totalDocumentsCount` | `integer` | The amount of documents that had an occurrence of this label. |
| `truePositivesCount` | `integer` | The amount of true positives. |

### `GoogleCloudDocumentaiUiv1beta3EvaluationReference`

Gives a short summary of an evaluation, and links to the evaluation itself.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateMetrics` | `GoogleCloudDocumentaiUiv1beta3EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching on. |
| `aggregateMetricsExact` | `GoogleCloudDocumentaiUiv1beta3EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching off. |
| `evaluation` | `string` | The resource name of the evaluation. |
| `operation` | `string` | The resource name of the Long Running Operation for the evaluation. |

### `GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata`

Metadata of the batch export documents operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `individualExportStatuses` | `array<GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus>` | The list of response details of each document. |
| `splitExportStats` | `array<GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat>` | The list of statistics for each dataset split type. |

### `GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus`

The status of each individual document in the export process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The path to source docproto of the document. |
| `outputGcsDestination` | `string` | The output_gcs_destination of the exported document if it was successful, otherwise empty. |
| `status` | `GoogleRpcStatus` | The status of the exporting of the document. |

### `GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat`

The statistic representing a dataset split type for this export.

| Property | Type | Description |
|----------|------|-------------|
| `splitType` | `string` | The dataset split type. |
| `totalDocumentCount` | `integer` | Total number of documents with the given dataset split type to be exported. |

### `GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse`

The response proto of ExportDocuments method.

### `GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata`

Metadata message associated with the ExportProcessorVersion operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The common metadata about the operation. |

### `GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse`

Response message associated with the ExportProcessorVersion operation.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | The Cloud Storage URI containing the output artifacts. |

### `GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata`

Metadata for how this field value is extracted.

| Property | Type | Description |
|----------|------|-------------|
| `entityQuery` | `GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery` | Entity query config. |
| `summaryOptions` | `GoogleCloudDocumentaiUiv1beta3SummaryOptions` | Summary options config. |

### `GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery`

Message for entity query.

| Property | Type | Description |
|----------|------|-------------|
| `userEntityQuery` | `string` | The original entity query inputed by the user. |

### `GoogleCloudDocumentaiUiv1beta3FieldTierMetadata`

Metadata for the field tier of a property.

| Property | Type | Description |
|----------|------|-------------|
| `tierLevel` | `integer` | Integer that indicates the tier of a property. e.g. Invoice has entities that are classified as t... |

### `GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata`

Metadata for human review labeling config.

| Property | Type | Description |
|----------|------|-------------|
| `enableNormalizationEditing` | `boolean` | Whether to enable normalization editing. |

### `GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata`

Metadata for Human Review config.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceThreshold` | `number` | The confidence threshold if human review validation is enabled. |
| `enableValidation` | `boolean` | Whether to enable human review validation. |

### `GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata`

Metadata of the import document operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `importConfigValidationResults` | `array<GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult>` | Validation statuses of the batch documents import config. |
| `individualImportStatuses` | `array<GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus>` | The list of response details of each document. |
| `totalDocumentCount` | `integer` | Total number of the documents that are qualified for importing. |

### `GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult`

The validation status of each import config. Status is set to an error if there are no documents to import in the `import_config`, or `OK` if the operation will try to proceed with at least one document.

| Property | Type | Description |
|----------|------|-------------|
| `inputGcsSource` | `string` | The source Cloud Storage URI specified in the import config. |
| `status` | `GoogleRpcStatus` | The validation status of import config. |

### `GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus`

The status of each individual document in the import process.

| Property | Type | Description |
|----------|------|-------------|
| `inputGcsSource` | `string` | The source Cloud Storage URI of the document. |
| `outputDocumentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document id of imported document if it was successful, otherwise empty. |
| `outputGcsDestination` | `string` | The output_gcs_destination of the processed document if it was successful, otherwise empty. |
| `status` | `GoogleRpcStatus` | The status of the importing of the document. |

### `GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse`

Response of the import document operation.

### `GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionMetadata`

The long-running operation metadata for the ImportProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata for the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionResponse`

The response message for the ImportProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `processorVersion` | `string` | The destination processor version name. |

### `GoogleCloudDocumentaiUiv1beta3Processor`

The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.

| Property | Type | Description |
|----------|------|-------------|
| `activeSchemaVersion` | `string` | Optional. SchemaVersion used by the Processor. It is the same as Processor's DatasetSchema.schema... |
| `createTime` | `string` | Output only. The time the processor was created. |
| `defaultProcessorVersion` | `string` | The default processor version. |
| `displayName` | `string` | The display name of the processor. |
| `kmsKeyName` | `string` | The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryptio... |
| `name` | `string` | Output only. Immutable. The resource name of the processor. Format: `projects/{project}/locations... |
| `processEndpoint` | `string` | Output only. Immutable. The http endpoint that can be called to invoke processing. |
| `processorVersionAliases` | `array<GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias>` | Output only. The processor version aliases. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the processor. |
| `type` | `string` | The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor typ... |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersion`

A processor version is an implementation of a processor. Each processor can have multiple versions, pretrained by Google internally or uptrained by the customer. A processor can only have one default version at a time. Its document-processing behavior is defined by that version.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the processor version was created. |
| `deploymentAllowed` | `boolean` | Output only. Denotes that this `ProcessorVersion` can be deployed and undeployed. |
| `deprecationInfo` | `GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo` | Output only. If set, information about the eventual deprecation of this version. |
| `displayName` | `string` | The display name of the processor version. |
| `documentSchema` | `GoogleCloudDocumentaiUiv1beta3DocumentSchema` | Output only. The schema of the processor version. Describes the output. |
| `genAiModelInfo` | `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo` | Output only. Information about Generative AI model-based processor versions. |
| `googleManaged` | `boolean` | Output only. Denotes that this `ProcessorVersion` is managed by Google. |
| `kmsKeyName` | `string` | Output only. The KMS key name used for encryption. |
| `kmsKeyVersionName` | `string` | Output only. The KMS key version with which data is encrypted. |
| `latestEvaluation` | `GoogleCloudDocumentaiUiv1beta3EvaluationReference` | Output only. The most recently invoked evaluation for the processor version. |
| `modelType` | `string` | Output only. The model type of this processor version. |
| `name` | `string` | Identifier. The resource name of the processor version. Format: `projects/{project}/locations/{lo... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `schema` | `GoogleCloudDocumentaiUiv1beta3Schema` | The schema of the processor version. Describes the output. |
| `state` | `string` | Output only. The state of the processor version. |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias`

Contains the alias and the aliased resource name of processor version.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | The alias in the form of `processor_version` resource name. |
| `processorVersion` | `string` | The resource name of aliased processor version. |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo`

Information about the upcoming deprecation of this processor version.

| Property | Type | Description |
|----------|------|-------------|
| `deprecationTime` | `string` | The time at which this processor version will be deprecated. |
| `replacementProcessorVersion` | `string` | If set, the processor version that will be used as a replacement. |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo`

Information about Generative AI model-based processor versions.

| Property | Type | Description |
|----------|------|-------------|
| `customGenAiModelInfo` | `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo` | Information for a custom Generative AI model created by the user. |
| `foundationGenAiModelInfo` | `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo` | Information for a pretrained Google-managed foundation model. |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo`

Information for a custom Generative AI model created by the user. These are created with `Create New Version` in either the `Call foundation model` or `Fine tuning` tabs.

| Property | Type | Description |
|----------|------|-------------|
| `baseProcessorVersionId` | `string` | The base processor version ID for the custom model. |
| `customModelType` | `string` | The type of custom model created by the user. |

### `GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo`

Information for a pretrained Google-managed foundation model.

| Property | Type | Description |
|----------|------|-------------|
| `finetuningAllowed` | `boolean` | Whether fine tuning is allowed for this base processor version. |
| `minTrainLabeledDocuments` | `integer` | The minimum number of labeled documents in the training dataset required for fine tuning. |

### `GoogleCloudDocumentaiUiv1beta3PropertyMetadata`

Metadata about a property.

| Property | Type | Description |
|----------|------|-------------|
| `fieldExtractionMetadata` | `GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata` | Field extraction metadata on the property. |
| `fieldTierMetadata` | `GoogleCloudDocumentaiUiv1beta3FieldTierMetadata` | Field tier metadata on the property |
| `humanReviewLabelingMetadata` | `GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata` | Human review labeling config on the property. |
| `humanReviewMetadata` | `GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata` | Human review validation config on the property. |
| `inactive` | `boolean` | Whether the property should be considered as "inactive". |
| `schemaEditabilityMetadata` | `GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata` | Schema editability metadata on the property. |
| `schemaInferenceMetadata` | `GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata` | Schema inference metadata on the property. |

### `GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata`

The metadata proto of `ResyncDataset` method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `datasetResyncStatuses` | `array<GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus>` | The list of dataset resync statuses. Not checked when ResyncDatasetRequest.dataset_documents is s... |
| `individualDocumentResyncStatuses` | `array<GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus>` | The list of document resync statuses. The same document could have multiple `individual_document_... |

### `GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus`

Resync status against inconsistency types on the dataset level.

| Property | Type | Description |
|----------|------|-------------|
| `datasetInconsistencyType` | `string` | The type of the inconsistency of the dataset. |
| `status` | `GoogleRpcStatus` | The status of resyncing the dataset with regards to the detected inconsistency. Empty if ResyncDa... |

### `GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus`

Resync status for each document per inconsistency type.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiUiv1beta3DocumentId` | The document identifier. |
| `documentInconsistencyType` | `string` | The type of document inconsistency. |
| `status` | `GoogleRpcStatus` | The status of resyncing the document with regards to the detected inconsistency. Empty if ResyncD... |

### `GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse`

The response proto of ResyncDataset method.

### `GoogleCloudDocumentaiUiv1beta3RevisionRef`

The revision reference specifies which revision on the document to read.

| Property | Type | Description |
|----------|------|-------------|
| `latestProcessorVersion` | `string` | Reads the revision generated by the processor version. The format takes the full resource name of... |
| `revisionCase` | `string` | Reads the revision by the predefined case. |
| `revisionId` | `string` | Reads the revision given by the id. |

### `GoogleCloudDocumentaiUiv1beta3SampleDocumentsMetadata`

Metadata of the sample documents operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponse`

Response of the sample documents operation.

| Property | Type | Description |
|----------|------|-------------|
| `sampleTestStatus` | `GoogleRpcStatus` | The status of sampling documents in test split. |
| `sampleTrainingStatus` | `GoogleRpcStatus` | The status of sampling documents in training split. |
| `selectedDocuments` | `array<GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument>` | The result of the sampling process. |

### `GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument`

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | An internal identifier for document. |

### `GoogleCloudDocumentaiUiv1beta3Schema`

The schema defines the output of the processed document by a processor.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the schema. |
| `displayName` | `string` | Display name to show users. |
| `entityTypes` | `array<GoogleCloudDocumentaiUiv1beta3SchemaEntityType>` | Entity types of the schema. |

### `GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata`

Metadata that specifies whether a label is editable and reasons why. These fields are read-only. Changing these fields has no impact on the backend.

| Property | Type | Description |
|----------|------|-------------|
| `editable` | `boolean` | Explicit flag that controls whether the label is editable. |
| `processorVersions` | `array<string>` | Full resource name of processor versions that contain this label. e.g. `projects/{project}/locati... |

### `GoogleCloudDocumentaiUiv1beta3SchemaEntityType`

EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

| Property | Type | Description |
|----------|------|-------------|
| `baseType` | `string` |  |
| `description` | `string` | Description of the entity type. |
| `enumValues` | `array<string>` | If specified, lists all the possible values for this entity. |
| `hide` | `boolean` | If the entity type is hidden in the schema. This provides the functionality to temporally "disabl... |
| `method` | `string` | Specifies how the entity's value is obtained. |
| `occurrenceType` | `string` | Occurrence type limits the number of times an entity type appears in the document. |
| `properties` | `array<GoogleCloudDocumentaiUiv1beta3SchemaEntityType>` | Describing the nested structure of an entity. An EntityType may consist of several other EntityTy... |
| `source` | `string` | Source of this entity type. |
| `type` | `string` | Name of the type. It must satisfy the following constraints: 1. Must be unique within the set of ... |

### `GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata`

Metadata for schema inference. Only used on dataset.schema for schema inference, can be safely ignored elsewhere.

| Property | Type | Description |
|----------|------|-------------|
| `inferred` | `boolean` | True if is inferred by schema inference. |

### `GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata`

The long-running operation metadata for the SetDefaultProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse`

Response message for the SetDefaultProcessorVersion method.

### `GoogleCloudDocumentaiUiv1beta3SummaryOptions`

Metadata for document summarization.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | The format the summary should be in. |
| `length` | `string` | How long the summary should be. |

### `GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata`

The metadata that represents a processor version being created.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `testDatasetValidation` | `GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation` | The test dataset validation information. |
| `trainingDatasetValidation` | `GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation` | The training dataset validation information. |

### `GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation`

The dataset validation information. This includes any and all errors with documents and the dataset.

| Property | Type | Description |
|----------|------|-------------|
| `datasetErrorCount` | `integer` | The total number of dataset errors. |
| `datasetErrors` | `array<GoogleRpcStatus>` | Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A ... |
| `documentErrorCount` | `integer` | The total number of document errors. |
| `documentErrors` | `array<GoogleRpcStatus>` | Error information pertaining to specific documents. A maximum of 10 document errors will be retur... |

### `GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse`

The response for TrainProcessorVersion.

| Property | Type | Description |
|----------|------|-------------|
| `processorVersion` | `string` | The resource name of the processor version produced by training. |

### `GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata`

The long-running operation metadata for the UndeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse`

Response message for the UndeployProcessorVersion method.

### `GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata`

The long-running operation metadata for updating the human review configuration.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata`

The long-running operation metadata for UpdateLabelerPool.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiUiv1beta3UpdateProcessorVersionMetadata`

The long-running operation metadata for the UpdateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata` | The basic metadata for the long-running operation. |

### `GoogleCloudDocumentaiV1Barcode`

Encodes the detailed information of a barcode.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39... |
| `rawValue` | `string` | Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`. |
| `valueFormat` | `string` | Value format describes the format of the value that a barcode encodes. The supported formats are:... |

### `GoogleCloudDocumentaiV1BatchDocumentsInputConfig`

The common config to specify a set of documents used as input.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDocuments` | `GoogleCloudDocumentaiV1GcsDocuments` | The set of documents individually specified on Cloud Storage. |
| `gcsPrefix` | `GoogleCloudDocumentaiV1GcsPrefix` | The set of documents that match the specified Cloud Storage `gcs_prefix`. |

### `GoogleCloudDocumentaiV1BatchProcessMetadata`

The long-running operation metadata for BatchProcessDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the operation. |
| `individualProcessStatuses` | `array<GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>` | The list of response details of each document. |
| `state` | `string` | The state of the current batch processing. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. For example, the error me... |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus`

The status of a each individual document in the batch process.

| Property | Type | Description |
|----------|------|-------------|
| `humanReviewStatus` | `GoogleCloudDocumentaiV1HumanReviewStatus` | The status of human review on the processed document. |
| `inputGcsSource` | `string` | The source of the document, same as the input_gcs_source field in the request when the batch proc... |
| `outputGcsDestination` | `string` | The Cloud Storage output destination (in the request as DocumentOutputConfig.GcsOutputConfig.gcs_... |
| `status` | `GoogleRpcStatus` | The status processing the document. |

### `GoogleCloudDocumentaiV1BatchProcessRequest`

Request message for BatchProcessDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `documentOutputConfig` | `GoogleCloudDocumentaiV1DocumentOutputConfig` | The output configuration for the BatchProcessDocuments method. |
| `inputDocuments` | `GoogleCloudDocumentaiV1BatchDocumentsInputConfig` | The input documents for the BatchProcessDocuments method. |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `processOptions` | `GoogleCloudDocumentaiV1ProcessOptions` | Inference-time options for the process API |
| `skipHumanReview` | `boolean` | Whether human review should be skipped for this request. Default to `false`. |

### `GoogleCloudDocumentaiV1BatchProcessResponse`

Response message for BatchProcessDocuments.

### `GoogleCloudDocumentaiV1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudDocumentaiV1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudDocumentaiV1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudDocumentaiV1CommonOperationMetadata`

The common metadata for long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the operation. |
| `resource` | `string` | A related resource to this operation. |
| `state` | `string` | The state of the operation. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiV1DeleteProcessorMetadata`

The long-running operation metadata for the DeleteProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata`

The long-running operation metadata for the DeleteProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1DeployProcessorVersionMetadata`

The long-running operation metadata for the DeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1DeployProcessorVersionRequest`

Request message for the DeployProcessorVersion method.

### `GoogleCloudDocumentaiV1DeployProcessorVersionResponse`

Response message for the DeployProcessorVersion method.

### `GoogleCloudDocumentaiV1DisableProcessorMetadata`

The long-running operation metadata for the DisableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1DisableProcessorRequest`

Request message for the DisableProcessor method.

### `GoogleCloudDocumentaiV1DisableProcessorResponse`

Response message for the DisableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiV1Document`

Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.

| Property | Type | Description |
|----------|------|-------------|
| `chunkedDocument` | `GoogleCloudDocumentaiV1DocumentChunkedDocument` | Document chunked based on chunking config. |
| `content` | `string` | Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fi... |
| `docid` | `string` | Optional. An internal identifier for document. Should be loggable (no PII). |
| `documentLayout` | `GoogleCloudDocumentaiV1DocumentDocumentLayout` | Parsed layout of the document. |
| `entities` | `array<GoogleCloudDocumentaiV1DocumentEntity>` | A list of entities detected on Document.text. For document shards, entities in this list may cros... |
| `entitiesRevisionId` | `string` | The entity revision ID that `document.entities` field is based on. If this field is set and `enti... |
| `entitiesRevisions` | `array<GoogleCloudDocumentaiV1DocumentEntitiesRevision>` | A list of entity revisions. The entity revisions are appended to the document in the processing o... |
| `entityRelations` | `array<GoogleCloudDocumentaiV1DocumentEntityRelation>` | Placeholder. Relationship among Document.entities. |
| `entityValidationOutput` | `GoogleCloudDocumentaiV1DocumentEntityValidationOutput` | The entity validation output for the document. This is the validation output for `document.entiti... |
| `error` | `GoogleRpcStatus` | Any error that occurred while processing this document. |
| `mimeType` | `string` | An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-typ... |
| `pages` | `array<GoogleCloudDocumentaiV1DocumentPage>` | Visual page layout for the Document. |
| `revisions` | `array<GoogleCloudDocumentaiV1DocumentRevision>` | Placeholder. Revision history of this document. |
| `shardInfo` | `GoogleCloudDocumentaiV1DocumentShardInfo` | Information about the sharding if this document is sharded part of a larger document. If the docu... |
| `text` | `string` | Optional. UTF-8 encoded text in reading order from the document. |
| `textChanges` | `array<GoogleCloudDocumentaiV1DocumentTextChange>` | Placeholder. A list of text corrections made to Document.text. This is usually used for annotatin... |
| `textStyles` | `array<GoogleCloudDocumentaiV1DocumentStyle>` | Styles for the Document.text. |
| `uri` | `string` | Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`.... |

### `GoogleCloudDocumentaiV1DocumentChunkedDocument`

Represents the chunks that the document is divided into.

| Property | Type | Description |
|----------|------|-------------|
| `chunks` | `array<GoogleCloudDocumentaiV1DocumentChunkedDocumentChunk>` | List of chunks. |

### `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunk`

Represents a chunk.

| Property | Type | Description |
|----------|------|-------------|
| `chunkId` | `string` | ID of the chunk. |
| `content` | `string` | Text content of the chunk. |
| `pageFooters` | `array<GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageFooter>` | Page footers associated with the chunk. |
| `pageHeaders` | `array<GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageHeader>` | Page headers associated with the chunk. |
| `pageSpan` | `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan` | Page span of the chunk. |
| `sourceBlockIds` | `array<string>` | Unused. |

### `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageFooter`

Represents the page footer associated with the chunk.

| Property | Type | Description |
|----------|------|-------------|
| `pageSpan` | `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan` | Page span of the footer. |
| `text` | `string` | Footer in text format. |

### `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageHeader`

Represents the page header associated with the chunk.

| Property | Type | Description |
|----------|------|-------------|
| `pageSpan` | `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan` | Page span of the header. |
| `text` | `string` | Header in text format. |

### `GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan`

Represents where the chunk starts and ends in the document.

| Property | Type | Description |
|----------|------|-------------|
| `pageEnd` | `integer` | Page where chunk ends in the document. |
| `pageStart` | `integer` | Page where chunk starts in the document. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayout`

Represents the parsed layout of a document as a collection of blocks that the document is divided into.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>` | List of blocks in the document. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock`

Represents a block. A block could be one of the various types (text, table, list) supported.

| Property | Type | Description |
|----------|------|-------------|
| `blockId` | `string` | ID of the block. |
| `boundingBox` | `GoogleCloudDocumentaiV1BoundingPoly` | Identifies the bounding box for the block. |
| `listBlock` | `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock` | Block consisting of list content/structure. |
| `pageSpan` | `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan` | Page span of the block. |
| `tableBlock` | `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock` | Block consisting of table content/structure. |
| `textBlock` | `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock` | Block consisting of text content. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock`

Represents a list type block.

| Property | Type | Description |
|----------|------|-------------|
| `listEntries` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry>` | List entries that constitute a list block. |
| `type` | `string` | Type of the list_entries (if exist). Available options are `ordered` and `unordered`. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry`

Represents an entry in the list.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>` | A list entry is a list of blocks. Repeated blocks support further hierarchies and nested blocks. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan`

Represents where the block starts and ends in the document.

| Property | Type | Description |
|----------|------|-------------|
| `pageEnd` | `integer` | Page where block ends in the document. |
| `pageStart` | `integer` | Page where block starts in the document. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock`

Represents a table type block.

| Property | Type | Description |
|----------|------|-------------|
| `bodyRows` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow>` | Body rows containing main table content. |
| `caption` | `string` | Table caption/title. |
| `headerRows` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow>` | Header rows at the top of the table. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell`

Represents a cell in a table row.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>` | A table cell is a list of blocks. Repeated blocks support further hierarchies and nested blocks. |
| `colSpan` | `integer` | How many columns this cell spans. |
| `rowSpan` | `integer` | How many rows this cell spans. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow`

Represents a row in a table.

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell>` | A table row is a list of table cells. |

### `GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock`

Represents a text type block.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>` | A text block could further have child blocks. Repeated blocks support further hierarchies and nes... |
| `text` | `string` | Text content stored in the block. |
| `type` | `string` | Type of the text in the block. Available options are: `paragraph`, `subtitle`, `heading-1`, `head... |

### `GoogleCloudDocumentaiV1DocumentEntitiesRevision`

Entity revision.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<GoogleCloudDocumentaiV1DocumentEntity>` | The entities in this revision. |
| `entityValidationOutput` | `GoogleCloudDocumentaiV1DocumentEntityValidationOutput` | The entity validation output for this revision. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | Optional. The history of this revision. |
| `revisionId` | `string` | The revision id. |

### `GoogleCloudDocumentaiV1DocumentEntity`

An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Optional. Confidence of detected Schema entity. Range `[0, 1]`. |
| `id` | `string` | Optional. Canonical id. This will be a unique value in the entity list for this document. |
| `mentionId` | `string` | Optional. Deprecated. Use `id` field instead. |
| `mentionText` | `string` | Optional. Text value of the entity, for example, `1600 Amphitheatre Pkwy`. |
| `method` | `string` | Optional. Specifies how the entity's value is obtained. |
| `normalizedValue` | `GoogleCloudDocumentaiV1DocumentEntityNormalizedValue` | Optional. Normalized entity value. Absent if the extracted value could not be converted or the ty... |
| `pageAnchor` | `GoogleCloudDocumentaiV1DocumentPageAnchor` | Optional. Represents the provenance of this entity wrt. the location on the page where it was found. |
| `properties` | `array<GoogleCloudDocumentaiV1DocumentEntity>` | Optional. Entities can be nested to form a hierarchical data structure representing the content i... |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | Optional. The history of this annotation. |
| `redacted` | `boolean` | Optional. Whether the entity will be redacted for de-identification purposes. |
| `textAnchor` | `GoogleCloudDocumentaiV1DocumentTextAnchor` | Optional. Provenance of the entity. Text anchor indexing into the Document.text. |
| `type` | `string` | Required. Entity type from a schema, for example, `Address`. |

### `GoogleCloudDocumentaiV1DocumentEntityNormalizedValue`

Parsed and normalized entity value.

| Property | Type | Description |
|----------|------|-------------|
| `addressValue` | `GoogleTypePostalAddress` | Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal... |
| `booleanValue` | `boolean` | Boolean value. Can be used for entities with binary values, or for checkboxes. |
| `dateValue` | `GoogleTypeDate` | Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/ma... |
| `datetimeValue` | `GoogleTypeDateTime` | DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/google... |
| `floatValue` | `number` | Float value. |
| `integerValue` | `integer` | Integer value. |
| `moneyValue` | `GoogleTypeMoney` | Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto |
| `signatureValue` | `boolean` | A signature - a graphical representation of a person's name, often used to sign a document. |
| `text` | `string` | Optional. An optional field to store a normalized string. For some entity types, one of respectiv... |

### `GoogleCloudDocumentaiV1DocumentEntityRelation`

Relationship between Entities.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | Object entity id. |
| `relation` | `string` | Relationship description. |
| `subjectId` | `string` | Subject entity id. |

### `GoogleCloudDocumentaiV1DocumentEntityValidationOutput`

The output of the validation given the document and the validation rules.

| Property | Type | Description |
|----------|------|-------------|
| `passAllRules` | `boolean` | The overall result of the validation, true if all applicable rules are valid. |
| `validationResults` | `array<GoogleCloudDocumentaiV1DocumentEntityValidationOutputValidationResult>` | The result of each validation rule. |

### `GoogleCloudDocumentaiV1DocumentEntityValidationOutputValidationResult`

Validation result for a single validation rule.

| Property | Type | Description |
|----------|------|-------------|
| `rule` | `string` | Optional. The name of the rule resource that is used for validation. Format: `projects/{project}/... |
| `ruleDescription` | `string` | The description of the validation rule. |
| `ruleName` | `string` | The display name of the validation rule. |
| `validationDetails` | `string` | The detailed information of the running the validation process using the entity from the document... |
| `validationResultType` | `string` | The result of the validation rule. |

### `GoogleCloudDocumentaiV1DocumentOutputConfig`

Config that controls the output of documents. All documents will be written as a JSON file.

| Property | Type | Description |
|----------|------|-------------|
| `gcsOutputConfig` | `GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig` | Output config to write the results to Cloud Storage. |

### `GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig`

The configuration used when outputting documents.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | Specifies which fields to include in the output documents. Only supports top level document and p... |
| `gcsUri` | `string` | The Cloud Storage uri (a directory) of the output. |
| `shardingConfig` | `GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig` | Specifies the sharding config for the output document. |

### `GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig`

The sharding config for the output document.

| Property | Type | Description |
|----------|------|-------------|
| `pagesOverlap` | `integer` | The number of overlapping pages between consecutive shards. |
| `pagesPerShard` | `integer` | The number of pages per shard. |

### `GoogleCloudDocumentaiV1DocumentPage`

A page in a Document.

| Property | Type | Description |
|----------|------|-------------|
| `blocks` | `array<GoogleCloudDocumentaiV1DocumentPageBlock>` | A list of visually detected text blocks on the page. A block has a set of lines (collected into p... |
| `detectedBarcodes` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>` | A list of detected barcodes. |
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `dimension` | `GoogleCloudDocumentaiV1DocumentPageDimension` | Physical dimension of the page. |
| `formFields` | `array<GoogleCloudDocumentaiV1DocumentPageFormField>` | A list of visually detected form fields on the page. |
| `image` | `GoogleCloudDocumentaiV1DocumentPageImage` | Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distor... |
| `imageQualityScores` | `GoogleCloudDocumentaiV1DocumentPageImageQualityScores` | Image quality scores. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for the page. |
| `lines` | `array<GoogleCloudDocumentaiV1DocumentPageLine>` | A list of visually detected text lines on the page. A collection of tokens that a human would per... |
| `pageNumber` | `integer` | 1-based index for current Page in a parent Document. Useful when a page is taken out of a Documen... |
| `paragraphs` | `array<GoogleCloudDocumentaiV1DocumentPageParagraph>` | A list of visually detected text paragraphs on the page. A collection of lines that a human would... |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this page. |
| `symbols` | `array<GoogleCloudDocumentaiV1DocumentPageSymbol>` | A list of visually detected symbols on the page. |
| `tables` | `array<GoogleCloudDocumentaiV1DocumentPageTable>` | A list of visually detected tables on the page. |
| `tokens` | `array<GoogleCloudDocumentaiV1DocumentPageToken>` | A list of visually detected tokens on the page. |
| `transforms` | `array<GoogleCloudDocumentaiV1DocumentPageMatrix>` | Transformation matrices that were applied to the original document image to produce Page.image. |
| `visualElements` | `array<GoogleCloudDocumentaiV1DocumentPageVisualElement>` | A list of detected non-text visual elements, for example, checkbox, signature etc. on the page. |

### `GoogleCloudDocumentaiV1DocumentPageAnchor`

Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.

| Property | Type | Description |
|----------|------|-------------|
| `pageRefs` | `array<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>` | One or more references to visual page elements |

### `GoogleCloudDocumentaiV1DocumentPageAnchorPageRef`

Represents a weak reference to a page element within a document.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudDocumentaiV1BoundingPoly` | Optional. Identifies the bounding polygon of a layout element on the page. If `layout_type` is se... |
| `confidence` | `number` | Optional. Confidence of detected page element, if applicable. Range `[0, 1]`. |
| `layoutId` | `string` | Optional. Deprecated. Use PageRef.bounding_poly instead. |
| `layoutType` | `string` | Optional. The type of the layout element that is being referenced if any. |
| `page` | `string` | Required. Index into the Document.pages element, for example using `Document.pages` to locate the... |

### `GoogleCloudDocumentaiV1DocumentPageBlock`

A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Block. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this annotation. |

### `GoogleCloudDocumentaiV1DocumentPageDetectedBarcode`

A detected barcode.

| Property | Type | Description |
|----------|------|-------------|
| `barcode` | `GoogleCloudDocumentaiV1Barcode` | Detailed barcode information of the DetectedBarcode. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for DetectedBarcode. |

### `GoogleCloudDocumentaiV1DocumentPageDetectedLanguage`

Detected language for a structural component.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected language. Range `[0, 1]`. |
| `languageCode` | `string` | The [BCP-47 language code](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier), such... |

### `GoogleCloudDocumentaiV1DocumentPageDimension`

Dimension for the page.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `number` | Page height. |
| `unit` | `string` | Dimension unit. |
| `width` | `number` | Page width. |

### `GoogleCloudDocumentaiV1DocumentPageFormField`

A form field detected on the page.

| Property | Type | Description |
|----------|------|-------------|
| `correctedKeyText` | `string` | Created for Labeling UI to export key text. If corrections were made to the text identified by th... |
| `correctedValueText` | `string` | Created for Labeling UI to export value text. If corrections were made to the text identified by ... |
| `fieldName` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for the FormField name. For example, `Address`, `Email`, `Grand total`, `Phone number`, etc. |
| `fieldValue` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for the FormField value. |
| `nameDetectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages for name together with confidence. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this annotation. |
| `valueDetectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages for value together with confidence. |
| `valueType` | `string` | If the value is non-textual, this field represents the type. Current valid values are: - blank (t... |

### `GoogleCloudDocumentaiV1DocumentPageImage`

Rendered image contents for this page.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Raw byte content of the image. |
| `height` | `integer` | Height of the image in pixels. |
| `mimeType` | `string` | Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml)... |
| `width` | `integer` | Width of the image in pixels. |

### `GoogleCloudDocumentaiV1DocumentPageImageQualityScores`

Image quality scores for the page image.

| Property | Type | Description |
|----------|------|-------------|
| `detectedDefects` | `array<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>` | A list of detected defects. |
| `qualityScore` | `number` | The overall quality score. Range `[0, 1]` where `1` is perfect quality. |

### `GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect`

Image Quality Defects

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defe... |
| `type` | `string` | Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy`... |

### `GoogleCloudDocumentaiV1DocumentPageLayout`

Visual element describing a layout unit on a page.

| Property | Type | Description |
|----------|------|-------------|
| `boundingPoly` | `GoogleCloudDocumentaiV1BoundingPoly` | The bounding polygon for the Layout. |
| `confidence` | `number` | Confidence of the current Layout within context of the object this layout is for. For example, co... |
| `orientation` | `string` | Detected orientation for the Layout. |
| `textAnchor` | `GoogleCloudDocumentaiV1DocumentTextAnchor` | Text anchor indexing into the Document.text. |

### `GoogleCloudDocumentaiV1DocumentPageLine`

A collection of tokens that a human would perceive as a line. Does not cross column boundaries, can be horizontal, vertical, etc.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Line. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this annotation. |

### `GoogleCloudDocumentaiV1DocumentPageMatrix`

Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.

| Property | Type | Description |
|----------|------|-------------|
| `cols` | `integer` | Number of columns in the matrix. |
| `data` | `string` | The matrix data. |
| `rows` | `integer` | Number of rows in the matrix. |
| `type` | `integer` | This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsig... |

### `GoogleCloudDocumentaiV1DocumentPageParagraph`

A collection of lines that a human would perceive as a paragraph.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Paragraph. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this annotation. |

### `GoogleCloudDocumentaiV1DocumentPageSymbol`

A detected symbol.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Symbol. |

### `GoogleCloudDocumentaiV1DocumentPageTable`

A table representation similar to HTML table structure.

| Property | Type | Description |
|----------|------|-------------|
| `bodyRows` | `array<GoogleCloudDocumentaiV1DocumentPageTableTableRow>` | Body rows of the table. |
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `headerRows` | `array<GoogleCloudDocumentaiV1DocumentPageTableTableRow>` | Header rows of the table. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Table. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this table. |

### `GoogleCloudDocumentaiV1DocumentPageTableTableCell`

A cell representation inside the table.

| Property | Type | Description |
|----------|------|-------------|
| `colSpan` | `integer` | How many columns this cell spans. |
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for TableCell. |
| `rowSpan` | `integer` | How many rows this cell spans. |

### `GoogleCloudDocumentaiV1DocumentPageTableTableRow`

A row of table cells.

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<GoogleCloudDocumentaiV1DocumentPageTableTableCell>` | Cells that make up this row. |

### `GoogleCloudDocumentaiV1DocumentPageToken`

A detected token.

| Property | Type | Description |
|----------|------|-------------|
| `detectedBreak` | `GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak` | Detected break at the end of a Token. |
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for Token. |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | The history of this annotation. |
| `styleInfo` | `GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo` | Text style attributes. |

### `GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak`

Detected break at the end of a Token.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Detected break type. |

### `GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo`

Font and other text style attributes.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `GoogleTypeColor` | Color of the background. |
| `bold` | `boolean` | Whether the text is bold (equivalent to font_weight is at least `700`). |
| `fontSize` | `integer` | Font size in points (`1` point is `¹⁄₇₂` inches). |
| `fontType` | `string` | Name or style of the font. |
| `fontWeight` | `integer` | TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`. |
| `handwritten` | `boolean` | Whether the text is handwritten. |
| `italic` | `boolean` | Whether the text is italic. |
| `letterSpacing` | `number` | Letter spacing in points. |
| `pixelFontSize` | `number` | Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`. |
| `smallcaps` | `boolean` | Whether the text is in small caps. This feature is not supported yet. |
| `strikeout` | `boolean` | Whether the text is strikethrough. This feature is not supported yet. |
| `subscript` | `boolean` | Whether the text is a subscript. This feature is not supported yet. |
| `superscript` | `boolean` | Whether the text is a superscript. This feature is not supported yet. |
| `textColor` | `GoogleTypeColor` | Color of the text. |
| `underlined` | `boolean` | Whether the text is underlined. |

### `GoogleCloudDocumentaiV1DocumentPageVisualElement`

Detected non-text visual elements, for example, checkbox, signature etc. on the page.

| Property | Type | Description |
|----------|------|-------------|
| `detectedLanguages` | `array<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>` | A list of detected languages together with confidence. |
| `layout` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for VisualElement. |
| `type` | `string` | Type of the VisualElement. |

### `GoogleCloudDocumentaiV1DocumentProvenance`

Structure to identify provenance relationships between annotations in different revisions.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | The Id of this operation. Needs to be unique within the scope of the revision. |
| `parents` | `array<GoogleCloudDocumentaiV1DocumentProvenanceParent>` | References to the original elements that are replaced. |
| `revision` | `integer` | The index of the revision that produced this element. |
| `type` | `string` | The type of provenance operation. |

### `GoogleCloudDocumentaiV1DocumentProvenanceParent`

The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | The id of the parent provenance. |
| `index` | `integer` | The index of the parent item in the corresponding item list (eg. list of entities, properties wit... |
| `revision` | `integer` | The index of the index into current revision's parent_ids list. |

### `GoogleCloudDocumentaiV1DocumentRevision`

Contains past or forward revisions of this document.

| Property | Type | Description |
|----------|------|-------------|
| `agent` | `string` | If the change was made by a person specify the name or id of that person. |
| `createTime` | `string` | The time that the revision was created, internally generated by doc proto storage at the time of ... |
| `humanReview` | `GoogleCloudDocumentaiV1DocumentRevisionHumanReview` | Human Review information of this revision. |
| `id` | `string` | Id of the revision, internally generated by doc proto storage. Unique within the context of the d... |
| `parent` | `array<integer>` | The revisions that this revision is based on. This can include one or more parent (when documents... |
| `parentIds` | `array<string>` | The revisions that this revision is based on. Must include all the ids that have anything to do w... |
| `processor` | `string` | If the annotation was made by processor identify the processor by its resource name. |

### `GoogleCloudDocumentaiV1DocumentRevisionHumanReview`

Human Review information of the document.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Human review state. For example, `requested`, `succeeded`, `rejected`. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. For example, the rejectio... |

### `GoogleCloudDocumentaiV1DocumentSchema`

The schema defines the output of the processed document by a processor.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the schema. |
| `displayName` | `string` | Display name to show users. |
| `documentPrompt` | `string` | Optional. Document level prompt provided by the user. This custom text is injected into the AI mo... |
| `entityTypes` | `array<GoogleCloudDocumentaiV1DocumentSchemaEntityType>` | Entity types of the schema. |
| `metadata` | `GoogleCloudDocumentaiV1DocumentSchemaMetadata` | Metadata of the schema. |

### `GoogleCloudDocumentaiV1DocumentSchemaEntityType`

EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

| Property | Type | Description |
|----------|------|-------------|
| `baseTypes` | `array<string>` | The entity type that this type is derived from. For now, one and only one should be set. |
| `displayName` | `string` | User defined name for the type. |
| `enumValues` | `GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues` | If specified, lists all the possible values for this entity. This should not be more than a handf... |
| `name` | `string` | Name of the type. It must be unique within the schema file and cannot be a "Common Type". The fol... |
| `properties` | `array<GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty>` | Description the nested structure, or composition of an entity. |

### `GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues`

Defines the a list of enum values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The individual values that this enum values type can include. |

### `GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty`

Defines properties that can be part of the entity type.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | User defined name for the property. |
| `method` | `string` | Specifies how the entity's value is obtained. |
| `name` | `string` | The name of the property. Follows the same guidelines as the EntityType name. |
| `occurrenceType` | `string` | Occurrence type limits the number of instances an entity type appears in the document. |
| `valueType` | `string` | A reference to the value type of the property. This type is subject to the same conventions as th... |

### `GoogleCloudDocumentaiV1DocumentSchemaMetadata`

Metadata for global schema behavior.

| Property | Type | Description |
|----------|------|-------------|
| `documentAllowMultipleLabels` | `boolean` | If true, on a given page, there can be multiple `document` annotations covering it. |
| `documentSplitter` | `boolean` | If true, a `document` entity type can be applied to subdocument (splitting). Otherwise, it can on... |
| `prefixedNamingOnProperties` | `boolean` | If set, all the nested entities must be prefixed with the parents. |
| `skipNamingValidation` | `boolean` | If set, this will skip the naming format validation in the schema. So the string values in `Docum... |

### `GoogleCloudDocumentaiV1DocumentShardInfo`

For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.

| Property | Type | Description |
|----------|------|-------------|
| `shardCount` | `string` | Total number of shards. |
| `shardIndex` | `string` | The 0-based index of this shard. |
| `textOffset` | `string` | The index of the first character in Document.text in the overall document global text. |

### `GoogleCloudDocumentaiV1DocumentStyle`

Annotation for common text style attributes. This adheres to CSS conventions as much as possible.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `GoogleTypeColor` | Text background color. |
| `color` | `GoogleTypeColor` | Text color. |
| `fontFamily` | `string` | Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-fam... |
| `fontSize` | `GoogleCloudDocumentaiV1DocumentStyleFontSize` | Font size. |
| `fontWeight` | `string` | [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`,... |
| `textAnchor` | `GoogleCloudDocumentaiV1DocumentTextAnchor` | Text anchor indexing into the Document.text. |
| `textDecoration` | `string` | [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS stan... |
| `textStyle` | `string` | [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `norma... |

### `GoogleCloudDocumentaiV1DocumentStyleFontSize`

Font size with unit.

| Property | Type | Description |
|----------|------|-------------|
| `size` | `number` | Font size for the text. |
| `unit` | `string` | Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`). |

### `GoogleCloudDocumentaiV1DocumentTextAnchor`

Text reference indexing into the Document.text.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Contains the content of the text span so that users do not have to look it up in the text_segment... |
| `textSegments` | `array<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>` | The text segments from the Document.text. |

### `GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment`

A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | TextSegment half open end UTF-8 char index in the Document.text. |
| `startIndex` | `string` | TextSegment start UTF-8 char index in the Document.text. |

### `GoogleCloudDocumentaiV1DocumentTextChange`

This message is used for text changes aka. OCR corrections.

| Property | Type | Description |
|----------|------|-------------|
| `changedText` | `string` | The text that replaces the text identified in the `text_anchor`. |
| `provenance` | `array<GoogleCloudDocumentaiV1DocumentProvenance>` | The history of this annotation. |
| `textAnchor` | `GoogleCloudDocumentaiV1DocumentTextAnchor` | Provenance of the correction. Text anchor indexing into the Document.text. There can only be a si... |

### `GoogleCloudDocumentaiV1Documents`

A set of inline documents.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<GoogleCloudDocumentaiV1Document>` | The list of documents. |

### `GoogleCloudDocumentaiV1EnableProcessorMetadata`

The long-running operation metadata for the EnableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1EnableProcessorRequest`

Request message for the EnableProcessor method.

### `GoogleCloudDocumentaiV1EnableProcessorResponse`

Response message for the EnableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiV1EvaluateProcessorVersionMetadata`

Metadata of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest`

Evaluates the given ProcessorVersion against the supplied documents.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationDocuments` | `GoogleCloudDocumentaiV1BatchDocumentsInputConfig` | Optional. The documents used in the evaluation. If unspecified, use the processor's dataset as ev... |

### `GoogleCloudDocumentaiV1EvaluateProcessorVersionResponse`

Response of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `evaluation` | `string` | The resource name of the created evaluation. |

### `GoogleCloudDocumentaiV1Evaluation`

An evaluation of a ProcessorVersion's performance.

| Property | Type | Description |
|----------|------|-------------|
| `allEntitiesMetrics` | `GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics` | Metrics for all the entities in aggregate. |
| `createTime` | `string` | The time that the evaluation was created. |
| `documentCounters` | `GoogleCloudDocumentaiV1EvaluationCounters` | Counters for the documents used in the evaluation. |
| `entityMetrics` | `object` | Metrics across confidence levels, for different entities. |
| `kmsKeyName` | `string` | The KMS key name used for encryption. |
| `kmsKeyVersionName` | `string` | The KMS key version with which data is encrypted. |
| `name` | `string` | The resource name of the evaluation. Format: `projects/{project}/locations/{location}/processors/... |
| `revisions` | `array<GoogleCloudDocumentaiV1EvaluationEvaluationRevision>` | Contains all revisions of the evaluation, excluding the latest one. |

### `GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics`

Evaluations metrics, at a specific confidence level.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceLevel` | `number` | The confidence level. |
| `metrics` | `GoogleCloudDocumentaiV1EvaluationMetrics` | The metrics at the specific confidence level. |

### `GoogleCloudDocumentaiV1EvaluationCounters`

Evaluation counters for the documents that were used.

| Property | Type | Description |
|----------|------|-------------|
| `evaluatedDocumentsCount` | `integer` | How many documents were used in the evaluation. |
| `failedDocumentsCount` | `integer` | How many documents were not included in the evaluation as Document AI failed to process them. |
| `inputDocumentsCount` | `integer` | How many documents were sent for evaluation. |
| `invalidDocumentsCount` | `integer` | How many documents were not included in the evaluation as they didn't pass validation. |

### `GoogleCloudDocumentaiV1EvaluationEvaluationRevision`

A revision of the evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `allEntitiesMetrics` | `GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics` | Output only. Metrics for all the entities in aggregate. |
| `documentCounters` | `GoogleCloudDocumentaiV1EvaluationCounters` | Output only. Counters for the documents used in the evaluation. |
| `entityMetrics` | `object` | Output only. Metrics across confidence levels, for different entities. |
| `revisionId` | `string` | Output only. The revision ID of the evaluation. |

### `GoogleCloudDocumentaiV1EvaluationMetrics`

Evaluation metrics, either in aggregate or about a specific entity.

| Property | Type | Description |
|----------|------|-------------|
| `f1Score` | `number` | The calculated F1 score. |
| `falseNegativesCount` | `integer` | The amount of false negatives. |
| `falsePositivesCount` | `integer` | The amount of false positives. |
| `groundTruthDocumentCount` | `integer` | The amount of documents with a ground truth occurrence. |
| `groundTruthOccurrencesCount` | `integer` | The amount of occurrences in ground truth documents. |
| `precision` | `number` | The calculated precision. |
| `predictedDocumentCount` | `integer` | The amount of documents with a predicted occurrence. |
| `predictedOccurrencesCount` | `integer` | The amount of occurrences in predicted documents. |
| `recall` | `number` | The calculated recall. |
| `totalDocumentsCount` | `integer` | The amount of documents that had an occurrence of this label. |
| `truePositivesCount` | `integer` | The amount of true positives. |

### `GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics`

Metrics across multiple confidence levels.

| Property | Type | Description |
|----------|------|-------------|
| `auprc` | `number` | The calculated area under the precision recall curve (AUPRC), computed by integrating over all co... |
| `auprcExact` | `number` | The AUPRC for metrics with fuzzy matching disabled, i.e., exact matching only. |
| `confidenceLevelMetrics` | `array<GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>` | Metrics across confidence levels with fuzzy matching enabled. |
| `confidenceLevelMetricsExact` | `array<GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>` | Metrics across confidence levels with only exact matching. |
| `estimatedCalibrationError` | `number` | The Estimated Calibration Error (ECE) of the confidence of the predicted entities. |
| `estimatedCalibrationErrorExact` | `number` | The ECE for the predicted entities with fuzzy matching disabled, i.e., exact matching only. |
| `metricsType` | `string` | The metrics type for the label. |

### `GoogleCloudDocumentaiV1EvaluationReference`

Gives a short summary of an evaluation, and links to the evaluation itself.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateMetrics` | `GoogleCloudDocumentaiV1EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching on. |
| `aggregateMetricsExact` | `GoogleCloudDocumentaiV1EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching off. |
| `evaluation` | `string` | The resource name of the evaluation. |
| `operation` | `string` | The resource name of the Long Running Operation for the evaluation. |

### `GoogleCloudDocumentaiV1FetchProcessorTypesResponse`

Response message for the FetchProcessorTypes method.

| Property | Type | Description |
|----------|------|-------------|
| `processorTypes` | `array<GoogleCloudDocumentaiV1ProcessorType>` | The list of processor types. |

### `GoogleCloudDocumentaiV1GcsDocument`

Specifies a document stored on Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | The Cloud Storage object uri. |
| `mimeType` | `string` | An IANA MIME type (RFC6838) of the content. |

### `GoogleCloudDocumentaiV1GcsDocuments`

Specifies a set of documents on Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<GoogleCloudDocumentaiV1GcsDocument>` | The list of documents. |

### `GoogleCloudDocumentaiV1GcsPrefix`

Specifies all documents on Cloud Storage with a common prefix.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUriPrefix` | `string` | The URI prefix. |

### `GoogleCloudDocumentaiV1GenerateSchemaVersionRequest`

Request message for GenerateSchemaVersion.

| Property | Type | Description |
|----------|------|-------------|
| `baseSchemaVersion` | `string` | The base schema version name to use for the schema generation. Format: `projects/{project}/locati... |
| `gcsDocuments` | `GoogleCloudDocumentaiV1GcsDocuments` | The set of documents placed on Cloud Storage. |
| `gcsPrefix` | `GoogleCloudDocumentaiV1GcsPrefix` | The common prefix of documents placed on Cloud Storage. |
| `generateSchemaVersionParams` | `GoogleCloudDocumentaiV1GenerateSchemaVersionRequestGenerateSchemaVersionParams` | Optional. User specified parameters for the schema generation. |
| `inlineDocuments` | `GoogleCloudDocumentaiV1Documents` | The set of documents specified inline. For each document, its `uri` or `content` field must be set. |
| `rawDocuments` | `GoogleCloudDocumentaiV1RawDocuments` | The set of raw documents. |

### `GoogleCloudDocumentaiV1GenerateSchemaVersionRequestGenerateSchemaVersionParams`

The parameters for the schema generation.

| Property | Type | Description |
|----------|------|-------------|
| `history` | `GoogleCloudDocumentaiV1SchemaGenerationHistory` | Optional. Previous prompt-answers in a chronological order. |
| `prompt` | `string` | Optional. The prompt used for the schema generation. |

### `GoogleCloudDocumentaiV1GenerateSchemaVersionResponse`

Response message for GenerateSchemaVersion.

| Property | Type | Description |
|----------|------|-------------|
| `schemaVersion` | `GoogleCloudDocumentaiV1SchemaVersion` | The schema version generated by the model. |

### `GoogleCloudDocumentaiV1HumanReviewStatus`

The status of human review on a processed document.

| Property | Type | Description |
|----------|------|-------------|
| `humanReviewOperation` | `string` | The name of the operation triggered by the processed document. This field is populated only when ... |
| `state` | `string` | The state of human review on the processing request. |
| `stateMessage` | `string` | A message providing more details about the human review state. |

### `GoogleCloudDocumentaiV1ListEvaluationsResponse`

The response from `ListEvaluations`.

| Property | Type | Description |
|----------|------|-------------|
| `evaluations` | `array<GoogleCloudDocumentaiV1Evaluation>` | The evaluations requested. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudDocumentaiV1ListProcessorTypesResponse`

Response message for the ListProcessorTypes method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Points to the next page, otherwise empty. |
| `processorTypes` | `array<GoogleCloudDocumentaiV1ProcessorType>` | The processor types. |

### `GoogleCloudDocumentaiV1ListProcessorVersionsResponse`

Response message for the ListProcessorVersions method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Points to the next processor, otherwise empty. |
| `processorVersions` | `array<GoogleCloudDocumentaiV1ProcessorVersion>` | The list of processors. |

### `GoogleCloudDocumentaiV1ListProcessorsResponse`

Response message for the ListProcessors method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Points to the next processor, otherwise empty. |
| `processors` | `array<GoogleCloudDocumentaiV1Processor>` | The list of processors. |

### `GoogleCloudDocumentaiV1ListSchemaVersionsResponse`

Response message for ListSchemaVersions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Points to the next SchemaVersion, otherwise empty. |
| `schemaVersions` | `array<GoogleCloudDocumentaiV1SchemaVersion>` | The list of SchemaVersions. |

### `GoogleCloudDocumentaiV1ListSchemasResponse`

Response message for ListSchemas.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Points to the next Schema, otherwise empty. |
| `schemas` | `array<GoogleCloudDocumentaiV1NextSchema>` | The list of Schemas. |

### `GoogleCloudDocumentaiV1NextSchema`

NextSchema is a collection of SchemaVersions.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the Schema was created. |
| `displayName` | `string` | Required. The user-defined name of the Schema. |
| `labels` | `object` | Optional. The {{gcp_name_short}} labels for the Schema. |
| `name` | `string` | Identifier. The resource name of the Schema. Format: `projects/{project}/locations/{location}/sch... |
| `updateTime` | `string` | Output only. The time when the Schema was last updated. |

### `GoogleCloudDocumentaiV1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate (starts from the top of the image). |

### `GoogleCloudDocumentaiV1OcrConfig`

Config for Document OCR.

| Property | Type | Description |
|----------|------|-------------|
| `advancedOcrOptions` | `array<string>` | A list of advanced OCR options to further fine-tune OCR behavior. Current valid values are: - `le... |
| `computeStyleInfo` | `boolean` | Turn on font identification model and return font style information. Deprecated, use PremiumFeatu... |
| `disableCharacterBoxesDetection` | `boolean` | Turn off character box detector in OCR engine. Character box detection is enabled by default in O... |
| `enableImageQualityScores` | `boolean` | Enables intelligent document quality scores after OCR. Can help with diagnosing why OCR responses... |
| `enableNativePdfParsing` | `boolean` | Enables special handling for PDFs with existing text information. Results in better text extracti... |
| `enableSymbol` | `boolean` | Includes symbol level OCR information if set to true. |
| `hints` | `GoogleCloudDocumentaiV1OcrConfigHints` | Hints for the OCR model. |
| `premiumFeatures` | `GoogleCloudDocumentaiV1OcrConfigPremiumFeatures` | Configurations for premium OCR features. |

### `GoogleCloudDocumentaiV1OcrConfigHints`

Hints for OCR Engine

| Property | Type | Description |
|----------|------|-------------|
| `languageHints` | `array<string>` | List of BCP-47 language codes to use for OCR. In most cases, not specifying it yields the best re... |

### `GoogleCloudDocumentaiV1OcrConfigPremiumFeatures`

Configurations for premium OCR features.

| Property | Type | Description |
|----------|------|-------------|
| `computeStyleInfo` | `boolean` | Turn on font identification model and return font style information. |
| `enableMathOcr` | `boolean` | Turn on the model that can extract LaTeX math formulas. |
| `enableSelectionMarkDetection` | `boolean` | Turn on selection mark detector in OCR engine. Only available in OCR 2.0 (and later) processors. |

### `GoogleCloudDocumentaiV1ProcessOptions`

Options for Process API

| Property | Type | Description |
|----------|------|-------------|
| `fromEnd` | `integer` | Only process certain pages from the end, same as above. |
| `fromStart` | `integer` | Only process certain pages from the start. Process all if the document has fewer pages. |
| `individualPageSelector` | `GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector` | Which pages to process (1-indexed). |
| `layoutConfig` | `GoogleCloudDocumentaiV1ProcessOptionsLayoutConfig` | Optional. Only applicable to `LAYOUT_PARSER_PROCESSOR`. Returns error if set on other processor t... |
| `ocrConfig` | `GoogleCloudDocumentaiV1OcrConfig` | Only applicable to `OCR_PROCESSOR` and `FORM_PARSER_PROCESSOR`. Returns error if set on other pro... |
| `schemaOverride` | `GoogleCloudDocumentaiV1DocumentSchema` | Optional. Override the schema of the ProcessorVersion. Will return an Invalid Argument error if t... |

### `GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector`

A list of individual page numbers.

| Property | Type | Description |
|----------|------|-------------|
| `pages` | `array<integer>` | Optional. Indices of the pages (starting from 1). |

### `GoogleCloudDocumentaiV1ProcessOptionsLayoutConfig`

Serving config for layout parser processor.

| Property | Type | Description |
|----------|------|-------------|
| `chunkingConfig` | `GoogleCloudDocumentaiV1ProcessOptionsLayoutConfigChunkingConfig` | Optional. Config for chunking in layout parser processor. |
| `enableImageAnnotation` | `boolean` | Optional. Whether to include image annotations in layout parser response. |
| `enableTableAnnotation` | `boolean` | Optional. Whether to include table annotations in layout parser response. |
| `returnBoundingBoxes` | `boolean` | Optional. Whether to include bounding boxes in layout parser processor response. |
| `returnImages` | `boolean` | Optional. Whether to include images in layout parser processor response. |

### `GoogleCloudDocumentaiV1ProcessOptionsLayoutConfigChunkingConfig`

Serving config for chunking.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSize` | `integer` | Optional. The chunk sizes to use when splitting documents, in order of level. |
| `includeAncestorHeadings` | `boolean` | Optional. Whether or not to include ancestor headings when splitting. |

### `GoogleCloudDocumentaiV1ProcessRequest`

Request message for the ProcessDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | Specifies which fields to include in the ProcessResponse.document output. Only supports top-level... |
| `gcsDocument` | `GoogleCloudDocumentaiV1GcsDocument` | A raw document on Google Cloud Storage. |
| `imagelessMode` | `boolean` | Optional. Option to remove images from the document. |
| `inlineDocument` | `GoogleCloudDocumentaiV1Document` | An inline document proto. |
| `labels` | `object` | Optional. The labels with user-defined metadata for the request. Label keys and values can be no ... |
| `processOptions` | `GoogleCloudDocumentaiV1ProcessOptions` | Inference-time options for the process API |
| `rawDocument` | `GoogleCloudDocumentaiV1RawDocument` | A raw document content (bytes). |
| `skipHumanReview` | `boolean` | Whether human review should be skipped for this request. Default to `false`. |

### `GoogleCloudDocumentaiV1ProcessResponse`

Response message for the ProcessDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `GoogleCloudDocumentaiV1Document` | The document payload, will populate fields based on the processor's behavior. |
| `humanReviewStatus` | `GoogleCloudDocumentaiV1HumanReviewStatus` | The status of human review on the processed document. |

### `GoogleCloudDocumentaiV1Processor`

The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.

| Property | Type | Description |
|----------|------|-------------|
| `activeSchemaVersion` | `string` | Optional. SchemaVersion used by the Processor. It is the same as Processor's DatasetSchema.schema... |
| `createTime` | `string` | Output only. The time the processor was created. |
| `defaultProcessorVersion` | `string` | The default processor version. |
| `displayName` | `string` | The display name of the processor. |
| `kmsKeyName` | `string` | The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryptio... |
| `name` | `string` | Output only. Immutable. The resource name of the processor. Format: `projects/{project}/locations... |
| `processEndpoint` | `string` | Output only. Immutable. The http endpoint that can be called to invoke processing. |
| `processorVersionAliases` | `array<GoogleCloudDocumentaiV1ProcessorVersionAlias>` | Output only. The processor version aliases. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the processor. |
| `type` | `string` | The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor typ... |

### `GoogleCloudDocumentaiV1ProcessorType`

A processor type is responsible for performing a certain document understanding task on a certain type of document.

| Property | Type | Description |
|----------|------|-------------|
| `allowCreation` | `boolean` | Whether the processor type allows creation. If true, users can create a processor of this process... |
| `availableLocations` | `array<GoogleCloudDocumentaiV1ProcessorTypeLocationInfo>` | The locations in which this processor is available. |
| `category` | `string` | The processor category, used by UI to group processor types. |
| `launchStage` | `string` | Launch stage of the processor type |
| `name` | `string` | The resource name of the processor type. Format: `projects/{project}/processorTypes/{processor_ty... |
| `sampleDocumentUris` | `array<string>` | A set of Cloud Storage URIs of sample documents for this processor. |
| `type` | `string` | The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. |

### `GoogleCloudDocumentaiV1ProcessorTypeLocationInfo`

The location information about where the processor is available.

| Property | Type | Description |
|----------|------|-------------|
| `locationId` | `string` | The location ID. For supported locations, refer to [regional and multi-regional support](/documen... |

### `GoogleCloudDocumentaiV1ProcessorVersion`

A processor version is an implementation of a processor. Each processor can have multiple versions, pretrained by Google internally or uptrained by the customer. A processor can only have one default version at a time. Its document-processing behavior is defined by that version.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the processor version was created. |
| `deprecationInfo` | `GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo` | Output only. If set, information about the eventual deprecation of this version. |
| `displayName` | `string` | The display name of the processor version. |
| `documentSchema` | `GoogleCloudDocumentaiV1DocumentSchema` | Output only. The schema of the processor version. Describes the output. |
| `genAiModelInfo` | `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfo` | Output only. Information about Generative AI model-based processor versions. |
| `googleManaged` | `boolean` | Output only. Denotes that this `ProcessorVersion` is managed by Google. |
| `kmsKeyName` | `string` | Output only. The KMS key name used for encryption. |
| `kmsKeyVersionName` | `string` | Output only. The KMS key version with which data is encrypted. |
| `latestEvaluation` | `GoogleCloudDocumentaiV1EvaluationReference` | Output only. The most recently invoked evaluation for the processor version. |
| `modelType` | `string` | Output only. The model type of this processor version. |
| `name` | `string` | Identifier. The resource name of the processor version. Format: `projects/{project}/locations/{lo... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the processor version. |

### `GoogleCloudDocumentaiV1ProcessorVersionAlias`

Contains the alias and the aliased resource name of processor version.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | The alias in the form of `processor_version` resource name. |
| `processorVersion` | `string` | The resource name of aliased processor version. |

### `GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo`

Information about the upcoming deprecation of this processor version.

| Property | Type | Description |
|----------|------|-------------|
| `deprecationTime` | `string` | The time at which this processor version will be deprecated. |
| `replacementProcessorVersion` | `string` | If set, the processor version that will be used as a replacement. |

### `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfo`

Information about Generative AI model-based processor versions.

| Property | Type | Description |
|----------|------|-------------|
| `customGenAiModelInfo` | `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfoCustomGenAiModelInfo` | Information for a custom Generative AI model created by the user. |
| `foundationGenAiModelInfo` | `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo` | Information for a pretrained Google-managed foundation model. |

### `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfoCustomGenAiModelInfo`

Information for a custom Generative AI model created by the user. These are created with `Create New Version` in either the `Call foundation model` or `Fine tuning` tabs.

| Property | Type | Description |
|----------|------|-------------|
| `baseProcessorVersionId` | `string` | The base processor version ID for the custom model. |
| `customModelType` | `string` | The type of custom model created by the user. |

### `GoogleCloudDocumentaiV1ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo`

Information for a pretrained Google-managed foundation model.

| Property | Type | Description |
|----------|------|-------------|
| `finetuningAllowed` | `boolean` | Whether fine tuning is allowed for this base processor version. |
| `minTrainLabeledDocuments` | `integer` | The minimum number of labeled documents in the training dataset required for fine tuning. |

### `GoogleCloudDocumentaiV1RawDocument`

Payload message of raw document content (bytes).

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Inline document content. |
| `displayName` | `string` | The display name of the document, it supports all Unicode characters except the following: `*`, `... |
| `mimeType` | `string` | An IANA MIME type (RFC6838) indicating the nature and format of the content. |

### `GoogleCloudDocumentaiV1RawDocuments`

Specifies a set of raw documents.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<GoogleCloudDocumentaiV1RawDocument>` | Specifies raw document content and mime type. |

### `GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata`

The long-running operation metadata for the ReviewDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `questionId` | `string` | The Crowd Compute question ID. |

### `GoogleCloudDocumentaiV1ReviewDocumentRequest`

Request message for the ReviewDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `documentSchema` | `GoogleCloudDocumentaiV1DocumentSchema` | The document schema of the human review task. |
| `enableSchemaValidation` | `boolean` | Whether the validation should be performed on the ad-hoc review request. |
| `inlineDocument` | `GoogleCloudDocumentaiV1Document` | An inline document proto. |
| `priority` | `string` | The priority of the human review task. |

### `GoogleCloudDocumentaiV1ReviewDocumentResponse`

Response message for the ReviewDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `string` | The Cloud Storage uri for the human reviewed document if the review is succeeded. |
| `rejectionReason` | `string` | The reason why the review is rejected by reviewer. |
| `state` | `string` | The state of the review operation. |

### `GoogleCloudDocumentaiV1SchemaGenerationHistory`

The history of schema generation iterations.

| Property | Type | Description |
|----------|------|-------------|
| `iterations` | `array<GoogleCloudDocumentaiV1SchemaGenerationIteration>` | Required. Previous prompt-answers in a chronological order. |

### `GoogleCloudDocumentaiV1SchemaGenerationIteration`

A single iteration of the schema generation.

| Property | Type | Description |
|----------|------|-------------|
| `adjustedSchema` | `GoogleCloudDocumentaiV1SchemaVersion` | Optional. The previous schema version adjusted by the model. |
| `generatedSchema` | `GoogleCloudDocumentaiV1SchemaVersion` | Required. The schema version generated by the model. |
| `prompt` | `string` | Optional. The prompt used for the iteration. |

### `GoogleCloudDocumentaiV1SchemaVersion`

SchemaVersion is a version of the Schema which is created in SchemaGroup.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the SchemaVersion was created. |
| `displayName` | `string` | Required. The user-defined name of the SchemaVersion. |
| `labels` | `object` | Optional. The {{gcp_name_short}} labels for the SchemaVersion. |
| `name` | `string` | Identifier. The resource name of the SchemaVersion. Format: `projects/{project}/locations/{locati... |
| `schema` | `GoogleCloudDocumentaiV1DocumentSchema` | Required. The schema of the SchemaVersion. |

### `GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata`

The long-running operation metadata for the SetDefaultProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest`

Request message for the SetDefaultProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `defaultProcessorVersion` | `string` | Required. The resource name of child ProcessorVersion to use as default. Format: `projects/{proje... |

### `GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse`

Response message for the SetDefaultProcessorVersion method.

### `GoogleCloudDocumentaiV1TrainProcessorVersionMetadata`

The metadata that represents a processor version being created.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `testDatasetValidation` | `GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation` | The test dataset validation information. |
| `trainingDatasetValidation` | `GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation` | The training dataset validation information. |

### `GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation`

The dataset validation information. This includes any and all errors with documents and the dataset.

| Property | Type | Description |
|----------|------|-------------|
| `datasetErrorCount` | `integer` | The total number of dataset errors. |
| `datasetErrors` | `array<GoogleRpcStatus>` | Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A ... |
| `documentErrorCount` | `integer` | The total number of document errors. |
| `documentErrors` | `array<GoogleRpcStatus>` | Error information pertaining to specific documents. A maximum of 10 document errors will be retur... |

### `GoogleCloudDocumentaiV1TrainProcessorVersionRequest`

Request message for the TrainProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `baseProcessorVersion` | `string` | Optional. The processor version to use as a base for training. This processor version must be a c... |
| `customDocumentExtractionOptions` | `GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions` | Options to control Custom Document Extraction (CDE) Processor. |
| `documentSchema` | `GoogleCloudDocumentaiV1DocumentSchema` | Optional. The schema the processor version will be trained with. |
| `foundationModelTuningOptions` | `GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions` | Options to control foundation model tuning of a processor. |
| `inputData` | `GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData` | Optional. The input data used to train the ProcessorVersion. |
| `processorVersion` | `GoogleCloudDocumentaiV1ProcessorVersion` | Required. The processor version to be created. |

### `GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions`

Options to control the training of the Custom Document Extraction (CDE) Processor.

| Property | Type | Description |
|----------|------|-------------|
| `trainingMethod` | `string` | Optional. Training method to use for CDE training. |

### `GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions`

Options to control foundation model tuning of the processor.

| Property | Type | Description |
|----------|------|-------------|
| `learningRateMultiplier` | `number` | Optional. The multiplier to apply to the recommended learning rate. Valid values are between 0.1 ... |
| `trainSteps` | `integer` | Optional. The number of steps to run for model tuning. Valid values are between 1 and 400. If not... |

### `GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData`

The input data used to train a new ProcessorVersion.

| Property | Type | Description |
|----------|------|-------------|
| `testDocuments` | `GoogleCloudDocumentaiV1BatchDocumentsInputConfig` | The documents used for testing the trained version. |
| `trainingDocuments` | `GoogleCloudDocumentaiV1BatchDocumentsInputConfig` | The documents used for training the new version. |

### `GoogleCloudDocumentaiV1TrainProcessorVersionResponse`

The response for TrainProcessorVersion.

| Property | Type | Description |
|----------|------|-------------|
| `processorVersion` | `string` | The resource name of the processor version produced by training. |

### `GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata`

The long-running operation metadata for the UndeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1UndeployProcessorVersionRequest`

Request message for the UndeployProcessorVersion method.

### `GoogleCloudDocumentaiV1UndeployProcessorVersionResponse`

Response message for the UndeployProcessorVersion method.

### `GoogleCloudDocumentaiV1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate (starts from the top of the image). |

### `GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `errorDocumentCount` | `integer` | Total number of documents that failed to be deleted in storage. |
| `individualBatchDeleteStatuses` | `array<GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus>` | The list of response details of each document. |
| `totalDocumentCount` | `integer` | Total number of documents deleting from dataset. |

### `GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus`

The status of each individual document in the batch delete process.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `GoogleCloudDocumentaiV1beta3DocumentId` | The document id of the document. |
| `status` | `GoogleRpcStatus` | The status of deleting the document in storage. |

### `GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsResponse`

Response of the delete documents operation.

### `GoogleCloudDocumentaiV1beta3BatchProcessMetadata`

The long-running operation metadata for BatchProcessDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the operation. |
| `individualProcessStatuses` | `array<GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>` | The list of response details of each document. |
| `state` | `string` | The state of the current batch processing. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. For example, the error me... |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus`

The status of a each individual document in the batch process.

| Property | Type | Description |
|----------|------|-------------|
| `humanReviewOperation` | `string` | The name of the operation triggered by the processed document. If the human review process isn't ... |
| `humanReviewStatus` | `GoogleCloudDocumentaiV1beta3HumanReviewStatus` | The status of human review on the processed document. |
| `inputGcsSource` | `string` | The source of the document, same as the input_gcs_source field in the request when the batch proc... |
| `outputGcsDestination` | `string` | The Cloud Storage output destination (in the request as DocumentOutputConfig.GcsOutputConfig.gcs_... |
| `status` | `GoogleRpcStatus` | The status processing the document. |

### `GoogleCloudDocumentaiV1beta3BatchProcessResponse`

Response message for BatchProcessDocuments.

### `GoogleCloudDocumentaiV1beta3CommonOperationMetadata`

The common metadata for long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the operation. |
| `resource` | `string` | A related resource to this operation. |
| `state` | `string` | The state of the operation. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiV1beta3Dataset`

A singleton resource under a Processor which configures a collection of documents.

| Property | Type | Description |
|----------|------|-------------|
| `documentWarehouseConfig` | `GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig` | Optional. Deprecated. Warehouse-based dataset configuration is not supported. |
| `gcsManagedConfig` | `GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig` | Optional. User-managed Cloud Storage dataset configuration. Use this configuration if the dataset... |
| `name` | `string` | Dataset resource name. Format: `projects/{project}/locations/{location}/processors/{processor}/da... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Required. State of the dataset. Ignored when updating dataset. |
| `unmanagedDatasetConfig` | `GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig` | Optional. Unmanaged dataset configuration. Use this configuration if the dataset documents are ma... |

### `GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig`

Configuration specific to the Document AI Warehouse-based implementation.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `string` | Output only. The collection in Document AI Warehouse associated with the dataset. |
| `schema` | `string` | Output only. The schema in Document AI Warehouse associated with the dataset. |

### `GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig`

Configuration specific to the Cloud Storage-based implementation.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `GoogleCloudDocumentaiV1beta3GcsPrefix` | Required. The Cloud Storage URI (a directory) where the documents belonging to the dataset must b... |

### `GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig`

Configuration specific to an unmanaged dataset.

### `GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata`

The long-running operation metadata for the DeleteProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata`

The long-running operation metadata for the DeleteProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata`

The long-running operation metadata for the DeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse`

Response message for the DeployProcessorVersion method.

### `GoogleCloudDocumentaiV1beta3DisableProcessorMetadata`

The long-running operation metadata for the DisableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3DisableProcessorResponse`

Response message for the DisableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiV1beta3DocumentId`

Document Identifier.

| Property | Type | Description |
|----------|------|-------------|
| `gcsManagedDocId` | `GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId` | A document id within user-managed Cloud Storage. |
| `revisionRef` | `GoogleCloudDocumentaiV1beta3RevisionRef` | Points to a specific revision of the document if set. |
| `unmanagedDocId` | `GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId` | A document id within unmanaged dataset. |

### `GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId`

Identifies a document uniquely within the scope of a dataset in the user-managed Cloud Storage option.

| Property | Type | Description |
|----------|------|-------------|
| `cwDocId` | `string` | Id of the document (indexed) managed by Content Warehouse. |
| `gcsUri` | `string` | Required. The Cloud Storage URI where the actual document is stored. |

### `GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId`

Identifies a document uniquely within the scope of a dataset in unmanaged option.

| Property | Type | Description |
|----------|------|-------------|
| `docId` | `string` | Required. The id of the document. |

### `GoogleCloudDocumentaiV1beta3DocumentSchema`

The schema defines the output of the processed document by a processor.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the schema. |
| `displayName` | `string` | Display name to show users. |
| `documentPrompt` | `string` | Optional. Document level prompt provided by the user. This custom text is injected into the AI mo... |
| `entityTypes` | `array<GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType>` | Entity types of the schema. |
| `metadata` | `GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata` | Metadata of the schema. |

### `GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType`

EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

| Property | Type | Description |
|----------|------|-------------|
| `baseTypes` | `array<string>` | The entity type that this type is derived from. For now, one and only one should be set. |
| `description` | `string` | The description of the entity type. Could be used to provide more information about the entity ty... |
| `displayName` | `string` | User defined name for the type. |
| `entityTypeMetadata` | `GoogleCloudDocumentaiV1beta3EntityTypeMetadata` | Metadata for the entity type. |
| `enumValues` | `GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues` | If specified, lists all the possible values for this entity. This should not be more than a handf... |
| `name` | `string` | Name of the type. It must be unique within the schema file and cannot be a "Common Type". The fol... |
| `properties` | `array<GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty>` | Description the nested structure, or composition of an entity. |

### `GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues`

Defines the a list of enum values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The individual values that this enum values type can include. |

### `GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty`

Defines properties that can be part of the entity type.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the property. Could be used to provide more information about the property for... |
| `displayName` | `string` | User defined name for the property. |
| `method` | `string` | Specifies how the entity's value is obtained. |
| `name` | `string` | The name of the property. Follows the same guidelines as the EntityType name. |
| `occurrenceType` | `string` | Occurrence type limits the number of instances an entity type appears in the document. |
| `propertyMetadata` | `GoogleCloudDocumentaiV1beta3PropertyMetadata` | Any additional metadata about the property can be added here. |
| `valueType` | `string` | A reference to the value type of the property. This type is subject to the same conventions as th... |

### `GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata`

Metadata for global schema behavior.

| Property | Type | Description |
|----------|------|-------------|
| `documentAllowMultipleLabels` | `boolean` | If true, on a given page, there can be multiple `document` annotations covering it. |
| `documentSplitter` | `boolean` | If true, a `document` entity type can be applied to subdocument (splitting). Otherwise, it can on... |
| `prefixedNamingOnProperties` | `boolean` | If set, all the nested entities must be prefixed with the parents. |
| `skipNamingValidation` | `boolean` | If set, this will skip the naming format validation in the schema. So the string values in `Docum... |

### `GoogleCloudDocumentaiV1beta3EnableProcessorMetadata`

The long-running operation metadata for the EnableProcessor method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3EnableProcessorResponse`

Response message for the EnableProcessor method. Intentionally empty proto for adding fields in future.

### `GoogleCloudDocumentaiV1beta3EntityTypeMetadata`

Metadata about an entity type.

| Property | Type | Description |
|----------|------|-------------|
| `inactive` | `boolean` | Whether the entity type should be considered inactive. |

### `GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata`

Metadata of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse`

Response of the EvaluateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `evaluation` | `string` | The resource name of the created evaluation. |

### `GoogleCloudDocumentaiV1beta3EvaluationMetrics`

Evaluation metrics, either in aggregate or about a specific entity.

| Property | Type | Description |
|----------|------|-------------|
| `f1Score` | `number` | The calculated F1 score. |
| `falseNegativesCount` | `integer` | The amount of false negatives. |
| `falsePositivesCount` | `integer` | The amount of false positives. |
| `groundTruthDocumentCount` | `integer` | The amount of documents with a ground truth occurrence. |
| `groundTruthOccurrencesCount` | `integer` | The amount of occurrences in ground truth documents. |
| `precision` | `number` | The calculated precision. |
| `predictedDocumentCount` | `integer` | The amount of documents with a predicted occurrence. |
| `predictedOccurrencesCount` | `integer` | The amount of occurrences in predicted documents. |
| `recall` | `number` | The calculated recall. |
| `totalDocumentsCount` | `integer` | The amount of documents that had an occurrence of this label. |
| `truePositivesCount` | `integer` | The amount of true positives. |

### `GoogleCloudDocumentaiV1beta3EvaluationReference`

Gives a short summary of an evaluation, and links to the evaluation itself.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateMetrics` | `GoogleCloudDocumentaiV1beta3EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching on. |
| `aggregateMetricsExact` | `GoogleCloudDocumentaiV1beta3EvaluationMetrics` | An aggregate of the statistics for the evaluation with fuzzy matching off. |
| `evaluation` | `string` | The resource name of the evaluation. |
| `operation` | `string` | The resource name of the Long Running Operation for the evaluation. |

### `GoogleCloudDocumentaiV1beta3FieldExtractionMetadata`

Metadata for how this field value is extracted.

| Property | Type | Description |
|----------|------|-------------|
| `summaryOptions` | `GoogleCloudDocumentaiV1beta3SummaryOptions` | Summary options config. |

### `GoogleCloudDocumentaiV1beta3GcsPrefix`

Specifies all documents on Cloud Storage with a common prefix.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUriPrefix` | `string` | The URI prefix. |

### `GoogleCloudDocumentaiV1beta3HumanReviewStatus`

The status of human review on a processed document.

| Property | Type | Description |
|----------|------|-------------|
| `humanReviewOperation` | `string` | The name of the operation triggered by the processed document. This field is populated only when ... |
| `state` | `string` | The state of human review on the processing request. |
| `stateMessage` | `string` | A message providing more details about the human review state. |

### `GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata`

Metadata of the import document operation.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `importConfigValidationResults` | `array<GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult>` | Validation statuses of the batch documents import config. |
| `individualImportStatuses` | `array<GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus>` | The list of response details of each document. |
| `totalDocumentCount` | `integer` | Total number of the documents that are qualified for importing. |

### `GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult`

The validation status of each import config. Status is set to an error if there are no documents to import in the `import_config`, or `OK` if the operation will try to proceed with at least one document.

| Property | Type | Description |
|----------|------|-------------|
| `inputGcsSource` | `string` | The source Cloud Storage URI specified in the import config. |
| `status` | `GoogleRpcStatus` | The validation status of import config. |

### `GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus`

The status of each individual document in the import process.

| Property | Type | Description |
|----------|------|-------------|
| `inputGcsSource` | `string` | The source Cloud Storage URI of the document. |
| `outputDocumentId` | `GoogleCloudDocumentaiV1beta3DocumentId` | The document id of imported document if it was successful, otherwise empty. |
| `status` | `GoogleRpcStatus` | The status of the importing of the document. |

### `GoogleCloudDocumentaiV1beta3ImportDocumentsResponse`

Response of the import document operation.

### `GoogleCloudDocumentaiV1beta3ImportProcessorVersionMetadata`

The long-running operation metadata for the ImportProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata for the long-running operation. |

### `GoogleCloudDocumentaiV1beta3ImportProcessorVersionResponse`

The response message for the ImportProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `processorVersion` | `string` | The destination processor version name. |

### `GoogleCloudDocumentaiV1beta3Processor`

The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.

| Property | Type | Description |
|----------|------|-------------|
| `activeSchemaVersion` | `string` | Optional. SchemaVersion used by the Processor. It is the same as Processor's DatasetSchema.schema... |
| `createTime` | `string` | Output only. The time the processor was created. |
| `defaultProcessorVersion` | `string` | The default processor version. |
| `displayName` | `string` | The display name of the processor. |
| `kmsKeyName` | `string` | The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryptio... |
| `name` | `string` | Output only. Immutable. The resource name of the processor. Format: `projects/{project}/locations... |
| `processEndpoint` | `string` | Output only. Immutable. The http endpoint that can be called to invoke processing. |
| `processorVersionAliases` | `array<GoogleCloudDocumentaiV1beta3ProcessorVersionAlias>` | Output only. The processor version aliases. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the processor. |
| `type` | `string` | The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor typ... |

### `GoogleCloudDocumentaiV1beta3ProcessorVersion`

A processor version is an implementation of a processor. Each processor can have multiple versions, pretrained by Google internally or uptrained by the customer. A processor can only have one default version at a time. Its document-processing behavior is defined by that version.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the processor version was created. |
| `deprecationInfo` | `GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo` | Output only. If set, information about the eventual deprecation of this version. |
| `displayName` | `string` | The display name of the processor version. |
| `documentSchema` | `GoogleCloudDocumentaiV1beta3DocumentSchema` | Output only. The schema of the processor version. Describes the output. |
| `genAiModelInfo` | `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo` | Output only. Information about Generative AI model-based processor versions. |
| `googleManaged` | `boolean` | Output only. Denotes that this `ProcessorVersion` is managed by Google. |
| `kmsKeyName` | `string` | Output only. The KMS key name used for encryption. |
| `kmsKeyVersionName` | `string` | Output only. The KMS key version with which data is encrypted. |
| `latestEvaluation` | `GoogleCloudDocumentaiV1beta3EvaluationReference` | Output only. The most recently invoked evaluation for the processor version. |
| `modelType` | `string` | Output only. The model type of this processor version. |
| `name` | `string` | Identifier. The resource name of the processor version. Format: `projects/{project}/locations/{lo... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the processor version. |

### `GoogleCloudDocumentaiV1beta3ProcessorVersionAlias`

Contains the alias and the aliased resource name of processor version.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | The alias in the form of `processor_version` resource name. |
| `processorVersion` | `string` | The resource name of aliased processor version. |

### `GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo`

Information about the upcoming deprecation of this processor version.

| Property | Type | Description |
|----------|------|-------------|
| `deprecationTime` | `string` | The time at which this processor version will be deprecated. |
| `replacementProcessorVersion` | `string` | If set, the processor version that will be used as a replacement. |

### `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo`

Information about Generative AI model-based processor versions.

| Property | Type | Description |
|----------|------|-------------|
| `customGenAiModelInfo` | `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo` | Information for a custom Generative AI model created by the user. |
| `foundationGenAiModelInfo` | `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo` | Information for a pretrained Google-managed foundation model. |

### `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo`

Information for a custom Generative AI model created by the user. These are created with `Create New Version` in either the `Call foundation model` or `Fine tuning` tabs.

| Property | Type | Description |
|----------|------|-------------|
| `baseProcessorVersionId` | `string` | The base processor version ID for the custom model. |
| `customModelType` | `string` | The type of custom model created by the user. |

### `GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo`

Information for a pretrained Google-managed foundation model.

| Property | Type | Description |
|----------|------|-------------|
| `finetuningAllowed` | `boolean` | Whether fine tuning is allowed for this base processor version. |
| `minTrainLabeledDocuments` | `integer` | The minimum number of labeled documents in the training dataset required for fine tuning. |

### `GoogleCloudDocumentaiV1beta3PropertyMetadata`

Metadata about a property.

| Property | Type | Description |
|----------|------|-------------|
| `fieldExtractionMetadata` | `GoogleCloudDocumentaiV1beta3FieldExtractionMetadata` | Field extraction metadata on the property. |
| `inactive` | `boolean` | Whether the property should be considered as "inactive". |

### `GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata`

The long-running operation metadata for the ReviewDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `createTime` | `string` | The creation time of the operation. |
| `questionId` | `string` | The Crowd Compute question ID. |
| `state` | `string` | Used only when Operation.done is false. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. For example, the error me... |
| `updateTime` | `string` | The last update time of the operation. |

### `GoogleCloudDocumentaiV1beta3ReviewDocumentResponse`

Response message for the ReviewDocument method.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `string` | The Cloud Storage uri for the human reviewed document if the review is succeeded. |
| `rejectionReason` | `string` | The reason why the review is rejected by reviewer. |
| `state` | `string` | The state of the review operation. |

### `GoogleCloudDocumentaiV1beta3RevisionRef`

The revision reference specifies which revision on the document to read.

| Property | Type | Description |
|----------|------|-------------|
| `latestProcessorVersion` | `string` | Reads the revision generated by the processor version. The format takes the full resource name of... |
| `revisionCase` | `string` | Reads the revision by the predefined case. |
| `revisionId` | `string` | Reads the revision given by the id. |

### `GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata`

The long-running operation metadata for the SetDefaultProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse`

Response message for the SetDefaultProcessorVersion method.

### `GoogleCloudDocumentaiV1beta3SummaryOptions`

Metadata for document summarization.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | The format the summary should be in. |
| `length` | `string` | How long the summary should be. |

### `GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata`

The metadata that represents a processor version being created.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |
| `testDatasetValidation` | `GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation` | The test dataset validation information. |
| `trainingDatasetValidation` | `GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation` | The training dataset validation information. |

### `GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation`

The dataset validation information. This includes any and all errors with documents and the dataset.

| Property | Type | Description |
|----------|------|-------------|
| `datasetErrorCount` | `integer` | The total number of dataset errors. |
| `datasetErrors` | `array<GoogleRpcStatus>` | Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A ... |
| `documentErrorCount` | `integer` | The total number of document errors. |
| `documentErrors` | `array<GoogleRpcStatus>` | Error information pertaining to specific documents. A maximum of 10 document errors will be retur... |

### `GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse`

The response for TrainProcessorVersion.

| Property | Type | Description |
|----------|------|-------------|
| `processorVersion` | `string` | The resource name of the processor version produced by training. |

### `GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata`

The long-running operation metadata for the UndeployProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse`

Response message for the UndeployProcessorVersion method.

### `GoogleCloudDocumentaiV1beta3UpdateDatasetOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata of the long-running operation. |

### `GoogleCloudDocumentaiV1beta3UpdateProcessorVersionMetadata`

The long-running operation metadata for the UpdateProcessorVersion method.

| Property | Type | Description |
|----------|------|-------------|
| `commonMetadata` | `GoogleCloudDocumentaiV1beta3CommonOperationMetadata` | The basic metadata for the long-running operation. |

### `GoogleCloudLocationListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

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

### `GoogleTypeColor`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `GoogleTypeDateTime`

Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying... |
| `hours` | `integer` | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An AP... |
| `minutes` | `integer` | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `month` | `integer` | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `nanos` | `integer` | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `seconds` | `integer` | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API ma... |
| `timeZone` | `GoogleTypeTimeZone` | Time zone. |
| `utcOffset` | `string` | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of ... |
| `year` | `integer` | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |

### `GoogleTypeMoney`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `GoogleTypePostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `GoogleTypeTimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

