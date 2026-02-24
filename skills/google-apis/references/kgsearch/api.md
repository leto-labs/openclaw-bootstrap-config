# Knowledge Graph Search API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 1

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `kgsearch.entities.search` | GET | `v1/entities:search` | Searches Knowledge Graph for entities that match the constraints. A list of matched entities will... |

### `kgsearch.entities.search`

**GET** `v1/entities:search`

Searches Knowledge Graph for entities that match the constraints. A list of matched entities will be returned in response, which will be in JSON-LD format and compatible with http://schema.org

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ids` | `string` | query | No | The list of entity id to be used for search instead of query string. To specify multiple ids in the HTTP request, rep... |
| `indent` | `boolean` | query | No | Enables indenting of json results. |
| `languages` | `string` | query | No | The list of language codes (defined in ISO 693) to run the query with, e.g. 'en'. |
| `limit` | `integer` | query | No | Limits the number of entities to be returned. |
| `prefix` | `boolean` | query | No | Enables prefix match against names and aliases of entities |
| `query` | `string` | query | No | The literal query string for search. |
| `types` | `string` | query | No | Restricts returned entities with these types, e.g. Person (as defined in http://schema.org/Person). If multiple types... |

**Response**: `SearchResponse`

```typescript
const res = await kgsearch.entities.search({
  // parameters
});
```

---

## Schemas

### `SearchResponse`

Response message includes the context and a list of matching results which contain the detail of associated entities.

| Property | Type | Description |
|----------|------|-------------|
| `@context` | `any` | The local context applicable for the response. See more details at http://www.w3.org/TR/json-ld/#... |
| `@type` | `any` | The schema type of top-level JSON-LD object, e.g. ItemList. |
| `itemListElement` | `array<any>` | The item list of search results. |

