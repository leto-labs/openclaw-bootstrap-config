# Vertex AI Search for commerce API - API Reference

**Version**: `v2` | **Methods**: 71 | **Schemas**: 275

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `retail.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `retail.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `retail.projects.locations.catalogs.exportAnalyticsMetrics` | POST | `v2/{+catalog}:exportAnalyticsMetrics` | Exports analytics metrics. `Operation.response` is of type `ExportAnalyticsMetricsResponse`. `Ope... |
| `retail.projects.locations.catalogs.list` | GET | `v2/{+parent}/catalogs` | Lists all the Catalogs associated with the project. |
| `retail.projects.locations.catalogs.patch` | PATCH | `v2/{+name}` | Updates the Catalogs. |
| `retail.projects.locations.catalogs.setDefaultBranch` | POST | `v2/{+catalog}:setDefaultBranch` | Set a specified branch id as default branch. API methods such as SearchService.Search, ProductSer... |
| `retail.projects.locations.catalogs.getDefaultBranch` | GET | `v2/{+catalog}:getDefaultBranch` | Get which branch is currently default branch set by CatalogService.SetDefaultBranch method under ... |
| `retail.projects.locations.catalogs.getCompletionConfig` | GET | `v2/{+name}` | Gets a CompletionConfig. |
| `retail.projects.locations.catalogs.updateCompletionConfig` | PATCH | `v2/{+name}` | Updates the CompletionConfigs. |
| `retail.projects.locations.catalogs.getAttributesConfig` | GET | `v2/{+name}` | Gets an AttributesConfig. |
| `retail.projects.locations.catalogs.updateAttributesConfig` | PATCH | `v2/{+name}` | Updates the AttributesConfig. The catalog attributes in the request will be updated in the catalo... |
| `retail.projects.locations.catalogs.completeQuery` | GET | `v2/{+catalog}:completeQuery` | Completes the specified prefix with keyword suggestions. This feature is only available for users... |
| `retail.projects.locations.catalogs.updateGenerativeQuestionFeature` | PATCH | `v2/{+catalog}/generativeQuestionFeature` | Manages overal generative question feature state -- enables toggling feature on and off. |
| `retail.projects.locations.catalogs.getGenerativeQuestionFeature` | GET | `v2/{+catalog}/generativeQuestionFeature` | Manages overal generative question feature state -- enables toggling feature on and off. |
| `retail.projects.locations.catalogs.updateGenerativeQuestion` | PATCH | `v2/{+catalog}/generativeQuestion` | Allows management of individual questions. |
| `retail.projects.locations.catalogs.getConversationalSearchCustomizationConfig` | GET | `v2/{+name}/conversationalSearchCustomizationConfig` | Returns the conversational search customization config for a given catalog. |
| `retail.projects.locations.catalogs.updateConversationalSearchCustomizationConfig` | PATCH | `v2/{+catalog}/conversationalSearchCustomizationConfig` | Updates the conversational search customization config for a given catalog. |
| `retail.projects.locations.catalogs.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `retail.projects.locations.catalogs.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `retail.projects.locations.catalogs.branches.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `retail.projects.locations.catalogs.branches.products.create` | POST | `v2/{+parent}/products` | Creates a Product. |
| `retail.projects.locations.catalogs.branches.products.get` | GET | `v2/{+name}` | Gets a Product. |
| `retail.projects.locations.catalogs.branches.products.list` | GET | `v2/{+parent}/products` | Gets a list of Products. |
| `retail.projects.locations.catalogs.branches.products.patch` | PATCH | `v2/{+name}` | Updates a Product. |
| `retail.projects.locations.catalogs.branches.products.delete` | DELETE | `v2/{+name}` | Deletes a Product. |
| `retail.projects.locations.catalogs.branches.products.purge` | POST | `v2/{+parent}/products:purge` | Permanently deletes all selected Products under a branch. This process is asynchronous. If the re... |
| `retail.projects.locations.catalogs.branches.products.import` | POST | `v2/{+parent}/products:import` | Bulk import of multiple Products. Request processing may be synchronous. Non-existing items are c... |
| `retail.projects.locations.catalogs.branches.products.setInventory` | POST | `v2/{+name}:setInventory` | Updates inventory information for a Product while respecting the last update timestamps of each i... |
| `retail.projects.locations.catalogs.branches.products.addFulfillmentPlaces` | POST | `v2/{+product}:addFulfillmentPlaces` | We recommend that you use the ProductService.AddLocalInventories method instead of the ProductSer... |
| `retail.projects.locations.catalogs.branches.products.removeFulfillmentPlaces` | POST | `v2/{+product}:removeFulfillmentPlaces` | We recommend that you use the ProductService.RemoveLocalInventories method instead of the Product... |
| `retail.projects.locations.catalogs.branches.products.addLocalInventories` | POST | `v2/{+product}:addLocalInventories` | Updates local inventory information for a Product at a list of places, while respecting the last ... |
| `retail.projects.locations.catalogs.branches.products.removeLocalInventories` | POST | `v2/{+product}:removeLocalInventories` | Remove local inventory information for a Product at a list of places at a removal timestamp. This... |
| `retail.projects.locations.catalogs.attributesConfig.addCatalogAttribute` | POST | `v2/{+attributesConfig}:addCatalogAttribute` | Adds the specified CatalogAttribute to the AttributesConfig. If the CatalogAttribute to add alrea... |
| `retail.projects.locations.catalogs.attributesConfig.removeCatalogAttribute` | POST | `v2/{+attributesConfig}:removeCatalogAttribute` | Removes the specified CatalogAttribute from the AttributesConfig. If the CatalogAttribute to remo... |
| `retail.projects.locations.catalogs.attributesConfig.replaceCatalogAttribute` | POST | `v2/{+attributesConfig}:replaceCatalogAttribute` | Replaces the specified CatalogAttribute in the AttributesConfig by updating the catalog attribute... |
| `retail.projects.locations.catalogs.placements.search` | POST | `v2/{+placement}:search` | Performs a search. This feature is only available for users who have Retail Search enabled. Enabl... |
| `retail.projects.locations.catalogs.placements.conversationalSearch` | POST | `v2/{+placement}:conversationalSearch` | Performs a conversational search. This feature is only available for users who have Conversationa... |
| `retail.projects.locations.catalogs.placements.predict` | POST | `v2/{+placement}:predict` | Makes a recommendation prediction. |
| `retail.projects.locations.catalogs.servingConfigs.search` | POST | `v2/{+placement}:search` | Performs a search. This feature is only available for users who have Retail Search enabled. Enabl... |
| `retail.projects.locations.catalogs.servingConfigs.conversationalSearch` | POST | `v2/{+placement}:conversationalSearch` | Performs a conversational search. This feature is only available for users who have Conversationa... |
| `retail.projects.locations.catalogs.servingConfigs.predict` | POST | `v2/{+placement}:predict` | Makes a recommendation prediction. |
| `retail.projects.locations.catalogs.servingConfigs.create` | POST | `v2/{+parent}/servingConfigs` | Creates a ServingConfig. A maximum of 100 ServingConfigs are allowed in a Catalog, otherwise a FA... |
| `retail.projects.locations.catalogs.servingConfigs.delete` | DELETE | `v2/{+name}` | Deletes a ServingConfig. Returns a NotFound error if the ServingConfig does not exist. |
| `retail.projects.locations.catalogs.servingConfigs.patch` | PATCH | `v2/{+name}` | Updates a ServingConfig. |
| `retail.projects.locations.catalogs.servingConfigs.get` | GET | `v2/{+name}` | Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist. |
| `retail.projects.locations.catalogs.servingConfigs.list` | GET | `v2/{+parent}/servingConfigs` | Lists all ServingConfigs linked to this catalog. |
| `retail.projects.locations.catalogs.servingConfigs.addControl` | POST | `v2/{+servingConfig}:addControl` | Enables a Control on the specified ServingConfig. The control is added in the last position of th... |
| `retail.projects.locations.catalogs.servingConfigs.removeControl` | POST | `v2/{+servingConfig}:removeControl` | Disables a Control on the specified ServingConfig. The control is removed from the ServingConfig.... |
| `retail.projects.locations.catalogs.completionData.import` | POST | `v2/{+parent}/completionData:import` | Bulk import of processed completion dataset. Request processing is asynchronous. Partial updating... |
| `retail.projects.locations.catalogs.controls.create` | POST | `v2/{+parent}/controls` | Creates a Control. If the Control to create already exists, an ALREADY_EXISTS error is returned. |
| `retail.projects.locations.catalogs.controls.delete` | DELETE | `v2/{+name}` | Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned. |
| `retail.projects.locations.catalogs.controls.patch` | PATCH | `v2/{+name}` | Updates a Control. Control cannot be set to a different oneof field, if so an INVALID_ARGUMENT is... |
| `retail.projects.locations.catalogs.controls.get` | GET | `v2/{+name}` | Gets a Control. |
| `retail.projects.locations.catalogs.controls.list` | GET | `v2/{+parent}/controls` | Lists all Controls by their parent Catalog. |
| `retail.projects.locations.catalogs.generativeQuestions.list` | GET | `v2/{+parent}/generativeQuestions` | Returns all questions for a given catalog. |
| `retail.projects.locations.catalogs.generativeQuestion.batchUpdate` | POST | `v2/{+parent}/generativeQuestion:batchUpdate` | Allows management of multiple questions. |
| `retail.projects.locations.catalogs.models.create` | POST | `v2/{+parent}/models` | Creates a new model. |
| `retail.projects.locations.catalogs.models.get` | GET | `v2/{+name}` | Gets a model. |
| `retail.projects.locations.catalogs.models.pause` | POST | `v2/{+name}:pause` | Pauses the training of an existing model. |
| `retail.projects.locations.catalogs.models.resume` | POST | `v2/{+name}:resume` | Resumes the training of an existing model. |
| `retail.projects.locations.catalogs.models.delete` | DELETE | `v2/{+name}` | Deletes an existing model. |
| `retail.projects.locations.catalogs.models.list` | GET | `v2/{+parent}/models` | Lists all the models linked to this event store. |
| `retail.projects.locations.catalogs.models.patch` | PATCH | `v2/{+name}` | Update of model metadata. Only fields that currently can be updated are: `filtering_option` and `... |
| `retail.projects.locations.catalogs.models.tune` | POST | `v2/{+name}:tune` | Tunes an existing model. |
| `retail.projects.locations.catalogs.userEvents.write` | POST | `v2/{+parent}/userEvents:write` | Writes a single user event. |
| `retail.projects.locations.catalogs.userEvents.collect` | POST | `v2/{+parent}/userEvents:collect` | Writes a single user event from the browser. For larger user event payload over 16 KB, the POST m... |
| `retail.projects.locations.catalogs.userEvents.purge` | POST | `v2/{+parent}/userEvents:purge` | Deletes permanently all user events specified by the filter provided. Depending on the number of ... |
| `retail.projects.locations.catalogs.userEvents.import` | POST | `v2/{+parent}/userEvents:import` | Bulk import of User events. Request processing might be synchronous. Events that already exist ar... |
| `retail.projects.locations.catalogs.userEvents.rejoin` | POST | `v2/{+parent}/userEvents:rejoin` | Starts a user-event rejoin operation with latest product catalog. Events are not annotated with d... |
| `retail.projects.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `retail.projects.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `retail.projects.locations.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await retail.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.exportAnalyticsMetrics`

**POST** `v2/{+catalog}:exportAnalyticsMetrics`

Exports analytics metrics. `Operation.response` is of type `ExportAnalyticsMetricsResponse`. `Operation.metadata` is of type `ExportMetadata`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Full resource name of the parent catalog. Expected format: `projects/*/locations/*/catalogs/*` |

**Request body**: `GoogleCloudRetailV2ExportAnalyticsMetricsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.catalogs.exportAnalyticsMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.list`

**GET** `v2/{+parent}/catalogs`

Lists all the Catalogs associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account resource name with an associated location. If the caller does not have permission to list Catal... |
| `pageSize` | `integer` | query | No | Maximum number of Catalogs to return. If unspecified, defaults to 50. The maximum allowed value is 1000. Values above... |
| `pageToken` | `string` | query | No | A page token ListCatalogsResponse.next_page_token, received from a previous CatalogService.ListCatalogs call. Provide... |

**Response**: `GoogleCloudRetailV2ListCatalogsResponse`

```typescript
const res = await retail.catalogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.patch`

**PATCH** `v2/{+name}`

Updates the Catalogs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Immutable. The fully qualified resource name of the catalog. |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Catalog to update. If an unsupported or unknown field is provided, an INVALID_... |

**Request body**: `GoogleCloudRetailV2Catalog`

**Response**: `GoogleCloudRetailV2Catalog`

```typescript
const res = await retail.catalogs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.setDefaultBranch`

**POST** `v2/{+catalog}:setDefaultBranch`

Set a specified branch id as default branch. API methods such as SearchService.Search, ProductService.GetProduct, ProductService.ListProducts will treat requests using "default_branch" to the actual branch id set as default. For example, if `projects/*/locations/*/catalogs/*/branches/1` is set as default, setting SearchRequest.branch to `projects/*/locations/*/catalogs/*/branches/default_branch` is equivalent to setting SearchRequest.branch to `projects/*/locations/*/catalogs/*/branches/1`. Using multiple branches can be useful when developers would like to have a staging branch to test and verify for future usage. When it becomes ready, developers switch on the staging branch using this API while keeping using `projects/*/locations/*/catalogs/*/branches/default_branch` as SearchRequest.branch to route the traffic to this staging branch. CAUTION: If you have live predict/search traffic, switching the default branch could potentially cause outages if the ID space of the new branch is very different from the old one. More specifically: * PredictionService will only return product IDs from branch {newBranch}. * SearchService will only return product IDs from branch {newBranch} (if branch is not explicitly set). * UserEventService will only join events with products from branch {newBranch}.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Full resource name of the catalog, such as `projects/*/locations/global/catalogs/default_catalog`. |

**Request body**: `GoogleCloudRetailV2SetDefaultBranchRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await retail.catalogs.setDefaultBranch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.getDefaultBranch`

**GET** `v2/{+catalog}:getDefaultBranch`

Get which branch is currently default branch set by CatalogService.SetDefaultBranch method under a specified parent catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | The parent catalog resource name, such as `projects/*/locations/global/catalogs/default_catalog`. |

**Response**: `GoogleCloudRetailV2GetDefaultBranchResponse`

```typescript
const res = await retail.catalogs.getDefaultBranch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.getCompletionConfig`

**GET** `v2/{+name}`

Gets a CompletionConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full CompletionConfig resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |

**Response**: `GoogleCloudRetailV2CompletionConfig`

```typescript
const res = await retail.catalogs.getCompletionConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.updateCompletionConfig`

**PATCH** `v2/{+name}`

Updates the CompletionConfigs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Immutable. Fully qualified name `projects/*/locations/*/catalogs/*/completionConfig` |
| `updateMask` | `string` | query | No | Indicates which fields in the provided CompletionConfig to update. The following are the only supported fields: * Com... |

**Request body**: `GoogleCloudRetailV2CompletionConfig`

**Response**: `GoogleCloudRetailV2CompletionConfig`

```typescript
const res = await retail.catalogs.updateCompletionConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.getAttributesConfig`

**GET** `v2/{+name}`

Gets an AttributesConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full AttributesConfig resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |

**Response**: `GoogleCloudRetailV2AttributesConfig`

```typescript
const res = await retail.catalogs.getAttributesConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.updateAttributesConfig`

**PATCH** `v2/{+name}`

Updates the AttributesConfig. The catalog attributes in the request will be updated in the catalog, or inserted if they do not exist. Existing catalog attributes not included in the request will remain unchanged. Attributes that are assigned to products, but do not exist at the catalog level, are always included in the response. The product attribute is assigned default values for missing catalog attribute fields, e.g., searchable and dynamic facetable options.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Immutable. The fully qualified resource name of the attribute config. Format: `projects/*/locations/*/catal... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided AttributesConfig to update. The following is the only supported field: * Attri... |

**Request body**: `GoogleCloudRetailV2AttributesConfig`

**Response**: `GoogleCloudRetailV2AttributesConfig`

```typescript
const res = await retail.catalogs.updateAttributesConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.completeQuery`

**GET** `v2/{+catalog}:completeQuery`

Completes the specified prefix with keyword suggestions. This feature is only available for users who have Retail Search enabled. Enable Retail Search on Cloud Console before using this feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Catalog for which the completion is performed. Full resource name of catalog, such as `projects/*/locations... |
| `dataset` | `string` | query | No | Determines which dataset to use for fetching completion. "user-data" will use the dataset imported through Completion... |
| `deviceType` | `string` | query | No | The device type context for completion suggestions. We recommend that you leave this field empty. It can apply differ... |
| `enableAttributeSuggestions` | `boolean` | query | No | If true, attribute suggestions are enabled and provided in the response. This field is only available for the `cloud-... |
| `entity` | `string` | query | No | The entity for customers who run multiple entities, domains, sites, or regions, for example, `Google US`, `Google Ads... |
| `languageCodes` | `string` | query | No | Note that this field applies for `user-data` dataset only. For requests with `cloud-retail` dataset, setting this fie... |
| `maxSuggestions` | `integer` | query | No | Completion max suggestions. If left unset or set to 0, then will fallback to the configured value CompletionConfig.ma... |
| `query` | `string` | query | No | Required. The query used to generate suggestions. The maximum number of allowed characters is 255. |
| `visitorId` | `string` | query | No | Recommended field. A unique identifier for tracking visitors. For example, this could be implemented with an HTTP coo... |

**Response**: `GoogleCloudRetailV2CompleteQueryResponse`

```typescript
const res = await retail.catalogs.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.updateGenerativeQuestionFeature`

**PATCH** `v2/{+catalog}/generativeQuestionFeature`

Manages overal generative question feature state -- enables toggling feature on and off.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Resource name of the affected catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided GenerativeQuestionsFeatureConfig to update. If not set or empty, all... |

**Request body**: `GoogleCloudRetailV2GenerativeQuestionsFeatureConfig`

**Response**: `GoogleCloudRetailV2GenerativeQuestionsFeatureConfig`

```typescript
const res = await retail.catalogs.updateGenerativeQuestionFeature({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.getGenerativeQuestionFeature`

**GET** `v2/{+catalog}/generativeQuestionFeature`

Manages overal generative question feature state -- enables toggling feature on and off.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Resource name of the parent catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |

**Response**: `GoogleCloudRetailV2GenerativeQuestionsFeatureConfig`

```typescript
const res = await retail.catalogs.getGenerativeQuestionFeature({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.updateGenerativeQuestion`

**PATCH** `v2/{+catalog}/generativeQuestion`

Allows management of individual questions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Resource name of the catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided GenerativeQuestionConfig to update. The following are NOT supported:... |

**Request body**: `GoogleCloudRetailV2GenerativeQuestionConfig`

**Response**: `GoogleCloudRetailV2GenerativeQuestionConfig`

```typescript
const res = await retail.catalogs.updateGenerativeQuestion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.getConversationalSearchCustomizationConfig`

**GET** `v2/{+name}/conversationalSearchCustomizationConfig`

Returns the conversational search customization config for a given catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the parent catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |

**Response**: `GoogleCloudRetailV2ConversationalSearchCustomizationConfig`

```typescript
const res = await retail.catalogs.getConversationalSearchCustomizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.updateConversationalSearchCustomizationConfig`

**PATCH** `v2/{+catalog}/conversationalSearchCustomizationConfig`

Updates the conversational search customization config for a given catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `catalog` | `string` | path | Yes | Required. Resource name of the catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided ConversationalSearchCustomizationConfig to update. If not set or emp... |

**Request body**: `GoogleCloudRetailV2ConversationalSearchCustomizationConfig`

**Response**: `GoogleCloudRetailV2ConversationalSearchCustomizationConfig`

```typescript
const res = await retail.catalogs.updateConversationalSearchCustomizationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await retail.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.create`

**POST** `v2/{+parent}/products`

Creates a Product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog resource name, such as `projects/*/locations/global/catalogs/default_catalog/branches/de... |
| `productId` | `string` | query | No | Required. The ID to use for the Product, which will become the final component of the Product.name. If the caller doe... |

**Request body**: `GoogleCloudRetailV2Product`

**Response**: `GoogleCloudRetailV2Product`

```typescript
const res = await retail.products.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.get`

**GET** `v2/{+name}`

Gets a Product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Response**: `GoogleCloudRetailV2Product`

```typescript
const res = await retail.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.list`

**GET** `v2/{+parent}/products`

Gets a list of Products.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/*/locations/global/catalogs/default_catalog/branches/0`.... |
| `filter` | `string` | query | No | A filter to apply on the list results. Supported features: * List all the products under the parent branch if filter ... |
| `pageSize` | `integer` | query | No | Maximum number of Products to return. If unspecified, defaults to 100. The maximum allowed value is 1000. Values abov... |
| `pageToken` | `string` | query | No | A page token ListProductsResponse.next_page_token, received from a previous ProductService.ListProducts call. Provide... |
| `readMask` | `string` | query | No | The fields of Product to return in the responses. If not set or empty, the following fields are returned: * Product.n... |

**Response**: `GoogleCloudRetailV2ListProductsResponse`

```typescript
const res = await retail.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.patch`

**PATCH** `v2/{+name}`

Updates a Product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Full resource name of the product, such as `projects/*/locations/global/catalogs/default_catalog/branches/... |
| `allowMissing` | `boolean` | query | No | If set to true, and the Product is not found, a new Product will be created. In this situation, `update_mask` is igno... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Product to update. The immutable and output only fields are NOT supported. If ... |

**Request body**: `GoogleCloudRetailV2Product`

**Response**: `GoogleCloudRetailV2Product`

```typescript
const res = await retail.products.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.delete`

**DELETE** `v2/{+name}`

Deletes a Product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await retail.products.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.purge`

**POST** `v2/{+parent}/products:purge`

Permanently deletes all selected Products under a branch. This process is asynchronous. If the request is valid, the removal will be enqueued and processed offline. Depending on the number of Products, this operation could take hours to complete. Before the operation completes, some Products may still be returned by ProductService.GetProduct or ProductService.ListProducts. Depending on the number of Products, this operation could take hours to complete. To get a sample of Products that would be deleted, set PurgeProductsRequest.force to false.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the branch under which the products are created. The format is `projects/${projectId}/... |

**Request body**: `GoogleCloudRetailV2PurgeProductsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.import`

**POST** `v2/{+parent}/products:import`

Bulk import of multiple Products. Request processing may be synchronous. Non-existing items are created. Note that it is possible for a subset of the Products to be successfully updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. `projects/1234/locations/global/catalogs/default_catalog/branches/default_branch` If no updateMask is speci... |

**Request body**: `GoogleCloudRetailV2ImportProductsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.setInventory`

**POST** `v2/{+name}:setInventory`

Updates inventory information for a Product while respecting the last update timestamps of each inventory field. This process is asynchronous and does not require the Product to exist before updating fulfillment information. If the request is valid, the update is enqueued and processed downstream. As a consequence, when a response is returned, updates are not immediately manifested in the Product queried by ProductService.GetProduct or ProductService.ListProducts. When inventory is updated with ProductService.CreateProduct and ProductService.UpdateProduct, the specified inventory field value(s) overwrite any existing value(s) while ignoring the last update time for this field. Furthermore, the last update times for the specified inventory fields are overwritten by the times of the ProductService.CreateProduct or ProductService.UpdateProduct request. If no inventory fields are set in CreateProductRequest.product, then any pre-existing inventory information for this product is used. If no inventory fields are set in SetInventoryRequest.set_mask, then any existing inventory information is preserved. Pre-existing inventory information can only be updated with ProductService.SetInventory, ProductService.AddFulfillmentPlaces, and ProductService.RemoveFulfillmentPlaces. The returned Operations is obsolete after one day, and the GetOperation API returns `NOT_FOUND` afterwards. If conflicting updates are issued, the Operations associated with the stale updates are not marked as done until they are obsolete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Full resource name of the product, such as `projects/*/locations/global/catalogs/default_catalog/branches/... |

**Request body**: `GoogleCloudRetailV2SetInventoryRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.setInventory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.addFulfillmentPlaces`

**POST** `v2/{+product}:addFulfillmentPlaces`

We recommend that you use the ProductService.AddLocalInventories method instead of the ProductService.AddFulfillmentPlaces method. ProductService.AddLocalInventories achieves the same results but provides more fine-grained control over ingesting local inventory data. Incrementally adds place IDs to Product.fulfillment_info.place_ids. This process is asynchronous and does not require the Product to exist before updating fulfillment information. If the request is valid, the update will be enqueued and processed downstream. As a consequence, when a response is returned, the added place IDs are not immediately manifested in the Product queried by ProductService.GetProduct or ProductService.ListProducts. The returned Operations will be obsolete after 1 day, and GetOperation API will return NOT_FOUND afterwards. If conflicting updates are issued, the Operations associated with the stale updates will not be marked as done until being obsolete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `product` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Request body**: `GoogleCloudRetailV2AddFulfillmentPlacesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.addFulfillmentPlaces({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.removeFulfillmentPlaces`

**POST** `v2/{+product}:removeFulfillmentPlaces`

We recommend that you use the ProductService.RemoveLocalInventories method instead of the ProductService.RemoveFulfillmentPlaces method. ProductService.RemoveLocalInventories achieves the same results but provides more fine-grained control over ingesting local inventory data. Incrementally removes place IDs from a Product.fulfillment_info.place_ids. This process is asynchronous and does not require the Product to exist before updating fulfillment information. If the request is valid, the update will be enqueued and processed downstream. As a consequence, when a response is returned, the removed place IDs are not immediately manifested in the Product queried by ProductService.GetProduct or ProductService.ListProducts. The returned Operations will be obsolete after 1 day, and GetOperation API will return NOT_FOUND afterwards. If conflicting updates are issued, the Operations associated with the stale updates will not be marked as done until being obsolete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `product` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Request body**: `GoogleCloudRetailV2RemoveFulfillmentPlacesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.removeFulfillmentPlaces({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.addLocalInventories`

**POST** `v2/{+product}:addLocalInventories`

Updates local inventory information for a Product at a list of places, while respecting the last update timestamps of each inventory field. This process is asynchronous and does not require the Product to exist before updating inventory information. If the request is valid, the update will be enqueued and processed downstream. As a consequence, when a response is returned, updates are not immediately manifested in the Product queried by ProductService.GetProduct or ProductService.ListProducts. Local inventory information can only be modified using this method. ProductService.CreateProduct and ProductService.UpdateProduct has no effect on local inventories. The returned Operations will be obsolete after 1 day, and GetOperation API will return NOT_FOUND afterwards. If conflicting updates are issued, the Operations associated with the stale updates will not be marked as done until being obsolete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `product` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Request body**: `GoogleCloudRetailV2AddLocalInventoriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.addLocalInventories({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.branches.products.removeLocalInventories`

**POST** `v2/{+product}:removeLocalInventories`

Remove local inventory information for a Product at a list of places at a removal timestamp. This process is asynchronous. If the request is valid, the removal will be enqueued and processed downstream. As a consequence, when a response is returned, removals are not immediately manifested in the Product queried by ProductService.GetProduct or ProductService.ListProducts. Local inventory information can only be removed using this method. ProductService.CreateProduct and ProductService.UpdateProduct has no effect on local inventories. The returned Operations will be obsolete after 1 day, and GetOperation API will return NOT_FOUND afterwards. If conflicting updates are issued, the Operations associated with the stale updates will not be marked as done until being obsolete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `product` | `string` | path | Yes | Required. Full resource name of Product, such as `projects/*/locations/global/catalogs/default_catalog/branches/defau... |

**Request body**: `GoogleCloudRetailV2RemoveLocalInventoriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.products.removeLocalInventories({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.attributesConfig.addCatalogAttribute`

**POST** `v2/{+attributesConfig}:addCatalogAttribute`

Adds the specified CatalogAttribute to the AttributesConfig. If the CatalogAttribute to add already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `attributesConfig` | `string` | path | Yes | Required. Full AttributesConfig resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |

**Request body**: `GoogleCloudRetailV2AddCatalogAttributeRequest`

**Response**: `GoogleCloudRetailV2AttributesConfig`

```typescript
const res = await retail.attributesConfig.addCatalogAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.attributesConfig.removeCatalogAttribute`

**POST** `v2/{+attributesConfig}:removeCatalogAttribute`

Removes the specified CatalogAttribute from the AttributesConfig. If the CatalogAttribute to remove does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `attributesConfig` | `string` | path | Yes | Required. Full AttributesConfig resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |

**Request body**: `GoogleCloudRetailV2RemoveCatalogAttributeRequest`

**Response**: `GoogleCloudRetailV2AttributesConfig`

```typescript
const res = await retail.attributesConfig.removeCatalogAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.attributesConfig.replaceCatalogAttribute`

**POST** `v2/{+attributesConfig}:replaceCatalogAttribute`

Replaces the specified CatalogAttribute in the AttributesConfig by updating the catalog attribute with the same CatalogAttribute.key. If the CatalogAttribute to replace does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `attributesConfig` | `string` | path | Yes | Required. Full AttributesConfig resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |

**Request body**: `GoogleCloudRetailV2ReplaceCatalogAttributeRequest`

**Response**: `GoogleCloudRetailV2AttributesConfig`

```typescript
const res = await retail.attributesConfig.replaceCatalogAttribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.placements.search`

**POST** `v2/{+placement}:search`

Performs a search. This feature is only available for users who have Retail Search enabled. Enable Retail Search on Cloud Console before using this feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. The resource name of the Retail Search serving config, such as `projects/*/locations/global/catalogs/defaul... |

**Request body**: `GoogleCloudRetailV2SearchRequest`

**Response**: `GoogleCloudRetailV2SearchResponse`

```typescript
const res = await retail.placements.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.placements.conversationalSearch`

**POST** `v2/{+placement}:conversationalSearch`

Performs a conversational search. This feature is only available for users who have Conversational Search enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. The resource name of the search engine placement, such as `projects/*/locations/global/catalogs/default_cat... |

**Request body**: `GoogleCloudRetailV2ConversationalSearchRequest`

**Response**: `GoogleCloudRetailV2ConversationalSearchResponse`

```typescript
const res = await retail.placements.conversationalSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.placements.predict`

**POST** `v2/{+placement}:predict`

Makes a recommendation prediction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. Full resource name of the format: `{placement=projects/*/locations/global/catalogs/default_catalog/servingC... |

**Request body**: `GoogleCloudRetailV2PredictRequest`

**Response**: `GoogleCloudRetailV2PredictResponse`

```typescript
const res = await retail.placements.predict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.search`

**POST** `v2/{+placement}:search`

Performs a search. This feature is only available for users who have Retail Search enabled. Enable Retail Search on Cloud Console before using this feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. The resource name of the Retail Search serving config, such as `projects/*/locations/global/catalogs/defaul... |

**Request body**: `GoogleCloudRetailV2SearchRequest`

**Response**: `GoogleCloudRetailV2SearchResponse`

```typescript
const res = await retail.servingConfigs.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.conversationalSearch`

**POST** `v2/{+placement}:conversationalSearch`

Performs a conversational search. This feature is only available for users who have Conversational Search enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. The resource name of the search engine placement, such as `projects/*/locations/global/catalogs/default_cat... |

**Request body**: `GoogleCloudRetailV2ConversationalSearchRequest`

**Response**: `GoogleCloudRetailV2ConversationalSearchResponse`

```typescript
const res = await retail.servingConfigs.conversationalSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.predict`

**POST** `v2/{+placement}:predict`

Makes a recommendation prediction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `placement` | `string` | path | Yes | Required. Full resource name of the format: `{placement=projects/*/locations/global/catalogs/default_catalog/servingC... |

**Request body**: `GoogleCloudRetailV2PredictRequest`

**Response**: `GoogleCloudRetailV2PredictResponse`

```typescript
const res = await retail.servingConfigs.predict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.create`

**POST** `v2/{+parent}/servingConfigs`

Creates a ServingConfig. A maximum of 100 ServingConfigs are allowed in a Catalog, otherwise a FAILED_PRECONDITION error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_... |
| `servingConfigId` | `string` | query | No | Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource ... |

**Request body**: `GoogleCloudRetailV2ServingConfig`

**Response**: `GoogleCloudRetailV2ServingConfig`

```typescript
const res = await retail.servingConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.delete`

**DELETE** `v2/{+name}`

Deletes a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to delete. Format: `projects/{project_number}/locations/{location_id... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await retail.servingConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.patch`

**PATCH** `v2/{+name}`

Updates a ServingConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*` |
| `updateMask` | `string` | query | No | Indicates which fields in the provided ServingConfig to update. The following are NOT supported: * ServingConfig.name... |

**Request body**: `GoogleCloudRetailV2ServingConfig`

**Response**: `GoogleCloudRetailV2ServingConfig`

```typescript
const res = await retail.servingConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.get`

**GET** `v2/{+name}`

Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to get. Format: `projects/{project_number}/locations/{location_id}/c... |

**Response**: `GoogleCloudRetailV2ServingConfig`

```typescript
const res = await retail.servingConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.list`

**GET** `v2/{+parent}/servingConfigs`

Lists all ServingConfigs linked to this catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The catalog resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}` |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 100. If a value greater than 100 is provid... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListServingConfigs` call. Provide this to retrieve the subsequent p... |

**Response**: `GoogleCloudRetailV2ListServingConfigsResponse`

```typescript
const res = await retail.servingConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.addControl`

**POST** `v2/{+servingConfig}:addControl`

Enables a Control on the specified ServingConfig. The control is added in the last position of the list of controls it belongs to (e.g. if it's a facet spec control it will be applied in the last position of servingConfig.facetSpecIds) Returns a ALREADY_EXISTS error if the control has already been applied. Returns a FAILED_PRECONDITION error if the addition could exceed maximum number of control allowed for that type of control.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The source ServingConfig resource name . Format: `projects/{project_number}/locations/{location_id}/catalog... |

**Request body**: `GoogleCloudRetailV2AddControlRequest`

**Response**: `GoogleCloudRetailV2ServingConfig`

```typescript
const res = await retail.servingConfigs.addControl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.servingConfigs.removeControl`

**POST** `v2/{+servingConfig}:removeControl`

Disables a Control on the specified ServingConfig. The control is removed from the ServingConfig. Returns a NOT_FOUND error if the Control is not enabled for the ServingConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The source ServingConfig resource name . Format: `projects/{project_number}/locations/{location_id}/catalog... |

**Request body**: `GoogleCloudRetailV2RemoveControlRequest`

**Response**: `GoogleCloudRetailV2ServingConfig`

```typescript
const res = await retail.servingConfigs.removeControl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.completionData.import`

**POST** `v2/{+parent}/completionData:import`

Bulk import of processed completion dataset. Request processing is asynchronous. Partial updating is not supported. The operation is successfully finished only after the imported suggestions are indexed successfully and ready for serving. The process takes hours. This feature is only available for users who have Retail Search enabled. Enable Retail Search on Cloud Console before using this feature.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The catalog which the suggestions dataset belongs to. Format: `projects/1234/locations/global/catalogs/defa... |

**Request body**: `GoogleCloudRetailV2ImportCompletionDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.completionData.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.controls.create`

**POST** `v2/{+parent}/controls`

Creates a Control. If the Control to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent catalog. Format: `projects/{project_number}/locations/{location_id}/catalogs/{... |
| `controlId` | `string` | query | No | Required. The ID to use for the Control, which will become the final component of the Control's resource name. This v... |

**Request body**: `GoogleCloudRetailV2Control`

**Response**: `GoogleCloudRetailV2Control`

```typescript
const res = await retail.controls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.controls.delete`

**DELETE** `v2/{+name}`

Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to delete. Format: `projects/{project_number}/locations/{location_id}/cata... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await retail.controls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.controls.patch`

**PATCH** `v2/{+name}`

Updates a Control. Control cannot be set to a different oneof field, if so an INVALID_ARGUMENT is returned. If the Control to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*` |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Control to update. The following are NOT supported: * Control.name If not set ... |

**Request body**: `GoogleCloudRetailV2Control`

**Response**: `GoogleCloudRetailV2Control`

```typescript
const res = await retail.controls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.controls.get`

**GET** `v2/{+name}`

Gets a Control.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to get. Format: `projects/{project_number}/locations/{location_id}/catalog... |

**Response**: `GoogleCloudRetailV2Control`

```typescript
const res = await retail.controls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.controls.list`

**GET** `v2/{+parent}/controls`

Lists all Controls by their parent Catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The catalog resource name. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}` |
| `filter` | `string` | query | No | Optional. A filter to apply on the list results. Supported features: * List all the products under the parent branch ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListControls` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudRetailV2ListControlsResponse`

```typescript
const res = await retail.controls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.generativeQuestions.list`

**GET** `v2/{+parent}/generativeQuestions`

Returns all questions for a given catalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |

**Response**: `GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse`

```typescript
const res = await retail.generativeQuestions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.generativeQuestion.batchUpdate`

**POST** `v2/{+parent}/generativeQuestion:batchUpdate`

Allows management of multiple questions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. Resource name of the parent catalog. Format: projects/{project}/locations/{location}/catalogs/{catalog} |

**Request body**: `GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest`

**Response**: `GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse`

```typescript
const res = await retail.generativeQuestion.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.create`

**POST** `v2/{+parent}/models`

Creates a new model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource under which to create the model. Format: `projects/{project_number}/locations/{location... |
| `dryRun` | `boolean` | query | No | Optional. Whether to run a dry run to validate the request (without actually creating the model). |

**Request body**: `GoogleCloudRetailV2Model`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.models.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.get`

**GET** `v2/{+name}`

Gets a model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Model to get. Format: `projects/{project_number}/locations/{location_id}/catalogs/... |

**Response**: `GoogleCloudRetailV2Model`

```typescript
const res = await retail.models.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.pause`

**POST** `v2/{+name}:pause`

Pauses the training of an existing model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model to pause. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalo... |

**Request body**: `GoogleCloudRetailV2PauseModelRequest`

**Response**: `GoogleCloudRetailV2Model`

```typescript
const res = await retail.models.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.resume`

**POST** `v2/{+name}:resume`

Resumes the training of an existing model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the model to resume. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catal... |

**Request body**: `GoogleCloudRetailV2ResumeModelRequest`

**Response**: `GoogleCloudRetailV2Model`

```typescript
const res = await retail.models.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.delete`

**DELETE** `v2/{+name}`

Deletes an existing model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Model to delete. Format: `projects/{project_number}/locations/{location_id}/catalo... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await retail.models.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.list`

**GET** `v2/{+parent}/models`

Lists all the models linked to this event store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent for which to list models. Format: `projects/{project_number}/locations/{location_id}/catalogs/{c... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListModels` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudRetailV2ListModelsResponse`

```typescript
const res = await retail.models.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.patch`

**PATCH** `v2/{+name}`

Update of model metadata. Only fields that currently can be updated are: `filtering_option` and `periodic_tuning_state`. If other values are provided, this API method ignores them.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/... |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided 'model' to update. If not set, by default updates all fields. |

**Request body**: `GoogleCloudRetailV2Model`

**Response**: `GoogleCloudRetailV2Model`

```typescript
const res = await retail.models.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.models.tune`

**POST** `v2/{+name}:tune`

Tunes an existing model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the model to tune. Format: `projects/{project_number}/locations/{location_id}/catalogs... |

**Request body**: `GoogleCloudRetailV2TuneModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.models.tune({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.userEvents.write`

**POST** `v2/{+parent}/userEvents:write`

Writes a single user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog resource name, such as `projects/1234/locations/global/catalogs/default_catalog`. |
| `writeAsync` | `boolean` | query | No | If set to true, the user event will be written asynchronously after validation, and the API will respond without wait... |

**Request body**: `GoogleCloudRetailV2UserEvent`

**Response**: `GoogleCloudRetailV2UserEvent`

```typescript
const res = await retail.userEvents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.userEvents.collect`

**POST** `v2/{+parent}/userEvents:collect`

Writes a single user event from the browser. For larger user event payload over 16 KB, the POST method should be used instead, otherwise a 400 Bad Request error is returned. This method is used only by the Retail API JavaScript pixel and Google Tag Manager. Users should not call this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog name, such as `projects/1234/locations/global/catalogs/default_catalog`. |

**Request body**: `GoogleCloudRetailV2CollectUserEventRequest`

**Response**: `GoogleApiHttpBody`

```typescript
const res = await retail.userEvents.collect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.userEvents.purge`

**POST** `v2/{+parent}/userEvents:purge`

Deletes permanently all user events specified by the filter provided. Depending on the number of events specified by the filter, this operation could take hours or days to complete. To test a filter, use the list command first.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the catalog under which the events are created. The format is `projects/${projectId}/l... |

**Request body**: `GoogleCloudRetailV2PurgeUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.userEvents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.userEvents.import`

**POST** `v2/{+parent}/userEvents:import`

Bulk import of User events. Request processing might be synchronous. Events that already exist are skipped. Use this method for backfilling historical user events. `Operation.response` is of type `ImportResponse`. Note that it is possible for a subset of the items to be successfully inserted. `Operation.metadata` is of type `ImportMetadata`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. `projects/1234/locations/global/catalogs/default_catalog` |

**Request body**: `GoogleCloudRetailV2ImportUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.userEvents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.locations.catalogs.userEvents.rejoin`

**POST** `v2/{+parent}/userEvents:rejoin`

Starts a user-event rejoin operation with latest product catalog. Events are not annotated with detailed product information for products that are missing from the catalog when the user event is ingested. These events are stored as unjoined events with limited usage on training and serving. You can use this method to start a join operation on specified events with the latest version of product catalog. You can also use this method to correct events joined with the wrong product catalog. A rejoin operation can take hours or days to complete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog resource name, such as `projects/1234/locations/global/catalogs/default_catalog`. |

**Request body**: `GoogleCloudRetailV2RejoinUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.userEvents.rejoin({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await retail.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `retail.projects.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await retail.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleApiHttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `GoogleCloudRetailLoggingErrorContext`

A description of the context in which an error occurred.

| Property | Type | Description |
|----------|------|-------------|
| `httpRequest` | `GoogleCloudRetailLoggingHttpRequestContext` | The HTTP request which was processed when the error was triggered. |
| `reportLocation` | `GoogleCloudRetailLoggingSourceLocation` | The location in the source code where the decision was made to report the error, usually the plac... |

### `GoogleCloudRetailLoggingErrorLog`

An error log which is reported to the Error Reporting system. This proto a superset of google.devtools.clouderrorreporting.v1beta1.ReportedErrorEvent.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudRetailLoggingErrorContext` | A description of the context in which the error occurred. |
| `importPayload` | `GoogleCloudRetailLoggingImportErrorContext` | The error payload that is populated on LRO import APIs. |
| `message` | `string` | A message describing the error. |
| `requestPayload` | `object` | The API request payload, represented as a protocol buffer. Most API request types are supported. ... |
| `responsePayload` | `object` | The API response payload, represented as a protocol buffer. This is used to log some "soft errors... |
| `serviceContext` | `GoogleCloudRetailLoggingServiceContext` | The service context in which this error has occurred. |
| `status` | `GoogleRpcStatus` | The RPC status associated with the error log. |

### `GoogleCloudRetailLoggingHttpRequestContext`

HTTP request data that is related to a reported error.

| Property | Type | Description |
|----------|------|-------------|
| `responseStatusCode` | `integer` | The HTTP response status code for the request. |

### `GoogleCloudRetailLoggingImportErrorContext`

The error payload that is populated on LRO import APIs, including "google.cloud.retail.v2.ProductService.ImportProducts" and "google.cloud.retail.v2.EventService.ImportUserEvents".

| Property | Type | Description |
|----------|------|-------------|
| `catalogItem` | `string` | The detailed content which caused the error on importing a catalog item. |
| `gcsPath` | `string` | Cloud Storage file path of the import source. Can be set for batch operation error. |
| `lineNumber` | `string` | Line number of the content in file. Should be empty for permission or batch operation error. |
| `operationName` | `string` | The operation resource name of the LRO. |
| `product` | `string` | The detailed content which caused the error on importing a product. |
| `userEvent` | `string` | The detailed content which caused the error on importing a user event. |

### `GoogleCloudRetailLoggingServiceContext`

Describes a running service that sends errors.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | An identifier of the service. For example, "retail.googleapis.com". |

### `GoogleCloudRetailLoggingSourceLocation`

Indicates a location in the source code of the service for which errors are reported.

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` | Human-readable name of a function or method. For example, "google.cloud.retail.v2.UserEventServic... |

### `GoogleCloudRetailV2AddCatalogAttributeRequest`

Request for CatalogService.AddCatalogAttribute method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogAttribute` | `GoogleCloudRetailV2CatalogAttribute` | Required. The CatalogAttribute to add. |

### `GoogleCloudRetailV2AddControlRequest`

Request for AddControl method.

| Property | Type | Description |
|----------|------|-------------|
| `controlId` | `string` | Required. The id of the control to apply. Assumed to be in the same catalog as the serving config... |

### `GoogleCloudRetailV2AddFulfillmentPlacesMetadata`

Metadata related to the progress of the AddFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2AddFulfillmentPlacesRequest`

Request message for ProductService.AddFulfillmentPlaces method.

| Property | Type | Description |
|----------|------|-------------|
| `addTime` | `string` | The time when the fulfillment updates are issued, used to prevent out-of-order updates on fulfill... |
| `allowMissing` | `boolean` | If set to true, and the Product is not found, the fulfillment information will still be processed... |
| `placeIds` | `array<string>` | Required. The IDs for this type, such as the store IDs for "pickup-in-store" or the region IDs fo... |
| `type` | `string` | Required. The fulfillment type, including commonly used types (such as pickup in store and same d... |

### `GoogleCloudRetailV2AddFulfillmentPlacesResponse`

Response of the AddFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2AddLocalInventoriesMetadata`

Metadata related to the progress of the AddLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2AddLocalInventoriesRequest`

Request message for ProductService.AddLocalInventories method.

| Property | Type | Description |
|----------|------|-------------|
| `addMask` | `string` | Indicates which inventory fields in the provided list of LocalInventory to update. The field is u... |
| `addTime` | `string` | The time when the inventory updates are issued. Used to prevent out-of-order updates on local inv... |
| `allowMissing` | `boolean` | If set to true, and the Product is not found, the local inventory will still be processed and ret... |
| `localInventories` | `array<GoogleCloudRetailV2LocalInventory>` | Required. A list of inventory information at difference places. Each place is identified by its p... |

### `GoogleCloudRetailV2AddLocalInventoriesResponse`

Response of the ProductService.AddLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2AttributesConfig`

Catalog level attribute config.

| Property | Type | Description |
|----------|------|-------------|
| `attributeConfigLevel` | `string` | Output only. The AttributeConfigLevel used for this catalog. |
| `catalogAttributes` | `object` | Enable attribute(s) config at catalog level. For example, indexable, dynamic_facetable, or search... |
| `name` | `string` | Required. Immutable. The fully qualified resource name of the attribute config. Format: `projects... |

### `GoogleCloudRetailV2Audience`

An intended audience of the Product for whom it's sold.

| Property | Type | Description |
|----------|------|-------------|
| `ageGroups` | `array<string>` | The age groups of the audience. Strongly encouraged to use the standard values: "newborn" (up to ... |
| `genders` | `array<string>` | The genders of the audience. Strongly encouraged to use the standard values: "male", "female", "u... |

### `GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest`

Request for BatchUpdateGenerativeQuestionConfig method.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest>` | Required. The updates question configs. |

### `GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse`

Aggregated response for UpdateGenerativeQuestionConfig method.

| Property | Type | Description |
|----------|------|-------------|
| `generativeQuestionConfigs` | `array<GoogleCloudRetailV2GenerativeQuestionConfig>` | Optional. The updates question configs. |

### `GoogleCloudRetailV2BigQueryOutputResult`

A BigQuery output result.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | The ID of a BigQuery Dataset. |
| `tableId` | `string` | The ID of a BigQuery Table. |

### `GoogleCloudRetailV2BigQuerySource`

BigQuery source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `dataSchema` | `string` | The schema to use when parsing the data from the source. Supported values for product imports: * ... |
| `datasetId` | `string` | Required. The BigQuery data set to copy the data from with a length limit of 1,024 characters. |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `partitionDate` | `GoogleTypeDate` | BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format. |
| `projectId` | `string` | The project ID (can be project # or ID) that the BigQuery source is in with a length limit of 128... |
| `tableId` | `string` | Required. The BigQuery table to copy the data from with a length limit of 1,024 characters. |

### `GoogleCloudRetailV2Catalog`

The catalog configuration.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. Immutable. The catalog display name. This field must be a UTF-8 encoded string with a l... |
| `name` | `string` | Required. Immutable. The fully qualified resource name of the catalog. |
| `productLevelConfig` | `GoogleCloudRetailV2ProductLevelConfig` | Required. The product level configuration. |

### `GoogleCloudRetailV2CatalogAttribute`

Catalog level attribute config for an attribute. For example, if customers want to enable/disable facet for a specific attribute.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicFacetableOption` | `string` | If DYNAMIC_FACETABLE_ENABLED, attribute values are available for dynamic facet. Could only be DYN... |
| `exactSearchableOption` | `string` | If EXACT_SEARCHABLE_ENABLED, attribute values will be exact searchable. This property only applie... |
| `facetConfig` | `GoogleCloudRetailV2CatalogAttributeFacetConfig` | Contains facet options. |
| `inUse` | `boolean` | Output only. Indicates whether this attribute has been used by any products. `True` if at least o... |
| `indexableOption` | `string` | When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG, if INDEXABLE_ENAB... |
| `key` | `string` | Required. Attribute name. For example: `color`, `brands`, `attributes.custom_attribute`, such as ... |
| `retrievableOption` | `string` | If RETRIEVABLE_ENABLED, attribute values are retrievable in the search results. If unset, the ser... |
| `searchableOption` | `string` | When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG, if SEARCHABLE_ENA... |
| `type` | `string` | Output only. The type of this attribute. This is derived from the attribute in Product.attributes. |

### `GoogleCloudRetailV2CatalogAttributeFacetConfig`

Possible options for the facet that corresponds to the current attribute config.

| Property | Type | Description |
|----------|------|-------------|
| `facetIntervals` | `array<GoogleCloudRetailV2Interval>` | If you don't set the facet SearchRequest.FacetSpec.FacetKey.intervals in the request to a numeric... |
| `ignoredFacetValues` | `array<GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues>` | Each instance represents a list of attribute values to ignore as facet values for a specific time... |
| `mergedFacet` | `GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet` | Use this field only if you want to merge a facet key into another facet key. |
| `mergedFacetValues` | `array<GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue>` | Each instance replaces a list of facet values by a merged facet value. If a facet value is not in... |
| `rerankConfig` | `GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig` | Set this field only if you want to rerank based on facet values engaged by the user for the curre... |

### `GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues`

Facet values to ignore on facets during the specified time range for the given SearchResponse.Facet.key attribute.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If start time is empty and end time is not empty, then ignore these facet values before end time. |
| `startTime` | `string` | Time range for the current list of facet values to ignore. If multiple time ranges are specified ... |
| `values` | `array<string>` | List of facet values to ignore for the following time range. The facet values are the same as the... |

### `GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet`

The current facet key (i.e. attribute config) maps into the merged_facet_key. A facet key can have at most one child. The current facet key and the merged facet key need both to be textual custom attributes or both numerical custom attributes (same type).

| Property | Type | Description |
|----------|------|-------------|
| `mergedFacetKey` | `string` | The merged facet key should be a valid facet key that is different than the facet key of the curr... |

### `GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue`

Replaces a set of textual facet values by the same (possibly different) merged facet value. Each facet value should appear at most once as a value per CatalogAttribute. This feature is available only for textual custom attributes.

| Property | Type | Description |
|----------|------|-------------|
| `mergedValue` | `string` | All the previous values are replaced by this merged facet value. This merged_value must be non-em... |
| `values` | `array<string>` | All the facet values that are replaces by the same merged_value that follows. The maximum number ... |

### `GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig`

Options to rerank based on facet values engaged by the user for the current key. That key needs to be a custom textual key and facetable. To use this control, you also need to pass all the facet keys engaged by the user in the request using the field [SearchRequest.FacetSpec]. In particular, if you don't pass the facet keys engaged that you want to rerank on, this control won't be effective. Moreover, to obtain better results, the facet values that you want to rerank on should be close to English (ideally made of words, underscores, and spaces).

| Property | Type | Description |
|----------|------|-------------|
| `facetValues` | `array<string>` | If empty, rerank on all facet values for the current key. Otherwise, will rerank on the facet val... |
| `rerankFacet` | `boolean` | If set to true, then we also rerank the dynamic facets based on the facet values engaged by the u... |

### `GoogleCloudRetailV2CollectUserEventRequest`

Request message for CollectUserEvent method.

| Property | Type | Description |
|----------|------|-------------|
| `ets` | `string` | The event timestamp in milliseconds. This prevents browser caching of otherwise identical get req... |
| `prebuiltRule` | `string` | The prebuilt rule name that can convert a specific type of raw_json. For example: "ga4_bq" rule f... |
| `rawJson` | `string` | An arbitrary serialized JSON string that contains necessary information that can comprise a user ... |
| `uri` | `string` | The URL including cgi-parameters but excluding the hash fragment with a length limit of 5,000 cha... |
| `userEvent` | `string` | Required. URL encoded UserEvent proto with a length limit of 2,000,000 characters. |

### `GoogleCloudRetailV2ColorInfo`

The color information of a Product.

| Property | Type | Description |
|----------|------|-------------|
| `colorFamilies` | `array<string>` | The standard color families. Strongly recommended to use the following standard color groups: "Re... |
| `colors` | `array<string>` | The color display names, which may be different from standard color family names, such as the col... |

### `GoogleCloudRetailV2CompleteQueryResponse`

Response of the autocomplete query.

| Property | Type | Description |
|----------|------|-------------|
| `attributeResults` | `object` | A map of matched attribute suggestions. This field is only available for `cloud-retail` dataset. ... |
| `attributionToken` | `string` | A unique complete token. This should be included in the UserEvent.completion_detail for search ev... |
| `completionResults` | `array<GoogleCloudRetailV2CompleteQueryResponseCompletionResult>` | Results of the matching suggestions. The result list is ordered and the first result is top sugge... |
| `recentSearchResults` | `array<GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult>` | Deprecated. Matched recent searches of this user. The maximum number of recent searches is 10. Th... |

### `GoogleCloudRetailV2CompleteQueryResponseAttributeResult`

Resource that represents attribute results.

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `array<string>` | The list of suggestions for the attribute. |

### `GoogleCloudRetailV2CompleteQueryResponseCompletionResult`

Resource that represents completion results.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Custom attributes for the suggestion term. * For `user-data`, the attributes are additional custo... |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult`

Deprecated: Recent search of this user.

| Property | Type | Description |
|----------|------|-------------|
| `recentSearch` | `string` | The recent search query. |

### `GoogleCloudRetailV2CompletionConfig`

Catalog level autocomplete config for customers to customize autocomplete feature's settings.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistInputConfig` | `GoogleCloudRetailV2CompletionDataInputConfig` | Output only. The source data for the latest import of the autocomplete allowlist phrases. |
| `autoLearning` | `boolean` | If set to true, the auto learning function is enabled. Auto learning uses user data to generate s... |
| `denylistInputConfig` | `GoogleCloudRetailV2CompletionDataInputConfig` | Output only. The source data for the latest import of the autocomplete denylist phrases. |
| `lastAllowlistImportOperation` | `string` | Output only. Name of the LRO corresponding to the latest allowlist import. Can use GetOperation A... |
| `lastDenylistImportOperation` | `string` | Output only. Name of the LRO corresponding to the latest denylist import. Can use GetOperation AP... |
| `lastSuggestionsImportOperation` | `string` | Output only. Name of the LRO corresponding to the latest suggestion terms list import. Can use Ge... |
| `matchingOrder` | `string` | Specifies the matching order for autocomplete suggestions, e.g., a query consisting of 'sh' with ... |
| `maxSuggestions` | `integer` | The maximum number of autocomplete suggestions returned per term. Default value is 20. If left un... |
| `minPrefixLength` | `integer` | The minimum number of characters needed to be typed in order to get suggestions. Default value is... |
| `name` | `string` | Required. Immutable. Fully qualified name `projects/*/locations/*/catalogs/*/completionConfig` |
| `suggestionsInputConfig` | `GoogleCloudRetailV2CompletionDataInputConfig` | Output only. The source data for the latest import of the autocomplete suggestion phrases. |

### `GoogleCloudRetailV2CompletionDataInputConfig`

The input config source for completion data.

| Property | Type | Description |
|----------|------|-------------|
| `bigQuerySource` | `GoogleCloudRetailV2BigQuerySource` | Required. BigQuery input source. Add the IAM permission "BigQuery Data Viewer" for cloud-retail-c... |

### `GoogleCloudRetailV2CompletionDetail`

Detailed completion information including completion attribution token and clicked completion info.

| Property | Type | Description |
|----------|------|-------------|
| `completionAttributionToken` | `string` | Completion attribution token in CompleteQueryResponse.attribution_token. |
| `selectedPosition` | `integer` | End user selected CompleteQueryResponse.CompletionResult.suggestion position, starting from 0. |
| `selectedSuggestion` | `string` | End user selected CompleteQueryResponse.CompletionResult.suggestion. |

### `GoogleCloudRetailV2Condition`

Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.

| Property | Type | Description |
|----------|------|-------------|
| `activeTimeRange` | `array<GoogleCloudRetailV2ConditionTimeRange>` | Range of time(s) specifying when Condition is active. Condition true if any time range matches. |
| `pageCategories` | `array<string>` | Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The fo... |
| `queryTerms` | `array<GoogleCloudRetailV2ConditionQueryTerm>` | A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If... |

### `GoogleCloudRetailV2ConditionQueryTerm`

Query terms that we want to match on.

| Property | Type | Description |
|----------|------|-------------|
| `fullMatch` | `boolean` | Whether this is supposed to be a full or partial match. |
| `value` | `string` | The value of the term to match on. Value cannot be empty. Value can have at most 3 terms if speci... |

### `GoogleCloudRetailV2ConditionTimeRange`

Used for time-dependent conditions. Example: Want to have rule applied for week long sale.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time range. Range is inclusive. |
| `startTime` | `string` | Start of time range. Range is inclusive. |

### `GoogleCloudRetailV2Control`

Configures dynamic metadata that can be linked to a ServingConfig and affect search or recommendation results at serving time.

| Property | Type | Description |
|----------|------|-------------|
| `associatedServingConfigIds` | `array<string>` | Output only. List of serving config ids that are associated with this control in the same Catalog... |
| `displayName` | `string` | Required. The human readable control display name. Used in Retail UI. This field must be a UTF-8 ... |
| `name` | `string` | Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*` |
| `rule` | `GoogleCloudRetailV2Rule` | A rule control - a condition-action pair. Enacts a set action when the condition is triggered. Fo... |
| `searchSolutionUseCase` | `array<string>` | Specifies the use case for the control. Affects what condition fields can be set. Only settable b... |
| `solutionTypes` | `array<string>` | Required. Immutable. The solution types that the control is used for. Currently we support settin... |

### `GoogleCloudRetailV2ConversationalSearchCustomizationConfig`

The public proto to represent the conversational search customization config. It will be converted to the internal proto in the backend.

| Property | Type | Description |
|----------|------|-------------|
| `catalog` | `string` | Required. Resource name of the catalog. Format: projects/{project}/locations/{location}/catalogs/... |
| `intentClassificationConfig` | `GoogleCloudRetailV2IntentClassificationConfig` | Optional. The configs for intent classification. |
| `retailerDisplayName` | `string` | Optional. The retailer's display name that could be used in our LLM answers. Example - "Google" |

### `GoogleCloudRetailV2ConversationalSearchRequest`

Request message for ConversationalSearchService.ConversationalSearch method.

| Property | Type | Description |
|----------|------|-------------|
| `branch` | `string` | Required. The branch resource name, such as `projects/*/locations/global/catalogs/default_catalog... |
| `conversationId` | `string` | Optional. This field specifies the conversation id, which maintains the state of the conversation... |
| `conversationalFilteringSpec` | `GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec` | Optional. This field specifies all conversational filtering related parameters. |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. Must be set for category navigation que... |
| `query` | `string` | Optional. Raw search query to be searched for. If this field is empty, the request is considered ... |
| `safetySettings` | `array<GoogleCloudRetailV2SafetySetting>` | Optional. The safety settings to be applied to the generated content. |
| `searchParams` | `GoogleCloudRetailV2ConversationalSearchRequestSearchParams` | Optional. Search parameters. |
| `userInfo` | `GoogleCloudRetailV2UserInfo` | Optional. User information. |
| `userLabels` | `object` | Optional. The user labels applied to a resource must meet the following requirements: * Each reso... |
| `visitorId` | `string` | Required. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec`

This field specifies all conversational filtering related parameters addition to conversational retail search.

| Property | Type | Description |
|----------|------|-------------|
| `conversationalFilteringMode` | `string` | Optional. Mode to control Conversational Filtering. Defaults to Mode.DISABLED if it's unset. |
| `enableConversationalFiltering` | `boolean` | Optional. This field is deprecated. Please use ConversationalFilteringSpec.conversational_filteri... |
| `userAnswer` | `GoogleCloudRetailV2ConversationalSearchRequestUserAnswer` | Optional. This field specifies the current user answer during the conversational filtering search... |

### `GoogleCloudRetailV2ConversationalSearchRequestSearchParams`

Search parameters.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudRetailV2SearchRequestBoostSpec` | Optional. The boost spec to specify the boosting of search results. The syntax of the boost spec ... |
| `canonicalFilter` | `string` | Optional. The canonical filter string to restrict search results. The syntax of the canonical fil... |
| `filter` | `string` | Optional. The filter string to restrict search results. The syntax of the filter string is the sa... |
| `sortBy` | `string` | Optional. The sort string to specify the sorting of search results. The syntax of the sort string... |

### `GoogleCloudRetailV2ConversationalSearchRequestUserAnswer`

This field specifies the current user answer during the conversational filtering search. This can be either user selected from suggested answers or user input plain text.

| Property | Type | Description |
|----------|------|-------------|
| `selectedAnswer` | `GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer` | Optional. This field specifies the selected answer during the conversational search. This should ... |
| `textAnswer` | `string` | This field specifies the incremental input text from the user during the conversational search. |

### `GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer`

This field specifies the selected answers during the conversational search.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | Optional. This field specifies the selected answer which is a attribute key-value. |

### `GoogleCloudRetailV2ConversationalSearchResponse`

Response message for ConversationalSearchService.ConversationalSearch method.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | Conversation UUID. This field will be stored in client side storage to maintain the conversation ... |
| `conversationalFilteringResult` | `GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult` | This field specifies all related information that is needed on client side for UI rendering of co... |
| `conversationalTextResponse` | `string` | The conversational answer-based text response generated by the Server. |
| `followupQuestion` | `GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion` | The conversational followup question generated for Intent refinement. |
| `refinedSearch` | `array<GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch>` | The proposed refined search queries. They can be used to fetch the relevant search results. When ... |
| `state` | `string` | Output only. The state of the response generation. |
| `userQueryTypes` | `array<string>` | The types Retail classifies the search query as. Supported values are: - "ORDER_SUPPORT" - "SIMPL... |

### `GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult`

This field specifies all related information that is needed on client side for UI rendering of conversational filtering search.

| Property | Type | Description |
|----------|------|-------------|
| `additionalFilter` | `GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter` | This is the incremental additional filters implied from the current user answer. User should add ... |
| `followupQuestion` | `GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion` | The conversational filtering question. |

### `GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter`

Additional filter that client side need to apply.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | Product attribute value, including an attribute key and an attribute value. Other types can be ad... |

### `GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion`

The conversational followup question generated for Intent refinement.

| Property | Type | Description |
|----------|------|-------------|
| `followupQuestion` | `string` | The conversational followup question generated for Intent refinement. |
| `suggestedAnswers` | `array<GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer>` | The answer options provided to client for the follow-up question. |

### `GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer`

Suggested answers to the follow-up question. If it's numerical attribute, only ProductAttributeInterval will be set. If it's textual attribute, only productAttributeValue will be set.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | Product attribute value, including an attribute key and an attribute value. Other types can be ad... |

### `GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch`

The proposed refined search for intent-refinement/bundled shopping conversation. When using CONVERSATIONAL_FILTER_ONLY mode, the refined_query from search response will be populated here.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | The query to be used for search. |

### `GoogleCloudRetailV2CreateModelMetadata`

Metadata associated with a create operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this create applies to. Format: `projects/{project_number}/lo... |

### `GoogleCloudRetailV2CustomAttribute`

A custom attribute that is not explicitly modeled in Product.

| Property | Type | Description |
|----------|------|-------------|
| `indexable` | `boolean` | This field is normally ignored unless AttributesConfig.attribute_config_level of the Catalog is s... |
| `numbers` | `array<number>` | The numerical values of this custom attribute. For example, `[2.3, 15.4]` when the key is "length... |
| `searchable` | `boolean` | This field is normally ignored unless AttributesConfig.attribute_config_level of the Catalog is s... |
| `text` | `array<string>` | The textual values of this custom attribute. For example, `["yellow", "green"]` when the key is "... |

### `GoogleCloudRetailV2DoubleList`

A message with a list of double values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` | The list of double values. |

### `GoogleCloudRetailV2ExperimentInfo`

Metadata for active A/B testing experiment.

| Property | Type | Description |
|----------|------|-------------|
| `experiment` | `string` | The fully qualified resource name of the experiment that provides the serving config under test, ... |
| `servingConfigExperiment` | `GoogleCloudRetailV2ExperimentInfoServingConfigExperiment` | A/B test between existing Cloud Retail Search ServingConfigs. |

### `GoogleCloudRetailV2ExperimentInfoServingConfigExperiment`

Metadata for active serving config A/B tests.

| Property | Type | Description |
|----------|------|-------------|
| `experimentServingConfig` | `string` | The fully qualified resource name of the serving config `Experiment.VariantArm.serving_config_id`... |
| `originalServingConfig` | `string` | The fully qualified resource name of the original SearchRequest.placement in the search request p... |

### `GoogleCloudRetailV2ExportAnalyticsMetricsRequest`

Request message for the `ExportAnalyticsMetrics` method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filtering expression to specify restrictions on returned metrics. The expression is a sequence ... |
| `outputConfig` | `GoogleCloudRetailV2OutputConfig` | Required. The output location of the data. Only `bigquery_destination` is supported, and `bigquer... |

### `GoogleCloudRetailV2ExportAnalyticsMetricsResponse`

Response of the ExportAnalyticsMetricsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2ExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2OutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2ExportErrorsConfig`

Configuration of destination for Export related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage path for import errors. This must be an empty, existing Cloud Storage bucket... |

### `GoogleCloudRetailV2ExportMetadata`

Metadata related to the progress of the Export operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2FulfillmentInfo`

Fulfillment information, such as the store IDs for in-store pickup or region IDs for different shipping methods.

| Property | Type | Description |
|----------|------|-------------|
| `placeIds` | `array<string>` | The IDs for this type, such as the store IDs for FulfillmentInfo.type.pickup-in-store or the regi... |
| `type` | `string` | The fulfillment type, including commonly used types (such as pickup in store and same day deliver... |

### `GoogleCloudRetailV2GcsOutputResult`

A Gcs output result.

| Property | Type | Description |
|----------|------|-------------|
| `outputUri` | `string` | The uri of Gcs output |

### `GoogleCloudRetailV2GcsSource`

Google Cloud Storage location for input content.

| Property | Type | Description |
|----------|------|-------------|
| `dataSchema` | `string` | The schema to use when parsing the data from the source. Supported values for product imports: * ... |
| `inputUris` | `array<string>` | Required. Google Cloud Storage URIs to input files. URI can be up to 2000 characters long. URIs c... |

### `GoogleCloudRetailV2GenerativeQuestionConfig`

Configuration for a single generated question.

| Property | Type | Description |
|----------|------|-------------|
| `allowedInConversation` | `boolean` | Optional. Whether the question is asked at serving time. |
| `catalog` | `string` | Required. Resource name of the catalog. Format: projects/{project}/locations/{location}/catalogs/... |
| `exampleValues` | `array<string>` | Output only. Values that can be used to answer the question. |
| `facet` | `string` | Required. The facet to which the question is associated. |
| `finalQuestion` | `string` | Optional. The question that will be used at serving time. Question can have a max length of 300 b... |
| `frequency` | `number` | Output only. The ratio of how often a question was asked. |
| `generatedQuestion` | `string` | Output only. The LLM generated question. |

### `GoogleCloudRetailV2GenerativeQuestionsFeatureConfig`

Configuration for overall generative question feature state.

| Property | Type | Description |
|----------|------|-------------|
| `catalog` | `string` | Required. Resource name of the affected catalog. Format: projects/{project}/locations/{location}/... |
| `featureEnabled` | `boolean` | Optional. Determines whether questions will be used at serving time. Note: This feature cannot be... |
| `minimumProducts` | `integer` | Optional. Minimum number of products in the response to trigger follow-up questions. Value must b... |

### `GoogleCloudRetailV2GetDefaultBranchResponse`

Response message of CatalogService.GetDefaultBranch.

| Property | Type | Description |
|----------|------|-------------|
| `branch` | `string` | Full resource name of the branch id currently set as default branch. |
| `note` | `string` | This corresponds to SetDefaultBranchRequest.note field, when this branch was set as default. |
| `setTime` | `string` | The time when this branch is set to default. |

### `GoogleCloudRetailV2Image`

Product image. Recommendations AI and Retail Search use product images to improve prediction and search results. Product images can be returned in results, and are shown in prediction or search previews in the console. Please try to provide correct product images and avoid using images with size too small.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_AR... |
| `uri` | `string` | Required. URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5... |
| `width` | `integer` | Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARG... |

### `GoogleCloudRetailV2ImportCompletionDataRequest`

Request message for ImportCompletionData methods.

| Property | Type | Description |
|----------|------|-------------|
| `inputConfig` | `GoogleCloudRetailV2CompletionDataInputConfig` | Required. The desired input location of the data. |
| `notificationPubsubTopic` | `string` | Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a no... |

### `GoogleCloudRetailV2ImportCompletionDataResponse`

Response of the ImportCompletionDataRequest. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudRetailV2ImportErrorsConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage dire... |

### `GoogleCloudRetailV2ImportMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `notificationPubsubTopic` | `string` | Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a no... |
| `requestId` | `string` | Deprecated. This field is never set. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2ImportProductsRequest`

Request message for Import methods.

| Property | Type | Description |
|----------|------|-------------|
| `errorsConfig` | `GoogleCloudRetailV2ImportErrorsConfig` | The desired location of errors incurred during the Import. |
| `inputConfig` | `GoogleCloudRetailV2ProductInputConfig` | Required. The desired input location of the data. |
| `notificationPubsubTopic` | `string` | Full Pub/Sub topic name for receiving notification. If this field is set, when the import is fini... |
| `reconciliationMode` | `string` | The mode of reconciliation between existing products and the products to be imported. Defaults to... |
| `requestId` | `string` | Deprecated. This field has no effect. |
| `updateMask` | `string` | Indicates which fields in the provided imported `products` to update. If not set, all fields are ... |

### `GoogleCloudRetailV2ImportProductsResponse`

Response of the ImportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2ImportErrorsConfig` | Echoes the destination for the complete errors in the request if set. |

### `GoogleCloudRetailV2ImportUserEventsRequest`

Request message for the ImportUserEvents request.

| Property | Type | Description |
|----------|------|-------------|
| `errorsConfig` | `GoogleCloudRetailV2ImportErrorsConfig` | The desired location of errors incurred during the Import. Cannot be set for inline user event im... |
| `inputConfig` | `GoogleCloudRetailV2UserEventInputConfig` | Required. The desired input location of the data. |

### `GoogleCloudRetailV2ImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2ImportErrorsConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `importSummary` | `GoogleCloudRetailV2UserEventImportSummary` | Aggregated statistics of user event import status. |

### `GoogleCloudRetailV2IntentClassificationConfig`

The public proto to represent the intent classification config. It will be converted to the internal proto in the backend.

| Property | Type | Description |
|----------|------|-------------|
| `blocklistKeywords` | `array<string>` | Optional. A list of keywords that will be used to classify the query to the "BLOCKLISTED" intent ... |
| `disabledIntentTypes` | `array<string>` | Optional. A list of intent types that will be disabled for this customer. The intent types must m... |
| `example` | `array<GoogleCloudRetailV2IntentClassificationConfigExample>` | Optional. A list of examples for intent classification. |
| `inlineSource` | `GoogleCloudRetailV2IntentClassificationConfigInlineSource` | Optional. Inline source for intent classifications. |
| `modelPreamble` | `string` | Optional. Customers can use the preamble to specify any requirements for blocklisting intent clas... |

### `GoogleCloudRetailV2IntentClassificationConfigExample`

An example for intent classification.

| Property | Type | Description |
|----------|------|-------------|
| `classifiedPositive` | `boolean` | Required. Whether the example is classified positively. |
| `intentType` | `string` | Optional. The intent_type must match one of the predefined intent types defined at https://cloud.... |
| `query` | `string` | Required. Example query. |
| `reason` | `string` | Optional. The reason for the intent classification. This is used to explain the intent classifica... |

### `GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent`

An inline force intent classification configuration.

| Property | Type | Description |
|----------|------|-------------|
| `intentType` | `string` | Optional. The intent_type must match one of the predefined intent types defined at https://cloud.... |
| `operation` | `string` | Optional. The operation to perform for the query. |
| `query` | `string` | Optional. A example query. |

### `GoogleCloudRetailV2IntentClassificationConfigInlineSource`

Inline source for intent classifications.

| Property | Type | Description |
|----------|------|-------------|
| `inlineForceIntents` | `array<GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent>` | Optional. A list of inline force intent classifications. |

### `GoogleCloudRetailV2Interval`

A floating point interval.

| Property | Type | Description |
|----------|------|-------------|
| `exclusiveMaximum` | `number` | Exclusive upper bound. |
| `exclusiveMinimum` | `number` | Exclusive lower bound. |
| `maximum` | `number` | Inclusive upper bound. |
| `minimum` | `number` | Inclusive lower bound. |

### `GoogleCloudRetailV2ListCatalogsResponse`

Response for CatalogService.ListCatalogs method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogs` | `array<GoogleCloudRetailV2Catalog>` | All the customer's Catalogs. |
| `nextPageToken` | `string` | A token that can be sent as ListCatalogsRequest.page_token to retrieve the next page. If this fie... |

### `GoogleCloudRetailV2ListControlsResponse`

Response for ListControls method.

| Property | Type | Description |
|----------|------|-------------|
| `controls` | `array<GoogleCloudRetailV2Control>` | All the Controls for a given catalog. |
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |

### `GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse`

Response for ListQuestions method.

| Property | Type | Description |
|----------|------|-------------|
| `generativeQuestionConfigs` | `array<GoogleCloudRetailV2GenerativeQuestionConfig>` | All the questions for a given catalog. |

### `GoogleCloudRetailV2ListModelsResponse`

Response to a ListModelRequest.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<GoogleCloudRetailV2Model>` | List of Models. |
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |

### `GoogleCloudRetailV2ListProductsResponse`

Response message for ProductService.ListProducts method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as ListProductsRequest.page_token to retrieve the next page. If this fie... |
| `products` | `array<GoogleCloudRetailV2Product>` | The Products. |

### `GoogleCloudRetailV2ListServingConfigsResponse`

Response for ListServingConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |
| `servingConfigs` | `array<GoogleCloudRetailV2ServingConfig>` | All the ServingConfigs for a given catalog. |

### `GoogleCloudRetailV2LocalInventory`

The inventory information at a place (e.g. a store) identified by a place ID.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Additional local inventory attributes, for example, store name, promotion tags, etc. Th... |
| `fulfillmentTypes` | `array<string>` | Optional. Supported fulfillment types. Valid fulfillment type values include commonly used types ... |
| `placeId` | `string` | Optional. The place ID for the current set of inventory information. |
| `priceInfo` | `GoogleCloudRetailV2PriceInfo` | Optional. Product price and cost information. Google Merchant Center property [price](https://sup... |

### `GoogleCloudRetailV2Model`

Metadata that describes the training and serving parameters of a Model. A Model can be associated with a ServingConfig and then queried through the Predict API.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Recommendation Model was created at. |
| `dataState` | `string` | Output only. The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommend... |
| `displayName` | `string` | Required. The display name of the model. Should be human readable, used to display Recommendation... |
| `filteringOption` | `string` | Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabl... |
| `lastTuneTime` | `string` | Output only. The timestamp when the latest successful tune finished. |
| `modelFeaturesConfig` | `GoogleCloudRetailV2ModelModelFeaturesConfig` | Optional. Additional model features config. |
| `name` | `string` | Required. The fully qualified resource name of the model. Format: `projects/{project_number}/loca... |
| `optimizationObjective` | `string` | Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `reven... |
| `periodicTuningState` | `string` | Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earl... |
| `servingConfigLists` | `array<GoogleCloudRetailV2ModelServingConfigList>` | Output only. The list of valid serving configs associated with the PageOptimizationConfig. |
| `servingState` | `string` | Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`. |
| `trainingState` | `string` | Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of th... |
| `tuningOperation` | `string` | Output only. The tune operation associated with the model. Can be used to determine if there is a... |
| `type` | `string` | Required. The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, ... |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model ... |

### `GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig`

Additional configs for the frequently-bought-together model type.

| Property | Type | Description |
|----------|------|-------------|
| `contextProductsType` | `string` | Optional. Specifies the context of the model when it is used in predict requests. Can only be set... |

### `GoogleCloudRetailV2ModelModelFeaturesConfig`

Additional model features config.

| Property | Type | Description |
|----------|------|-------------|
| `frequentlyBoughtTogetherConfig` | `GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig` | Additional configs for frequently-bought-together models. |

### `GoogleCloudRetailV2ModelServingConfigList`

Represents an ordered combination of valid serving configs, which can be used for `PAGE_OPTIMIZATION` recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `servingConfigIds` | `array<string>` | Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`. |

### `GoogleCloudRetailV2OutputConfig`

The output configuration setting.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudRetailV2OutputConfigBigQueryDestination` | The BigQuery location where the output is to be written to. |
| `gcsDestination` | `GoogleCloudRetailV2OutputConfigGcsDestination` | The Google Cloud Storage location where the output is to be written to. |

### `GoogleCloudRetailV2OutputConfigBigQueryDestination`

The BigQuery output destination configuration.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. The ID of a BigQuery Dataset. |
| `tableIdPrefix` | `string` | Required. The prefix of exported BigQuery tables. |
| `tableType` | `string` | Required. Describes the table type. The following values are supported: * `table`: A BigQuery nat... |

### `GoogleCloudRetailV2OutputConfigGcsDestination`

The Google Cloud Storage output destination configuration.

| Property | Type | Description |
|----------|------|-------------|
| `outputUriPrefix` | `string` | Required. The output uri prefix for saving output data to json files. Some mapping examples are a... |

### `GoogleCloudRetailV2OutputResult`

Output result that stores the information about where the exported data is stored.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryResult` | `array<GoogleCloudRetailV2BigQueryOutputResult>` | The BigQuery location where the result is stored. |
| `gcsResult` | `array<GoogleCloudRetailV2GcsOutputResult>` | The Google Cloud Storage location where the result is stored. |

### `GoogleCloudRetailV2PanelInfo`

Detailed panel information associated with a user event.

| Property | Type | Description |
|----------|------|-------------|
| `attributionToken` | `string` | Optional. The attribution token of the panel. |
| `displayName` | `string` | Optional. The display name of the panel. |
| `panelId` | `string` | Required. The panel ID. |
| `panelPosition` | `integer` | Optional. The ordered position of the panel, if shown to the user with other panels. If set, then... |
| `productDetails` | `array<GoogleCloudRetailV2ProductDetail>` | Optional. The product details associated with the panel. |
| `totalPanels` | `integer` | Optional. The total number of panels, including this one, shown to the user. Must be set if panel... |

### `GoogleCloudRetailV2PauseModelRequest`

Request for pausing training of a model.

### `GoogleCloudRetailV2PinControlMetadata`

Metadata for pinning to be returned in the response. This is used for distinguishing between applied vs dropped pins.

| Property | Type | Description |
|----------|------|-------------|
| `allMatchedPins` | `object` | Map of all matched pins, keyed by pin position. |
| `droppedPins` | `object` | Map of pins that were dropped due to overlap with other matching pins, keyed by pin position. |

### `GoogleCloudRetailV2PinControlMetadataProductPins`

List of product ids which have associated pins.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `array<string>` | List of product ids which have associated pins. |

### `GoogleCloudRetailV2PredictRequest`

Request message for Predict method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter for restricting prediction results with a length limit of 5,000 characters. Accepts values... |
| `labels` | `object` | The labels applied to a resource must meet the following requirements: * Each resource can have m... |
| `pageSize` | `integer` | Maximum number of results to return. Set this property to the number of prediction results needed... |
| `pageToken` | `string` | This field is not used; leave it unset. |
| `params` | `object` | Additional domain specific parameters for the predictions. Allowed values: * `returnProduct`: Boo... |
| `userEvent` | `GoogleCloudRetailV2UserEvent` | Required. Context about the user, what they are looking at and what action they took to trigger t... |
| `validateOnly` | `boolean` | Use validate only mode for this prediction query. If set to true, a dummy model will be used that... |

### `GoogleCloudRetailV2PredictResponse`

Response message for predict method.

| Property | Type | Description |
|----------|------|-------------|
| `attributionToken` | `string` | A unique attribution token. This should be included in the UserEvent logs resulting from this rec... |
| `missingIds` | `array<string>` | IDs of products in the request that were missing from the inventory. |
| `results` | `array<GoogleCloudRetailV2PredictResponsePredictionResult>` | A list of recommended products. The order represents the ranking (from the most relevant product ... |
| `validateOnly` | `boolean` | True if the validateOnly property was set in the request. |

### `GoogleCloudRetailV2PredictResponsePredictionResult`

PredictionResult represents the recommendation prediction results.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of the recommended product |
| `metadata` | `object` | Additional product metadata / annotations. Possible values: * `product`: JSON representation of t... |

### `GoogleCloudRetailV2PriceInfo`

The price information of a Product.

| Property | Type | Description |
|----------|------|-------------|
| `cost` | `number` | The costs associated with the sale of a particular product. Used for gross profit reporting. * Pr... |
| `currencyCode` | `string` | The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html... |
| `originalPrice` | `number` | Price of the product without any discount. If zero, by default set to be the price. If set, origi... |
| `price` | `number` | Price of the product. Google Merchant Center property [price](https://support.google.com/merchant... |
| `priceEffectiveTime` | `string` | The timestamp when the price starts to be effective. This can be set as a future timestamp, and t... |
| `priceExpireTime` | `string` | The timestamp when the price stops to be effective. The price is used for search before price_exp... |
| `priceRange` | `GoogleCloudRetailV2PriceInfoPriceRange` | Output only. The price range of all the child Product.Type.VARIANT Products grouped together on t... |

### `GoogleCloudRetailV2PriceInfoPriceRange`

The price range of all variant Product having the same Product.primary_product_id.

| Property | Type | Description |
|----------|------|-------------|
| `originalPrice` | `GoogleCloudRetailV2Interval` | The inclusive Product.pricing_info.original_price internal of all variant Product having the same... |
| `price` | `GoogleCloudRetailV2Interval` | The inclusive Product.pricing_info.price interval of all variant Product having the same Product.... |

### `GoogleCloudRetailV2Product`

Product captures all metadata information of items to be recommended or searched.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Highly encouraged. Extra product attributes to be included. For example, for products, this could... |
| `audience` | `GoogleCloudRetailV2Audience` | The target group associated with a given audience (e.g. male, veterans, car owners, musicians, et... |
| `availability` | `string` | The online availability of the Product. Default to Availability.IN_STOCK. For primary products wi... |
| `availableQuantity` | `integer` | The available quantity of the item. |
| `availableTime` | `string` | The timestamp when this Product becomes available for SearchService.Search. Note that this is onl... |
| `brands` | `array<string>` | The brands of the product. A maximum of 30 brands are allowed unless overridden through the Googl... |
| `categories` | `array<string>` | Optional. Product categories. This field is repeated for supporting one product belonging to seve... |
| `collectionMemberIds` | `array<string>` | The id of the collection members when type is Type.COLLECTION. Non-existent product ids are allow... |
| `colorInfo` | `GoogleCloudRetailV2ColorInfo` | The color of the product. Corresponding properties: Google Merchant Center property [color](https... |
| `conditions` | `array<string>` | The condition of the product. Strongly encouraged to use the standard values: "new", "refurbished... |
| `description` | `string` | Product description. This field must be a UTF-8 encoded string with a length limit of 5,000 chara... |
| `expireTime` | `string` | Note that this field is applied in the following ways: * If the Product is already expired when i... |
| `fulfillmentInfo` | `array<GoogleCloudRetailV2FulfillmentInfo>` | Fulfillment information, such as the store IDs for in-store pickup or region IDs for different sh... |
| `gtin` | `string` | The Global Trade Item Number (GTIN) of the product. This field must be a UTF-8 encoded string wit... |
| `id` | `string` | Immutable. Product identifier, which is the final component of name. For example, this field is "... |
| `images` | `array<GoogleCloudRetailV2Image>` | Product images for the product. We highly recommend putting the main image first. A maximum of 30... |
| `languageCode` | `string` | Language of the title/description and other string attributes. Use language tags defined by [BCP ... |
| `localInventories` | `array<GoogleCloudRetailV2LocalInventory>` | Output only. A list of local inventories specific to different places. This field can be managed ... |
| `materials` | `array<string>` | The material of the product. For example, "leather", "wooden". A maximum of 20 values are allowed... |
| `name` | `string` | Immutable. Full resource name of the product, such as `projects/*/locations/global/catalogs/defau... |
| `patterns` | `array<string>` | The pattern or graphic print of the product. For example, "striped", "polka dot", "paisley". A ma... |
| `priceInfo` | `GoogleCloudRetailV2PriceInfo` | Product price and cost information. Corresponding properties: Google Merchant Center property [pr... |
| `primaryProductId` | `string` | Variant group identifier. Must be an id, with the same parent branch with this product. Otherwise... |
| `promotions` | `array<GoogleCloudRetailV2Promotion>` | The promotions applied to the product. A maximum of 10 values are allowed per Product. Only Promo... |
| `publishTime` | `string` | The timestamp when the product is published by the retailer for the first time, which indicates t... |
| `rating` | `GoogleCloudRetailV2Rating` | The rating of this product. |
| `retrievableFields` | `string` | Indicates which fields in the Products are returned in SearchResponse. Supported fields for all t... |
| `sizes` | `array<string>` | The size of the product. To represent different size systems or size types, consider using this f... |
| `tags` | `array<string>` | Custom tags associated with the product. At most 250 values are allowed per Product. This value m... |
| `title` | `string` | Required. Product title. This field must be a UTF-8 encoded string with a length limit of 1,000 c... |
| `ttl` | `string` | Input only. The TTL (time to live) of the product. Note that this is only applicable to Type.PRIM... |
| `type` | `string` | Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_typ... |
| `uri` | `string` | Canonical URL directly linking to the product detail page. It is strongly recommended to provide ... |
| `variants` | `array<GoogleCloudRetailV2Product>` | Output only. Product variants grouped together on primary product which share similar product att... |

### `GoogleCloudRetailV2ProductAttributeInterval`

Product attribute name and numeric interval.

| Property | Type | Description |
|----------|------|-------------|
| `interval` | `GoogleCloudRetailV2Interval` | The numeric interval (e.g. [10, 20)) |
| `name` | `string` | The attribute name (e.g. "length") |

### `GoogleCloudRetailV2ProductAttributeValue`

Product attribute which structured by an attribute name and value. This structure is used in conversational search filters and answers. For example, if we have `name=color` and `value=red`, this means that the color is `red`.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The attribute name. |
| `value` | `string` | The attribute value. |

### `GoogleCloudRetailV2ProductDetail`

Detailed product information associated with a user event.

| Property | Type | Description |
|----------|------|-------------|
| `product` | `GoogleCloudRetailV2Product` | Required. Product information. Required field(s): * Product.id Optional override field(s): * Prod... |
| `quantity` | `integer` | Quantity of the product associated with the user event. For example, this field will be 2 if two ... |

### `GoogleCloudRetailV2ProductInlineSource`

The inline source for the input config for ImportProducts method.

| Property | Type | Description |
|----------|------|-------------|
| `products` | `array<GoogleCloudRetailV2Product>` | Required. A list of products to update/create. Each product must have a valid Product.id. Recomme... |

### `GoogleCloudRetailV2ProductInputConfig`

The input config source for products.

| Property | Type | Description |
|----------|------|-------------|
| `bigQuerySource` | `GoogleCloudRetailV2BigQuerySource` | BigQuery input source. |
| `gcsSource` | `GoogleCloudRetailV2GcsSource` | Google Cloud Storage location for the input content. |
| `productInlineSource` | `GoogleCloudRetailV2ProductInlineSource` | The Inline source for the input content for products. |

### `GoogleCloudRetailV2ProductLevelConfig`

Configures what level the product should be uploaded with regards to how users will be send events and how predictions will be made.

| Property | Type | Description |
|----------|------|-------------|
| `ingestionProductType` | `string` | The type of Products allowed to be ingested into the catalog. Acceptable values are: * `primary` ... |
| `merchantCenterProductIdField` | `string` | Which field of [Merchant Center Product](/bigquery-transfer/docs/merchant-center-products-schema)... |

### `GoogleCloudRetailV2Promotion`

Promotion specification.

| Property | Type | Description |
|----------|------|-------------|
| `promotionId` | `string` | Promotion identifier, which is the final component of name. For example, this field is "free_gift... |

### `GoogleCloudRetailV2PurchaseTransaction`

A transaction represents the entire purchase transaction.

| Property | Type | Description |
|----------|------|-------------|
| `cost` | `number` | All the costs associated with the products. These can be manufacturing costs, shipping expenses n... |
| `currencyCode` | `string` | Required. Currency code. Use three-character ISO-4217 code. |
| `id` | `string` | The transaction ID with a length limit of 128 characters. |
| `revenue` | `number` | Required. Total non-zero revenue or grand total associated with the transaction. This value inclu... |
| `tax` | `number` | All the taxes associated with the transaction. |

### `GoogleCloudRetailV2PurgeMetadata`

Metadata related to the progress of the Purge operation. This will be returned by the google.longrunning.Operation.metadata field.

### `GoogleCloudRetailV2PurgeProductsMetadata`

Metadata related to the progress of the PurgeProducts operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2PurgeProductsRequest`

Request message for PurgeProducts method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. The filter string to specify the products to be deleted with a length limit of 5,000 ch... |
| `force` | `boolean` | Actually perform the purge. If `force` is set to false, the method will return the expected purge... |

### `GoogleCloudRetailV2PurgeProductsResponse`

Response of the PurgeProductsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of products purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of the product names that will be deleted. Only populated if `force` is set to false. A ... |

### `GoogleCloudRetailV2PurgeUserEventsRequest`

Request message for PurgeUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. The filter string to specify the events to be deleted with a length limit of 5,000 char... |
| `force` | `boolean` | Actually perform the purge. If `force` is set to false, the method will return the expected purge... |

### `GoogleCloudRetailV2PurgeUserEventsResponse`

Response of the PurgeUserEventsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgedEventsCount` | `string` | The total count of events purged as a result of the operation. |

### `GoogleCloudRetailV2Rating`

The rating of a Product.

| Property | Type | Description |
|----------|------|-------------|
| `averageRating` | `number` | The average rating of the Product. The rating is scaled at 1-5. Otherwise, an INVALID_ARGUMENT er... |
| `ratingCount` | `integer` | The total number of ratings. This value is independent of the value of rating_histogram. This val... |
| `ratingHistogram` | `array<integer>` | List of rating counts per rating value (index = rating - 1). The list is empty if there is no rat... |

### `GoogleCloudRetailV2RejoinUserEventsMetadata`

Metadata for `RejoinUserEvents` method.

### `GoogleCloudRetailV2RejoinUserEventsRequest`

Request message for RejoinUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `userEventRejoinScope` | `string` | The type of the user event rejoin to define the scope and range of the user events to be rejoined... |

### `GoogleCloudRetailV2RejoinUserEventsResponse`

Response message for `RejoinUserEvents` method.

| Property | Type | Description |
|----------|------|-------------|
| `rejoinedUserEventsCount` | `string` | Number of user events that were joined with latest product catalog. |

### `GoogleCloudRetailV2RemoveCatalogAttributeRequest`

Request for CatalogService.RemoveCatalogAttribute method.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. The attribute name key of the CatalogAttribute to remove. |

### `GoogleCloudRetailV2RemoveControlRequest`

Request for RemoveControl method.

| Property | Type | Description |
|----------|------|-------------|
| `controlId` | `string` | Required. The id of the control to apply. Assumed to be in the same catalog as the serving config. |

### `GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata`

Metadata related to the progress of the RemoveFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2RemoveFulfillmentPlacesRequest`

Request message for ProductService.RemoveFulfillmentPlaces method.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the Product is not found, the fulfillment information will still be processed... |
| `placeIds` | `array<string>` | Required. The IDs for this type, such as the store IDs for "pickup-in-store" or the region IDs fo... |
| `removeTime` | `string` | The time when the fulfillment updates are issued, used to prevent out-of-order updates on fulfill... |
| `type` | `string` | Required. The fulfillment type, including commonly used types (such as pickup in store and same d... |

### `GoogleCloudRetailV2RemoveFulfillmentPlacesResponse`

Response of the RemoveFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2RemoveLocalInventoriesMetadata`

Metadata related to the progress of the RemoveLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2RemoveLocalInventoriesRequest`

Request message for ProductService.RemoveLocalInventories method.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the Product is not found, the local inventory removal request will still be p... |
| `placeIds` | `array<string>` | Required. A list of place IDs to have their inventory deleted. At most 3000 place IDs are allowed... |
| `removeTime` | `string` | The time when the inventory deletions are issued. Used to prevent out-of-order updates and deleti... |

### `GoogleCloudRetailV2RemoveLocalInventoriesResponse`

Response of the ProductService.RemoveLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2ReplaceCatalogAttributeRequest`

Request for CatalogService.ReplaceCatalogAttribute method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogAttribute` | `GoogleCloudRetailV2CatalogAttribute` | Required. The updated CatalogAttribute. |
| `updateMask` | `string` | Indicates which fields in the provided CatalogAttribute to update. The following are NOT supporte... |

### `GoogleCloudRetailV2ResumeModelRequest`

Request for resuming training of a model.

### `GoogleCloudRetailV2Rule`

A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.

| Property | Type | Description |
|----------|------|-------------|
| `boostAction` | `GoogleCloudRetailV2RuleBoostAction` | A boost action. |
| `condition` | `GoogleCloudRetailV2Condition` | Required. The condition that triggers the rule. If the condition is empty, the rule will always a... |
| `doNotAssociateAction` | `GoogleCloudRetailV2RuleDoNotAssociateAction` | Prevents term from being associated with other terms. |
| `filterAction` | `GoogleCloudRetailV2RuleFilterAction` | Filters results. |
| `forceReturnFacetAction` | `GoogleCloudRetailV2RuleForceReturnFacetAction` | Force returns an attribute as a facet in the request. |
| `ignoreAction` | `GoogleCloudRetailV2RuleIgnoreAction` | Ignores specific terms from query during search. |
| `onewaySynonymsAction` | `GoogleCloudRetailV2RuleOnewaySynonymsAction` | Treats specific term as a synonym with a group of terms. Group of terms will not be treated as sy... |
| `pinAction` | `GoogleCloudRetailV2RulePinAction` | Pins one or more specified products to a specific position in the results. |
| `redirectAction` | `GoogleCloudRetailV2RuleRedirectAction` | Redirects a shopper to a specific page. |
| `removeFacetAction` | `GoogleCloudRetailV2RuleRemoveFacetAction` | Remove an attribute as a facet in the request (if present). |
| `replacementAction` | `GoogleCloudRetailV2RuleReplacementAction` | Replaces specific terms in the query. |
| `twowaySynonymsAction` | `GoogleCloudRetailV2RuleTwowaySynonymsAction` | Treats a set of terms as synonyms of one another. |

### `GoogleCloudRetailV2RuleBoostAction`

A boost action to apply to results matching condition specified above.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the condition boost, which must be in [-1, 1]. Negative boost means demotion. Default... |
| `productsFilter` | `string` | The filter can have a max size of 5000 characters. An expression which specifies which products t... |

### `GoogleCloudRetailV2RuleDoNotAssociateAction`

Prevents `query_term` from being associated with specified terms during search. Example: Don't associate "gShoe" and "cheap".

| Property | Type | Description |
|----------|------|-------------|
| `doNotAssociateTerms` | `array<string>` | Cannot contain duplicates or the query term. Can specify up to 100 terms. |
| `queryTerms` | `array<string>` | Terms from the search query. Will not consider do_not_associate_terms for search if in search que... |
| `terms` | `array<string>` | Will be [deprecated = true] post migration; |

### `GoogleCloudRetailV2RuleFilterAction`

* Rule Condition: - No Condition.query_terms provided is a global match. - 1 or more Condition.query_terms provided are combined with OR operator. * Action Input: The request query and filter that are applied to the retrieved products, in addition to any filters already provided with the SearchRequest. The AND operator is used to combine the query's existing filters with the filter rule(s). NOTE: May result in 0 results when filters conflict. * Action Result: Filters the returned objects to be ONLY those that passed the filter.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filter to apply on the matching condition results. Supported features: * filter must be set. * ... |

### `GoogleCloudRetailV2RuleForceReturnFacetAction`

Force returns an attribute/facet in the request around a certain position or above. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Inputs: attribute name, position * Action Result: Will force return a facet key around a certain position or above if the condition is satisfied. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes", the ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "size" and the ForceReturnFacetAction.FacetPositionAdjustment.position is 8. Two cases: a) The facet key "size" is not already in the top 8 slots, then the facet "size" will appear at a position close to 8. b) The facet key "size" in among the top 8 positions in the request, then it will stay at its current rank.

| Property | Type | Description |
|----------|------|-------------|
| `facetPositionAdjustments` | `array<GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment>` | Each instance corresponds to a force return attribute for the given condition. There can't be mor... |

### `GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment`

Each facet position adjustment consists of a single attribute name (i.e. facet key) along with a specified position.

| Property | Type | Description |
|----------|------|-------------|
| `attributeName` | `string` | The attribute name to force return as a facet. Each attribute name should be a valid attribute na... |
| `position` | `integer` | This is the position in the request as explained above. It should be strictly positive be at most... |

### `GoogleCloudRetailV2RuleIgnoreAction`

Prevents a term in the query from being used in search. Example: Don't search for "shoddy".

| Property | Type | Description |
|----------|------|-------------|
| `ignoreTerms` | `array<string>` | Terms to ignore in the search query. |

### `GoogleCloudRetailV2RuleOnewaySynonymsAction`

Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".

| Property | Type | Description |
|----------|------|-------------|
| `onewayTerms` | `array<string>` | Will be [deprecated = true] post migration; |
| `queryTerms` | `array<string>` | Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of th... |
| `synonyms` | `array<string>` | Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms. |

### `GoogleCloudRetailV2RulePinAction`

Pins one or more specified products to a specific position in the results. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Input: mapping of `[pin_position, product_id]` pairs (pin position uses 1-based indexing). * Action Result: Will pin products with matching ids to the position specified in the final result order. Example: Suppose the query is `shoes`, the Condition.query_terms is `shoes` and the pin_map has `{1, "pid1"}`, then product with `pid1` will be pinned to the top position in the final results. If multiple PinActions are matched to a single request the actions will be processed from most to least recently updated. Pins to positions larger than the max allowed page size of 120 are not allowed.

| Property | Type | Description |
|----------|------|-------------|
| `pinMap` | `object` | Required. A map of positions to product_ids. Partial matches per action are allowed, if a certain... |

### `GoogleCloudRetailV2RuleRedirectAction`

Redirects a shopper to a specific page. * Rule Condition: Must specify Condition.query_terms. * Action Input: Request Query * Action Result: Redirects shopper to provided uri.

| Property | Type | Description |
|----------|------|-------------|
| `redirectUri` | `string` | URL must have length equal or less than 2000 characters. |

### `GoogleCloudRetailV2RuleRemoveFacetAction`

Removes an attribute/facet in the request if is present. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Input: attribute name * Action Result: Will remove the attribute (as a facet) from the request if it is present. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes" and the attribute name "size", then facet key "size" will be removed from the request (if it is present).

| Property | Type | Description |
|----------|------|-------------|
| `attributeNames` | `array<string>` | The attribute names (i.e. facet keys) to remove from the dynamic facets (if present in the reques... |

### `GoogleCloudRetailV2RuleReplacementAction`

Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".

| Property | Type | Description |
|----------|------|-------------|
| `queryTerms` | `array<string>` | Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms. |
| `replacementTerm` | `string` | Term that will be used for replacement. |
| `term` | `string` | Will be [deprecated = true] post migration; |

### `GoogleCloudRetailV2RuleTwowaySynonymsAction`

Creates a set of terms that will be treated as synonyms of each other. Example: synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes". * "shoes" will use a synonym of "sneakers".

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` | Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms. |

### `GoogleCloudRetailV2SafetySetting`

Safety settings.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Harm category. |
| `method` | `string` | Optional. Specify if the threshold is used for probability or severity score. If not specified, t... |
| `threshold` | `string` | The harm block threshold. |

### `GoogleCloudRetailV2SearchRequest`

Request message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudRetailV2SearchRequestBoostSpec` | Boost specification to boost certain products. For more information, see [Boost results](https://... |
| `branch` | `string` | The branch resource name, such as `projects/*/locations/global/catalogs/default_catalog/branches/... |
| `canonicalFilter` | `string` | The default filter that is applied when a user performs a search without checking any filters on ... |
| `conversationalSearchSpec` | `GoogleCloudRetailV2SearchRequestConversationalSearchSpec` | Optional. This field specifies all conversational related parameters addition to traditional reta... |
| `dynamicFacetSpec` | `GoogleCloudRetailV2SearchRequestDynamicFacetSpec` | Deprecated. Refer to https://cloud.google.com/retail/docs/configs#dynamic to enable dynamic facet... |
| `entity` | `string` | The entity for customers that may run multiple different entities, domains, sites or regions, for... |
| `facetSpecs` | `array<GoogleCloudRetailV2SearchRequestFacetSpec>` | Facet specifications for faceted search. If empty, no facets are returned. A maximum of 200 value... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `labels` | `object` | The labels applied to a resource must meet the following requirements: * Each resource can have m... |
| `languageCode` | `string` | Optional. The BCP-47 language code, such as "en-US" or "sr-Latn" [list](https://www.unicode.org/c... |
| `offset` | `integer` | A 0-indexed integer that specifies the current offset (that is, starting result location, amongst... |
| `orderBy` | `string` | The order in which products are returned. Products can be ordered by a field in an Product object... |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. Must be set for category navigation que... |
| `pageSize` | `integer` | Maximum number of Products to return. If unspecified, defaults to a reasonable value. The maximum... |
| `pageToken` | `string` | A page token SearchResponse.next_page_token, received from a previous SearchService.Search call. ... |
| `personalizationSpec` | `GoogleCloudRetailV2SearchRequestPersonalizationSpec` | The specification for personalization. Notice that if both ServingConfig.personalization_spec and... |
| `placeId` | `string` | Optional. An id corresponding to a place, such as a store id or region id. When specified, we use... |
| `query` | `string` | Raw search query. If this field is empty, the request is considered a category browsing request a... |
| `queryExpansionSpec` | `GoogleCloudRetailV2SearchRequestQueryExpansionSpec` | The query expansion specification that specifies the conditions under which query expansion occur... |
| `regionCode` | `string` | Optional. The Unicode country/region code (CLDR) of a location, such as "US" and "419" [list](htt... |
| `searchMode` | `string` | The search mode of the search request. If not specified, a single search request triggers both pr... |
| `spellCorrectionSpec` | `GoogleCloudRetailV2SearchRequestSpellCorrectionSpec` | The spell correction specification that specifies the mode under which spell correction will take... |
| `tileNavigationSpec` | `GoogleCloudRetailV2SearchRequestTileNavigationSpec` | Optional. This field specifies tile navigation related parameters. |
| `userAttributes` | `object` | Optional. The user attributes that could be used for personalization of search results. * Populat... |
| `userInfo` | `GoogleCloudRetailV2UserInfo` | User information. |
| `variantRollupKeys` | `array<string>` | The keys to fetch and rollup the matching variant Products attributes, FulfillmentInfo or LocalIn... |
| `visitorId` | `string` | Required. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudRetailV2SearchRequestBoostSpec`

Boost specification to boost certain items.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>` | Condition boost specifications. If a product matches multiple conditions in the specifications, b... |
| `skipBoostSpecValidation` | `boolean` | Whether to skip boostspec validation. If this field is set to true, invalid BoostSpec.condition_b... |

### `GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec`

Boost applies to products which match a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the condition boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `condition` | `string` | An expression which specifies a boost condition. The syntax and supported fields are the same as ... |

### `GoogleCloudRetailV2SearchRequestConversationalSearchSpec`

This field specifies all conversational related parameters addition to traditional retail search.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | This field specifies the conversation id, which maintains the state of the conversation between c... |
| `followupConversationRequested` | `boolean` | This field specifies whether the customer would like to do conversational search. If this field i... |
| `userAnswer` | `GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer` | This field specifies the current user answer during the conversational search. This can be either... |

### `GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer`

This field specifies the current user answer during the conversational search. This can be either user selected from suggested answers or user input plain text.

| Property | Type | Description |
|----------|------|-------------|
| `selectedAnswer` | `GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer` | This field specifies the selected attributes during the conversational search. This should be a s... |
| `textAnswer` | `string` | This field specifies the incremental input text from the user during the conversational search. |

### `GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer`

This field specifies the selected answers during the conversational search.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | This field specifies the selected answer which is a attribute key-value. |
| `productAttributeValues` | `array<GoogleCloudRetailV2ProductAttributeValue>` | This field is deprecated and should not be set. |

### `GoogleCloudRetailV2SearchRequestDynamicFacetSpec`

The specifications of dynamically generated facets.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset. |

### `GoogleCloudRetailV2SearchRequestFacetSpec`

A facet specification to perform faceted search.

| Property | Type | Description |
|----------|------|-------------|
| `enableDynamicPosition` | `boolean` | Enables dynamic position for this facet. If set to true, the position of this facet among all fac... |
| `excludedFilterKeys` | `array<string>` | List of keys to exclude when faceting. By default, FacetKey.key is not excluded from the filter u... |
| `facetKey` | `GoogleCloudRetailV2SearchRequestFacetSpecFacetKey` | Required. The facet key specification. |
| `limit` | `integer` | Maximum of facet values that should be returned for this facet. If unspecified, defaults to 50. T... |

### `GoogleCloudRetailV2SearchRequestFacetSpecFacetKey`

Specifies how a facet is computed.

| Property | Type | Description |
|----------|------|-------------|
| `caseInsensitive` | `boolean` | True to make facet keys case insensitive when getting faceting values with prefixes or contains; ... |
| `contains` | `array<string>` | Only get facet values that contains the given strings. For example, suppose "categories" has thre... |
| `intervals` | `array<GoogleCloudRetailV2Interval>` | Set only if values should be bucketized into intervals. Must be set for facets with numerical val... |
| `key` | `string` | Required. Supported textual and numerical facet keys in Product object, over which the facet valu... |
| `orderBy` | `string` | The order in which SearchResponse.Facet.values are returned. Allowed values are: * "count desc", ... |
| `prefixes` | `array<string>` | Only get facet values that start with the given string prefix. For example, suppose "categories" ... |
| `query` | `string` | The query that is used to compute facet for the given facet key. When provided, it overrides the ... |
| `restrictedValues` | `array<string>` | Only get facet for the given restricted values. For example, when using "pickupInStore" as key an... |
| `returnMinMax` | `boolean` | Returns the min and max value for each numerical facet intervals. Ignored for textual facets. |

### `GoogleCloudRetailV2SearchRequestPersonalizationSpec`

The specification for personalization.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Defaults to Mode.AUTO. |

### `GoogleCloudRetailV2SearchRequestQueryExpansionSpec`

Specification to determine under which conditions query expansion should occur.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which query expansion should occur. Default to Condition.DISABLED. |
| `pinUnexpandedResults` | `boolean` | Whether to pin unexpanded results. The default value is false. If this field is set to true, unex... |

### `GoogleCloudRetailV2SearchRequestSpellCorrectionSpec`

The specification for query spell correction.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The mode under which spell correction should take effect to replace the original search query. De... |

### `GoogleCloudRetailV2SearchRequestTileNavigationSpec`

This field specifies tile navigation related parameters.

| Property | Type | Description |
|----------|------|-------------|
| `appliedTiles` | `array<GoogleCloudRetailV2Tile>` | This optional field specifies the tiles which are already clicked in client side. While the featu... |
| `tileNavigationRequested` | `boolean` | This field specifies whether the customer would like to request tile navigation. |

### `GoogleCloudRetailV2SearchResponse`

Response message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `appliedControls` | `array<string>` | The fully qualified resource name of applied [controls](https://cloud.google.com/retail/docs/serv... |
| `attributionToken` | `string` | A unique search token. This should be included in the UserEvent logs resulting from this search, ... |
| `conversationalSearchResult` | `GoogleCloudRetailV2SearchResponseConversationalSearchResult` | This field specifies all related information that is needed on client side for UI rendering of co... |
| `correctedQuery` | `string` | Contains the spell corrected query, if found. If the spell correction type is AUTOMATIC, then the... |
| `experimentInfo` | `array<GoogleCloudRetailV2ExperimentInfo>` | Metadata related to A/B testing experiment associated with this response. Only exists when an exp... |
| `facets` | `array<GoogleCloudRetailV2SearchResponseFacet>` | Results of facets requested by user. |
| `invalidConditionBoostSpecs` | `array<GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>` | The invalid SearchRequest.BoostSpec.condition_boost_specs that are not applied during serving. |
| `nextPageToken` | `string` | A token that can be sent as SearchRequest.page_token to retrieve the next page. If this field is ... |
| `pinControlMetadata` | `GoogleCloudRetailV2PinControlMetadata` | Metadata for pin controls which were applicable to the request. This contains two map fields, one... |
| `queryExpansionInfo` | `GoogleCloudRetailV2SearchResponseQueryExpansionInfo` | Query expansion information for the returned results. |
| `redirectUri` | `string` | The URI of a customer-defined redirect page. If redirect action is triggered, no search is perfor... |
| `results` | `array<GoogleCloudRetailV2SearchResponseSearchResult>` | A list of matched items. The order represents the ranking. |
| `tileNavigationResult` | `GoogleCloudRetailV2SearchResponseTileNavigationResult` | This field specifies all related information for tile navigation that will be used in client side. |
| `totalSize` | `integer` | The estimated total count of matched items irrespective of pagination. The count of results retur... |

### `GoogleCloudRetailV2SearchResponseConversationalSearchResult`

This field specifies all related information that is needed on client side for UI rendering of conversational retail search.

| Property | Type | Description |
|----------|------|-------------|
| `additionalFilter` | `GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter` | This is the incremental additional filters implied from the current user answer. User should add ... |
| `additionalFilters` | `array<GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter>` | This field is deprecated but will be kept for backward compatibility. There is expected to have o... |
| `conversationId` | `string` | Conversation UUID. This field will be stored in client side storage to maintain the conversation ... |
| `followupQuestion` | `string` | The follow-up question. e.g., `What is the color?` |
| `refinedQuery` | `string` | The current refined query for the conversational search. This field will be used in customer UI t... |
| `suggestedAnswers` | `array<GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer>` | The answer options provided to client for the follow-up question. |

### `GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter`

Additional filter that client side need to apply.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | Product attribute value, including an attribute key and an attribute value. Other types can be ad... |

### `GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer`

Suggested answers to the follow-up question.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | Product attribute value, including an attribute key and an attribute value. Other types can be ad... |

### `GoogleCloudRetailV2SearchResponseFacet`

A facet result.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicFacet` | `boolean` | Whether the facet is dynamically generated. |
| `key` | `string` | The key for this facet. E.g., "colorFamilies" or "price" or "attributes.attr1". |
| `values` | `array<GoogleCloudRetailV2SearchResponseFacetFacetValue>` | The facet values for this field. |

### `GoogleCloudRetailV2SearchResponseFacetFacetValue`

A facet value which contains value names and their count.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Number of items that have this facet value. |
| `interval` | `GoogleCloudRetailV2Interval` | Interval value for a facet, such as [10, 20) for facet "price". |
| `maxValue` | `number` | The maximum value in the FacetValue.interval. Only supported on numerical facets and returned if ... |
| `minValue` | `number` | The minimum value in the FacetValue.interval. Only supported on numerical facets and returned if ... |
| `value` | `string` | Text value of a facet, such as "Black" for facet "colorFamilies". |

### `GoogleCloudRetailV2SearchResponseQueryExpansionInfo`

Information describing query expansion including whether expansion has occurred.

| Property | Type | Description |
|----------|------|-------------|
| `expandedQuery` | `boolean` | Bool describing whether query expansion has occurred. |
| `pinnedResultCount` | `string` | Number of pinned results. This field will only be set when expansion happens and SearchRequest.Qu... |

### `GoogleCloudRetailV2SearchResponseSearchResult`

Represents the search results.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Product.id of the searched Product. |
| `matchingVariantCount` | `integer` | The count of matched variant Products. |
| `matchingVariantFields` | `object` | If a variant Product matches the search query, this map indicates which Product fields are matche... |
| `modelScores` | `object` | Google provided available scores. |
| `personalLabels` | `array<string>` | Specifies previous events related to this product for this user based on UserEvent with same Sear... |
| `product` | `GoogleCloudRetailV2Product` | The product data snippet in the search response. Only Product.name is guaranteed to be populated.... |
| `variantRollupValues` | `object` | The rollup matching variant Product attributes. The key is one of the SearchRequest.variant_rollu... |

### `GoogleCloudRetailV2SearchResponseTileNavigationResult`

This field specifies all related information for tile navigation that will be used in client side.

| Property | Type | Description |
|----------|------|-------------|
| `tiles` | `array<GoogleCloudRetailV2Tile>` | The current tiles that are used for tile navigation, sorted by engagement. |

### `GoogleCloudRetailV2ServingConfig`

Configures metadata that is used to generate serving time results (e.g. search results or recommendation predictions).

| Property | Type | Description |
|----------|------|-------------|
| `boostControlIds` | `array<string>` | Condition boost specifications. If a product matches multiple conditions in the specifications, b... |
| `displayName` | `string` | Required. The human readable serving config display name. Used in Retail UI. This field must be a... |
| `diversityLevel` | `string` | How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-divers... |
| `diversityType` | `string` | What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults... |
| `doNotAssociateControlIds` | `array<string>` | Condition do not associate specifications. If multiple do not associate conditions match, all mat... |
| `dynamicFacetSpec` | `GoogleCloudRetailV2SearchRequestDynamicFacetSpec` | The specification for dynamically generated facets. Notice that only textual facets can be dynami... |
| `enableCategoryFilterLevel` | `string` | Whether to add additional category filters on the `similar-items` model. If not specified, we ena... |
| `facetControlIds` | `array<string>` | Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the i... |
| `filterControlIds` | `array<string>` | Condition filter specifications. If a product matches multiple conditions in the specifications, ... |
| `ignoreControlIds` | `array<string>` | Condition ignore specifications. If multiple ignore conditions match, all matching ignore control... |
| `ignoreRecsDenylist` | `boolean` | When the flag is enabled, the products in the denylist will not be filtered out in the recommenda... |
| `modelId` | `string` | The id of the model in the same Catalog to use at serving time. Currently only RecommendationMode... |
| `name` | `string` | Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*` |
| `onewaySynonymsControlIds` | `array<string>` | Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all match... |
| `personalizationSpec` | `GoogleCloudRetailV2SearchRequestPersonalizationSpec` | The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SE... |
| `priceRerankingLevel` | `string` | How much price ranking we want in serving results. Price reranking causes product items with a si... |
| `redirectControlIds` | `array<string>` | Condition redirect specifications. Only the first triggered redirect action is applied, even if m... |
| `replacementControlIds` | `array<string>` | Condition replacement specifications. - Applied according to the order in the list. - A previousl... |
| `solutionTypes` | `array<string>` | Required. Immutable. Specifies the solution types that a serving config can be associated with. C... |
| `twowaySynonymsControlIds` | `array<string>` | Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms co... |

### `GoogleCloudRetailV2SetDefaultBranchRequest`

Request message to set a specified branch as new default_branch.

| Property | Type | Description |
|----------|------|-------------|
| `branchId` | `string` | The final component of the resource name of a branch. This field must be one of "0", "1" or "2". ... |
| `force` | `boolean` | If set to true, it permits switching to a branch with branch_id even if it has no sufficient acti... |
| `note` | `string` | Some note on this request, this can be retrieved by CatalogService.GetDefaultBranch before next v... |

### `GoogleCloudRetailV2SetInventoryMetadata`

Metadata related to the progress of the SetInventory operation. Currently empty because there is no meaningful metadata populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2SetInventoryRequest`

Request message for ProductService.SetInventory method.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the Product with name Product.name is not found, the inventory update will st... |
| `inventory` | `GoogleCloudRetailV2Product` | Required. The inventory information to update. The allowable fields to update are: * Product.pric... |
| `setMask` | `string` | Indicates which inventory fields in the provided Product to update. At least one field must be pr... |
| `setTime` | `string` | The time when the request is issued, used to prevent out-of-order updates on inventory fields wit... |

### `GoogleCloudRetailV2SetInventoryResponse`

Response of the SetInventoryRequest. Currently empty because there is no meaningful response populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2StringList`

A list of string values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | String values. |

### `GoogleCloudRetailV2Tile`

This field specifies the tile information including an attribute key, attribute value. More fields will be added in the future, eg: product id or product counts, etc.

| Property | Type | Description |
|----------|------|-------------|
| `productAttributeInterval` | `GoogleCloudRetailV2ProductAttributeInterval` | The product attribute key-numeric interval. |
| `productAttributeValue` | `GoogleCloudRetailV2ProductAttributeValue` | The product attribute key-value. |
| `representativeProductId` | `string` | The representative product id for this tile. |

### `GoogleCloudRetailV2TuneModelMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this tune applies to. Format: `projects/{project_number}/loca... |

### `GoogleCloudRetailV2TuneModelRequest`

Request to manually start a tuning process now (instead of waiting for the periodically scheduled tuning to happen).

### `GoogleCloudRetailV2TuneModelResponse`

Response associated with a tune operation.

### `GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest`

Request for UpdateGenerativeQuestionConfig method.

| Property | Type | Description |
|----------|------|-------------|
| `generativeQuestionConfig` | `GoogleCloudRetailV2GenerativeQuestionConfig` | Required. The question to update. |
| `updateMask` | `string` | Optional. Indicates which fields in the provided GenerativeQuestionConfig to update. The followin... |

### `GoogleCloudRetailV2UserEvent`

UserEvent captures all metadata information Retail API needs to know about how end users interact with customers' website.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Extra user event features to include in the recommendation model. If you provide custom attribute... |
| `attributionToken` | `string` | Highly recommended for user events that are the result of PredictionService.Predict. This field e... |
| `cartId` | `string` | The ID or name of the associated shopping cart. This ID is used to associate multiple items added... |
| `completionDetail` | `GoogleCloudRetailV2CompletionDetail` | The main auto-completion details related to the event. This field should be set for `search` even... |
| `entity` | `string` | The entity for customers that may run multiple different entities, domains, sites or regions, for... |
| `eventTime` | `string` | Only required for UserEventService.ImportUserEvents method. Timestamp of when the user event happ... |
| `eventType` | `string` | Required. User event type. Allowed values are: * `add-to-cart`: Products being added to cart. * `... |
| `experimentIds` | `array<string>` | A list of identifiers for the independent experiment groups this user event belongs to. This is u... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `offset` | `integer` | An integer that specifies the current offset for pagination (the 0-indexed starting location, amo... |
| `orderBy` | `string` | The order in which products are returned. See SearchRequest.order_by for definition and syntax. T... |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. To represent the full path of category,... |
| `pageViewId` | `string` | A unique ID of a web page view. This should be kept the same for all user events triggered from t... |
| `panels` | `array<GoogleCloudRetailV2PanelInfo>` | Optional. List of panels associated with this event. Used for panel-level impression data. |
| `productDetails` | `array<GoogleCloudRetailV2ProductDetail>` | The main product details related to the event. This field is optional except for the following ev... |
| `purchaseTransaction` | `GoogleCloudRetailV2PurchaseTransaction` | A transaction represents the entire purchase transaction. Required for `purchase-complete` events... |
| `referrerUri` | `string` | The referrer URL of the current page. When using the client side event reporting with JavaScript ... |
| `searchQuery` | `string` | The user's search query. See SearchRequest.query for definition. The value must be a UTF-8 encode... |
| `sessionId` | `string` | A unique identifier for tracking a visitor session with a length limit of 128 bytes. A session is... |
| `uri` | `string` | Complete URL (window.location.href) of the user's current page. When using the client side event ... |
| `userInfo` | `GoogleCloudRetailV2UserInfo` | User information. |
| `visitorId` | `string` | Required. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudRetailV2UserEventImportSummary`

A summary of import result. The UserEventImportSummary summarizes the import status for user events.

| Property | Type | Description |
|----------|------|-------------|
| `joinedEventsCount` | `string` | Count of user events imported with complete existing catalog information. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with catalog information not found in the imported catalog. |

### `GoogleCloudRetailV2UserEventInlineSource`

The inline source for the input config for ImportUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `userEvents` | `array<GoogleCloudRetailV2UserEvent>` | Required. A list of user events to import. Recommended max of 10k items. |

### `GoogleCloudRetailV2UserEventInputConfig`

The input config source for user events.

| Property | Type | Description |
|----------|------|-------------|
| `bigQuerySource` | `GoogleCloudRetailV2BigQuerySource` | Required. BigQuery input source. |
| `gcsSource` | `GoogleCloudRetailV2GcsSource` | Required. Google Cloud Storage location for the input content. |
| `userEventInlineSource` | `GoogleCloudRetailV2UserEventInlineSource` | Required. The Inline source for the input content for UserEvents. |

### `GoogleCloudRetailV2UserInfo`

Information of an end user.

| Property | Type | Description |
|----------|------|-------------|
| `directUserRequest` | `boolean` | True if the request is made directly from the end user, in which case the ip_address and user_age... |
| `ipAddress` | `string` | The end user's IP address. This field is used to extract location information for personalization... |
| `userAgent` | `string` | User agent as included in the HTTP header. The field must be a UTF-8 encoded string with a length... |
| `userId` | `string` | Highly recommended for logged-in users. Unique identifier for logged-in user, such as a user name... |

### `GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata`

Metadata related to the progress of the AddFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse`

Response of the AddFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2alphaAddLocalInventoriesMetadata`

Metadata related to the progress of the AddLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2alphaAddLocalInventoriesResponse`

Response of the ProductService.AddLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2alphaBigQueryOutputResult`

A BigQuery output result.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | The ID of a BigQuery Dataset. |
| `tableId` | `string` | The ID of a BigQuery Table. |

### `GoogleCloudRetailV2alphaCreateMerchantCenterAccountLinkMetadata`

Common metadata related to the progress of the operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2alphaCreateModelMetadata`

Metadata associated with a create operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this create applies to. Format: `projects/{project_number}/lo... |

### `GoogleCloudRetailV2alphaEnrollSolutionMetadata`

Metadata related to the EnrollSolution method. This will be returned by the google.longrunning.Operation.metadata field.

### `GoogleCloudRetailV2alphaEnrollSolutionResponse`

Response for EnrollSolution method.

| Property | Type | Description |
|----------|------|-------------|
| `enrolledSolution` | `string` | Retail API solution that the project has enrolled. |

### `GoogleCloudRetailV2alphaExportAnalyticsMetricsResponse`

Response of the ExportAnalyticsMetricsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2alphaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2alphaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2alphaExportErrorsConfig`

Configuration of destination for Export related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage path for import errors. This must be an empty, existing Cloud Storage bucket... |

### `GoogleCloudRetailV2alphaExportMetadata`

Metadata related to the progress of the Export operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2alphaExportProductsResponse`

Response of the ExportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2alphaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2alphaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2alphaExportUserEventsResponse`

Response of the ExportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2alphaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2alphaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2alphaGcsOutputResult`

A Gcs output result.

| Property | Type | Description |
|----------|------|-------------|
| `outputUri` | `string` | The uri of Gcs output |

### `GoogleCloudRetailV2alphaImportCompletionDataResponse`

Response of the ImportCompletionDataRequest. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudRetailV2alphaImportErrorsConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage dire... |

### `GoogleCloudRetailV2alphaImportMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `notificationPubsubTopic` | `string` | Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a no... |
| `requestId` | `string` | Deprecated. This field is never set. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `transformedUserEventsMetadata` | `GoogleCloudRetailV2alphaTransformedUserEventsMetadata` | Metadata related to transform user events. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2alphaImportProductsResponse`

Response of the ImportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2alphaImportErrorsConfig` | Echoes the destination for the complete errors in the request if set. |

### `GoogleCloudRetailV2alphaImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2alphaImportErrorsConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `importSummary` | `GoogleCloudRetailV2alphaUserEventImportSummary` | Aggregated statistics of user event import status. |

### `GoogleCloudRetailV2alphaMerchantCenterAccountLink`

Represents a link between a Merchant Center account and a branch. After a link is established, products from the linked Merchant Center account are streamed to the linked branch.

| Property | Type | Description |
|----------|------|-------------|
| `branchId` | `string` | Required. The branch ID (e.g. 0/1/2) within the catalog that products from merchant_center_accoun... |
| `feedFilters` | `array<GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter>` | Criteria for the Merchant Center feeds to be ingested via the link. All offers will be ingested i... |
| `feedLabel` | `string` | The FeedLabel used to perform filtering. Note: this replaces [region_id](https://developers.googl... |
| `id` | `string` | Output only. Immutable. MerchantCenterAccountLink identifier, which is the final component of nam... |
| `languageCode` | `string` | Language of the title/description and other string attributes. Use language tags defined by [BCP ... |
| `merchantCenterAccountId` | `string` | Required. The linked [Merchant center account id](https://developers.google.com/shopping-content/... |
| `name` | `string` | Output only. Immutable. Full resource name of the Merchant Center Account Link, such as `projects... |
| `projectId` | `string` | Output only. Google Cloud project ID. |
| `source` | `string` | Optional. An optional arbitrary string that could be used as a tag for tracking link source. |
| `state` | `string` | Output only. Represents the state of the link. |

### `GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter`

Merchant Center Feed filter criterion.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceId` | `string` | AFM data source ID. |
| `primaryFeedId` | `string` | Merchant Center primary feed ID. Deprecated: use data_source_id instead. |
| `primaryFeedName` | `string` | Merchant Center primary feed name. The name is used for the display purposes only. |

### `GoogleCloudRetailV2alphaModel`

Metadata that describes the training and serving parameters of a Model. A Model can be associated with a ServingConfig and then queried through the Predict API.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Recommendation Model was created at. |
| `dataState` | `string` | Output only. The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommend... |
| `displayName` | `string` | Required. The display name of the model. Should be human readable, used to display Recommendation... |
| `filteringOption` | `string` | Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabl... |
| `lastTuneTime` | `string` | Output only. The timestamp when the latest successful tune finished. |
| `modelFeaturesConfig` | `GoogleCloudRetailV2alphaModelModelFeaturesConfig` | Optional. Additional model features config. |
| `name` | `string` | Required. The fully qualified resource name of the model. Format: `projects/{project_number}/loca... |
| `optimizationObjective` | `string` | Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `reven... |
| `pageOptimizationConfig` | `GoogleCloudRetailV2alphaModelPageOptimizationConfig` | Optional. The page optimization config. |
| `periodicTuningState` | `string` | Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earl... |
| `servingConfigLists` | `array<GoogleCloudRetailV2alphaModelServingConfigList>` | Output only. The list of valid serving configs associated with the PageOptimizationConfig. |
| `servingState` | `string` | Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`. |
| `trainingState` | `string` | Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of th... |
| `tuningOperation` | `string` | Output only. The tune operation associated with the model. Can be used to determine if there is a... |
| `type` | `string` | Required. The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, ... |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model ... |

### `GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig`

Additional configs for the frequently-bought-together model type.

| Property | Type | Description |
|----------|------|-------------|
| `contextProductsType` | `string` | Optional. Specifies the context of the model when it is used in predict requests. Can only be set... |

### `GoogleCloudRetailV2alphaModelModelFeaturesConfig`

Additional model features config.

| Property | Type | Description |
|----------|------|-------------|
| `frequentlyBoughtTogetherConfig` | `GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig` | Additional configs for frequently-bought-together models. |

### `GoogleCloudRetailV2alphaModelPageOptimizationConfig`

The PageOptimizationConfig for model training. This determines how many panels to optimize for, and which serving configs to consider for each panel. The purpose of this model is to optimize which ServingConfig to show on which panels in way that optimizes the visitors shopping journey.

| Property | Type | Description |
|----------|------|-------------|
| `pageOptimizationEventType` | `string` | Required. The type of UserEvent this page optimization is shown for. Each page has an associated ... |
| `panels` | `array<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>` | Required. A list of panel configurations. Limit = 5. |
| `restriction` | `string` | Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multi... |

### `GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate`

A candidate to consider for a given panel. Currently only ServingConfig are valid candidates.

| Property | Type | Description |
|----------|------|-------------|
| `servingConfigId` | `string` | This has to be a valid ServingConfig identifier. For example, for a ServingConfig with full name:... |

### `GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel`

An individual panel with a list of ServingConfigs to consider for it.

| Property | Type | Description |
|----------|------|-------------|
| `candidates` | `array<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>` | Required. The candidates to consider on the panel. |
| `defaultCandidate` | `GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate` | Required. The default candidate. If the model fails at serving time, we fall back to the default. |
| `displayName` | `string` | Optional. The name to display for the panel. |

### `GoogleCloudRetailV2alphaModelServingConfigList`

Represents an ordered combination of valid serving configs, which can be used for `PAGE_OPTIMIZATION` recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `servingConfigIds` | `array<string>` | Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`. |

### `GoogleCloudRetailV2alphaOutputResult`

Output result that stores the information about where the exported data is stored.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryResult` | `array<GoogleCloudRetailV2alphaBigQueryOutputResult>` | The BigQuery location where the result is stored. |
| `gcsResult` | `array<GoogleCloudRetailV2alphaGcsOutputResult>` | The Google Cloud Storage location where the result is stored. |

### `GoogleCloudRetailV2alphaPurgeMetadata`

Metadata related to the progress of the Purge operation. This will be returned by the google.longrunning.Operation.metadata field.

### `GoogleCloudRetailV2alphaPurgeProductsMetadata`

Metadata related to the progress of the PurgeProducts operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2alphaPurgeProductsResponse`

Response of the PurgeProductsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of products purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of the product names that will be deleted. Only populated if `force` is set to false. A ... |

### `GoogleCloudRetailV2alphaPurgeUserEventsResponse`

Response of the PurgeUserEventsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgedEventsCount` | `string` | The total count of events purged as a result of the operation. |

### `GoogleCloudRetailV2alphaRejoinUserEventsMetadata`

Metadata for `RejoinUserEvents` method.

### `GoogleCloudRetailV2alphaRejoinUserEventsResponse`

Response message for `RejoinUserEvents` method.

| Property | Type | Description |
|----------|------|-------------|
| `rejoinedUserEventsCount` | `string` | Number of user events that were joined with latest product catalog. |

### `GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata`

Metadata related to the progress of the RemoveFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse`

Response of the RemoveFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2alphaRemoveLocalInventoriesMetadata`

Metadata related to the progress of the RemoveLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2alphaRemoveLocalInventoriesResponse`

Response of the ProductService.RemoveLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2alphaSetInventoryMetadata`

Metadata related to the progress of the SetInventory operation. Currently empty because there is no meaningful metadata populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2alphaSetInventoryResponse`

Response of the SetInventoryRequest. Currently empty because there is no meaningful response populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2alphaTransformedUserEventsMetadata`

Metadata related to transform user events operation.

| Property | Type | Description |
|----------|------|-------------|
| `sourceEventsCount` | `string` | Count of entries in the source user events BigQuery table. |
| `transformedEventsCount` | `string` | Count of entries in the transformed user events BigQuery table, which could be different from the... |

### `GoogleCloudRetailV2alphaTuneModelMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this tune applies to. Format: `projects/{project_number}/loca... |

### `GoogleCloudRetailV2alphaTuneModelResponse`

Response associated with a tune operation.

### `GoogleCloudRetailV2alphaUserEventImportSummary`

A summary of import result. The UserEventImportSummary summarizes the import status for user events.

| Property | Type | Description |
|----------|------|-------------|
| `joinedEventsCount` | `string` | Count of user events imported with complete existing catalog information. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with catalog information not found in the imported catalog. |

### `GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata`

Metadata related to the progress of the AddFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2betaAddFulfillmentPlacesResponse`

Response of the AddFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.AddFulfillmentPlaces method.

### `GoogleCloudRetailV2betaAddLocalInventoriesMetadata`

Metadata related to the progress of the AddLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2betaAddLocalInventoriesResponse`

Response of the ProductService.AddLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.AddLocalInventories method.

### `GoogleCloudRetailV2betaBigQueryOutputResult`

A BigQuery output result.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | The ID of a BigQuery Dataset. |
| `tableId` | `string` | The ID of a BigQuery Table. |

### `GoogleCloudRetailV2betaCreateModelMetadata`

Metadata associated with a create operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this create applies to. Format: `projects/{project_number}/lo... |

### `GoogleCloudRetailV2betaExportAnalyticsMetricsResponse`

Response of the ExportAnalyticsMetricsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2betaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2betaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2betaExportErrorsConfig`

Configuration of destination for Export related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage path for import errors. This must be an empty, existing Cloud Storage bucket... |

### `GoogleCloudRetailV2betaExportMetadata`

Metadata related to the progress of the Export operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2betaExportProductsResponse`

Response of the ExportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2betaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2betaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2betaExportUserEventsResponse`

Response of the ExportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2betaExportErrorsConfig` | This field is never set. |
| `outputResult` | `GoogleCloudRetailV2betaOutputResult` | Output result indicating where the data were exported to. |

### `GoogleCloudRetailV2betaGcsOutputResult`

A Gcs output result.

| Property | Type | Description |
|----------|------|-------------|
| `outputUri` | `string` | The uri of Gcs output |

### `GoogleCloudRetailV2betaImportCompletionDataResponse`

Response of the ImportCompletionDataRequest. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudRetailV2betaImportErrorsConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage dire... |

### `GoogleCloudRetailV2betaImportMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `notificationPubsubTopic` | `string` | Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a no... |
| `requestId` | `string` | Deprecated. This field is never set. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2betaImportProductsResponse`

Response of the ImportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2betaImportErrorsConfig` | Echoes the destination for the complete errors in the request if set. |

### `GoogleCloudRetailV2betaImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRetailV2betaImportErrorsConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `importSummary` | `GoogleCloudRetailV2betaUserEventImportSummary` | Aggregated statistics of user event import status. |

### `GoogleCloudRetailV2betaModel`

Metadata that describes the training and serving parameters of a Model. A Model can be associated with a ServingConfig and then queried through the Predict API.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Recommendation Model was created at. |
| `dataState` | `string` | Output only. The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommend... |
| `displayName` | `string` | Required. The display name of the model. Should be human readable, used to display Recommendation... |
| `filteringOption` | `string` | Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabl... |
| `lastTuneTime` | `string` | Output only. The timestamp when the latest successful tune finished. |
| `modelFeaturesConfig` | `GoogleCloudRetailV2betaModelModelFeaturesConfig` | Optional. Additional model features config. |
| `name` | `string` | Required. The fully qualified resource name of the model. Format: `projects/{project_number}/loca... |
| `optimizationObjective` | `string` | Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `reven... |
| `periodicTuningState` | `string` | Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earl... |
| `servingConfigLists` | `array<GoogleCloudRetailV2betaModelServingConfigList>` | Output only. The list of valid serving configs associated with the PageOptimizationConfig. |
| `servingState` | `string` | Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`. |
| `trainingState` | `string` | Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of th... |
| `tuningOperation` | `string` | Output only. The tune operation associated with the model. Can be used to determine if there is a... |
| `type` | `string` | Required. The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, ... |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model ... |

### `GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig`

Additional configs for the frequently-bought-together model type.

| Property | Type | Description |
|----------|------|-------------|
| `contextProductsType` | `string` | Optional. Specifies the context of the model when it is used in predict requests. Can only be set... |

### `GoogleCloudRetailV2betaModelModelFeaturesConfig`

Additional model features config.

| Property | Type | Description |
|----------|------|-------------|
| `frequentlyBoughtTogetherConfig` | `GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig` | Additional configs for frequently-bought-together models. |

### `GoogleCloudRetailV2betaModelServingConfigList`

Represents an ordered combination of valid serving configs, which can be used for `PAGE_OPTIMIZATION` recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `servingConfigIds` | `array<string>` | Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`. |

### `GoogleCloudRetailV2betaOutputResult`

Output result that stores the information about where the exported data is stored.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryResult` | `array<GoogleCloudRetailV2betaBigQueryOutputResult>` | The BigQuery location where the result is stored. |
| `gcsResult` | `array<GoogleCloudRetailV2betaGcsOutputResult>` | The Google Cloud Storage location where the result is stored. |

### `GoogleCloudRetailV2betaPurgeMetadata`

Metadata related to the progress of the Purge operation. This will be returned by the google.longrunning.Operation.metadata field.

### `GoogleCloudRetailV2betaPurgeProductsMetadata`

Metadata related to the progress of the PurgeProducts operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRetailV2betaPurgeProductsResponse`

Response of the PurgeProductsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of products purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of the product names that will be deleted. Only populated if `force` is set to false. A ... |

### `GoogleCloudRetailV2betaPurgeUserEventsResponse`

Response of the PurgeUserEventsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgedEventsCount` | `string` | The total count of events purged as a result of the operation. |

### `GoogleCloudRetailV2betaRejoinUserEventsMetadata`

Metadata for `RejoinUserEvents` method.

### `GoogleCloudRetailV2betaRejoinUserEventsResponse`

Response message for `RejoinUserEvents` method.

| Property | Type | Description |
|----------|------|-------------|
| `rejoinedUserEventsCount` | `string` | Number of user events that were joined with latest product catalog. |

### `GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata`

Metadata related to the progress of the RemoveFulfillmentPlaces operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse`

Response of the RemoveFulfillmentPlacesRequest. Currently empty because there is no meaningful response populated from the ProductService.RemoveFulfillmentPlaces method.

### `GoogleCloudRetailV2betaRemoveLocalInventoriesMetadata`

Metadata related to the progress of the RemoveLocalInventories operation. Currently empty because there is no meaningful metadata populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2betaRemoveLocalInventoriesResponse`

Response of the ProductService.RemoveLocalInventories API. Currently empty because there is no meaningful response populated from the ProductService.RemoveLocalInventories method.

### `GoogleCloudRetailV2betaSetInventoryMetadata`

Metadata related to the progress of the SetInventory operation. Currently empty because there is no meaningful metadata populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2betaSetInventoryResponse`

Response of the SetInventoryRequest. Currently empty because there is no meaningful response populated from the ProductService.SetInventory method.

### `GoogleCloudRetailV2betaTuneModelMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | The resource name of the model that this tune applies to. Format: `projects/{project_number}/loca... |

### `GoogleCloudRetailV2betaTuneModelResponse`

Response associated with a tune operation.

### `GoogleCloudRetailV2betaUserEventImportSummary`

A summary of import result. The UserEventImportSummary summarizes the import status for user events.

| Property | Type | Description |
|----------|------|-------------|
| `joinedEventsCount` | `string` | Count of user events imported with complete existing catalog information. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with catalog information not found in the imported catalog. |

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

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

