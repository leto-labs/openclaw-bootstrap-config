# Cloud Location Finder API - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 5

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudlocationfinder.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `cloudlocationfinder.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `cloudlocationfinder.projects.locations.cloudLocations.search` | GET | `v1/{+parent}/cloudLocations:search` | Searches for cloud locations from a given source location. |
| `cloudlocationfinder.projects.locations.cloudLocations.list` | GET | `v1/{+parent}/cloudLocations` | Lists cloud locations under a given project and location. |
| `cloudlocationfinder.projects.locations.cloudLocations.get` | GET | `v1/{+name}` | Retrieves a resource containing information about a cloud location. |

### `cloudlocationfinder.projects.locations.list`

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

**Response**: `ListLocationsResponse`

```typescript
const res = await cloudlocationfinder.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudlocationfinder.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await cloudlocationfinder.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudlocationfinder.projects.locations.cloudLocations.search`

**GET** `v1/{+parent}/cloudLocations:search`

Searches for cloud locations from a given source location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of cloud locations. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of cloud locations to return. The service might return fewer cloud locations than this v... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Provide Page token returned by a previous '... |
| `query` | `string` | query | No | Optional. The query string in search query syntax. While filter is used to filter the search results by attributes, q... |
| `sourceCloudLocation` | `string` | query | No | Required. The source cloud location to search from. Example search can be searching nearby cloud locations from the s... |

**Response**: `SearchCloudLocationsResponse`

```typescript
const res = await cloudlocationfinder.cloudLocations.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudlocationfinder.projects.locations.cloudLocations.list`

**GET** `v1/{+parent}/cloudLocations`

Lists cloud locations under a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of cloud locations. Format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. A filter expression that filters resources listed in the response. The expression is in the form of field=v... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of cloud locations to return per page. The service might return fewer cloud locations th... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Provide page token returned by a previous '... |

**Response**: `ListCloudLocationsResponse`

```typescript
const res = await cloudlocationfinder.cloudLocations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudlocationfinder.projects.locations.cloudLocations.get`

**GET** `v1/{+name}`

Retrieves a resource containing information about a cloud location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `CloudLocation`

```typescript
const res = await cloudlocationfinder.cloudLocations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CloudLocation`

Represents resource cloud locations.

| Property | Type | Description |
|----------|------|-------------|
| `carbonFreeEnergyPercentage` | `number` | Optional. The carbon free energy percentage of the cloud location. This represents the average pe... |
| `cloudLocationType` | `string` | Optional. The type of the cloud location. |
| `cloudProvider` | `string` | Optional. The provider of the cloud location. Values can be Google Cloud or third-party providers... |
| `containingCloudLocation` | `string` | Output only. The containing cloud location in the strict nesting hierarchy. For example, the cont... |
| `displayName` | `string` | Optional. The human-readable name of the cloud location. Example: us-east-2, us-east1. |
| `name` | `string` | Identifier. Name of the cloud location. Unique name of the cloud location including project and l... |
| `territoryCode` | `string` | Optional. The two-letter ISO 3166-1 alpha-2 code of the cloud location. Examples: US, JP, KR. |

### `ListCloudLocationsResponse`

Message for response to listing cloud locations.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLocations` | `array<CloudLocation>` | Output only. List of cloud locations. |
| `nextPageToken` | `string` | Output only. The continuation token, used to page through large result sets. Provide this value i... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `SearchCloudLocationsResponse`

Message for response to searching cloud locations.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLocations` | `array<CloudLocation>` | Output only. List of cloud locations. |
| `nextPageToken` | `string` | Output only. The continuation token, used to page through large result sets. Provide this value i... |

