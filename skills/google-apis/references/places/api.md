# Places API (New) - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 72

## Field Mask Reference (Billing Tiers)

Every request requires a field mask (`X-Goog-FieldMask` header or `$fields` param). The fields you request determine which billing SKU is triggered. Always request the minimum fields you need.

### Text Search / Nearby Search Field Tiers

| SKU Tier | Fields | Cost |
|----------|--------|------|
| **Essentials (ID Only)** | `places.id`, `places.name`*, `places.attributions`, `nextPageToken` | Lowest |
| **Pro** | `places.displayName`, `places.formattedAddress`, `places.location`, `places.types`, `places.primaryType`, `places.photos`, `places.viewport`, `places.addressComponents`, `places.plusCode`, `places.googleMapsUri`, `places.businessStatus`, `places.iconMaskBaseUri`, `places.shortFormattedAddress`, `places.utcOffsetMinutes`, `places.timeZone`, `places.accessibilityOptions` | Medium |
| **Enterprise** | `places.rating`, `places.userRatingCount`, `places.priceLevel`, `places.priceRange`, `places.websiteUri`, `places.internationalPhoneNumber`, `places.nationalPhoneNumber`, `places.regularOpeningHours`, `places.currentOpeningHours` | Higher |
| **Enterprise + Atmosphere** | `places.reviews`, `places.editorialSummary`, `places.delivery`, `places.dineIn`, `places.takeout`, `places.servesBreakfast`, `places.servesLunch`, `places.servesDinner`, `places.servesBeer`, `places.servesWine`, `places.outdoorSeating`, `places.reservable`, `places.parkingOptions`, `places.paymentOptions`, `places.goodForChildren`, `places.goodForGroups`, `places.liveMusic`, `places.restroom`, `places.evChargeOptions`, `routingSummaries` | Highest |

\* `places.name` returns the resource name (`places/PLACE_ID`), not the display name. Use `places.displayName` for the human-readable name.

### Place Details Field Tiers

| SKU Tier | Trigger |
|----------|---------|
| **Essentials (ID Only)** | `id`, `name`, `photos` |
| **Pro** | `displayName`, `formattedAddress`, `location`, `types`, `addressComponents`, `viewport`, `googleMapsUri`, `businessStatus`, etc. |
| **Enterprise** | `rating`, `userRatingCount`, `websiteUri`, `phoneNumber`, `openingHours`, `priceLevel` |
| **Enterprise + Atmosphere** | `reviews`, `editorialSummary`, `delivery`, `dineIn`, `takeout`, `servesBeer`, etc. |

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `places.places.searchText` | POST | `v1/places:searchText` | Text query based place search. |
| `places.places.searchNearby` | POST | `v1/places:searchNearby` | Search for places near locations. |
| `places.places.get` | GET | `v1/places/{placeId}` | Get details of a place by its place ID. |
| `places.places.autocomplete` | POST | `v1/places:autocomplete` | Returns autocomplete predictions for input text. |
| `places.places.photos.getMedia` | GET | `v1/places/{placeId}/photos/{photoRef}/media` | Get a photo by its reference. |

---

### `places.places.searchText`

**POST** `v1/places:searchText`

Text query based place search. Returns places matching a text string (e.g., "pizza in New York").

**Request body** (`GoogleMapsPlacesV1SearchTextRequest`):

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `textQuery` | `string` | Yes | The text string to search for (e.g., "restaurants", "123 Main Street") |
| `includedType` | `string` | No | Filter to a single place type from Table A (e.g., `"restaurant"`, `"pharmacy"`) |
| `languageCode` | `string` | No | Language code for results (default: `en`) |
| `locationBias` | `object` | No | Bias results toward an area (circle or rectangle). Cannot combine with `locationRestriction` |
| `locationRestriction` | `object` | No | Restrict results to an area (rectangle only). Cannot combine with `locationBias` |
| `minRating` | `number` | No | Minimum user rating (0.0 to 5.0 in 0.5 increments) |
| `openNow` | `boolean` | No | If true, only return places currently open |
| `pageSize` | `integer` | No | Results per page (1-20) |
| `pageToken` | `string` | No | Token from previous response for next page |
| `priceLevels` | `array<string>` | No | Filter by price level (e.g., `["PRICE_LEVEL_INEXPENSIVE", "PRICE_LEVEL_MODERATE"]`) |
| `rankPreference` | `string` | No | `RELEVANCE` (default for categorical) or `DISTANCE` |
| `regionCode` | `string` | No | CLDR country code for formatting (e.g., `"US"`) |
| `strictTypeFiltering` | `boolean` | No | If true, strictly enforce `includedType` filter |
| `includePureServiceAreaBusinesses` | `boolean` | No | Include businesses without physical locations |
| `evOptions` | `object` | No | EV charging filter: `connectorTypes`, `minimumChargingRateKw` |

**Response**: `GoogleMapsPlacesV1SearchTextResponse` -- `{ places: Place[], nextPageToken?: string }`

```bash
curl -X POST -d '{
  "textQuery": "Spicy Vegetarian Food in Sydney, Australia"
}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: API_KEY' \
  -H 'X-Goog-FieldMask: places.displayName,places.formattedAddress,places.priceLevel' \
  'https://places.googleapis.com/v1/places:searchText'
```

**Required scopes (OAuth only):**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.places`
- `https://www.googleapis.com/auth/maps-platform.places.textsearch`

---

### `places.places.searchNearby`

**POST** `v1/places:searchNearby`

Search for places near a specific location. Unlike Text Search, this always requires a location constraint.

**Request body** (`GoogleMapsPlacesV1SearchNearbyRequest`):

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `locationRestriction` | `object` | Yes | Circle with center lat/lng and radius in meters (max 50000.0) |
| `includedTypes` | `array<string>` | No | Place types to include (Table A types) |
| `excludedTypes` | `array<string>` | No | Place types to exclude |
| `includedPrimaryTypes` | `array<string>` | No | Primary place types to include |
| `excludedPrimaryTypes` | `array<string>` | No | Primary place types to exclude |
| `languageCode` | `string` | No | Language code for results |
| `maxResultCount` | `integer` | No | Maximum results (1-20) |
| `rankPreference` | `string` | No | `POPULARITY` (default) or `DISTANCE` |
| `regionCode` | `string` | No | CLDR country code |

**Response**: `GoogleMapsPlacesV1SearchNearbyResponse` -- `{ places: Place[] }`

```bash
curl -X POST -d '{
  "includedTypes": ["restaurant"],
  "maxResultCount": 10,
  "locationRestriction": {
    "circle": {
      "center": {"latitude": 37.7937, "longitude": -122.3965},
      "radius": 500.0
    }
  }
}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: API_KEY' \
  -H 'X-Goog-FieldMask: places.displayName,places.formattedAddress,places.rating' \
  'https://places.googleapis.com/v1/places:searchNearby'
```

**Required scopes (OAuth only):**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.places`
- `https://www.googleapis.com/auth/maps-platform.places.nearbysearch`

---

### `places.places.get`

**GET** `v1/places/{placeId}`

Get the details of a place based on its place ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name in `places/{place_id}` format |
| `languageCode` | `string` | query | No | Preferred language for results |
| `regionCode` | `string` | query | No | CLDR country code for formatting |
| `sessionToken` | `string` | query | No | Session token from Autocomplete (for billing grouping) |

**Response**: `GoogleMapsPlacesV1Place`

```bash
curl -H 'X-Goog-Api-Key: API_KEY' \
  -H 'X-Goog-FieldMask: displayName,formattedAddress,rating,regularOpeningHours' \
  'https://places.googleapis.com/v1/places/ChIJN1t_tDeuEmsRUsoyG83frY4'
```

**Note**: For Place Details, the field mask uses field names directly (without the `places.` prefix used in search responses).

**Required scopes (OAuth only):**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.places`
- `https://www.googleapis.com/auth/maps-platform.places.details`

---

### `places.places.autocomplete`

**POST** `v1/places:autocomplete`

Returns predictions for the given input text. Use session tokens to group requests into a billing session.

**Request body** (`GoogleMapsPlacesV1AutocompletePlacesRequest`):

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `input` | `string` | Yes | The text to autocomplete |
| `sessionToken` | `string` | No | Session token for billing grouping (strongly recommended) |
| `locationBias` | `object` | No | Bias results toward a location |
| `locationRestriction` | `object` | No | Restrict results to a region |
| `includedPrimaryTypes` | `array<string>` | No | Filter by primary place types |
| `includedRegionCodes` | `array<string>` | No | Restrict to specific countries (up to 15 CLDR codes) |
| `languageCode` | `string` | No | Language for results |
| `regionCode` | `string` | No | CLDR code for formatting |
| `origin` | `object` | No | Origin point for distance calculations |
| `inputOffset` | `integer` | No | Cursor position in input string |
| `includeQueryPredictions` | `boolean` | No | If true, include query predictions in addition to place predictions |

**Response**: `GoogleMapsPlacesV1AutocompletePlacesResponse` -- `{ suggestions: AutocompleteSuggestion[] }`

```bash
curl -X POST -d '{
  "input": "pizza near Times Sq",
  "sessionToken": "YOUR_SESSION_TOKEN",
  "locationBias": {
    "circle": {
      "center": {"latitude": 40.758, "longitude": -73.9855},
      "radius": 5000.0
    }
  }
}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: API_KEY' \
  'https://places.googleapis.com/v1/places:autocomplete'
```

**Required scopes (OAuth only):**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.places`
- `https://www.googleapis.com/auth/maps-platform.places.autocomplete`

---

### `places.places.photos.getMedia`

**GET** `v1/places/{placeId}/photos/{photoReference}/media`

Get a photo media with a photo reference string. By default, redirects to the image. Set `skipHttpRedirect=true` to get a JSON response with the photo URI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name: `places/{place_id}/photos/{photo_reference}/media` |
| `maxHeightPx` | `integer` | query | No | Max height in pixels (1-4800). At least one of `maxHeightPx` or `maxWidthPx` is required. |
| `maxWidthPx` | `integer` | query | No | Max width in pixels (1-4800). At least one of `maxHeightPx` or `maxWidthPx` is required. |
| `skipHttpRedirect` | `boolean` | query | No | If true, return JSON with photo URI instead of redirecting to image |

**Response**: `GoogleMapsPlacesV1PhotoMedia` (or HTTP redirect to image)

```bash
# Get photo URL as JSON
curl -H 'X-Goog-Api-Key: API_KEY' \
  'https://places.googleapis.com/v1/places/ChIJN1t_tDeuEmsRUsoyG83frY4/photos/PHOTO_REF/media?maxWidthPx=400&skipHttpRedirect=true'

# Direct image redirect (default behavior, use in <img> tags)
# https://places.googleapis.com/v1/places/PLACE_ID/photos/PHOTO_REF/media?maxWidthPx=400&key=API_KEY
```

**Required scopes (OAuth only):**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/maps-platform.places`
- `https://www.googleapis.com/auth/maps-platform.places.getphotomedia`

---

## Schemas

### `GoogleGeoTypeViewport`

A latitude-longitude viewport, represented as two diagonally opposite `low` and `high` points. A viewport is considered a closed region, i.e. it includes its boundary. The latitude bounds must range between -90 to 90 degrees inclusive, and the longitude bounds must range between -180 to 180 degrees inclusive. Various cases include: - If `low` = `high`, the viewport consists of that single point. - If `low.longitude` > `high.longitude`, the longitude range is inverted (the viewport crosses the 180 degree longitude line). - If `low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport includes all longitudes. - If `low.longitude` = 180 degrees and `high.longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` > `high.latitude`, the latitude range is empty. Both `low` and `high` must be populated, and the represented box cannot be empty (as specified by the definitions above). An empty viewport will result in an error. For example, this viewport fully encloses New York City: { "low": { "latitude": 40.477398, "longitude": -74.259087 }, "high": { "latitude": 40.91618, "longitude": -73.70018 } }

| Property | Type | Description |
|----------|------|-------------|
| `high` | `GoogleTypeLatLng` | Required. The high point of the viewport. |
| `low` | `GoogleTypeLatLng` | Required. The low point of the viewport. |

### `GoogleMapsPlacesV1AddressDescriptor`

A relational description of a location. Includes a ranked set of nearby landmarks and precise containing areas and their relationship to the target location.

| Property | Type | Description |
|----------|------|-------------|
| `areas` | `array<GoogleMapsPlacesV1AddressDescriptorArea>` | A ranked list of containing or adjacent areas. The most recognizable and precise areas are ranked... |
| `landmarks` | `array<GoogleMapsPlacesV1AddressDescriptorLandmark>` | A ranked list of nearby landmarks. The most recognizable and nearby landmarks are ranked first. |

### `GoogleMapsPlacesV1AddressDescriptorArea`

Area information and the area's relationship with the target location. Areas includes precise sublocality, neighborhoods, and large compounds that are useful for describing a location.

| Property | Type | Description |
|----------|------|-------------|
| `containment` | `string` | Defines the spatial relationship between the target location and the area. |
| `displayName` | `GoogleTypeLocalizedText` | The area's display name. |
| `name` | `string` | The area's resource name. |
| `placeId` | `string` | The area's place id. |

### `GoogleMapsPlacesV1AddressDescriptorLandmark`

Basic landmark information and the landmark's relationship with the target location. Landmarks are prominent places that can be used to describe a location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `GoogleTypeLocalizedText` | The landmark's display name. |
| `name` | `string` | The landmark's resource name. |
| `placeId` | `string` | The landmark's place id. |
| `spatialRelationship` | `string` | Defines the spatial relationship between the target location and the landmark. |
| `straightLineDistanceMeters` | `number` | The straight line distance, in meters, between the center point of the target and the center poin... |
| `travelDistanceMeters` | `number` | The travel distance, in meters, along the road network from the target to the landmark, if known.... |
| `types` | `array<string>` | A set of type tags for this landmark. For a complete list of possible values, see https://develop... |

### `GoogleMapsPlacesV1AuthorAttribution`

Information about the author of the UGC data. Used in Photo, and Review.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of the author of the Photo or Review. |
| `photoUri` | `string` | Profile photo URI of the author of the Photo or Review. |
| `uri` | `string` | URI of the author of the Photo or Review. |

### `GoogleMapsPlacesV1AutocompletePlacesRequest`

Request proto for AutocompletePlaces.

| Property | Type | Description |
|----------|------|-------------|
| `includePureServiceAreaBusinesses` | `boolean` | Optional. Include pure service area businesses if the field is set to true. Pure service area bus... |
| `includeQueryPredictions` | `boolean` | Optional. If true, the response will include both Place and query predictions. Otherwise the resp... |
| `includedPrimaryTypes` | `array<string>` | Optional. Included primary Place type (for example, "restaurant" or "gas_station") in Place Types... |
| `includedRegionCodes` | `array<string>` | Optional. Only include results in the specified regions, specified as up to 15 CLDR two-character... |
| `input` | `string` | Required. The text string on which to search. |
| `inputOffset` | `integer` | Optional. A zero-based Unicode character offset of `input` indicating the cursor position in `inp... |
| `languageCode` | `string` | Optional. The language in which to return results. Defaults to en-US. The results may be in mixed... |
| `locationBias` | `GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias` | Optional. Bias results to a specified location. At most one of `location_bias` or `location_restr... |
| `locationRestriction` | `GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction` | Optional. Restrict results to a specified location. At most one of `location_bias` or `location_r... |
| `origin` | `GoogleTypeLatLng` | Optional. The origin point from which to calculate geodesic distance to the destination (returned... |
| `regionCode` | `string` | Optional. The region code, specified as a CLDR two-character region code. This affects address fo... |
| `sessionToken` | `string` | Optional. A string which identifies an Autocomplete session for billing purposes. Must be a URL a... |

### `GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias`

The region to search. The results may be biased around the specified region.

| Property | Type | Description |
|----------|------|-------------|
| `circle` | `GoogleMapsPlacesV1Circle` | A circle defined by a center point and radius. |
| `rectangle` | `GoogleGeoTypeViewport` | A viewport defined by a northeast and a southwest corner. |

### `GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction`

The region to search. The results will be restricted to the specified region.

| Property | Type | Description |
|----------|------|-------------|
| `circle` | `GoogleMapsPlacesV1Circle` | A circle defined by a center point and radius. |
| `rectangle` | `GoogleGeoTypeViewport` | A viewport defined by a northeast and a southwest corner. |

### `GoogleMapsPlacesV1AutocompletePlacesResponse`

Response proto for AutocompletePlaces.

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `array<GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion>` | Contains a list of suggestions, ordered in descending order of relevance. |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion`

An Autocomplete suggestion result.

| Property | Type | Description |
|----------|------|-------------|
| `placePrediction` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction` | A prediction for a Place. |
| `queryPrediction` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction` | A prediction for a query. |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText`

Text representing a Place or query prediction. The text may be used as is or formatted.

| Property | Type | Description |
|----------|------|-------------|
| `matches` | `array<GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>` | A list of string ranges identifying where the input request matched in `text`. The ranges can be ... |
| `text` | `string` | Text that may be used as is or formatted with `matches`. |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction`

Prediction results for a Place Autocomplete prediction.

| Property | Type | Description |
|----------|------|-------------|
| `distanceMeters` | `integer` | The length of the geodesic in meters from `origin` if `origin` is specified. Certain predictions ... |
| `place` | `string` | The resource name of the suggested Place. This name can be used in other APIs that accept Place n... |
| `placeId` | `string` | The unique identifier of the suggested Place. This identifier can be used in other APIs that acce... |
| `structuredFormat` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat` | A breakdown of the Place prediction into main text containing the name of the Place and secondary... |
| `text` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText` | Contains the human-readable name for the returned result. For establishment results, this is usua... |
| `types` | `array<string>` | List of types that apply to this Place from Table A or Table B in https://developers.google.com/m... |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction`

Prediction results for a Query Autocomplete prediction.

| Property | Type | Description |
|----------|------|-------------|
| `structuredFormat` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat` | A breakdown of the query prediction into main text containing the query and secondary text contai... |
| `text` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText` | The predicted text. This text does not represent a Place, but rather a text query that could be u... |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange`

Identifies a substring within a given text.

| Property | Type | Description |
|----------|------|-------------|
| `endOffset` | `integer` | Zero-based offset of the last Unicode character (exclusive). |
| `startOffset` | `integer` | Zero-based offset of the first Unicode character of the string (inclusive). |

### `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat`

Contains a breakdown of a Place or query prediction into main text and secondary text. For Place predictions, the main text contains the specific name of the Place. For query predictions, the main text contains the query. The secondary text contains additional disambiguating features (such as a city or region) to further identify the Place or refine the query.

| Property | Type | Description |
|----------|------|-------------|
| `mainText` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText` | Represents the name of the Place or query. |
| `secondaryText` | `GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText` | Represents additional disambiguating features (such as a city or region) to further identify the ... |

### `GoogleMapsPlacesV1Circle`

Circle with a LatLng as center and radius.

| Property | Type | Description |
|----------|------|-------------|
| `center` | `GoogleTypeLatLng` | Required. Center latitude and longitude. The range of latitude must be within [-90.0, 90.0]. The ... |
| `radius` | `number` | Required. Radius measured in meters. The radius must be within [0.0, 50000.0]. |

### `GoogleMapsPlacesV1ContentBlock`

A block of content that can be served individually.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `GoogleTypeLocalizedText` | Content related to the topic. |
| `referencedPlaces` | `array<string>` | The list of resource names of the referenced places. This name can be used in other APIs that acc... |

### `GoogleMapsPlacesV1ContextualContent`

Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. Content that is contextual to the place query.

| Property | Type | Description |
|----------|------|-------------|
| `justifications` | `array<GoogleMapsPlacesV1ContextualContentJustification>` | Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimenta... |
| `photos` | `array<GoogleMapsPlacesV1Photo>` | Information (including references) about photos of this place, contextual to the place query. |
| `reviews` | `array<GoogleMapsPlacesV1Review>` | List of reviews about this place, contextual to the place query. |

### `GoogleMapsPlacesV1ContextualContentJustification`

Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. Justifications for the place. Justifications answers the question of why a place could interest an end user.

| Property | Type | Description |
|----------|------|-------------|
| `businessAvailabilityAttributesJustification` | `GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification` | Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimenta... |
| `reviewJustification` | `GoogleMapsPlacesV1ContextualContentJustificationReviewJustification` | Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimenta... |

### `GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification`

Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. BusinessAvailabilityAttributes justifications. This shows some attributes a business has that could interest an end user.

| Property | Type | Description |
|----------|------|-------------|
| `delivery` | `boolean` | If a place provides delivery. |
| `dineIn` | `boolean` | If a place provides dine-in. |
| `takeout` | `boolean` | If a place provides takeout. |

### `GoogleMapsPlacesV1ContextualContentJustificationReviewJustification`

Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. User review justifications. This highlights a section of the user review that would interest an end user. For instance, if the search query is "firewood pizza", the review justification highlights the text relevant to the search query.

| Property | Type | Description |
|----------|------|-------------|
| `highlightedText` | `GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText` |  |
| `review` | `GoogleMapsPlacesV1Review` | The review that the highlighted text is generated from. |

### `GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText`

The text highlighted by the justification. This is a subset of the review itself. The exact word to highlight is marked by the HighlightedTextRange. There could be several words in the text being highlighted.

| Property | Type | Description |
|----------|------|-------------|
| `highlightedTextRanges` | `array<GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange>` | The list of the ranges of the highlighted text. |
| `text` | `string` |  |

### `GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange`

The range of highlighted text.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` |  |
| `startIndex` | `integer` |  |

### `GoogleMapsPlacesV1EVChargeOptions`

Information about the EV Charge Station hosted in Place. Terminology follows https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could charge one car at a time. One port has one or more connectors. One station has one or more ports.

| Property | Type | Description |
|----------|------|-------------|
| `connectorAggregation` | `array<GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation>` | A list of EV charging connector aggregations that contain connectors of the same type and same ch... |
| `connectorCount` | `integer` | Number of connectors at this station. However, because some ports can have multiple connectors bu... |

### `GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation`

EV charging information grouped by [type, max_charge_rate_kw]. Shows EV charge aggregation of connectors that have the same type and max charge rate in kw.

| Property | Type | Description |
|----------|------|-------------|
| `availabilityLastUpdateTime` | `string` | The timestamp when the connector availability information in this aggregation was last updated. |
| `availableCount` | `integer` | Number of connectors in this aggregation that are currently available. |
| `count` | `integer` | Number of connectors in this aggregation. |
| `maxChargeRateKw` | `number` | The static max charging rate in kw of each connector in the aggregation. |
| `outOfServiceCount` | `integer` | Number of connectors in this aggregation that are currently out of service. |
| `type` | `string` | The connector type of this aggregation. |

### `GoogleMapsPlacesV1FuelOptions`

The most recent information about fuel options in a gas station. This information is updated regularly.

| Property | Type | Description |
|----------|------|-------------|
| `fuelPrices` | `array<GoogleMapsPlacesV1FuelOptionsFuelPrice>` | The last known fuel price for each type of fuel this station has. There is one entry per fuel typ... |

### `GoogleMapsPlacesV1FuelOptionsFuelPrice`

Fuel price information for a given type.

| Property | Type | Description |
|----------|------|-------------|
| `price` | `GoogleTypeMoney` | The price of the fuel. |
| `type` | `string` | The type of fuel. |
| `updateTime` | `string` | The time the fuel price was last updated. |

### `GoogleMapsPlacesV1Photo`

Information about a photo of a place.

| Property | Type | Description |
|----------|------|-------------|
| `authorAttributions` | `array<GoogleMapsPlacesV1AuthorAttribution>` | This photo's authors. |
| `flagContentUri` | `string` | A link where users can flag a problem with the photo. |
| `googleMapsUri` | `string` | A link to show the photo on Google Maps. |
| `heightPx` | `integer` | The maximum available height, in pixels. |
| `name` | `string` | Identifier. A reference representing this place photo which may be used to look up this place pho... |
| `widthPx` | `integer` | The maximum available width, in pixels. |

### `GoogleMapsPlacesV1PhotoMedia`

A photo media from Places API.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of a photo media in the format: `places/{place_id}/photos/{photo_reference}/med... |
| `photoUri` | `string` | A short-lived uri that can be used to render the photo. |

### `GoogleMapsPlacesV1Place`

All the information representing a Place.

| Property | Type | Description |
|----------|------|-------------|
| `accessibilityOptions` | `GoogleMapsPlacesV1PlaceAccessibilityOptions` | Information about the accessibility options a place offers. |
| `addressComponents` | `array<GoogleMapsPlacesV1PlaceAddressComponent>` | Repeated components for each locality level. Note the following facts about the address_component... |
| `addressDescriptor` | `GoogleMapsPlacesV1AddressDescriptor` | The address descriptor of the place. Address descriptors include additional information that help... |
| `adrFormatAddress` | `string` | The place's address in adr microformat: http://microformats.org/wiki/adr. |
| `allowsDogs` | `boolean` | Place allows dogs. |
| `attributions` | `array<GoogleMapsPlacesV1PlaceAttribution>` | A set of data provider that must be shown with this result. |
| `businessStatus` | `string` | The business status for the place. |
| `consumerAlert` | `GoogleMapsPlacesV1PlaceConsumerAlert` | The consumer alert message for the place when we detect suspicious review activity on a business ... |
| `containingPlaces` | `array<GoogleMapsPlacesV1PlaceContainingPlace>` | List of places in which the current place is located. |
| `curbsidePickup` | `boolean` | Specifies if the business supports curbside pickup. |
| `currentOpeningHours` | `GoogleMapsPlacesV1PlaceOpeningHours` | The hours of operation for the next seven days (including today). The time period starts at midni... |
| `currentSecondaryOpeningHours` | `array<GoogleMapsPlacesV1PlaceOpeningHours>` | Contains an array of entries for the next seven days including information about secondary hours ... |
| `delivery` | `boolean` | Specifies if the business supports delivery. |
| `dineIn` | `boolean` | Specifies if the business supports indoor or outdoor seating options. |
| `displayName` | `GoogleTypeLocalizedText` | The localized name of the place, suitable as a short human-readable description. For example, "Go... |
| `editorialSummary` | `GoogleTypeLocalizedText` | Contains a summary of the place. A summary is comprised of a textual overview, and also includes ... |
| `evChargeAmenitySummary` | `GoogleMapsPlacesV1PlaceEvChargeAmenitySummary` | The summary of amenities near the EV charging station. |
| `evChargeOptions` | `GoogleMapsPlacesV1EVChargeOptions` | Information of ev charging options. |
| `formattedAddress` | `string` | A full, human-readable address for this place. |
| `fuelOptions` | `GoogleMapsPlacesV1FuelOptions` | The most recent information about fuel options in a gas station. This information is updated regu... |
| `generativeSummary` | `GoogleMapsPlacesV1PlaceGenerativeSummary` | AI-generated summary of the place. |
| `goodForChildren` | `boolean` | Place is good for children. |
| `goodForGroups` | `boolean` | Place accommodates groups. |
| `goodForWatchingSports` | `boolean` | Place is suitable for watching sports. |
| `googleMapsLinks` | `GoogleMapsPlacesV1PlaceGoogleMapsLinks` | Links to trigger different Google Maps actions. |
| `googleMapsTypeLabel` | `GoogleTypeLocalizedText` | The type label of the place on Google Maps, localized to the request language if applicable, for ... |
| `googleMapsUri` | `string` | A URL providing more information about this place. |
| `iconBackgroundColor` | `string` | Background color for icon_mask in hex format, e.g. #909CE1. |
| `iconMaskBaseUri` | `string` | A truncated URL to an icon mask. User can access different icon type by appending type suffix to ... |
| `id` | `string` | The unique identifier of a place. |
| `internationalPhoneNumber` | `string` | A human-readable phone number for the place, in international format. |
| `liveMusic` | `boolean` | Place provides live music. |
| `location` | `GoogleTypeLatLng` | The position of this place. |
| `menuForChildren` | `boolean` | Place has a children's menu. |
| `movedPlace` | `string` | If this Place is permanently closed and has moved to a new Place, this field contains the new Pla... |
| `movedPlaceId` | `string` | If this Place is permanently closed and has moved to a new Place, this field contains the new Pla... |
| `name` | `string` | This Place's resource name, in `places/{place_id}` format. Can be used to look up the Place. |
| `nationalPhoneNumber` | `string` | A human-readable phone number for the place, in national format. |
| `neighborhoodSummary` | `GoogleMapsPlacesV1PlaceNeighborhoodSummary` | A summary of points of interest near the place. |
| `outdoorSeating` | `boolean` | Place provides outdoor seating. |
| `parkingOptions` | `GoogleMapsPlacesV1PlaceParkingOptions` | Options of parking provided by the place. |
| `paymentOptions` | `GoogleMapsPlacesV1PlacePaymentOptions` | Payment options the place accepts. If a payment option data is not available, the payment option ... |
| `photos` | `array<GoogleMapsPlacesV1Photo>` | Information (including references) about photos of this place. A maximum of 10 photos can be retu... |
| `plusCode` | `GoogleMapsPlacesV1PlacePlusCode` | Plus code of the place location lat/long. |
| `postalAddress` | `GoogleTypePostalAddress` | The address in postal address format. |
| `priceLevel` | `string` | Price level of the place. |
| `priceRange` | `GoogleMapsPlacesV1PriceRange` | The price range associated with a Place. |
| `primaryType` | `string` | The primary type of the given result. This type must be one of the Places API supported types. Fo... |
| `primaryTypeDisplayName` | `GoogleTypeLocalizedText` | The display name of the primary type, localized to the request language if applicable. For the co... |
| `pureServiceAreaBusiness` | `boolean` | Indicates whether the place is a pure service area business. Pure service area business is a busi... |
| `rating` | `number` | A rating between 1.0 and 5.0, based on user reviews of this place. |
| `regularOpeningHours` | `GoogleMapsPlacesV1PlaceOpeningHours` | The regular hours of operation. Note that if a place is always open (24 hours), the `close` field... |
| `regularSecondaryOpeningHours` | `array<GoogleMapsPlacesV1PlaceOpeningHours>` | Contains an array of entries for information about regular secondary hours of a business. Seconda... |
| `reservable` | `boolean` | Specifies if the place supports reservations. |
| `restroom` | `boolean` | Place has restroom. |
| `reviewSummary` | `GoogleMapsPlacesV1PlaceReviewSummary` | AI-generated summary of the place using user reviews. |
| `reviews` | `array<GoogleMapsPlacesV1Review>` | List of reviews about this place, sorted by relevance. A maximum of 5 reviews can be returned. |
| `servesBeer` | `boolean` | Specifies if the place serves beer. |
| `servesBreakfast` | `boolean` | Specifies if the place serves breakfast. |
| `servesBrunch` | `boolean` | Specifies if the place serves brunch. |
| `servesCocktails` | `boolean` | Place serves cocktails. |
| `servesCoffee` | `boolean` | Place serves coffee. |
| `servesDessert` | `boolean` | Place serves dessert. |
| `servesDinner` | `boolean` | Specifies if the place serves dinner. |
| `servesLunch` | `boolean` | Specifies if the place serves lunch. |
| `servesVegetarianFood` | `boolean` | Specifies if the place serves vegetarian food. |
| `servesWine` | `boolean` | Specifies if the place serves wine. |
| `shortFormattedAddress` | `string` | A short, human-readable address for this place. |
| `subDestinations` | `array<GoogleMapsPlacesV1PlaceSubDestination>` | A list of sub-destinations related to the place. |
| `takeout` | `boolean` | Specifies if the business supports takeout. |
| `timeZone` | `GoogleTypeTimeZone` | IANA Time Zone Database time zone. For example "America/New_York". |
| `types` | `array<string>` | A set of type tags for this result. For example, "political" and "locality". For the complete lis... |
| `userRatingCount` | `integer` | The total number of reviews (with or without text) for this place. |
| `utcOffsetMinutes` | `integer` | Number of minutes this place's timezone is currently offset from UTC. This is expressed in minute... |
| `viewport` | `GoogleGeoTypeViewport` | A viewport suitable for displaying the place on an average-sized map. This viewport should not be... |
| `websiteUri` | `string` | The authoritative website for this place, e.g. a business' homepage. Note that for places that ar... |

### `GoogleMapsPlacesV1PlaceAccessibilityOptions`

Information about the accessibility options a place offers.

| Property | Type | Description |
|----------|------|-------------|
| `wheelchairAccessibleEntrance` | `boolean` | Places has wheelchair accessible entrance. |
| `wheelchairAccessibleParking` | `boolean` | Place offers wheelchair accessible parking. |
| `wheelchairAccessibleRestroom` | `boolean` | Place has wheelchair accessible restroom. |
| `wheelchairAccessibleSeating` | `boolean` | Place has wheelchair accessible seating. |

### `GoogleMapsPlacesV1PlaceAddressComponent`

The structured components that form the formatted address, if this information is available.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The language used to format this components, in CLDR notation. |
| `longText` | `string` | The full text description or name of the address component. For example, an address component for... |
| `shortText` | `string` | An abbreviated textual name for the address component, if available. For example, an address comp... |
| `types` | `array<string>` | An array indicating the type(s) of the address component. |

### `GoogleMapsPlacesV1PlaceAttribution`

Information about data providers of this place.

| Property | Type | Description |
|----------|------|-------------|
| `provider` | `string` | Name of the Place's data provider. |
| `providerUri` | `string` | URI to the Place's data provider. |

### `GoogleMapsPlacesV1PlaceConsumerAlert`

The consumer alert message for the place when we detect suspicious review activity on a business or a business violates our policies.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `GoogleMapsPlacesV1PlaceConsumerAlertDetails` | The details of the consumer alert message. |
| `languageCode` | `string` | The language code of the consumer alert message. This is a BCP 47 language code. |
| `overview` | `string` | The overview of the consumer alert message. |

### `GoogleMapsPlacesV1PlaceConsumerAlertDetails`

The details of the consumer alert message.

| Property | Type | Description |
|----------|------|-------------|
| `aboutLink` | `GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink` | The link to show together with the description to provide more information. |
| `description` | `string` | The description of the consumer alert message. |
| `title` | `string` | The title to show together with the description. |

### `GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink`

The link to show together with the description to provide more information.

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | The title to show for the link. |
| `uri` | `string` | The uri of the link. |

### `GoogleMapsPlacesV1PlaceContainingPlace`

Info about the place in which this place is located.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The place id of the place in which this place is located. |
| `name` | `string` | The resource name of the place in which this place is located. |

### `GoogleMapsPlacesV1PlaceEvChargeAmenitySummary`

The summary of amenities near the EV charging station. This only applies to places with type `electric_vehicle_charging_station`. The `overview` field is guaranteed to be provided while the other fields are optional.

| Property | Type | Description |
|----------|------|-------------|
| `coffee` | `GoogleMapsPlacesV1ContentBlock` | A summary of the nearby coffee options. |
| `disclosureText` | `GoogleTypeLocalizedText` | The AI disclosure message "Summarized with Gemini" (and its localized variants). This will be in ... |
| `flagContentUri` | `string` | A link where users can flag a problem with the summary. |
| `overview` | `GoogleMapsPlacesV1ContentBlock` | An overview of the available amenities. This is guaranteed to be provided. |
| `restaurant` | `GoogleMapsPlacesV1ContentBlock` | A summary of the nearby restaurants. |
| `store` | `GoogleMapsPlacesV1ContentBlock` | A summary of the nearby stores. |

### `GoogleMapsPlacesV1PlaceGenerativeSummary`

AI-generated summary of the place.

| Property | Type | Description |
|----------|------|-------------|
| `disclosureText` | `GoogleTypeLocalizedText` | The AI disclosure message "Summarized with Gemini" (and its localized variants). This will be in ... |
| `overview` | `GoogleTypeLocalizedText` | The overview of the place. |
| `overviewFlagContentUri` | `string` | A link where users can flag a problem with the overview summary. |

### `GoogleMapsPlacesV1PlaceGoogleMapsLinks`

Links to trigger different Google Maps actions.

| Property | Type | Description |
|----------|------|-------------|
| `directionsUri` | `string` | A link to show the directions to the place. The link only populates the destination location and ... |
| `photosUri` | `string` | A link to show photos of this place on Google Maps. |
| `placeUri` | `string` | A link to show this place. |
| `reviewsUri` | `string` | A link to show reviews of this place on Google Maps. |
| `writeAReviewUri` | `string` | A link to write a review for this place on Google Maps. |

### `GoogleMapsPlacesV1PlaceNeighborhoodSummary`

A summary of points of interest near the place.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `GoogleMapsPlacesV1ContentBlock` | A detailed description of the neighborhood. |
| `disclosureText` | `GoogleTypeLocalizedText` | The AI disclosure message "Summarized with Gemini" (and its localized variants). This will be in ... |
| `flagContentUri` | `string` | A link where users can flag a problem with the summary. |
| `overview` | `GoogleMapsPlacesV1ContentBlock` | An overview summary of the neighborhood. |

### `GoogleMapsPlacesV1PlaceOpeningHours`

Information about business hour of the place.

| Property | Type | Description |
|----------|------|-------------|
| `nextCloseTime` | `string` | The next time the current opening hours period ends up to 7 days in the future. This field is onl... |
| `nextOpenTime` | `string` | The next time the current opening hours period starts up to 7 days in the future. This field is o... |
| `openNow` | `boolean` | Whether the opening hours period is currently active. For regular opening hours and current openi... |
| `periods` | `array<GoogleMapsPlacesV1PlaceOpeningHoursPeriod>` | The periods that this place is open during the week. The periods are in chronological order, in t... |
| `secondaryHoursType` | `string` | A type string used to identify the type of secondary hours. |
| `specialDays` | `array<GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay>` | Structured information for special days that fall within the period that the returned opening hou... |
| `weekdayDescriptions` | `array<string>` | Localized strings describing the opening hours of this place, one string for each day of the week... |

### `GoogleMapsPlacesV1PlaceOpeningHoursPeriod`

A period the place remains in open_now status.

| Property | Type | Description |
|----------|------|-------------|
| `close` | `GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint` | The time that the place starts to be closed. |
| `open` | `GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint` | The time that the place starts to be open. |

### `GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint`

Status changing points.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `GoogleTypeDate` | Date in the local timezone for the place. |
| `day` | `integer` | A day of the week, as an integer in the range 0-6. 0 is Sunday, 1 is Monday, etc. |
| `hour` | `integer` | The hour in 24 hour format. Ranges from 0 to 23. |
| `minute` | `integer` | The minute. Ranges from 0 to 59. |
| `truncated` | `boolean` | Whether or not this endpoint was truncated. Truncation occurs when the real hours are outside the... |

### `GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay`

Structured information for special days that fall within the period that the returned opening hours cover. Special days are days that could impact the business hours of a place, e.g. Christmas day.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `GoogleTypeDate` | The date of this special day. |

### `GoogleMapsPlacesV1PlaceParkingOptions`

Information about parking options for the place. A parking lot could support more than one option at the same time.

| Property | Type | Description |
|----------|------|-------------|
| `freeGarageParking` | `boolean` | Place offers free garage parking. |
| `freeParkingLot` | `boolean` | Place offers free parking lots. |
| `freeStreetParking` | `boolean` | Place offers free street parking. |
| `paidGarageParking` | `boolean` | Place offers paid garage parking. |
| `paidParkingLot` | `boolean` | Place offers paid parking lots. |
| `paidStreetParking` | `boolean` | Place offers paid street parking. |
| `valetParking` | `boolean` | Place offers valet parking. |

### `GoogleMapsPlacesV1PlacePaymentOptions`

Payment options the place accepts.

| Property | Type | Description |
|----------|------|-------------|
| `acceptsCashOnly` | `boolean` | Place accepts cash only as payment. Places with this attribute may still accept other payment met... |
| `acceptsCreditCards` | `boolean` | Place accepts credit cards as payment. |
| `acceptsDebitCards` | `boolean` | Place accepts debit cards as payment. |
| `acceptsNfc` | `boolean` | Place accepts NFC payments. |

### `GoogleMapsPlacesV1PlacePlusCode`

Plus code (http://plus.codes) is a location reference with two formats: global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and compound code, replacing the prefix with a reference location.

| Property | Type | Description |
|----------|------|-------------|
| `compoundCode` | `string` | Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the suffix of the global co... |
| `globalCode` | `string` | Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000 by 1/8000 degree area (... |

### `GoogleMapsPlacesV1PlaceReviewSummary`

AI-generated summary of the place using user reviews.

| Property | Type | Description |
|----------|------|-------------|
| `disclosureText` | `GoogleTypeLocalizedText` | The AI disclosure message "Summarized with Gemini" (and its localized variants). This will be in ... |
| `flagContentUri` | `string` | A link where users can flag a problem with the summary. |
| `reviewsUri` | `string` | A link to show reviews of this place on Google Maps. |
| `text` | `GoogleTypeLocalizedText` | The summary of user reviews. |

### `GoogleMapsPlacesV1PlaceSubDestination`

Sub-destinations are specific places associated with a main place. These provide more specific destinations for users who are searching within a large or complex place, like an airport, national park, university, or stadium. For example, sub-destinations at an airport might include associated terminals and parking lots. Sub-destinations return the place ID and place resource name, which can be used in subsequent Place Details (New) requests to fetch richer details, including the sub-destination's display name and location.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The place id of the sub-destination. |
| `name` | `string` | The resource name of the sub-destination. |

### `GoogleMapsPlacesV1Polyline`

A route polyline. Only supports an [encoded polyline](https://developers.google.com/maps/documentation/utilities/polylinealgorithm), which can be passed as a string and includes compression with minimal lossiness. This is the Routes API default output.

| Property | Type | Description |
|----------|------|-------------|
| `encodedPolyline` | `string` | An [encoded polyline](https://developers.google.com/maps/documentation/utilities/polylinealgorith... |

### `GoogleMapsPlacesV1PriceRange`

The price range associated with a Place. `end_price` could be unset, which indicates a range without upper bound (e.g. "More than $100").

| Property | Type | Description |
|----------|------|-------------|
| `endPrice` | `GoogleTypeMoney` | The high end of the price range (exclusive). Price should be lower than this amount. |
| `startPrice` | `GoogleTypeMoney` | The low end of the price range (inclusive). Price should be at or above this amount. |

### `GoogleMapsPlacesV1Review`

Information about a review of a place.

| Property | Type | Description |
|----------|------|-------------|
| `authorAttribution` | `GoogleMapsPlacesV1AuthorAttribution` | This review's author. |
| `flagContentUri` | `string` | A link where users can flag a problem with the review. |
| `googleMapsUri` | `string` | A link to show the review on Google Maps. |
| `name` | `string` | A reference representing this place review which may be used to look up this place review again (... |
| `originalText` | `GoogleTypeLocalizedText` | The review text in its original language. |
| `publishTime` | `string` | Timestamp for the review. |
| `rating` | `number` | A number between 1.0 and 5.0, also called the number of stars. |
| `relativePublishTimeDescription` | `string` | A string of formatted recent time, expressing the review time relative to the current time in a f... |
| `text` | `GoogleTypeLocalizedText` | The localized text of the review. |
| `visitDate` | `GoogleTypeDate` | The date when the author visited the place. This is truncated to the year and month of the visit. |

### `GoogleMapsPlacesV1RouteModifiers`

Encapsulates a set of optional conditions to satisfy when calculating the routes.

| Property | Type | Description |
|----------|------|-------------|
| `avoidFerries` | `boolean` | Optional. When set to true, avoids ferries where reasonable, giving preference to routes not cont... |
| `avoidHighways` | `boolean` | Optional. When set to true, avoids highways where reasonable, giving preference to routes not con... |
| `avoidIndoor` | `boolean` | Optional. When set to true, avoids navigating indoors where reasonable, giving preference to rout... |
| `avoidTolls` | `boolean` | Optional. When set to true, avoids toll roads where reasonable, giving preference to routes not c... |

### `GoogleMapsPlacesV1RoutingParameters`

Parameters to configure the routing calculations to the places in the response, both along a route (where result ranking will be influenced) and for calculating travel times on results.

| Property | Type | Description |
|----------|------|-------------|
| `origin` | `GoogleTypeLatLng` | Optional. An explicit routing origin that overrides the origin defined in the polyline. By defaul... |
| `routeModifiers` | `GoogleMapsPlacesV1RouteModifiers` | Optional. The route modifiers. |
| `routingPreference` | `string` | Optional. Specifies how to compute the routing summaries. The server attempts to use the selected... |
| `travelMode` | `string` | Optional. The travel mode. |

### `GoogleMapsPlacesV1RoutingSummary`

The duration and distance from the routing origin to a place in the response, and a second leg from that place to the destination, if requested. **Note:** Adding `routingSummaries` in the field mask without also including either the `routingParameters.origin` parameter or the `searchAlongRouteParameters.polyline.encodedPolyline` parameter in the request causes an error.

| Property | Type | Description |
|----------|------|-------------|
| `directionsUri` | `string` | A link to show directions on Google Maps using the waypoints from the given routing summary. The ... |
| `legs` | `array<GoogleMapsPlacesV1RoutingSummaryLeg>` | The legs of the trip. When you calculate travel duration and distance from a set origin, `legs` c... |

### `GoogleMapsPlacesV1RoutingSummaryLeg`

A leg is a single portion of a journey from one location to another.

| Property | Type | Description |
|----------|------|-------------|
| `distanceMeters` | `integer` | The distance of this leg of the trip. |
| `duration` | `string` | The time it takes to complete this leg of the trip. |

### `GoogleMapsPlacesV1SearchNearbyRequest`

Request proto for Search Nearby.

| Property | Type | Description |
|----------|------|-------------|
| `excludedPrimaryTypes` | `array<string>` | Excluded primary Place type (e.g. "restaurant" or "gas_station") from https://developers.google.c... |
| `excludedTypes` | `array<string>` | Excluded Place type (eg, "restaurant" or "gas_station") from https://developers.google.com/maps/d... |
| `includedPrimaryTypes` | `array<string>` | Included primary Place type (e.g. "restaurant" or "gas_station") from https://developers.google.c... |
| `includedTypes` | `array<string>` | Included Place type (eg, "restaurant" or "gas_station") from https://developers.google.com/maps/d... |
| `languageCode` | `string` | Place details will be displayed with the preferred language if available. If the language code is... |
| `locationRestriction` | `GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction` | Required. The region to search. |
| `maxResultCount` | `integer` | Maximum number of results to return. It must be between 1 and 20 (default), inclusively. If the n... |
| `rankPreference` | `string` | How results will be ranked in the response. |
| `regionCode` | `string` | The Unicode country/region code (CLDR) of the location where the request is coming from. This par... |
| `routingParameters` | `GoogleMapsPlacesV1RoutingParameters` | Optional. Parameters that affect the routing to the search results. |

### `GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction`

The region to search.

| Property | Type | Description |
|----------|------|-------------|
| `circle` | `GoogleMapsPlacesV1Circle` | A circle defined by center point and radius. |

### `GoogleMapsPlacesV1SearchNearbyResponse`

Response proto for Search Nearby.

| Property | Type | Description |
|----------|------|-------------|
| `places` | `array<GoogleMapsPlacesV1Place>` | A list of places that meets user's requirements like places types, number of places and specific ... |
| `routingSummaries` | `array<GoogleMapsPlacesV1RoutingSummary>` | A list of routing summaries where each entry associates to the corresponding place in the same in... |

### `GoogleMapsPlacesV1SearchTextRequest`

Request proto for SearchText.

| Property | Type | Description |
|----------|------|-------------|
| `evOptions` | `GoogleMapsPlacesV1SearchTextRequestEVOptions` | Optional. Set the searchable EV options of a place search request. |
| `includePureServiceAreaBusinesses` | `boolean` | Optional. Include pure service area businesses if the field is set to true. Pure service area bus... |
| `includedType` | `string` | The requested place type. Full list of types supported: https://developers.google.com/maps/docume... |
| `languageCode` | `string` | Place details will be displayed with the preferred language if available. If the language code is... |
| `locationBias` | `GoogleMapsPlacesV1SearchTextRequestLocationBias` | The region to search. This location serves as a bias which means results around given location mi... |
| `locationRestriction` | `GoogleMapsPlacesV1SearchTextRequestLocationRestriction` | The region to search. This location serves as a restriction which means results outside given loc... |
| `maxResultCount` | `integer` | Deprecated: Use `page_size` instead. The maximum number of results per page that can be returned.... |
| `minRating` | `number` | Filter out results whose average user rating is strictly less than this limit. A valid value must... |
| `openNow` | `boolean` | Used to restrict the search to places that are currently open. The default is false. |
| `pageSize` | `integer` | Optional. The maximum number of results per page that can be returned. If the number of available... |
| `pageToken` | `string` | Optional. A page token, received from a previous TextSearch call. Provide this to retrieve the su... |
| `priceLevels` | `array<string>` | Used to restrict the search to places that are marked as certain price levels. Users can choose a... |
| `rankPreference` | `string` | How results will be ranked in the response. |
| `regionCode` | `string` | The Unicode country/region code (CLDR) of the location where the request is coming from. This par... |
| `routingParameters` | `GoogleMapsPlacesV1RoutingParameters` | Optional. Additional parameters for routing to results. |
| `searchAlongRouteParameters` | `GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters` | Optional. Additional parameters proto for searching along a route. |
| `strictTypeFiltering` | `boolean` | Used to set strict type filtering for included_type. If set to true, only results of the same typ... |
| `textQuery` | `string` | Required. The text query for textual search. |

### `GoogleMapsPlacesV1SearchTextRequestEVOptions`

Searchable EV options of a place search request.

| Property | Type | Description |
|----------|------|-------------|
| `connectorTypes` | `array<string>` | Optional. The list of preferred EV connector types. A place that does not support any of the list... |
| `minimumChargingRateKw` | `number` | Optional. Minimum required charging rate in kilowatts. A place with a charging rate less than the... |

### `GoogleMapsPlacesV1SearchTextRequestLocationBias`

The region to search. This location serves as a bias which means results around given location might be returned.

| Property | Type | Description |
|----------|------|-------------|
| `circle` | `GoogleMapsPlacesV1Circle` | A circle defined by center point and radius. |
| `rectangle` | `GoogleGeoTypeViewport` | A rectangle box defined by northeast and southwest corner. `rectangle.high()` must be the northea... |

### `GoogleMapsPlacesV1SearchTextRequestLocationRestriction`

The region to search. This location serves as a restriction which means results outside given location will not be returned.

| Property | Type | Description |
|----------|------|-------------|
| `rectangle` | `GoogleGeoTypeViewport` | A rectangle box defined by northeast and southwest corner. `rectangle.high()` must be the northea... |

### `GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters`

Specifies a precalculated polyline from the [Routes API](https://developers.google.com/maps/documentation/routes) defining the route to search. Searching along a route is similar to using the `locationBias` or `locationRestriction` request option to bias the search results. However, while the `locationBias` and `locationRestriction` options let you specify a region to bias the search results, this option lets you bias the results along a trip route. Results are not guaranteed to be along the route provided, but rather are ranked within the search area defined by the polyline and, optionally, by the `locationBias` or `locationRestriction` based on minimal detour times from origin to destination. The results might be along an alternate route, especially if the provided polyline does not define an optimal route from origin to destination.

| Property | Type | Description |
|----------|------|-------------|
| `polyline` | `GoogleMapsPlacesV1Polyline` | Required. The route polyline. |

### `GoogleMapsPlacesV1SearchTextResponse`

Response proto for SearchText.

| Property | Type | Description |
|----------|------|-------------|
| `contextualContents` | `array<GoogleMapsPlacesV1ContextualContent>` | Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimenta... |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted or e... |
| `places` | `array<GoogleMapsPlacesV1Place>` | A list of places that meet the user's text search criteria. |
| `routingSummaries` | `array<GoogleMapsPlacesV1RoutingSummary>` | A list of routing summaries where each entry associates to the corresponding place in the same in... |
| `searchUri` | `string` | A link allows the user to search with the same text query as specified in the request on Google M... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `GoogleTypeLatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `GoogleTypeLocalizedText`

Localized variant of a text in a particular language.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://w... |
| `text` | `string` | Localized string in the language corresponding to language_code below. |

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

