# Recommendations AI (Beta) - API Reference

**Version**: `v1beta1` | **Methods**: 22 | **Schemas**: 53

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `recommendationengine.projects.locations.catalogs.list` | GET | `v1beta1/{+parent}/catalogs` | Lists all the catalog configurations associated with the project. |
| `recommendationengine.projects.locations.catalogs.patch` | PATCH | `v1beta1/{+name}` | Updates the catalog configuration. |
| `recommendationengine.projects.locations.catalogs.operations.get` | GET | `v1beta1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `recommendationengine.projects.locations.catalogs.operations.list` | GET | `v1beta1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `recommendationengine.projects.locations.catalogs.eventStores.operations.list` | GET | `v1beta1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `recommendationengine.projects.locations.catalogs.eventStores.operations.get` | GET | `v1beta1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.write` | POST | `v1beta1/{+parent}/userEvents:write` | Writes a single user event. |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.collect` | GET | `v1beta1/{+parent}/userEvents:collect` | Writes a single user event from the browser. This uses a GET request to due to browser restrictio... |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.rejoin` | POST | `v1beta1/{+parent}/userEvents:rejoin` | Triggers a user event rejoin operation with latest catalog data. Events will not be annotated wit... |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.purge` | POST | `v1beta1/{+parent}/userEvents:purge` | Deletes permanently all user events specified by the filter provided. Depending on the number of ... |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.list` | GET | `v1beta1/{+parent}/userEvents` | Gets a list of user events within a time range, with potential filtering. The method does not lis... |
| `recommendationengine.projects.locations.catalogs.eventStores.userEvents.import` | POST | `v1beta1/{+parent}/userEvents:import` | Bulk import of User events. Request processing might be synchronous. Events that already exist ar... |
| `recommendationengine.projects.locations.catalogs.eventStores.placements.predict` | POST | `v1beta1/{+name}:predict` | Makes a recommendation prediction. If using API Key based authentication, the API Key must be reg... |
| `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.list` | GET | `v1beta1/{+parent}/predictionApiKeyRegistrations` | List the registered apiKeys for use with predict method. |
| `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.create` | POST | `v1beta1/{+parent}/predictionApiKeyRegistrations` | Register an API key for use with predict method. |
| `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.delete` | DELETE | `v1beta1/{+name}` | Unregister an apiKey from using for predict method. |
| `recommendationengine.projects.locations.catalogs.catalogItems.list` | GET | `v1beta1/{+parent}/catalogItems` | Gets a list of catalog items. |
| `recommendationengine.projects.locations.catalogs.catalogItems.create` | POST | `v1beta1/{+parent}/catalogItems` | Creates a catalog item. |
| `recommendationengine.projects.locations.catalogs.catalogItems.import` | POST | `v1beta1/{+parent}/catalogItems:import` | Bulk import of multiple catalog items. Request processing may be synchronous. No partial updating... |
| `recommendationengine.projects.locations.catalogs.catalogItems.patch` | PATCH | `v1beta1/{+name}` | Updates a catalog item. Partial updating is supported. Non-existing items will be created. |
| `recommendationengine.projects.locations.catalogs.catalogItems.delete` | DELETE | `v1beta1/{+name}` | Deletes a catalog item. |
| `recommendationengine.projects.locations.catalogs.catalogItems.get` | GET | `v1beta1/{+name}` | Gets a specific catalog item. |

### `recommendationengine.projects.locations.catalogs.list`

**GET** `v1beta1/{+parent}/catalogs`

Lists all the catalog configurations associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account resource name with an associated location. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListCatalogs` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudRecommendationengineV1beta1ListCatalogsResponse`

```typescript
const res = await recommendationengine.catalogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.patch`

**PATCH** `v1beta1/{+name}`

Updates the catalog configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The fully qualified resource name of the catalog. |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided 'catalog' to update. If not set, will only update the catalog_item_l... |

**Request body**: `GoogleCloudRecommendationengineV1beta1Catalog`

**Response**: `GoogleCloudRecommendationengineV1beta1Catalog`

```typescript
const res = await recommendationengine.catalogs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.operations.get`

**GET** `v1beta1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.operations.list`

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
const res = await recommendationengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.operations.list`

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
const res = await recommendationengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.operations.get`

**GET** `v1beta1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.write`

**POST** `v1beta1/{+parent}/userEvents:write`

Writes a single user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent eventStore resource name, such as "projects/1234/locations/global/catalogs/default_catalog/event... |

**Request body**: `GoogleCloudRecommendationengineV1beta1UserEvent`

**Response**: `GoogleCloudRecommendationengineV1beta1UserEvent`

```typescript
const res = await recommendationengine.userEvents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.collect`

**GET** `v1beta1/{+parent}/userEvents:collect`

Writes a single user event from the browser. This uses a GET request to due to browser restriction of POST-ing to a 3rd party domain. This method is used only by the Recommendations AI JavaScript pixel. Users should not call this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent eventStore name, such as `projects/1234/locations/global/catalogs/default_catalog/eventStores/de... |
| `ets` | `string` | query | No | Optional. The event timestamp in milliseconds. This prevents browser caching of otherwise identical get requests. The... |
| `uri` | `string` | query | No | Optional. The url including cgi-parameters but excluding the hash fragment. The URL must be truncated to 1.5K bytes t... |
| `userEvent` | `string` | query | No | Required. URL encoded UserEvent proto. |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await recommendationengine.userEvents.collect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.rejoin`

**POST** `v1beta1/{+parent}/userEvents:rejoin`

Triggers a user event rejoin operation with latest catalog data. Events will not be annotated with detailed catalog information if catalog item is missing at the time the user event is ingested, and these events are stored as unjoined events with a limited usage on training and serving. This API can be used to trigger a 'join' operation on specified events with latest version of catalog items. It can also be used to correct events joined with wrong catalog items.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of user event, such as `projects/*/locations/*/catalogs/default_catalog/eventStores/defa... |

**Request body**: `GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.userEvents.rejoin({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.purge`

**POST** `v1beta1/{+parent}/userEvents:purge`

Deletes permanently all user events specified by the filter provided. Depending on the number of events specified by the filter, this operation could take hours or days to complete. To test a filter, use the list command first.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the event_store under which the events are created. The format is `projects/${projectI... |

**Request body**: `GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.userEvents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.list`

**GET** `v1beta1/{+parent}/userEvents`

Gets a list of user events within a time range, with potential filtering. The method does not list unjoined user events. Unjoined user event definition: when a user event is ingested from Recommendations AI User Event APIs, the catalog item included in the user event is connected with the current catalog. If a catalog item of the ingested event is not in the current catalog, it could lead to degraded model quality. This is called an unjoined event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent eventStore resource name, such as `projects/*/locations/*/catalogs/default_catalog/eventStores/d... |
| `filter` | `string` | query | No | Optional. Filtering expression to specify restrictions over returned events. This is a sequence of terms, where each ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return per page. If zero, the service will choose a reasonable default. |
| `pageToken` | `string` | query | No | Optional. The previous ListUserEventsResponse.next_page_token. |

**Response**: `GoogleCloudRecommendationengineV1beta1ListUserEventsResponse`

```typescript
const res = await recommendationengine.userEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.userEvents.import`

**POST** `v1beta1/{+parent}/userEvents:import`

Bulk import of User events. Request processing might be synchronous. Events that already exist are skipped. Use this method for backfilling historical user events. Operation.response is of type ImportResponse. Note that it is possible for a subset of the items to be successfully inserted. Operation.metadata is of type ImportMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store` |

**Request body**: `GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.userEvents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.placements.predict`

**POST** `v1beta1/{+name}:predict`

Makes a recommendation prediction. If using API Key based authentication, the API Key must be registered using the PredictionApiKeyRegistry service. [Learn more](https://cloud.google.com/recommendations-ai/docs/setting-up#register-key).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |

**Request body**: `GoogleCloudRecommendationengineV1beta1PredictRequest`

**Response**: `GoogleCloudRecommendationengineV1beta1PredictResponse`

```typescript
const res = await recommendationengine.placements.predict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.list`

**GET** `v1beta1/{+parent}/predictionApiKeyRegistrations`

List the registered apiKeys for use with predict method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent placement resource name such as `projects/1234/locations/global/catalogs/default_catalog/eventSt... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return per page. If unset, the service will choose a reasonable default. |
| `pageToken` | `string` | query | No | Optional. The previous `ListPredictionApiKeyRegistration.nextPageToken`. |

**Response**: `GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse`

```typescript
const res = await recommendationengine.predictionApiKeyRegistrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.create`

**POST** `v1beta1/{+parent}/predictionApiKeyRegistrations`

Register an API key for use with predict method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path. `projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_s... |

**Request body**: `GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest`

**Response**: `GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration`

```typescript
const res = await recommendationengine.predictionApiKeyRegistrations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.eventStores.predictionApiKeyRegistrations.delete`

**DELETE** `v1beta1/{+name}`

Unregister an apiKey from using for predict method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The API key to unregister including full resource path. `projects/*/locations/global/catalogs/default_catal... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await recommendationengine.predictionApiKeyRegistrations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.list`

**GET** `v1beta1/{+parent}/catalogItems`

Gets a list of catalog items.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog resource name, such as `projects/*/locations/global/catalogs/default_catalog`. |
| `filter` | `string` | query | No | Optional. Use of this field is not supported by version v1beta1. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return per page. If zero, the service will choose a reasonable default. |
| `pageToken` | `string` | query | No | Optional. The previous ListCatalogItemsResponse.next_page_token. |

**Response**: `GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse`

```typescript
const res = await recommendationengine.catalogItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.create`

**POST** `v1beta1/{+parent}/catalogItems`

Creates a catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent catalog resource name, such as `projects/*/locations/global/catalogs/default_catalog`. |

**Request body**: `GoogleCloudRecommendationengineV1beta1CatalogItem`

**Response**: `GoogleCloudRecommendationengineV1beta1CatalogItem`

```typescript
const res = await recommendationengine.catalogItems.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.import`

**POST** `v1beta1/{+parent}/catalogItems:import`

Bulk import of multiple catalog items. Request processing may be synchronous. No partial updating supported. Non-existing items will be created. Operation.response is of type ImportResponse. Note that it is possible for a subset of the items to be successfully updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. `projects/1234/locations/global/catalogs/default_catalog` If no updateMask is specified, requires catalogIt... |

**Request body**: `GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await recommendationengine.catalogItems.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.patch`

**PATCH** `v1beta1/{+name}`

Updates a catalog item. Partial updating is supported. Non-existing items will be created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of catalog item, such as `projects/*/locations/global/catalogs/default_catalog/catalogIt... |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided 'item' to update. If not set, will by default update all fields. |

**Request body**: `GoogleCloudRecommendationengineV1beta1CatalogItem`

**Response**: `GoogleCloudRecommendationengineV1beta1CatalogItem`

```typescript
const res = await recommendationengine.catalogItems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.delete`

**DELETE** `v1beta1/{+name}`

Deletes a catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of catalog item, such as `projects/*/locations/global/catalogs/default_catalog/catalogIt... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await recommendationengine.catalogItems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommendationengine.projects.locations.catalogs.catalogItems.get`

**GET** `v1beta1/{+name}`

Gets a specific catalog item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of catalog item, such as `projects/*/locations/global/catalogs/default_catalog/catalogit... |

**Response**: `GoogleCloudRecommendationengineV1beta1CatalogItem`

```typescript
const res = await recommendationengine.catalogItems.get({
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

### `GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata`

Metadata for TriggerCatalogRejoin method.

### `GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse`

Response message for TriggerCatalogRejoin method.

| Property | Type | Description |
|----------|------|-------------|
| `rejoinedUserEventsCount` | `string` | Number of user events that were joined with latest catalog items. |

### `GoogleCloudRecommendationengineV1alphaTuningMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `recommendationModel` | `string` | The resource name of the recommendation model that this tune applies to. Format: projects/{projec... |

### `GoogleCloudRecommendationengineV1alphaTuningResponse`

Response associated with a tune operation.

### `GoogleCloudRecommendationengineV1beta1BigQuerySource`

BigQuery source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `dataSchema` | `string` | Optional. The schema to use when parsing the data from the source. Supported values for catalog i... |
| `datasetId` | `string` | Required. The BigQuery data set to copy the data from. |
| `gcsStagingDir` | `string` | Optional. Intermediate Cloud Storage directory used for the import. Can be specified if one wants... |
| `projectId` | `string` | Optional. The project id (can be project # or id) that the BigQuery source is in. If not specifie... |
| `tableId` | `string` | Required. The BigQuery table to copy the data from. |

### `GoogleCloudRecommendationengineV1beta1Catalog`

The catalog configuration. Next ID: 5.

| Property | Type | Description |
|----------|------|-------------|
| `catalogItemLevelConfig` | `GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig` | Required. The catalog item level configuration. |
| `defaultEventStoreId` | `string` | Required. The ID of the default event store. |
| `displayName` | `string` | Required. The catalog display name. |
| `name` | `string` | The fully qualified resource name of the catalog. |

### `GoogleCloudRecommendationengineV1beta1CatalogInlineSource`

The inline source for the input config for ImportCatalogItems method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogItems` | `array<GoogleCloudRecommendationengineV1beta1CatalogItem>` | Optional. A list of catalog items to update/create. Recommended max of 10k items. |

### `GoogleCloudRecommendationengineV1beta1CatalogItem`

CatalogItem captures all metadata information of items to be recommended.

| Property | Type | Description |
|----------|------|-------------|
| `categoryHierarchies` | `array<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>` | Required. Catalog item categories. This field is repeated for supporting one catalog item belongi... |
| `description` | `string` | Optional. Catalog item description. UTF-8 encoded string with a length limit of 5 KiB. |
| `id` | `string` | Required. Catalog item identifier. UTF-8 encoded string with a length limit of 128 bytes. This id... |
| `itemAttributes` | `GoogleCloudRecommendationengineV1beta1FeatureMap` | Optional. Highly encouraged. Extra catalog item attributes to be included in the recommendation m... |
| `itemGroupId` | `string` | Optional. Variant group identifier for prediction results. UTF-8 encoded string with a length lim... |
| `languageCode` | `string` | Optional. Deprecated. The model automatically detects the text language. Your catalog can include... |
| `productMetadata` | `GoogleCloudRecommendationengineV1beta1ProductCatalogItem` | Optional. Metadata specific to retail products. |
| `tags` | `array<string>` | Optional. Filtering tags associated with the catalog item. Each tag should be a UTF-8 encoded str... |
| `title` | `string` | Required. Catalog item title. UTF-8 encoded string with a length limit of 1 KiB. |

### `GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy`

Category represents catalog item category hierarchy.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<string>` | Required. Catalog item categories. Each category should be a UTF-8 encoded string with a length l... |

### `GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig`

Configures the catalog level that users send events to, and the level at which predictions are made.

| Property | Type | Description |
|----------|------|-------------|
| `eventItemLevel` | `string` | Optional. Level of the catalog at which events are uploaded. See https://cloud.google.com/recomme... |
| `predictItemLevel` | `string` | Optional. Level of the catalog at which predictions are made. See https://cloud.google.com/recomm... |

### `GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest`

Request message for the `CreatePredictionApiKeyRegistration` method.

| Property | Type | Description |
|----------|------|-------------|
| `predictionApiKeyRegistration` | `GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration` | Required. The prediction API key registration. |

### `GoogleCloudRecommendationengineV1beta1EventDetail`

User event details shared by all recommendation types.

| Property | Type | Description |
|----------|------|-------------|
| `eventAttributes` | `GoogleCloudRecommendationengineV1beta1FeatureMap` | Optional. Extra user event features to include in the recommendation model. For product recommend... |
| `experimentIds` | `array<string>` | Optional. A list of identifiers for the independent experiment groups this user event belongs to.... |
| `pageViewId` | `string` | Optional. A unique id of a web page view. This should be kept the same for all user events trigge... |
| `recommendationToken` | `string` | Optional. Recommendation token included in the recommendation prediction response. This field ena... |
| `referrerUri` | `string` | Optional. The referrer url of the current page. When using the JavaScript pixel, this value is fi... |
| `uri` | `string` | Optional. Complete url (window.location.href) of the user's current page. When using the JavaScri... |

### `GoogleCloudRecommendationengineV1beta1FeatureMap`

FeatureMap represents extra features that customers want to include in the recommendation model for catalogs/user events as categorical/numerical features.

| Property | Type | Description |
|----------|------|-------------|
| `categoricalFeatures` | `object` | Categorical features that can take on one of a limited number of possible values. Some examples w... |
| `numericalFeatures` | `object` | Numerical features. Some examples would be the height/weight of a product, or age of a customer. ... |

### `GoogleCloudRecommendationengineV1beta1FeatureMapFloatList`

A list of float features.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `array<number>` | Float feature value. |

### `GoogleCloudRecommendationengineV1beta1FeatureMapStringList`

A list of string features.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `array<string>` | String feature value with a length limit of 128 bytes. |

### `GoogleCloudRecommendationengineV1beta1GcsSource`

Google Cloud Storage location for input content. format.

| Property | Type | Description |
|----------|------|-------------|
| `inputUris` | `array<string>` | Required. Google Cloud Storage URIs to input files. URI can be up to 2000 characters long. URIs c... |
| `jsonSchema` | `string` | Optional. The schema to use when parsing the data from the source. Supported values for catalog i... |

### `GoogleCloudRecommendationengineV1beta1Image`

Catalog item thumbnail/detail image.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Optional. Height of the image in number of pixels. |
| `uri` | `string` | Required. URL of the image with a length limit of 5 KiB. |
| `width` | `integer` | Optional. Width of the image in number of pixels. |

### `GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest`

Request message for Import methods.

| Property | Type | Description |
|----------|------|-------------|
| `errorsConfig` | `GoogleCloudRecommendationengineV1beta1ImportErrorsConfig` | Optional. The desired location of errors incurred during the Import. |
| `inputConfig` | `GoogleCloudRecommendationengineV1beta1InputConfig` | Required. The desired input location of the data. |
| `requestId` | `string` | Optional. Unique identifier provided by client, within the ancestor dataset scope. Ensures idempo... |
| `updateMask` | `string` | Optional. Indicates which fields in the provided imported 'items' to update. If not set, will by ... |

### `GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse`

Response of the ImportCatalogItemsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRecommendationengineV1beta1ImportErrorsConfig` | Echoes the destination for the complete errors in the request if set. |

### `GoogleCloudRecommendationengineV1beta1ImportErrorsConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Google Cloud Storage path for import errors. This must be an empty, existing Cloud Storage bucket... |

### `GoogleCloudRecommendationengineV1beta1ImportMetadata`

Metadata related to the progress of the Import operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `operationName` | `string` | Name of the operation. |
| `requestId` | `string` | Id of the request / operation. This is parroting back the requestId that was passed in the request. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest`

Request message for the ImportUserEvents request.

| Property | Type | Description |
|----------|------|-------------|
| `errorsConfig` | `GoogleCloudRecommendationengineV1beta1ImportErrorsConfig` | Optional. The desired location of errors incurred during the Import. |
| `inputConfig` | `GoogleCloudRecommendationengineV1beta1InputConfig` | Required. The desired input location of the data. |
| `requestId` | `string` | Optional. Unique identifier provided by client, within the ancestor dataset scope. Ensures idempo... |

### `GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `errorsConfig` | `GoogleCloudRecommendationengineV1beta1ImportErrorsConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `importSummary` | `GoogleCloudRecommendationengineV1beta1UserEventImportSummary` | Aggregated statistics of user event import status. |

### `GoogleCloudRecommendationengineV1beta1InputConfig`

The input config source.

| Property | Type | Description |
|----------|------|-------------|
| `bigQuerySource` | `GoogleCloudRecommendationengineV1beta1BigQuerySource` | BigQuery input source. |
| `catalogInlineSource` | `GoogleCloudRecommendationengineV1beta1CatalogInlineSource` | The Inline source for the input content for Catalog items. |
| `gcsSource` | `GoogleCloudRecommendationengineV1beta1GcsSource` | Google Cloud Storage location for the input content. |
| `userEventInlineSource` | `GoogleCloudRecommendationengineV1beta1UserEventInlineSource` | The Inline source for the input content for UserEvents. |

### `GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse`

Response message for ListCatalogItems method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogItems` | `array<GoogleCloudRecommendationengineV1beta1CatalogItem>` | The catalog items. |
| `nextPageToken` | `string` | If empty, the list is complete. If nonempty, the token to pass to the next request's ListCatalogI... |

### `GoogleCloudRecommendationengineV1beta1ListCatalogsResponse`

Response for ListCatalogs method.

| Property | Type | Description |
|----------|------|-------------|
| `catalogs` | `array<GoogleCloudRecommendationengineV1beta1Catalog>` | Output only. All the customer's catalogs. |
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |

### `GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse`

Response message for the `ListPredictionApiKeyRegistrations`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If empty, the list is complete. If nonempty, pass the token to the next request's `ListPrediction... |
| `predictionApiKeyRegistrations` | `array<GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>` | The list of registered API keys. |

### `GoogleCloudRecommendationengineV1beta1ListUserEventsResponse`

Response message for ListUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If empty, the list is complete. If nonempty, the token to pass to the next request's ListUserEven... |
| `userEvents` | `array<GoogleCloudRecommendationengineV1beta1UserEvent>` | The user events. |

### `GoogleCloudRecommendationengineV1beta1PredictRequest`

Request message for Predict method. Full resource name of the format: `{name=projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store/placements/*}` The id of the recommendation engine placement. This id is used to identify the set of models that will be used to make the prediction. We currently support three placements with the following IDs by default: // * `shopping_cart`: Predicts items frequently bought together with one or more catalog items in the same shopping session. Commonly displayed after `add-to-cart` event, on product detail pages, or on the shopping cart page. * `home_page`: Predicts the next product that a user will most likely engage with or purchase based on the shopping or viewing history of the specified `userId` or `visitorId`. For example - Recommendations for you. * `product_detail`: Predicts the next product that a user will most likely engage with or purchase. The prediction is based on the shopping or viewing history of the specified `userId` or `visitorId` and its relevance to a specified `CatalogItem`. Typically used on product detail pages. For example - More items like this. * `recently_viewed_default`: Returns up to 75 items recently viewed by the specified `userId` or `visitorId`, most recent ones first. Returns nothing if neither of them has viewed any items yet. For example - Recently viewed. The full list of available placements can be seen at https://console.cloud.google.com/recommendation/catalogs/default_catalog/placements

| Property | Type | Description |
|----------|------|-------------|
| `dryRun` | `boolean` | Optional. Use dryRun mode for this prediction query. If set to true, a fake model will be used th... |
| `filter` | `string` | Optional. Filter for restricting prediction results. Accepts values for tags and the `filterOutOf... |
| `labels` | `object` | Optional. The labels for the predict request. * Label keys can contain lowercase letters, digits ... |
| `pageSize` | `integer` | Optional. Maximum number of results to return per page. Set this property to the number of predic... |
| `pageToken` | `string` | Optional. The previous PredictResponse.next_page_token. |
| `params` | `object` | Optional. Additional domain specific parameters for the predictions. Allowed values: * `returnCat... |
| `userEvent` | `GoogleCloudRecommendationengineV1beta1UserEvent` | Required. Context about the user, what they are looking at and what action they took to trigger t... |

### `GoogleCloudRecommendationengineV1beta1PredictResponse`

Response message for predict method.

| Property | Type | Description |
|----------|------|-------------|
| `dryRun` | `boolean` | True if the dryRun property was set in the request. |
| `itemsMissingInCatalog` | `array<string>` | IDs of items in the request that were missing from the catalog. |
| `metadata` | `object` | Additional domain specific prediction response metadata. |
| `nextPageToken` | `string` | If empty, the list is complete. If nonempty, the token to pass to the next request's PredictReque... |
| `recommendationToken` | `string` | A unique recommendation token. This should be included in the user event logs resulting from this... |
| `results` | `array<GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>` | A list of recommended items. The order represents the ranking (from the most relevant item to the... |

### `GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult`

PredictionResult represents the recommendation prediction results.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of the recommended catalog item |
| `itemMetadata` | `object` | Additional item metadata / annotations. Possible values: * `catalogItem`: JSON representation of ... |

### `GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration`

Registered Api Key.

| Property | Type | Description |
|----------|------|-------------|
| `apiKey` | `string` | The API key. |

### `GoogleCloudRecommendationengineV1beta1ProductCatalogItem`

ProductCatalogItem captures item metadata specific to retail products.

| Property | Type | Description |
|----------|------|-------------|
| `availableQuantity` | `string` | Optional. The available quantity of the item. |
| `canonicalProductUri` | `string` | Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB.. |
| `costs` | `object` | Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.... |
| `currencyCode` | `string` | Optional. Only required if the price is set. Currency code for price/costs. Use three-character I... |
| `exactPrice` | `GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice` | Optional. The exact product price. |
| `images` | `array<GoogleCloudRecommendationengineV1beta1Image>` | Optional. Product images for the catalog item. |
| `priceRange` | `GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange` | Optional. The product price range. |
| `stockState` | `string` | Optional. Online stock state of the catalog item. Default is `IN_STOCK`. |

### `GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice`

Exact product price.

| Property | Type | Description |
|----------|------|-------------|
| `displayPrice` | `number` | Optional. Display price of the product. |
| `originalPrice` | `number` | Optional. Price of the product without any discount. If zero, by default set to be the 'displayPr... |

### `GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange`

Product price range when there are a range of prices for different variations of the same product.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | Required. The maximum product price. |
| `min` | `number` | Required. The minimum product price. |

### `GoogleCloudRecommendationengineV1beta1ProductDetail`

Detailed product information associated with a user event.

| Property | Type | Description |
|----------|------|-------------|
| `availableQuantity` | `integer` | Optional. Quantity of the products in stock when a user event happens. Optional. If provided, thi... |
| `currencyCode` | `string` | Optional. Currency code for price/costs. Use three-character ISO-4217 code. Required only if orig... |
| `displayPrice` | `number` | Optional. Display price of the product (e.g. discounted price). If provided, this will override t... |
| `id` | `string` | Required. Catalog item ID. UTF-8 encoded string with a length limit of 128 characters. |
| `itemAttributes` | `GoogleCloudRecommendationengineV1beta1FeatureMap` | Optional. Extra features associated with a product in the user event. |
| `originalPrice` | `number` | Optional. Original price of the product. If provided, this will override the original price in Ca... |
| `quantity` | `integer` | Optional. Quantity of the product associated with the user event. For example, this field will be... |
| `stockState` | `string` | Optional. Item stock state. If provided, this overrides the stock state in Catalog for items in t... |

### `GoogleCloudRecommendationengineV1beta1ProductEventDetail`

ProductEventDetail captures user event information specific to retail products.

| Property | Type | Description |
|----------|------|-------------|
| `cartId` | `string` | Optional. The id or name of the associated shopping cart. This id is used to associate multiple i... |
| `listId` | `string` | Required for `add-to-list` and `remove-from-list` events. The id or name of the list that the ite... |
| `pageCategories` | `array<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>` | Required for `category-page-view` events. At least one of search_query or page_categories is requ... |
| `productDetails` | `array<GoogleCloudRecommendationengineV1beta1ProductDetail>` | The main product details related to the event. This field is required for the following event typ... |
| `purchaseTransaction` | `GoogleCloudRecommendationengineV1beta1PurchaseTransaction` | Optional. A transaction represents the entire purchase transaction. Required for `purchase-comple... |
| `searchQuery` | `string` | At least one of search_query or page_categories is required for `search` events. Other event type... |

### `GoogleCloudRecommendationengineV1beta1PurchaseTransaction`

A transaction represents the entire purchase transaction.

| Property | Type | Description |
|----------|------|-------------|
| `costs` | `object` | Optional. All the costs associated with the product. These can be manufacturing costs, shipping e... |
| `currencyCode` | `string` | Required. Currency code. Use three-character ISO-4217 code. This field is not required if the eve... |
| `id` | `string` | Optional. The transaction ID with a length limit of 128 bytes. |
| `revenue` | `number` | Required. Total revenue or grand total associated with the transaction. This value include shippi... |
| `taxes` | `object` | Optional. All the taxes associated with the transaction. |

### `GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata`

Metadata related to the progress of the PurgeUserEvents operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `operationName` | `string` | The ID of the request / operation. |

### `GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest`

Request message for PurgeUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. The filter string to specify the events to be deleted. Empty string filter is not allow... |
| `force` | `boolean` | Optional. The default value is false. Override this flag to true to actually perform the purge. I... |

### `GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse`

Response of the PurgeUserEventsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgedEventsCount` | `string` | The total count of events purged as a result of the operation. |
| `userEventsSample` | `array<GoogleCloudRecommendationengineV1beta1UserEvent>` | A sampling of events deleted (or will be deleted) depending on the `force` property in the reques... |

### `GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata`

Metadata for RejoinUserEvents method.

### `GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest`

Request message for CatalogRejoin method.

| Property | Type | Description |
|----------|------|-------------|
| `userEventRejoinScope` | `string` | Required. The type of the catalog rejoin to define the scope and range of the user events to be r... |

### `GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse`

Response message for RejoinUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `rejoinedUserEventsCount` | `string` | Number of user events that were joined with latest catalog items. |

### `GoogleCloudRecommendationengineV1beta1UserEvent`

UserEvent captures all metadata information recommendation engine needs to know about how end users interact with customers' website.

| Property | Type | Description |
|----------|------|-------------|
| `eventDetail` | `GoogleCloudRecommendationengineV1beta1EventDetail` | Optional. User event detailed information common across different recommendation types. |
| `eventSource` | `string` | Optional. This field should *not* be set when using JavaScript pixel or the Recommendations AI Ta... |
| `eventTime` | `string` | Optional. Only required for ImportUserEvents method. Timestamp of user event created. |
| `eventType` | `string` | Required. User event type. Allowed values are: * `add-to-cart` Products being added to cart. * `a... |
| `productEventDetail` | `GoogleCloudRecommendationengineV1beta1ProductEventDetail` | Optional. Retail product specific user event metadata. This field is required for the following e... |
| `userInfo` | `GoogleCloudRecommendationengineV1beta1UserInfo` | Required. User information. |

### `GoogleCloudRecommendationengineV1beta1UserEventImportSummary`

A summary of import result. The UserEventImportSummary summarizes the import status for user events.

| Property | Type | Description |
|----------|------|-------------|
| `joinedEventsCount` | `string` | Count of user events imported with complete existing catalog information. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with catalog information not found in the imported catalog. |

### `GoogleCloudRecommendationengineV1beta1UserEventInlineSource`

The inline source for the input config for ImportUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `userEvents` | `array<GoogleCloudRecommendationengineV1beta1UserEvent>` | Optional. A list of user events to import. Recommended max of 10k items. |

### `GoogleCloudRecommendationengineV1beta1UserInfo`

Information of end users.

| Property | Type | Description |
|----------|------|-------------|
| `directUserRequest` | `boolean` | Optional. Indicates if the request is made directly from the end user in which case the user_agen... |
| `ipAddress` | `string` | Optional. IP address of the user. This could be either IPv4 (e.g. 104.133.9.80) or IPv6 (e.g. 200... |
| `userAgent` | `string` | Optional. User agent as included in the HTTP header. UTF-8 encoded string with a length limit of ... |
| `userId` | `string` | Optional. Unique identifier for logged-in user with a length limit of 128 bytes. Required only fo... |
| `visitorId` | `string` | Required. A unique identifier for tracking visitors with a length limit of 128 bytes. For example... |

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

