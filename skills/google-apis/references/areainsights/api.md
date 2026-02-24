# Places Aggregate API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `areainsights.computeInsights` | POST | `v1:computeInsights` | This method lets you retrieve insights about areas using a variety of filter such as: area, place... |

### `areainsights.computeInsights`

**POST** `v1:computeInsights`

This method lets you retrieve insights about areas using a variety of filter such as: area, place type, operating status, price level and ratings. Currently "count" and "places" insights are supported. With "count" insights you can answer questions such as "How many restaurant are located in California that are operational, are inexpensive and have an average rating of at least 4 stars" (see `insight` enum for more details). With "places" insights, you can determine which places match the requested filter. Clients can then use those place resource names to fetch more details about each individual place using the Places API.

**Request body**: `ComputeInsightsRequest`

**Response**: `ComputeInsightsResponse`

```typescript
const res = await areainsights.computeInsights({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Circle`

A circle is defined by a center point and radius in meters.

| Property | Type | Description |
|----------|------|-------------|
| `latLng` | `LatLng` | The latitude and longitude of the center of the circle. |
| `place` | `string` | **Format:** Must be in the format `places/PLACE_ID`, where `PLACE_ID` is the unique identifier of... |
| `radius` | `integer` | Optional. The radius of the circle in meters |

### `ComputeInsightsRequest`

Request for the ComputeInsights RPC.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `Filter` | Required. Insight filter. |
| `insights` | `array<string>` | Required. Insights to compute. Currently only INSIGHT_COUNT and INSIGHT_PLACES are supported. |

### `ComputeInsightsResponse`

Response for the ComputeInsights RPC.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Result for Insights.INSIGHT_COUNT. |
| `placeInsights` | `array<PlaceInsight>` | Result for Insights.INSIGHT_PLACES. |

### `CustomArea`

Custom Area.

| Property | Type | Description |
|----------|------|-------------|
| `polygon` | `Polygon` | Required. The custom area represented as a polygon |

### `Filter`

Filters for the ComputeInsights RPC.

| Property | Type | Description |
|----------|------|-------------|
| `locationFilter` | `LocationFilter` | Required. Restricts results to places which are located in the area specified by location filters. |
| `operatingStatus` | `array<string>` | Optional. Restricts results to places whose operating status is included on this list. If operati... |
| `priceLevels` | `array<string>` | Optional. Restricts results to places whose price level is included on this list. If `price_level... |
| `ratingFilter` | `RatingFilter` | Optional. Restricts results to places whose average user ratings are in the range specified by ra... |
| `typeFilter` | `TypeFilter` | Required. Place type filters. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LocationFilter`

Location filters. Specifies the area of interest for the insight.

| Property | Type | Description |
|----------|------|-------------|
| `circle` | `Circle` | Area as a circle. |
| `customArea` | `CustomArea` | Custom area specified by a polygon. |
| `region` | `Region` | Area as region. |

### `PlaceInsight`

Holds information about a place

| Property | Type | Description |
|----------|------|-------------|
| `place` | `string` | The unique identifier of the place. This resource name can be used to retrieve details about the ... |

### `Polygon`

A polygon is represented by a series of connected coordinates in an counterclockwise ordered sequence. The coordinates form a closed loop and define a filled region. The first and last coordinates are equivalent, and they must contain identical values. The format is a simplified version of GeoJSON polygons (we only support one counterclockwise exterior ring).

| Property | Type | Description |
|----------|------|-------------|
| `coordinates` | `array<LatLng>` | Optional. The coordinates that define the polygon. |

### `RatingFilter`

Average user rating filters.

| Property | Type | Description |
|----------|------|-------------|
| `maxRating` | `number` | Optional. Restricts results to places whose average user rating is strictly less than or equal to... |
| `minRating` | `number` | Optional. Restricts results to places whose average user rating is greater than or equal to min_r... |

### `Region`

A region is a geographic boundary such as: cities, postal codes, counties, states, etc.

| Property | Type | Description |
|----------|------|-------------|
| `place` | `string` | The [place ID](https://developers.google.com/maps/documentation/places/web-service/place-id) of t... |

### `TypeFilter`

Place type filters. Only Place types from [Table a](https://developers.google.com/maps/documentation/places/web-service/place-types#table-a) are supported. A place can only have a single primary type associated with it. For example, the primary type might be "mexican_restaurant" or "steak_house". Use included_primary_types and excluded_primary_types to filter the results on a place's primary type. A place can also have multiple type values associated with it. For example a restaurant might have the following types: "seafood_restaurant", "restaurant", "food", "point_of_interest", "establishment". Use included_types and excluded_types to filter the results on the list of types associated with a place. If a search is specified with multiple type restrictions, only places that satisfy all of the restrictions are returned. For example, if you specify {"included_types": ["restaurant"], "excluded_primary_types": ["steak_house"]}, the returned places provide "restaurant" related services but do not operate primarily as a "steak_house". If there are any conflicting types, i.e. a type appears in both included_types and excluded_types types or included_primary_types and excluded_primary_types, an INVALID_ARGUMENT error is returned. One of included_types or included_primary_types must be set.

| Property | Type | Description |
|----------|------|-------------|
| `excludedPrimaryTypes` | `array<string>` | Optional. Excluded primary Place types. |
| `excludedTypes` | `array<string>` | Optional. Excluded Place types. |
| `includedPrimaryTypes` | `array<string>` | Optional. Included primary Place types. |
| `includedTypes` | `array<string>` | Optional. Included Place types. |

