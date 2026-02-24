# Document AI Warehouse API - API Reference

**Version**: `v1` | **Methods**: 36 | **Schemas**: 188

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `contentwarehouse.projects.fetchAcl` | POST | `v1/{+resource}:fetchAcl` | Gets the access control policy for a resource. Returns NOT_FOUND error if the resource does not e... |
| `contentwarehouse.projects.setAcl` | POST | `v1/{+resource}:setAcl` | Sets the access control policy for a resource. Replaces any existing policy. |
| `contentwarehouse.projects.locations.runPipeline` | POST | `v1/{+name}:runPipeline` | Run a predefined pipeline. |
| `contentwarehouse.projects.locations.initialize` | POST | `v1/{+location}:initialize` | Provisions resources for given tenant project. Returns a long running operation. |
| `contentwarehouse.projects.locations.getStatus` | GET | `v1/{+location}:getStatus` | Get the project status. |
| `contentwarehouse.projects.locations.ruleSets.get` | GET | `v1/{+name}` | Gets a ruleset. Returns NOT_FOUND if the ruleset does not exist. |
| `contentwarehouse.projects.locations.ruleSets.create` | POST | `v1/{+parent}/ruleSets` | Creates a ruleset. |
| `contentwarehouse.projects.locations.ruleSets.delete` | DELETE | `v1/{+name}` | Deletes a ruleset. Returns NOT_FOUND if the document does not exist. |
| `contentwarehouse.projects.locations.ruleSets.patch` | PATCH | `v1/{+name}` | Updates a ruleset. Returns INVALID_ARGUMENT if the name of the ruleset is non-empty and does not ... |
| `contentwarehouse.projects.locations.ruleSets.list` | GET | `v1/{+parent}/ruleSets` | Lists rulesets. |
| `contentwarehouse.projects.locations.synonymSets.list` | GET | `v1/{+parent}/synonymSets` | Returns all SynonymSets (for all contexts) for the specified location. |
| `contentwarehouse.projects.locations.synonymSets.get` | GET | `v1/{+name}` | Gets a SynonymSet for a particular context. Throws a NOT_FOUND exception if the Synonymset does n... |
| `contentwarehouse.projects.locations.synonymSets.delete` | DELETE | `v1/{+name}` | Deletes a SynonymSet for a given context. Throws a NOT_FOUND exception if the SynonymSet is not f... |
| `contentwarehouse.projects.locations.synonymSets.patch` | PATCH | `v1/{+name}` | Remove the existing SynonymSet for the context and replaces it with a new one. Throws a NOT_FOUND... |
| `contentwarehouse.projects.locations.synonymSets.create` | POST | `v1/{+parent}/synonymSets` | Creates a SynonymSet for a single context. Throws an ALREADY_EXISTS exception if a synonymset alr... |
| `contentwarehouse.projects.locations.documentSchemas.patch` | PATCH | `v1/{+name}` | Updates a Document Schema. Returns INVALID_ARGUMENT if the name of the Document Schema is non-emp... |
| `contentwarehouse.projects.locations.documentSchemas.delete` | DELETE | `v1/{+name}` | Deletes a document schema. Returns NOT_FOUND if the document schema does not exist. Returns BAD_R... |
| `contentwarehouse.projects.locations.documentSchemas.list` | GET | `v1/{+parent}/documentSchemas` | Lists document schemas. |
| `contentwarehouse.projects.locations.documentSchemas.create` | POST | `v1/{+parent}/documentSchemas` | Creates a document schema. |
| `contentwarehouse.projects.locations.documentSchemas.get` | GET | `v1/{+name}` | Gets a document schema. Returns NOT_FOUND if the document schema does not exist. |
| `contentwarehouse.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `contentwarehouse.projects.locations.documents.delete` | POST | `v1/{+name}:delete` | Deletes a document. Returns NOT_FOUND if the document does not exist. |
| `contentwarehouse.projects.locations.documents.create` | POST | `v1/{+parent}/documents` | Creates a document. |
| `contentwarehouse.projects.locations.documents.search` | POST | `v1/{+parent}/documents:search` | Searches for documents using provided SearchDocumentsRequest. This call only returns documents th... |
| `contentwarehouse.projects.locations.documents.patch` | PATCH | `v1/{+name}` | Updates a document. Returns INVALID_ARGUMENT if the name of the document is non-empty and does no... |
| `contentwarehouse.projects.locations.documents.linkedTargets` | POST | `v1/{+parent}/linkedTargets` | Return all target document-links from the document. |
| `contentwarehouse.projects.locations.documents.linkedSources` | POST | `v1/{+parent}/linkedSources` | Return all source document-links from the document. |
| `contentwarehouse.projects.locations.documents.setAcl` | POST | `v1/{+resource}:setAcl` | Sets the access control policy for a resource. Replaces any existing policy. |
| `contentwarehouse.projects.locations.documents.fetchAcl` | POST | `v1/{+resource}:fetchAcl` | Gets the access control policy for a resource. Returns NOT_FOUND error if the resource does not e... |
| `contentwarehouse.projects.locations.documents.lock` | POST | `v1/{+name}:lock` | Lock the document so the document cannot be updated by other users. |
| `contentwarehouse.projects.locations.documents.get` | POST | `v1/{+name}:get` | Gets a document. Returns NOT_FOUND if the document does not exist. |
| `contentwarehouse.projects.locations.documents.documentLinks.create` | POST | `v1/{+parent}/documentLinks` | Create a link between a source document and a target document. |
| `contentwarehouse.projects.locations.documents.documentLinks.delete` | POST | `v1/{+name}:delete` | Remove the link between the source and target documents. |
| `contentwarehouse.projects.locations.documents.referenceId.patch` | PATCH | `v1/{+name}` | Updates a document. Returns INVALID_ARGUMENT if the name of the document is non-empty and does no... |
| `contentwarehouse.projects.locations.documents.referenceId.get` | POST | `v1/{+name}:get` | Gets a document. Returns NOT_FOUND if the document does not exist. |
| `contentwarehouse.projects.locations.documents.referenceId.delete` | POST | `v1/{+name}:delete` | Deletes a document. Returns NOT_FOUND if the document does not exist. |

### `contentwarehouse.projects.fetchAcl`

**POST** `v1/{+resource}:fetchAcl`

Gets the access control policy for a resource. Returns NOT_FOUND error if the resource does not exist. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. REQUIRED: The resource for which the policy is being requested. Format for document: projects/{project_numb... |

**Request body**: `GoogleCloudContentwarehouseV1FetchAclRequest`

**Response**: `GoogleCloudContentwarehouseV1FetchAclResponse`

```typescript
const res = await contentwarehouse.projects.fetchAcl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.setAcl`

**POST** `v1/{+resource}:setAcl`

Sets the access control policy for a resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. REQUIRED: The resource for which the policy is being requested. Format for document: projects/{project_numb... |

**Request body**: `GoogleCloudContentwarehouseV1SetAclRequest`

**Response**: `GoogleCloudContentwarehouseV1SetAclResponse`

```typescript
const res = await contentwarehouse.projects.setAcl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.runPipeline`

**POST** `v1/{+name}:runPipeline`

Run a predefined pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name which owns the resources of the pipeline. Format: projects/{project_number}/locations/{lo... |

**Request body**: `GoogleCloudContentwarehouseV1RunPipelineRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contentwarehouse.locations.runPipeline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.initialize`

**POST** `v1/{+location}:initialize`

Provisions resources for given tenant project. Returns a long running operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location to be initialized Format: projects/{project_number}/locations/{location}. |

**Request body**: `GoogleCloudContentwarehouseV1InitializeProjectRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contentwarehouse.locations.initialize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.getStatus`

**GET** `v1/{+location}:getStatus`

Get the project status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location to be queried Format: projects/{project_number}/locations/{location}. |

**Response**: `GoogleCloudContentwarehouseV1ProjectStatus`

```typescript
const res = await contentwarehouse.locations.getStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.ruleSets.get`

**GET** `v1/{+name}`

Gets a ruleset. Returns NOT_FOUND if the ruleset does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the rule set to retrieve. Format: projects/{project_number}/locations/{location}/ruleSets/{rule... |

**Response**: `GoogleCloudContentwarehouseV1RuleSet`

```typescript
const res = await contentwarehouse.ruleSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.ruleSets.create`

**POST** `v1/{+parent}/ruleSets`

Creates a ruleset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent name. Format: projects/{project_number}/locations/{location}. |

**Request body**: `GoogleCloudContentwarehouseV1RuleSet`

**Response**: `GoogleCloudContentwarehouseV1RuleSet`

```typescript
const res = await contentwarehouse.ruleSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.ruleSets.delete`

**DELETE** `v1/{+name}`

Deletes a ruleset. Returns NOT_FOUND if the document does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the rule set to delete. Format: projects/{project_number}/locations/{location}/ruleSets/{rule_s... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.ruleSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.ruleSets.patch`

**PATCH** `v1/{+name}`

Updates a ruleset. Returns INVALID_ARGUMENT if the name of the ruleset is non-empty and does not equal the existing name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the rule set to update. Format: projects/{project_number}/locations/{location}/ruleSets/{rule_s... |

**Request body**: `GoogleCloudContentwarehouseV1UpdateRuleSetRequest`

**Response**: `GoogleCloudContentwarehouseV1RuleSet`

```typescript
const res = await contentwarehouse.ruleSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.ruleSets.list`

**GET** `v1/{+parent}/ruleSets`

Lists rulesets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of document. Format: projects/{project_number}/locations/{location}. |
| `pageSize` | `integer` | query | No | The maximum number of rule sets to return. The service may return fewer than this value. If unspecified, at most 50 r... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListRuleSets` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `GoogleCloudContentwarehouseV1ListRuleSetsResponse`

```typescript
const res = await contentwarehouse.ruleSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.synonymSets.list`

**GET** `v1/{+parent}/synonymSets`

Returns all SynonymSets (for all contexts) for the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent name. Format: projects/{project_number}/locations/{location}. |
| `pageSize` | `integer` | query | No | The maximum number of synonymSets to return. The service may return fewer than this value. If unspecified, at most 50... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSynonymSets` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `GoogleCloudContentwarehouseV1ListSynonymSetsResponse`

```typescript
const res = await contentwarehouse.synonymSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.synonymSets.get`

**GET** `v1/{+name}`

Gets a SynonymSet for a particular context. Throws a NOT_FOUND exception if the Synonymset does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the synonymSet to retrieve Format: projects/{project_number}/locations/{location}/synonymSets/{... |

**Response**: `GoogleCloudContentwarehouseV1SynonymSet`

```typescript
const res = await contentwarehouse.synonymSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.synonymSets.delete`

**DELETE** `v1/{+name}`

Deletes a SynonymSet for a given context. Throws a NOT_FOUND exception if the SynonymSet is not found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the synonymSet to delete Format: projects/{project_number}/locations/{location}/synonymSets/{co... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.synonymSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.synonymSets.patch`

**PATCH** `v1/{+name}`

Remove the existing SynonymSet for the context and replaces it with a new one. Throws a NOT_FOUND exception if the SynonymSet is not found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the synonymSet to update Format: projects/{project_number}/locations/{location}/synonymSets/{co... |

**Request body**: `GoogleCloudContentwarehouseV1SynonymSet`

**Response**: `GoogleCloudContentwarehouseV1SynonymSet`

```typescript
const res = await contentwarehouse.synonymSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.synonymSets.create`

**POST** `v1/{+parent}/synonymSets`

Creates a SynonymSet for a single context. Throws an ALREADY_EXISTS exception if a synonymset already exists for the context.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent name. Format: projects/{project_number}/locations/{location}. |

**Request body**: `GoogleCloudContentwarehouseV1SynonymSet`

**Response**: `GoogleCloudContentwarehouseV1SynonymSet`

```typescript
const res = await contentwarehouse.synonymSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documentSchemas.patch`

**PATCH** `v1/{+name}`

Updates a Document Schema. Returns INVALID_ARGUMENT if the name of the Document Schema is non-empty and does not equal the existing name. Supports only appending new properties, adding new ENUM possible values, and updating the EnumTypeOptions.validation_check_disabled flag for ENUM possible values. Updating existing properties will result into INVALID_ARGUMENT.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document schema to update. Format: projects/{project_number}/locations/{location}/documentS... |

**Request body**: `GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest`

**Response**: `GoogleCloudContentwarehouseV1DocumentSchema`

```typescript
const res = await contentwarehouse.documentSchemas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documentSchemas.delete`

**DELETE** `v1/{+name}`

Deletes a document schema. Returns NOT_FOUND if the document schema does not exist. Returns BAD_REQUEST if the document schema has documents depending on it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document schema to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.documentSchemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documentSchemas.list`

**GET** `v1/{+parent}/documentSchemas`

Lists document schemas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of document schemas. Format: projects/{project_number}/locations/{lo... |
| `pageSize` | `integer` | query | No | The maximum number of document schemas to return. The service may return fewer than this value. If unspecified, at mo... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDocumentSchemas` call. Provide this to retrieve the subsequent page. When... |

**Response**: `GoogleCloudContentwarehouseV1ListDocumentSchemasResponse`

```typescript
const res = await contentwarehouse.documentSchemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documentSchemas.create`

**POST** `v1/{+parent}/documentSchemas`

Creates a document schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent name. |

**Request body**: `GoogleCloudContentwarehouseV1DocumentSchema`

**Response**: `GoogleCloudContentwarehouseV1DocumentSchema`

```typescript
const res = await contentwarehouse.documentSchemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documentSchemas.get`

**GET** `v1/{+name}`

Gets a document schema. Returns NOT_FOUND if the document schema does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document schema to retrieve. |

**Response**: `GoogleCloudContentwarehouseV1DocumentSchema`

```typescript
const res = await contentwarehouse.documentSchemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contentwarehouse.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.delete`

**POST** `v1/{+name}:delete`

Deletes a document. Returns NOT_FOUND if the document does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to delete. Format: projects/{project_number}/locations/{location}/documents/{docum... |

**Request body**: `GoogleCloudContentwarehouseV1DeleteDocumentRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.documents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.create`

**POST** `v1/{+parent}/documents`

Creates a document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent name. Format: projects/{project_number}/locations/{location}. |

**Request body**: `GoogleCloudContentwarehouseV1CreateDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1CreateDocumentResponse`

```typescript
const res = await contentwarehouse.documents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.search`

**POST** `v1/{+parent}/documents:search`

Searches for documents using provided SearchDocumentsRequest. This call only returns documents that the caller has permission to search against.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of documents. Format: projects/{project_number}/locations/{location}. |

**Request body**: `GoogleCloudContentwarehouseV1SearchDocumentsRequest`

**Response**: `GoogleCloudContentwarehouseV1SearchDocumentsResponse`

```typescript
const res = await contentwarehouse.documents.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.patch`

**PATCH** `v1/{+name}`

Updates a document. Returns INVALID_ARGUMENT if the name of the document is non-empty and does not equal the existing name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to update. Format: projects/{project_number}/locations/{location}/documents/{docum... |

**Request body**: `GoogleCloudContentwarehouseV1UpdateDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1UpdateDocumentResponse`

```typescript
const res = await contentwarehouse.documents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.linkedTargets`

**POST** `v1/{+parent}/linkedTargets`

Return all target document-links from the document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the document, for which all target links are returned. Format: projects/{project_number}/locati... |

**Request body**: `GoogleCloudContentwarehouseV1ListLinkedTargetsRequest`

**Response**: `GoogleCloudContentwarehouseV1ListLinkedTargetsResponse`

```typescript
const res = await contentwarehouse.documents.linkedTargets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.linkedSources`

**POST** `v1/{+parent}/linkedSources`

Return all source document-links from the document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the document, for which all source links are returned. Format: projects/{project_number}/locati... |

**Request body**: `GoogleCloudContentwarehouseV1ListLinkedSourcesRequest`

**Response**: `GoogleCloudContentwarehouseV1ListLinkedSourcesResponse`

```typescript
const res = await contentwarehouse.documents.linkedSources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.setAcl`

**POST** `v1/{+resource}:setAcl`

Sets the access control policy for a resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. REQUIRED: The resource for which the policy is being requested. Format for document: projects/{project_numb... |

**Request body**: `GoogleCloudContentwarehouseV1SetAclRequest`

**Response**: `GoogleCloudContentwarehouseV1SetAclResponse`

```typescript
const res = await contentwarehouse.documents.setAcl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.fetchAcl`

**POST** `v1/{+resource}:fetchAcl`

Gets the access control policy for a resource. Returns NOT_FOUND error if the resource does not exist. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. REQUIRED: The resource for which the policy is being requested. Format for document: projects/{project_numb... |

**Request body**: `GoogleCloudContentwarehouseV1FetchAclRequest`

**Response**: `GoogleCloudContentwarehouseV1FetchAclResponse`

```typescript
const res = await contentwarehouse.documents.fetchAcl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.lock`

**POST** `v1/{+name}:lock`

Lock the document so the document cannot be updated by other users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to lock. Format: projects/{project_number}/locations/{location}/documents/{document}. |

**Request body**: `GoogleCloudContentwarehouseV1LockDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1Document`

```typescript
const res = await contentwarehouse.documents.lock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.get`

**POST** `v1/{+name}:get`

Gets a document. Returns NOT_FOUND if the document does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to retrieve. Format: projects/{project_number}/locations/{location}/documents/{doc... |

**Request body**: `GoogleCloudContentwarehouseV1GetDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1Document`

```typescript
const res = await contentwarehouse.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.documentLinks.create`

**POST** `v1/{+parent}/documentLinks`

Create a link between a source document and a target document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the document-link to be created. parent of document-link should be a document. Format: projects/{... |

**Request body**: `GoogleCloudContentwarehouseV1CreateDocumentLinkRequest`

**Response**: `GoogleCloudContentwarehouseV1DocumentLink`

```typescript
const res = await contentwarehouse.documentLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.documentLinks.delete`

**POST** `v1/{+name}:delete`

Remove the link between the source and target documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document-link to be deleted. Format: projects/{project_number}/locations/{location}/documen... |

**Request body**: `GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.documentLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.referenceId.patch`

**PATCH** `v1/{+name}`

Updates a document. Returns INVALID_ARGUMENT if the name of the document is non-empty and does not equal the existing name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to update. Format: projects/{project_number}/locations/{location}/documents/{docum... |

**Request body**: `GoogleCloudContentwarehouseV1UpdateDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1UpdateDocumentResponse`

```typescript
const res = await contentwarehouse.referenceId.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.referenceId.get`

**POST** `v1/{+name}:get`

Gets a document. Returns NOT_FOUND if the document does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to retrieve. Format: projects/{project_number}/locations/{location}/documents/{doc... |

**Request body**: `GoogleCloudContentwarehouseV1GetDocumentRequest`

**Response**: `GoogleCloudContentwarehouseV1Document`

```typescript
const res = await contentwarehouse.referenceId.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contentwarehouse.projects.locations.documents.referenceId.delete`

**POST** `v1/{+name}:delete`

Deletes a document. Returns NOT_FOUND if the document does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the document to delete. Format: projects/{project_number}/locations/{location}/documents/{docum... |

**Request body**: `GoogleCloudContentwarehouseV1DeleteDocumentRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contentwarehouse.referenceId.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CloudAiPlatformTenantresourceCloudSqlInstanceConfig`

The identity to configure a CloudSQL instance provisioned via SLM Terraform.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlInstanceConnectionName` | `string` | Output only. The CloudSQL instance connection name. |
| `cloudSqlInstanceName` | `string` | Input/Output [Optional]. The CloudSQL instance name within SLM instance. If not set, a random UUI... |
| `kmsKeyReference` | `string` | Input [Optional]. The KMS key name or the KMS grant name used for CMEK encryption. Only set this ... |
| `mdbRolesForCorpAccess` | `array<string>` | Input [Optional]. MDB roles for corp access to CloudSQL instance. |
| `slmInstanceName` | `string` | Output only. The SLM instance's full resource name. |
| `slmInstanceTemplate` | `string` | Input [Required]. The SLM instance template to provision CloudSQL. |
| `slmInstanceType` | `string` | Input [Required]. The SLM instance type to provision CloudSQL. |

### `CloudAiPlatformTenantresourceGcsBucketConfig`

The identity to configure a GCS bucket.

| Property | Type | Description |
|----------|------|-------------|
| `admins` | `array<string>` |  |
| `bucketName` | `string` | Input/Output [Optional]. The name of a GCS bucket with max length of 63 chars. If not set, a rand... |
| `entityName` | `string` | Input/Output [Optional]. Only needed for per-entity tenant GCP resources. During Deprovision API,... |
| `kmsKeyReference` | `string` | Input/Output [Optional]. The KMS key name or the KMS grant name used for CMEK encryption. Only se... |
| `ttlDays` | `integer` | Input/Output [Optional]. Only needed when the content in bucket need to be garbage collected with... |
| `viewers` | `array<string>` | Input/Output [Required]. IAM roles (viewer/admin) put on the bucket. |

### `CloudAiPlatformTenantresourceIamPolicyBinding`

The dynamic IAM bindings to be granted after tenant projects are created.

| Property | Type | Description |
|----------|------|-------------|
| `members` | `array<string>` | Input/Output [Required]. The member service accounts with the roles above. Note: placeholders are... |
| `resource` | `string` | Input/Output [Required]. The resource name that will be accessed by members, which also depends o... |
| `resourceType` | `string` | Input/Output [Required]. Specifies the type of resource that will be accessed by members. |
| `role` | `string` | Input/Output [Required]. The role for members below. |

### `CloudAiPlatformTenantresourceInfraSpannerConfig`

The configuration for a spanner database provisioning. Next ID: 8

| Property | Type | Description |
|----------|------|-------------|
| `createDatabaseOptions` | `CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions` | Input [Optional]. The options to create a spanner database. Note: give the right options to ensur... |
| `kmsKeyReference` | `string` | Input [Optional]. The KMS key name or the KMS grant name used for CMEK encryption. Only set this ... |
| `sdlBundlePath` | `string` | Input [Required]. The file path to the spanner SDL bundle. |
| `spannerBorgServiceAccount` | `string` | Input [Optional]. The spanner borg service account for delegating the kms key to. For example, sp... |
| `spannerLocalNamePrefix` | `string` |  |
| `spannerNamespace` | `string` |  |
| `spannerUniverse` | `string` | Input [Required]. Every database in Spanner can be identified by the following path name: /span//: |

### `CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions`

The options to create a spanner database. KMS key access audit logging and AxT logging will be associated with the given resource name, resource type and service name. Please ensure to give right options to enable correct audit logging and AxT logging.

| Property | Type | Description |
|----------|------|-------------|
| `cmekCloudResourceName` | `string` | The cloud resource name for the CMEK encryption. For example, projects//locations/ |
| `cmekCloudResourceType` | `string` | The cloud resource type for the CMEK encryption. For example, contentwarehouse.googleapis.com/Loc... |
| `cmekServiceName` | `string` | The service name for the CMEK encryption. For example, contentwarehouse.googleapis.com |

### `CloudAiPlatformTenantresourceServiceAccountIdentity`

The identity to configure a service account.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccountEmail` | `string` | Output only. The service account email that has been created. |
| `tag` | `string` | Input/Output [Optional]. The tag that configures the service account, as defined in google3/confi... |

### `CloudAiPlatformTenantresourceTenantProjectConfig`

The identity to configure a tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `billingConfig` | `GoogleApiServiceconsumermanagementV1BillingConfig` | Input/Output [Required]. The billing account properties to create the tenant project. |
| `folder` | `string` | Input/Output [Required]. The folder that holds tenant projects and folder-level permissions will ... |
| `policyBindings` | `array<GoogleApiServiceconsumermanagementV1PolicyBinding>` | Input/Output [Required]. The policy bindings that are applied to the tenant project during creati... |
| `services` | `array<string>` | Input/Output [Required]. The API services that are enabled on the tenant project during creation. |

### `CloudAiPlatformTenantresourceTenantProjectResource`

The tenant project and tenant resources. Next ID: 10

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlInstances` | `array<CloudAiPlatformTenantresourceCloudSqlInstanceConfig>` | The CloudSQL instances that are provisioned under the tenant project. |
| `gcsBuckets` | `array<CloudAiPlatformTenantresourceGcsBucketConfig>` | The GCS buckets that are provisioned under the tenant project. |
| `iamPolicyBindings` | `array<CloudAiPlatformTenantresourceIamPolicyBinding>` | The dynamic IAM bindings that are granted under the tenant project. Note: this should only add ne... |
| `infraSpannerConfigs` | `array<CloudAiPlatformTenantresourceInfraSpannerConfig>` | The Infra Spanner databases that are provisioned under the tenant project. Note: this is an exper... |
| `tag` | `string` | Input/Output [Required]. The tag that uniquely identifies a tenant project within a tenancy unit.... |
| `tenantProjectConfig` | `CloudAiPlatformTenantresourceTenantProjectConfig` | The configurations of a tenant project. |
| `tenantProjectId` | `string` | Output only. The tenant project ID that has been created. |
| `tenantProjectNumber` | `string` | Output only. The tenant project number that has been created. |
| `tenantServiceAccounts` | `array<CloudAiPlatformTenantresourceTenantServiceAccountIdentity>` | The service account identities (or enabled API service's P4SA) that are expclicitly created under... |

### `CloudAiPlatformTenantresourceTenantResource`

A collection of tenant resources.

| Property | Type | Description |
|----------|------|-------------|
| `p4ServiceAccounts` | `array<CloudAiPlatformTenantresourceServiceAccountIdentity>` | A list of P4 service accounts (go/p4sa) to provision or deprovision. |
| `tenantProjectResources` | `array<CloudAiPlatformTenantresourceTenantProjectResource>` | A list of tenant projects and tenant resources to provision or deprovision. |

### `CloudAiPlatformTenantresourceTenantServiceAccountIdentity`

The identity of service accounts that have been explicitly created under tenant projects.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccountEmail` | `string` | Output only. The email address of the generated service account. |
| `serviceName` | `string` | Input/Output [Required]. The service that the service account belongs to. (e.g. cloudbuild.google... |

### `GoogleApiServiceconsumermanagementV1BillingConfig`

Describes the billing configuration for a new tenant project.

| Property | Type | Description |
|----------|------|-------------|
| `billingAccount` | `string` | Name of the billing account. For example `billingAccounts/012345-567890-ABCDEF`. |

### `GoogleApiServiceconsumermanagementV1PolicyBinding`

Translates to IAM Policy bindings (without auditing at this level)

| Property | Type | Description |
|----------|------|-------------|
| `members` | `array<string>` | Uses the same format as in IAM policy. `member` must include both a prefix and ID. For example, `... |
| `role` | `string` | Role. (https://cloud.google.com/iam/docs/understanding-roles) For example, `roles/viewer`, `roles... |

### `GoogleCloudContentwarehouseV1AccessControlAction`

Represents the action responsible for access control list management operations.

| Property | Type | Description |
|----------|------|-------------|
| `operationType` | `string` | Identifies the type of operation. |
| `policy` | `GoogleIamV1Policy` | Represents the new policy from which bindings are added, removed or replaced based on the type of... |

### `GoogleCloudContentwarehouseV1Action`

Represents the action triggered by Rule Engine when the rule is true.

| Property | Type | Description |
|----------|------|-------------|
| `accessControl` | `GoogleCloudContentwarehouseV1AccessControlAction` | Action triggering access control operations. |
| `actionId` | `string` | ID of the action. Managed internally. |
| `addToFolder` | `GoogleCloudContentwarehouseV1AddToFolderAction` | Action triggering create document link operation. |
| `dataUpdate` | `GoogleCloudContentwarehouseV1DataUpdateAction` | Action triggering data update operations. |
| `dataValidation` | `GoogleCloudContentwarehouseV1DataValidationAction` | Action triggering data validation operations. |
| `deleteDocumentAction` | `GoogleCloudContentwarehouseV1DeleteDocumentAction` | Action deleting the document. |
| `publishToPubSub` | `GoogleCloudContentwarehouseV1PublishAction` | Action publish to Pub/Sub operation. |
| `removeFromFolderAction` | `GoogleCloudContentwarehouseV1RemoveFromFolderAction` | Action removing a document from a folder. |

### `GoogleCloudContentwarehouseV1ActionExecutorOutput`

Represents the output of the Action Executor.

| Property | Type | Description |
|----------|------|-------------|
| `ruleActionsPairs` | `array<GoogleCloudContentwarehouseV1RuleActionsPair>` | List of rule and corresponding actions result. |

### `GoogleCloudContentwarehouseV1ActionOutput`

Represents the result of executing an action.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | ID of the action. |
| `actionState` | `string` | State of an action. |
| `outputMessage` | `string` | Action execution output message. |

### `GoogleCloudContentwarehouseV1AddToFolderAction`

Represents the action responsible for adding document under a folder.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<string>` | Names of the folder under which new document is to be added. Format: projects/{project_number}/lo... |

### `GoogleCloudContentwarehouseV1CloudAIDocumentOption`

Request Option for processing Cloud AI Document in CW Document.

| Property | Type | Description |
|----------|------|-------------|
| `customizedEntitiesPropertiesConversions` | `object` | If set, only selected entities will be converted to properties. |
| `enableEntitiesConversions` | `boolean` | Whether to convert all the entities to properties. |

### `GoogleCloudContentwarehouseV1CreateDocumentLinkRequest`

Request message for DocumentLinkService.CreateDocumentLink.

| Property | Type | Description |
|----------|------|-------------|
| `documentLink` | `GoogleCloudContentwarehouseV1DocumentLink` | Required. Document links associated with the source documents (source_document_id). |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the document creator, used to enforce access control for the... |

### `GoogleCloudContentwarehouseV1CreateDocumentMetadata`

Metadata object for CreateDocument request (currently empty).

### `GoogleCloudContentwarehouseV1CreateDocumentRequest`

Request message for DocumentService.CreateDocument.

| Property | Type | Description |
|----------|------|-------------|
| `cloudAiDocumentOption` | `GoogleCloudContentwarehouseV1CloudAIDocumentOption` | Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited ... |
| `createMask` | `string` | Field mask for creating Document fields. If mask path is empty, it means all fields are masked. F... |
| `document` | `GoogleCloudContentwarehouseV1Document` | Required. The document to create. |
| `policy` | `GoogleIamV1Policy` | Default document policy during creation. This refers to an Identity and Access (IAM) policy, whic... |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1CreateDocumentResponse`

Response message for DocumentService.CreateDocument.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `GoogleCloudContentwarehouseV1Document` | Document created after executing create request. |
| `longRunningOperations` | `array<GoogleLongrunningOperation>` | post-processing LROs |
| `metadata` | `GoogleCloudContentwarehouseV1ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `ruleEngineOutput` | `GoogleCloudContentwarehouseV1RuleEngineOutput` | Output from Rule Engine recording the rule evaluator and action executor's output. Refer format i... |

### `GoogleCloudContentwarehouseV1CustomWeightsMetadata`

To support the custom weighting across document schemas.

| Property | Type | Description |
|----------|------|-------------|
| `weightedSchemaProperties` | `array<GoogleCloudContentwarehouseV1WeightedSchemaProperty>` | List of schema and property name. Allows a maximum of 10 schemas to be specified for relevance bo... |

### `GoogleCloudContentwarehouseV1DataUpdateAction`

Represents the action responsible for properties update operations.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `object` | Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry trig... |

### `GoogleCloudContentwarehouseV1DataValidationAction`

Represents the action responsible for data validation operations.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `object` | Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., ("age", "age > 18 &... |

### `GoogleCloudContentwarehouseV1DateTimeArray`

DateTime values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GoogleTypeDateTime>` | List of datetime values. Both OffsetDateTime and ZonedDateTime are supported. |

### `GoogleCloudContentwarehouseV1DateTimeTypeOptions`

Configurations for a date time property.

### `GoogleCloudContentwarehouseV1DeleteDocumentAction`

Represents the action responsible for deleting the document.

| Property | Type | Description |
|----------|------|-------------|
| `enableHardDelete` | `boolean` | Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'fa... |

### `GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest`

Request message for DocumentLinkService.DeleteDocumentLink.

| Property | Type | Description |
|----------|------|-------------|
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the document creator, used to enforce access control for the... |

### `GoogleCloudContentwarehouseV1DeleteDocumentRequest`

Request message for DocumentService.DeleteDocument.

| Property | Type | Description |
|----------|------|-------------|
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1Document`

Defines the structure for content warehouse document proto.

| Property | Type | Description |
|----------|------|-------------|
| `cloudAiDocument` | `GoogleCloudDocumentaiV1Document` | Document AI format to save the structured content, including OCR. |
| `contentCategory` | `string` | Indicates the category (image, audio, video etc.) of the original content. |
| `createTime` | `string` | Output only. The time when the document is created. |
| `creator` | `string` | The user who creates the document. |
| `displayName` | `string` | Required. Display name of the document given by the user. This name will be displayed in the UI. ... |
| `displayUri` | `string` | Uri to display the document, for example, in the UI. |
| `dispositionTime` | `string` | Output only. If linked to a Collection with RetentionPolicy, the date when the document becomes m... |
| `documentSchemaName` | `string` | The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/... |
| `inlineRawDocument` | `string` | Raw document content. |
| `legalHold` | `boolean` | Output only. Indicates if the document has a legal hold on it. |
| `name` | `string` | The resource name of the document. Format: projects/{project_number}/locations/{location}/documen... |
| `plainText` | `string` | Other document format, such as PPTX, XLXS |
| `properties` | `array<GoogleCloudContentwarehouseV1Property>` | List of values that are user supplied metadata. |
| `rawDocumentFileType` | `string` | This is used when DocAI was not used to load the document and parsing/ extracting is needed for t... |
| `rawDocumentPath` | `string` | Raw document file in Cloud Storage path. |
| `referenceId` | `string` | The reference ID set by customers. Must be unique per project and location. |
| `textExtractionDisabled` | `boolean` | If true, text extraction will not be performed. |
| `textExtractionEnabled` | `boolean` | If true, text extraction will be performed. |
| `title` | `string` | Title that describes the document. This can be the top heading or text that describes the document. |
| `updateTime` | `string` | Output only. The time when the document is last updated. |
| `updater` | `string` | The user who lastly updates the document. |

### `GoogleCloudContentwarehouseV1DocumentLink`

A document-link between source and target document.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the documentLink is created. |
| `description` | `string` | Description of this document-link. |
| `name` | `string` | Name of this document-link. It is required that the parent derived form the name to be consistent... |
| `sourceDocumentReference` | `GoogleCloudContentwarehouseV1DocumentReference` | Document references of the source document. |
| `state` | `string` | The state of the documentlink. If target node has been deleted, the link is marked as invalid. Re... |
| `targetDocumentReference` | `GoogleCloudContentwarehouseV1DocumentReference` | Document references of the target document. |
| `updateTime` | `string` | Output only. The time when the documentLink is last updated. |

### `GoogleCloudContentwarehouseV1DocumentQuery`

| Property | Type | Description |
|----------|------|-------------|
| `customPropertyFilter` | `string` | This filter specifies a structured syntax to match against the [PropertyDefinition].is_filterable... |
| `customWeightsMetadata` | `GoogleCloudContentwarehouseV1CustomWeightsMetadata` | To support the custom weighting across document schemas, customers need to provide the properties... |
| `documentCreatorFilter` | `array<string>` | The exact creator(s) of the documents to search against. If a value isn't specified, documents wi... |
| `documentNameFilter` | `array<string>` | Search the documents in the list. Format: projects/{project_number}/locations/{location}/document... |
| `documentSchemaNames` | `array<string>` | This filter specifies the exact document schema Document.document_schema_name of the documents to... |
| `fileTypeFilter` | `GoogleCloudContentwarehouseV1FileTypeFilter` | This filter specifies the types of files to return: ALL, FOLDER, or FILE. If FOLDER or FILE is sp... |
| `folderNameFilter` | `string` | Search all the documents under this specified folder. Format: projects/{project_number}/locations... |
| `isNlQuery` | `boolean` | Experimental, do not use. If the query is a natural language question. False by default. If true,... |
| `propertyFilter` | `array<GoogleCloudContentwarehouseV1PropertyFilter>` | This filter specifies a structured syntax to match against the PropertyDefinition.is_filterable m... |
| `query` | `string` | The query string that matches against the full text of the document and the searchable properties... |
| `queryContext` | `array<string>` | For custom synonyms. Customers provide the synonyms based on context. One customer can provide mu... |
| `timeFilters` | `array<GoogleCloudContentwarehouseV1TimeFilter>` | Documents created/updated within a range specified by this filter are searched against. |

### `GoogleCloudContentwarehouseV1DocumentReference`

References to the documents.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the document is created. |
| `deleteTime` | `string` | Output only. The time when the document is deleted. |
| `displayName` | `string` | display_name of the referenced document; this name does not need to be consistent to the display_... |
| `documentIsFolder` | `boolean` | The document type of the document being referenced. |
| `documentIsLegalHoldFolder` | `boolean` | Document is a folder with legal hold. |
| `documentIsRetentionFolder` | `boolean` | Document is a folder with retention policy. |
| `documentName` | `string` | Required. Name of the referenced document. |
| `snippet` | `string` | Stores the subset of the referenced document's content. This is useful to allow user peek the inf... |
| `updateTime` | `string` | Output only. The time when the document is last updated. |

### `GoogleCloudContentwarehouseV1DocumentSchema`

A document schema used to define document structure.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the document schema is created. |
| `description` | `string` | Schema description. |
| `displayName` | `string` | Required. Name of the schema given by the user. Must be unique per project. |
| `documentIsFolder` | `boolean` | Document Type, true refers the document is a folder, otherwise it is a typical document. |
| `name` | `string` | The resource name of the document schema. Format: projects/{project_number}/locations/{location}/... |
| `propertyDefinitions` | `array<GoogleCloudContentwarehouseV1PropertyDefinition>` | Document details. |
| `updateTime` | `string` | Output only. The time when the document schema is last updated. |

### `GoogleCloudContentwarehouseV1EnumArray`

Enum values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | List of enum values. |

### `GoogleCloudContentwarehouseV1EnumTypeOptions`

Configurations for an enum/categorical property.

| Property | Type | Description |
|----------|------|-------------|
| `possibleValues` | `array<string>` | Required. List of possible enum values. |
| `validationCheckDisabled` | `boolean` | Make sure the Enum property value provided in the document is in the possile value list during do... |

### `GoogleCloudContentwarehouseV1EnumValue`

Represents the string value of the enum field.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | String value of the enum field. This must match defined set of enums in document schema using Enu... |

### `GoogleCloudContentwarehouseV1ExportToCdwPipeline`

The configuration of exporting documents from the Document Warehouse to CDW pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `docAiDataset` | `string` | Optional. The CDW dataset resource name. This field is optional. If not set, the documents will b... |
| `documents` | `array<string>` | The list of all the resource names of the documents to be processed. Format: projects/{project_nu... |
| `exportFolderPath` | `string` | The Cloud Storage folder path used to store the exported documents before being sent to CDW. Form... |
| `trainingSplitRatio` | `number` | Ratio of training dataset split. When importing into Document AI Workbench, documents will be aut... |

### `GoogleCloudContentwarehouseV1FetchAclRequest`

Request message for DocumentService.FetchAcl

| Property | Type | Description |
|----------|------|-------------|
| `projectOwner` | `boolean` | For Get Project ACL only. Authorization check for end user will be ignored when project_owner=true. |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1FetchAclResponse`

Response message for DocumentService.FetchAcl.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `GoogleCloudContentwarehouseV1ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `policy` | `GoogleIamV1Policy` | The IAM policy. |

### `GoogleCloudContentwarehouseV1FileTypeFilter`

Filter for the specific types of documents returned.

| Property | Type | Description |
|----------|------|-------------|
| `fileType` | `string` | The type of files to return. |

### `GoogleCloudContentwarehouseV1FloatArray`

Float values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` | List of float values. |

### `GoogleCloudContentwarehouseV1FloatTypeOptions`

Configurations for a float property.

### `GoogleCloudContentwarehouseV1GcsIngestPipeline`

The configuration of the Cloud Storage Ingestion pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `inputPath` | `string` | The input Cloud Storage folder. All files under this folder will be imported to Document Warehous... |
| `pipelineConfig` | `GoogleCloudContentwarehouseV1IngestPipelineConfig` | Optional. The config for the Cloud Storage Ingestion pipeline. It provides additional customizati... |
| `processorType` | `string` | The Doc AI processor type name. Only used when the format of ingested files is Doc AI Document pr... |
| `schemaName` | `string` | The Document Warehouse schema resource name. All documents processed by this pipeline will use th... |
| `skipIngestedDocuments` | `boolean` | The flag whether to skip ingested documents. If it is set to true, documents in Cloud Storage con... |

### `GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline`

The configuration of the Cloud Storage Ingestion with DocAI Processors pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `extractProcessorInfos` | `array<GoogleCloudContentwarehouseV1ProcessorInfo>` | The extract processors information. One matched extract processor will be used to process documen... |
| `inputPath` | `string` | The input Cloud Storage folder. All files under this folder will be imported to Document Warehous... |
| `pipelineConfig` | `GoogleCloudContentwarehouseV1IngestPipelineConfig` | Optional. The config for the Cloud Storage Ingestion with DocAI Processors pipeline. It provides ... |
| `processorResultsFolderPath` | `string` | The Cloud Storage folder path used to store the raw results from processors. Format: `gs:///`. |
| `skipIngestedDocuments` | `boolean` | The flag whether to skip ingested documents. If it is set to true, documents in Cloud Storage con... |
| `splitClassifyProcessorInfo` | `GoogleCloudContentwarehouseV1ProcessorInfo` | The split and classify processor information. The split and classify result will be used to find ... |

### `GoogleCloudContentwarehouseV1GetDocumentRequest`

Request message for DocumentService.GetDocument.

| Property | Type | Description |
|----------|------|-------------|
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1HistogramQuery`

The histogram request.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter` | Optional. Filter the result of histogram query by the property names. It only works with histogra... |
| `histogramQuery` | `string` | An expression specifies a histogram request against matching documents for searches. See SearchDo... |
| `requirePreciseResultSize` | `boolean` | Controls if the histogram query requires the return of a precise count. Enable this flag may adve... |

### `GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter`

| Property | Type | Description |
|----------|------|-------------|
| `documentSchemas` | `array<string>` | This filter specifies the exact document schema(s) Document.document_schema_name to run histogram... |
| `propertyNames` | `array<string>` | It is optional. It will perform histogram for all the property names if it is not set. The proper... |
| `yAxis` | `string` | By default, the y_axis is HISTOGRAM_YAXIS_DOCUMENT if this field is not set. |

### `GoogleCloudContentwarehouseV1HistogramQueryResult`

Histogram result that matches HistogramQuery specified in searches.

| Property | Type | Description |
|----------|------|-------------|
| `histogram` | `object` | A map from the values of the facet associated with distinct values to the number of matching entr... |
| `histogramQuery` | `string` | Requested histogram expression. |

### `GoogleCloudContentwarehouseV1IngestPipelineConfig`

The ingestion pipeline config.

| Property | Type | Description |
|----------|------|-------------|
| `cloudFunction` | `string` | The Cloud Function resource name. The Cloud Function needs to live inside consumer project and is... |
| `documentAclPolicy` | `GoogleIamV1Policy` | The document level acl policy config. This refers to an Identity and Access (IAM) policy, which s... |
| `enableDocumentTextExtraction` | `boolean` | The document text extraction enabled flag. If the flag is set to true, DWH will perform text extr... |
| `folder` | `string` | Optional. The name of the folder to which all ingested documents will be linked during ingestion ... |

### `GoogleCloudContentwarehouseV1InitializeProjectRequest`

Request message for projectService.InitializeProject

| Property | Type | Description |
|----------|------|-------------|
| `accessControlMode` | `string` | Required. The access control mode for accessing the customer data |
| `databaseType` | `string` | Required. The type of database used to store customer data |
| `documentCreatorDefaultRole` | `string` | Optional. The default role for the person who create a document. |
| `enableCalUserEmailLogging` | `boolean` | Optional. Whether to enable CAL user email logging. |
| `kmsKey` | `string` | Optional. The KMS key used for CMEK encryption. It is required that the kms key is in the same re... |

### `GoogleCloudContentwarehouseV1InitializeProjectResponse`

Response message for projectService.InitializeProject

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message of the project initialization process. |
| `state` | `string` | The state of the project initialization process. |

### `GoogleCloudContentwarehouseV1IntegerArray`

Integer values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<integer>` | List of integer values. |

### `GoogleCloudContentwarehouseV1IntegerTypeOptions`

Configurations for an integer property.

### `GoogleCloudContentwarehouseV1InvalidRule`

A triggered rule that failed the validation check(s) after parsing.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Validation error on a parsed expression. |
| `rule` | `GoogleCloudContentwarehouseV1Rule` | Triggered rule. |

### `GoogleCloudContentwarehouseV1ListDocumentSchemasResponse`

Response message for DocumentSchemaService.ListDocumentSchemas.

| Property | Type | Description |
|----------|------|-------------|
| `documentSchemas` | `array<GoogleCloudContentwarehouseV1DocumentSchema>` | The document schemas from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContentwarehouseV1ListLinkedSourcesRequest`

Response message for DocumentLinkService.ListLinkedSources.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | The maximum number of document-links to return. The service may return fewer than this value. If ... |
| `pageToken` | `string` | A page token, received from a previous `ListLinkedSources` call. Provide this to retrieve the sub... |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the document creator, used to enforce access control for the... |

### `GoogleCloudContentwarehouseV1ListLinkedSourcesResponse`

Response message for DocumentLinkService.ListLinkedSources.

| Property | Type | Description |
|----------|------|-------------|
| `documentLinks` | `array<GoogleCloudContentwarehouseV1DocumentLink>` | Source document-links. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContentwarehouseV1ListLinkedTargetsRequest`

Request message for DocumentLinkService.ListLinkedTargets.

| Property | Type | Description |
|----------|------|-------------|
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the document creator, used to enforce access control for the... |

### `GoogleCloudContentwarehouseV1ListLinkedTargetsResponse`

Response message for DocumentLinkService.ListLinkedTargets.

| Property | Type | Description |
|----------|------|-------------|
| `documentLinks` | `array<GoogleCloudContentwarehouseV1DocumentLink>` | Target document-links. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContentwarehouseV1ListRuleSetsResponse`

Response message for RuleSetService.ListRuleSets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `ruleSets` | `array<GoogleCloudContentwarehouseV1RuleSet>` | The rule sets from the specified parent. |

### `GoogleCloudContentwarehouseV1ListSynonymSetsResponse`

Response message for SynonymSetService.ListSynonymSets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token, received from a previous `ListSynonymSets` call. Provide this to retrieve the subse... |
| `synonymSets` | `array<GoogleCloudContentwarehouseV1SynonymSet>` | The synonymSets from the specified parent. |

### `GoogleCloudContentwarehouseV1LockDocumentRequest`

Request message for DocumentService.LockDocument.

| Property | Type | Description |
|----------|------|-------------|
| `collectionId` | `string` | The collection the document connects to. |
| `lockingUser` | `GoogleCloudContentwarehouseV1UserInfo` | The user information who locks the document. |

### `GoogleCloudContentwarehouseV1MapProperty`

Map property value. Represents a structured entries of key value pairs, consisting of field names which map to dynamically typed values.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | Unordered map of dynamically typed values. |

### `GoogleCloudContentwarehouseV1MapTypeOptions`

Configurations for a Map property.

### `GoogleCloudContentwarehouseV1MergeFieldsOptions`

Options for merging updated fields.

| Property | Type | Description |
|----------|------|-------------|
| `replaceMessageFields` | `boolean` | When merging message fields, the default behavior is to merge the content of two message fields t... |
| `replaceRepeatedFields` | `boolean` | When merging repeated fields, the default behavior is to append entries from the source repeated ... |

### `GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline`

The configuration of processing documents in Document Warehouse with DocAi processors pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<string>` | The list of all the resource names of the documents to be processed. Format: projects/{project_nu... |
| `exportFolderPath` | `string` | The Cloud Storage folder path used to store the exported documents before being sent to CDW. Form... |
| `processorInfo` | `GoogleCloudContentwarehouseV1ProcessorInfo` | The CDW processor information. |
| `processorResultsFolderPath` | `string` | The Cloud Storage folder path used to store the raw results from processors. Format: `gs:///`. |

### `GoogleCloudContentwarehouseV1ProcessorInfo`

The DocAI processor information.

| Property | Type | Description |
|----------|------|-------------|
| `documentType` | `string` | The processor will process the documents with this document type. |
| `processorName` | `string` | The processor resource name. Format is `projects/{project}/locations/{location}/processors/{proce... |
| `schemaName` | `string` | The Document schema resource name. All documents processed by this processor will use this schema... |

### `GoogleCloudContentwarehouseV1ProjectStatus`

Status of a project, including the project state, dbType, aclMode and etc.

| Property | Type | Description |
|----------|------|-------------|
| `accessControlMode` | `string` | Access control mode. |
| `databaseType` | `string` | Database type. |
| `documentCreatorDefaultRole` | `string` | The default role for the person who create a document. |
| `location` | `string` | The location of the queried project. |
| `qaEnabled` | `boolean` | If the qa is enabled on this project. |
| `state` | `string` | State of the project. |

### `GoogleCloudContentwarehouseV1Property`

Property of a document.

| Property | Type | Description |
|----------|------|-------------|
| `dateTimeValues` | `GoogleCloudContentwarehouseV1DateTimeArray` | Date time property values. It is not supported by CMEK compliant deployment. |
| `enumValues` | `GoogleCloudContentwarehouseV1EnumArray` | Enum property values. |
| `floatValues` | `GoogleCloudContentwarehouseV1FloatArray` | Float property values. |
| `integerValues` | `GoogleCloudContentwarehouseV1IntegerArray` | Integer property values. |
| `mapProperty` | `GoogleCloudContentwarehouseV1MapProperty` | Map property values. |
| `name` | `string` | Required. Must match the name of a PropertyDefinition in the DocumentSchema. |
| `propertyValues` | `GoogleCloudContentwarehouseV1PropertyArray` | Nested structured data property values. |
| `textValues` | `GoogleCloudContentwarehouseV1TextArray` | String/text property values. |
| `timestampValues` | `GoogleCloudContentwarehouseV1TimestampArray` | Timestamp property values. It is not supported by CMEK compliant deployment. |

### `GoogleCloudContentwarehouseV1PropertyArray`

Property values.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<GoogleCloudContentwarehouseV1Property>` | List of property values. |

### `GoogleCloudContentwarehouseV1PropertyDefinition`

Defines the metadata for a schema property.

| Property | Type | Description |
|----------|------|-------------|
| `dateTimeTypeOptions` | `GoogleCloudContentwarehouseV1DateTimeTypeOptions` | Date time property. It is not supported by CMEK compliant deployment. |
| `displayName` | `string` | The display-name for the property, used for front-end. |
| `enumTypeOptions` | `GoogleCloudContentwarehouseV1EnumTypeOptions` | Enum/categorical property. |
| `floatTypeOptions` | `GoogleCloudContentwarehouseV1FloatTypeOptions` | Float property. |
| `integerTypeOptions` | `GoogleCloudContentwarehouseV1IntegerTypeOptions` | Integer property. |
| `isFilterable` | `boolean` | Whether the property can be filtered. If this is a sub-property, all the parent properties must b... |
| `isMetadata` | `boolean` | Whether the property is user supplied metadata. This out-of-the box placeholder setting can be us... |
| `isRepeatable` | `boolean` | Whether the property can have multiple values. |
| `isRequired` | `boolean` | Whether the property is mandatory. Default is 'false', i.e. populating property value can be skip... |
| `isSearchable` | `boolean` | Indicates that the property should be included in a global search. |
| `mapTypeOptions` | `GoogleCloudContentwarehouseV1MapTypeOptions` | Map property. |
| `name` | `string` | Required. The name of the metadata property. Must be unique within a document schema and is case ... |
| `propertyTypeOptions` | `GoogleCloudContentwarehouseV1PropertyTypeOptions` | Nested structured data property. |
| `retrievalImportance` | `string` | The retrieval importance of the property during search. |
| `schemaSources` | `array<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>` | The mapping information between this property to another schema source. |
| `textTypeOptions` | `GoogleCloudContentwarehouseV1TextTypeOptions` | Text/string property. |
| `timestampTypeOptions` | `GoogleCloudContentwarehouseV1TimestampTypeOptions` | Timestamp property. It is not supported by CMEK compliant deployment. |

### `GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource`

The schema source information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The schema name in the source. |
| `processorType` | `string` | The Doc AI processor type name. |

### `GoogleCloudContentwarehouseV1PropertyFilter`

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The filter condition. The syntax for this expression is a subset of SQL syntax. Supported operato... |
| `documentSchemaName` | `string` | The Document schema name Document.document_schema_name. Format: projects/{project_number}/locatio... |

### `GoogleCloudContentwarehouseV1PropertyTypeOptions`

Configurations for a nested structured data property.

| Property | Type | Description |
|----------|------|-------------|
| `propertyDefinitions` | `array<GoogleCloudContentwarehouseV1PropertyDefinition>` | Required. List of property definitions. |

### `GoogleCloudContentwarehouseV1PublishAction`

Represents the action responsible for publishing messages to a Pub/Sub topic.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<string>` | Messages to be published. |
| `topicId` | `string` | The topic id in the Pub/Sub service for which messages will be published to. |

### `GoogleCloudContentwarehouseV1QAResult`

Additional result info for the question-answering feature.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The calibrated confidence score for this document, in the range [0., 1.]. This represents the con... |
| `highlights` | `array<GoogleCloudContentwarehouseV1QAResultHighlight>` | Highlighted sections in the snippet. |

### `GoogleCloudContentwarehouseV1QAResultHighlight`

A text span in the search text snippet that represents a highlighted section (answer context, highly relevant sentence, etc.).

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | End index of the highlight, exclusive. |
| `startIndex` | `integer` | Start index of the highlight. |

### `GoogleCloudContentwarehouseV1RemoveFromFolderAction`

Represents the action responsible for remove a document from a specific folder.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | Condition of the action to be executed. |
| `folder` | `string` | Name of the folder under which new document is to be added. Format: projects/{project_number}/loc... |

### `GoogleCloudContentwarehouseV1RequestMetadata`

Meta information is used to improve the performance of the service.

| Property | Type | Description |
|----------|------|-------------|
| `userInfo` | `GoogleCloudContentwarehouseV1UserInfo` | Provides user unique identification and groups information. |

### `GoogleCloudContentwarehouseV1ResponseMetadata`

Additional information returned to client, such as debugging information.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | A unique id associated with this call. This id is logged for tracking purpose. |

### `GoogleCloudContentwarehouseV1Rule`

Represents the rule for a content warehouse trigger.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudContentwarehouseV1Action>` | List of actions that are executed when the rule is satisfied. |
| `condition` | `string` | Represents the conditional expression to be evaluated. Expression should evaluate to a boolean re... |
| `description` | `string` | Short description of the rule and its context. |
| `ruleId` | `string` | ID of the rule. It has to be unique across all the examples. This is managed internally. |
| `triggerType` | `string` | Identifies the trigger type for running the policy. |

### `GoogleCloudContentwarehouseV1RuleActionsPair`

Represents a rule and outputs of associated actions.

| Property | Type | Description |
|----------|------|-------------|
| `actionOutputs` | `array<GoogleCloudContentwarehouseV1ActionOutput>` | Outputs of executing the actions associated with the above rule. |
| `rule` | `GoogleCloudContentwarehouseV1Rule` | Represents the rule. |

### `GoogleCloudContentwarehouseV1RuleEngineOutput`

Records the output of Rule Engine including rule evaluation and actions result.

| Property | Type | Description |
|----------|------|-------------|
| `actionExecutorOutput` | `GoogleCloudContentwarehouseV1ActionExecutorOutput` | Output from Action Executor containing rule and corresponding actions execution result. |
| `documentName` | `string` | Name of the document against which the rules and actions were evaluated. |
| `ruleEvaluatorOutput` | `GoogleCloudContentwarehouseV1RuleEvaluatorOutput` | Output from Rule Evaluator containing matched, unmatched and invalid rules. |

### `GoogleCloudContentwarehouseV1RuleEvaluatorOutput`

Represents the output of the Rule Evaluator.

| Property | Type | Description |
|----------|------|-------------|
| `invalidRules` | `array<GoogleCloudContentwarehouseV1InvalidRule>` | A subset of triggered rules that failed the validation check(s) after parsing. |
| `matchedRules` | `array<GoogleCloudContentwarehouseV1Rule>` | A subset of triggered rules that are evaluated true for a given request. |
| `triggeredRules` | `array<GoogleCloudContentwarehouseV1Rule>` | List of rules fetched from database for the given request trigger type. |

### `GoogleCloudContentwarehouseV1RuleSet`

Represents a set of rules from a single customer.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Short description of the rule-set. |
| `name` | `string` | The resource name of the rule set. Managed internally. Format: projects/{project_number}/location... |
| `rules` | `array<GoogleCloudContentwarehouseV1Rule>` | List of rules given by the customer. |
| `source` | `string` | Source of the rules i.e., customer name. |

### `GoogleCloudContentwarehouseV1RunPipelineMetadata`

Metadata message of RunPipeline method.

| Property | Type | Description |
|----------|------|-------------|
| `exportToCdwPipelineMetadata` | `GoogleCloudContentwarehouseV1RunPipelineMetadataExportToCdwPipelineMetadata` | The pipeline metadata for Export-to-CDW pipeline. |
| `failedFileCount` | `integer` | Number of files that have failed at some point in the pipeline. |
| `gcsIngestPipelineMetadata` | `GoogleCloudContentwarehouseV1RunPipelineMetadataGcsIngestPipelineMetadata` | The pipeline metadata for GcsIngest pipeline. |
| `individualDocumentStatuses` | `array<GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus>` | The list of response details of each document. |
| `processWithDocAiPipelineMetadata` | `GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata` | The pipeline metadata for Process-with-DocAi pipeline. |
| `totalFileCount` | `integer` | Number of files that were processed by the pipeline. |
| `userInfo` | `GoogleCloudContentwarehouseV1UserInfo` | User unique identification and groups information. |

### `GoogleCloudContentwarehouseV1RunPipelineMetadataExportToCdwPipelineMetadata`

The metadata message for Export-to-CDW pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `docAiDataset` | `string` | The output CDW dataset resource name. |
| `documents` | `array<string>` | The input list of all the resource names of the documents to be exported. |
| `outputPath` | `string` | The output Cloud Storage folder in this pipeline. |

### `GoogleCloudContentwarehouseV1RunPipelineMetadataGcsIngestPipelineMetadata`

The metadata message for GcsIngest pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `inputPath` | `string` | The input Cloud Storage folder in this pipeline. Format: `gs:///`. |

### `GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus`

The status of processing a document.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | Document identifier of an existing document. |
| `status` | `GoogleRpcStatus` | The status processing the document. |

### `GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata`

The metadata message for Process-with-DocAi pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<string>` | The input list of all the resource names of the documents to be processed. |
| `processorInfo` | `GoogleCloudContentwarehouseV1ProcessorInfo` | The DocAI processor to process the documents with. |

### `GoogleCloudContentwarehouseV1RunPipelineRequest`

Request message for DocumentService.RunPipeline.

| Property | Type | Description |
|----------|------|-------------|
| `exportCdwPipeline` | `GoogleCloudContentwarehouseV1ExportToCdwPipeline` | Export docuemnts from Document Warehouse to CDW for training purpose. |
| `gcsIngestPipeline` | `GoogleCloudContentwarehouseV1GcsIngestPipeline` | Cloud Storage ingestion pipeline. |
| `gcsIngestWithDocAiProcessorsPipeline` | `GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline` | Use DocAI processors to process documents in Cloud Storage and ingest them to Document Warehouse. |
| `processWithDocAiPipeline` | `GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline` | Use a DocAI processor to process documents in Document Warehouse, and re-ingest the updated resul... |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1SearchDocumentsRequest`

Request message for DocumentService.SearchDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `documentQuery` | `GoogleCloudContentwarehouseV1DocumentQuery` | Query used to search against documents (keyword, filters, etc.). |
| `histogramQueries` | `array<GoogleCloudContentwarehouseV1HistogramQuery>` | An expression specifying a histogram request against matching documents. Expression syntax is an ... |
| `offset` | `integer` | An integer that specifies the current offset (that is, starting result location, amongst the docu... |
| `orderBy` | `string` | The criteria determining how search results are sorted. For non-empty query, default is `"relevan... |
| `pageSize` | `integer` | A limit on the number of documents returned in the search results. Increasing this value above th... |
| `pageToken` | `string` | The token specifying the current offset within search results. See SearchDocumentsResponse.next_p... |
| `qaSizeLimit` | `integer` | Experimental, do not use. The limit on the number of documents returned for the question-answerin... |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control and improve the... |
| `requireTotalSize` | `boolean` | Controls if the search document request requires the return of a total size of matched documents.... |
| `totalResultSize` | `string` | Controls if the search document request requires the return of a total size of matched documents.... |

### `GoogleCloudContentwarehouseV1SearchDocumentsResponse`

Response message for DocumentService.SearchDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `histogramQueryResults` | `array<GoogleCloudContentwarehouseV1HistogramQueryResult>` | The histogram results that match with the specified SearchDocumentsRequest.histogram_queries. |
| `matchingDocuments` | `array<GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument>` | The document entities that match the specified SearchDocumentsRequest. |
| `metadata` | `GoogleCloudContentwarehouseV1ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `nextPageToken` | `string` | The token that specifies the starting position of the next page of results. This field is empty i... |
| `questionAnswer` | `string` | Experimental. Question answer from the query against the document. |
| `totalSize` | `integer` | The total number of matched documents which is available only if the client set SearchDocumentsRe... |

### `GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument`

Document entry with metadata inside SearchDocumentsResponse

| Property | Type | Description |
|----------|------|-------------|
| `document` | `GoogleCloudContentwarehouseV1Document` | Document that matches the specified SearchDocumentsRequest. This document only contains indexed m... |
| `matchedTokenPageIndices` | `array<string>` | Return the 1-based page indices where those pages have one or more matched tokens. |
| `qaResult` | `GoogleCloudContentwarehouseV1QAResult` | Experimental. Additional result info if the question-answering feature is enabled. |
| `searchTextSnippet` | `string` | Contains snippets of text from the document full raw text that most closely match a search query'... |

### `GoogleCloudContentwarehouseV1SetAclRequest`

Request message for DocumentService.SetAcl.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | Required. REQUIRED: The complete policy to be applied to the `resource`. The size of the policy i... |
| `projectOwner` | `boolean` | For Set Project ACL only. Authorization check for end user will be ignored when project_owner=true. |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |

### `GoogleCloudContentwarehouseV1SetAclResponse`

Response message for DocumentService.SetAcl.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `GoogleCloudContentwarehouseV1ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `policy` | `GoogleIamV1Policy` | The policy will be attached to a resource (e.g. projecct, document). |

### `GoogleCloudContentwarehouseV1SynonymSet`

Represents a list of synonyms for a given context. For example a context "sales" could contain: Synonym 1: sale, invoice, bill, order Synonym 2: money, credit, finance, payment Synonym 3: shipping, freight, transport Each SynonymSets should be disjoint

| Property | Type | Description |
|----------|------|-------------|
| `context` | `string` | This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "account... |
| `name` | `string` | The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{... |
| `synonyms` | `array<GoogleCloudContentwarehouseV1SynonymSetSynonym>` | List of Synonyms for the context. |

### `GoogleCloudContentwarehouseV1SynonymSetSynonym`

Represents a list of words given by the customer All these words are synonyms of each other.

| Property | Type | Description |
|----------|------|-------------|
| `words` | `array<string>` | For example: sale, invoice, bill, order |

### `GoogleCloudContentwarehouseV1TextArray`

String/text values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | List of text values. |

### `GoogleCloudContentwarehouseV1TextTypeOptions`

Configurations for a text property.

### `GoogleCloudContentwarehouseV1TimeFilter`

Filter on create timestamp or update timestamp of documents.

| Property | Type | Description |
|----------|------|-------------|
| `timeField` | `string` | Specifies which time field to filter documents on. Defaults to TimeField.UPLOAD_TIME. |
| `timeRange` | `GoogleTypeInterval` |  |

### `GoogleCloudContentwarehouseV1TimestampArray`

Timestamp values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GoogleCloudContentwarehouseV1TimestampValue>` | List of timestamp values. |

### `GoogleCloudContentwarehouseV1TimestampTypeOptions`

Configurations for a timestamp property.

### `GoogleCloudContentwarehouseV1TimestampValue`

Timestamp value type.

| Property | Type | Description |
|----------|------|-------------|
| `textValue` | `string` | The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFor... |
| `timestampValue` | `string` | Timestamp value |

### `GoogleCloudContentwarehouseV1UpdateDocumentMetadata`

Metadata object for UpdateDocument request (currently empty).

### `GoogleCloudContentwarehouseV1UpdateDocumentRequest`

Request message for DocumentService.UpdateDocument.

| Property | Type | Description |
|----------|------|-------------|
| `cloudAiDocumentOption` | `GoogleCloudContentwarehouseV1CloudAIDocumentOption` | Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited ... |
| `document` | `GoogleCloudContentwarehouseV1Document` | Required. The document to update. |
| `requestMetadata` | `GoogleCloudContentwarehouseV1RequestMetadata` | The meta information collected about the end user, used to enforce access control for the service. |
| `updateOptions` | `GoogleCloudContentwarehouseV1UpdateOptions` | Options for the update operation. |

### `GoogleCloudContentwarehouseV1UpdateDocumentResponse`

Response message for DocumentService.UpdateDocument.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `GoogleCloudContentwarehouseV1Document` | Updated document after executing update request. |
| `metadata` | `GoogleCloudContentwarehouseV1ResponseMetadata` | Additional information for the API invocation, such as the request tracking id. |
| `ruleEngineOutput` | `GoogleCloudContentwarehouseV1RuleEngineOutput` | Output from Rule Engine recording the rule evaluator and action executor's output. Refer format i... |

### `GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest`

Request message for DocumentSchemaService.UpdateDocumentSchema.

| Property | Type | Description |
|----------|------|-------------|
| `documentSchema` | `GoogleCloudContentwarehouseV1DocumentSchema` | Required. The document schema to update with. |

### `GoogleCloudContentwarehouseV1UpdateOptions`

Options for Update operations.

| Property | Type | Description |
|----------|------|-------------|
| `mergeFieldsOptions` | `GoogleCloudContentwarehouseV1MergeFieldsOptions` | Options for merging. |
| `updateMask` | `string` | Field mask for merging Document fields. For the `FieldMask` definition, see https://developers.go... |
| `updateType` | `string` | Type for update. |

### `GoogleCloudContentwarehouseV1UpdateRuleSetRequest`

Request message for RuleSetService.UpdateRuleSet.

| Property | Type | Description |
|----------|------|-------------|
| `ruleSet` | `GoogleCloudContentwarehouseV1RuleSet` | Required. The rule set to update. |

### `GoogleCloudContentwarehouseV1UserInfo`

The user information.

| Property | Type | Description |
|----------|------|-------------|
| `groupIds` | `array<string>` | The unique group identifications which the user is belong to. The format is "group:yyyy@example.c... |
| `id` | `string` | A unique user identification string, as determined by the client. The maximum number of allowed c... |

### `GoogleCloudContentwarehouseV1Value`

`Value` represents a dynamically typed value which can be either be a float, a integer, a string, or a datetime value. A producer of value is expected to set one of these variants. Absence of any variant indicates an error.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` | Represents a boolean value. |
| `datetimeValue` | `GoogleTypeDateTime` | Represents a datetime value. |
| `enumValue` | `GoogleCloudContentwarehouseV1EnumValue` | Represents an enum value. |
| `floatValue` | `number` | Represents a float value. |
| `intValue` | `integer` | Represents a integer value. |
| `stringValue` | `string` | Represents a string value. |
| `timestampValue` | `GoogleCloudContentwarehouseV1TimestampValue` | Represents a timestamp value. |

### `GoogleCloudContentwarehouseV1WeightedSchemaProperty`

Specifies the schema property name.

| Property | Type | Description |
|----------|------|-------------|
| `documentSchemaName` | `string` | The document schema name. |
| `propertyNames` | `array<string>` | The property definition names in the schema. |

### `GoogleCloudContentwarehouseV1beta1CreateDocumentMetadata`

Metadata object for CreateDocument request (currently empty).

### `GoogleCloudContentwarehouseV1beta1InitializeProjectResponse`

Response message for projectService.InitializeProject

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message of the project initialization process. |
| `state` | `string` | The state of the project initialization process. |

### `GoogleCloudContentwarehouseV1beta1UpdateDocumentMetadata`

Metadata object for UpdateDocument request (currently empty).

### `GoogleCloudDocumentaiV1Barcode`

Encodes the detailed information of a barcode.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39... |
| `rawValue` | `string` | Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`. |
| `valueFormat` | `string` | Value format describes the format of the value that a barcode encodes. The supported formats are:... |

### `GoogleCloudDocumentaiV1BoundingPoly`

A bounding polygon for the detected image annotation.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedVertices` | `array<GoogleCloudDocumentaiV1NormalizedVertex>` | The bounding polygon normalized vertices. |
| `vertices` | `array<GoogleCloudDocumentaiV1Vertex>` | The bounding polygon vertices. |

### `GoogleCloudDocumentaiV1Document`

Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.

| Property | Type | Description |
|----------|------|-------------|
| `chunkedDocument` | `GoogleCloudDocumentaiV1DocumentChunkedDocument` | Document chunked based on chunking config. |
| `content` | `string` | Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fi... |
| `documentLayout` | `GoogleCloudDocumentaiV1DocumentDocumentLayout` | Parsed layout of the document. |
| `entities` | `array<GoogleCloudDocumentaiV1DocumentEntity>` | A list of entities detected on Document.text. For document shards, entities in this list may cros... |
| `entityRelations` | `array<GoogleCloudDocumentaiV1DocumentEntityRelation>` | Placeholder. Relationship among Document.entities. |
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

### `GoogleCloudDocumentaiV1DocumentEntity`

An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Optional. Confidence of detected Schema entity. Range `[0, 1]`. |
| `id` | `string` | Optional. Canonical id. This will be a unique value in the entity list for this document. |
| `mentionId` | `string` | Optional. Deprecated. Use `id` field instead. |
| `mentionText` | `string` | Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`. |
| `normalizedValue` | `GoogleCloudDocumentaiV1DocumentEntityNormalizedValue` | Optional. Normalized entity value. Absent if the extracted value could not be converted or the ty... |
| `pageAnchor` | `GoogleCloudDocumentaiV1DocumentPageAnchor` | Optional. Represents the provenance of this entity wrt. the location on the page where it was found. |
| `properties` | `array<GoogleCloudDocumentaiV1DocumentEntity>` | Optional. Entities can be nested to form a hierarchical data structure representing the content i... |
| `provenance` | `GoogleCloudDocumentaiV1DocumentProvenance` | Optional. The history of this annotation. |
| `redacted` | `boolean` | Optional. Whether the entity will be redacted for de-identification purposes. |
| `textAnchor` | `GoogleCloudDocumentaiV1DocumentTextAnchor` | Optional. Provenance of the entity. Text anchor indexing into the Document.text. |
| `type` | `string` | Required. Entity type from a schema e.g. `Address`. |

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
| `text` | `string` | Optional. An optional field to store a normalized string. For some entity types, one of respectiv... |

### `GoogleCloudDocumentaiV1DocumentEntityRelation`

Relationship between Entities.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `string` | Object entity id. |
| `relation` | `string` | Relationship description. |
| `subjectId` | `string` | Subject entity id. |

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
| `visualElements` | `array<GoogleCloudDocumentaiV1DocumentPageVisualElement>` | A list of detected non-text visual elements e.g. checkbox, signature etc. on the page. |

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
| `fieldName` | `GoogleCloudDocumentaiV1DocumentPageLayout` | Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc. |
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
| `confidence` | `number` | Confidence of the current Layout within context of the object this layout is for. e.g. confidence... |
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

Detected non-text visual elements e.g. checkbox, signature etc. on the page.

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
| `state` | `string` | Human review state. e.g. `requested`, `succeeded`, `rejected`. |
| `stateMessage` | `string` | A message providing more details about the current state of processing. For example, the rejectio... |

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

### `GoogleCloudDocumentaiV1NormalizedVertex`

A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `number` | X coordinate. |
| `y` | `number` | Y coordinate (starts from the top of the image). |

### `GoogleCloudDocumentaiV1Vertex`

A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.

| Property | Type | Description |
|----------|------|-------------|
| `x` | `integer` | X coordinate. |
| `y` | `integer` | Y coordinate (starts from the top of the image). |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

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

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GoogleTypeInterval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `GoogleTypeMoney`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `GoogleTypePostalAddress`

Represents a postal address. For example for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in address_l... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune,... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts. |

### `GoogleTypeTimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

