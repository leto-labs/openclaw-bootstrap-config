# My Business Place Actions API - API Reference

**Version**: `v1` | **Methods**: 6 | **Schemas**: 5

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessplaceactions.placeActionTypeMetadata.list` | GET | `v1/placeActionTypeMetadata` | Returns the list of available place action types for a location or country. |
| `mybusinessplaceactions.locations.placeActionLinks.list` | GET | `v1/{+parent}/placeActionLinks` | Lists the place action links for the specified location. |
| `mybusinessplaceactions.locations.placeActionLinks.get` | GET | `v1/{+name}` | Gets the specified place action link. |
| `mybusinessplaceactions.locations.placeActionLinks.create` | POST | `v1/{+parent}/placeActionLinks` | Creates a place action link associated with the specified location, and returns it. The request i... |
| `mybusinessplaceactions.locations.placeActionLinks.patch` | PATCH | `v1/{+name}` | Updates the specified place action link and returns it. |
| `mybusinessplaceactions.locations.placeActionLinks.delete` | DELETE | `v1/{+name}` | Deletes a place action link from the specified location. |

### `mybusinessplaceactions.placeActionTypeMetadata.list`

**GET** `v1/placeActionTypeMetadata`

Returns the list of available place action types for a location or country.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. A filter constraining the place action types to return metadata for. The response includes entries that mat... |
| `languageCode` | `string` | query | No | Optional. The IETF BCP-47 code of language to get display names in. If this language is not available, they will be p... |
| `pageSize` | `integer` | query | No | Optional. How many action types to include per page. Default is 10, minimum is 1. |
| `pageToken` | `string` | query | No | Optional. If specified, the next page of place action type metadata is retrieved. The `pageToken` is returned when a ... |

**Response**: `ListPlaceActionTypeMetadataResponse`

```typescript
const res = await mybusinessplaceactions.placeActionTypeMetadata.list({
  // parameters
});
```

---

### `mybusinessplaceactions.locations.placeActionLinks.list`

**GET** `v1/{+parent}/placeActionLinks`

Lists the place action links for the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the location whose place action links will be listed. `locations/{location_id}`. |
| `filter` | `string` | query | No | Optional. A filter constraining the place action links to return. The response includes entries that match the filter... |
| `pageSize` | `integer` | query | No | Optional. How many place action links to return per page. Default of 10. The minimum is 1. |
| `pageToken` | `string` | query | No | Optional. If specified, returns the next page of place action links. |

**Response**: `ListPlaceActionLinksResponse`

```typescript
const res = await mybusinessplaceactions.placeActionLinks.list({
  // parameters
});
```

---

### `mybusinessplaceactions.locations.placeActionLinks.get`

**GET** `v1/{+name}`

Gets the specified place action link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the place action link to fetch. |

**Response**: `PlaceActionLink`

```typescript
const res = await mybusinessplaceactions.placeActionLinks.get({
  // parameters
});
```

---

### `mybusinessplaceactions.locations.placeActionLinks.create`

**POST** `v1/{+parent}/placeActionLinks`

Creates a place action link associated with the specified location, and returns it. The request is considered duplicate if the `parent`, `place_action_link.uri` and `place_action_link.place_action_type` are the same as a previous request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location where to create this place action link. `locations/{location_id}`. |

**Request body**: `PlaceActionLink`

**Response**: `PlaceActionLink`

```typescript
const res = await mybusinessplaceactions.placeActionLinks.create({
  // parameters
});
```

---

### `mybusinessplaceactions.locations.placeActionLinks.patch`

**PATCH** `v1/{+name}`

Updates the specified place action link and returns it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Optional. The resource name, in the format `locations/{location_id}/placeActionLinks/{place_action_link_id}`. The nam... |
| `updateMask` | `string` | query | No | Required. The specific fields to update. The only editable fields are `uri`, `place_action_type` and `is_preferred`. ... |

**Request body**: `PlaceActionLink`

**Response**: `PlaceActionLink`

```typescript
const res = await mybusinessplaceactions.placeActionLinks.patch({
  // parameters
});
```

---

### `mybusinessplaceactions.locations.placeActionLinks.delete`

**DELETE** `v1/{+name}`

Deletes a place action link from the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the place action link to remove from the location. |

**Response**: `Empty`

```typescript
const res = await mybusinessplaceactions.placeActionLinks.delete({
  // parameters
});
```

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListPlaceActionLinksResponse`

Response message for PlaceActions.ListPlaceActionLinks.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more place action links than the requested page size, then this field is populated w... |
| `placeActionLinks` | `array<PlaceActionLink>` | The returned list of place action links. |

### `ListPlaceActionTypeMetadataResponse`

Response message for PlaceActions.ListPlaceActionTypeMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If the number of action types exceeded the requested page size, this field will be populated with... |
| `placeActionTypeMetadata` | `array<PlaceActionTypeMetadata>` | A collection of metadata for the available place action types. |

### `PlaceActionLink`

Represents a place action link and its attributes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the place action link was created. |
| `isEditable` | `boolean` | Output only. Indicates whether this link can be edited by the client. |
| `isPreferred` | `boolean` | Optional. Whether this link is preferred by the merchant. Only one link can be marked as preferre... |
| `name` | `string` | Optional. The resource name, in the format `locations/{location_id}/placeActionLinks/{place_actio... |
| `placeActionType` | `string` | Required. The type of place action that can be performed using this link. |
| `providerType` | `string` | Output only. Specifies the provider type. |
| `updateTime` | `string` | Output only. The time when the place action link was last modified. |
| `uri` | `string` | Required. The link uri. The same uri can be reused for different action types across different lo... |

### `PlaceActionTypeMetadata`

Metadata for supported place action types.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The localized display name for the attribute, if available; otherwise, the English display name. |
| `placeActionType` | `string` | The place action type. |

