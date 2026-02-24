# Pollen API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 9

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `pollen.forecast.lookup` | GET | `v1/forecast:lookup` | Returns up to 5 days of daily pollen information in more than 65 countries, up to 1km resolution. |
| `pollen.mapTypes.heatmapTiles.lookupHeatmapTile` | GET | `v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}` | Returns a byte array containing the data of the tile PNG image. |

### `pollen.forecast.lookup`

**GET** `v1/forecast:lookup`

Returns up to 5 days of daily pollen information in more than 65 countries, up to 1km resolution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `days` | `integer` | query | No | Required. A number that indicates how many forecast days to request (minimum value 1, maximum value is 5). |
| `languageCode` | `string` | query | No | Optional. Allows the client to choose the language for the response. If data cannot be provided for that language, th... |
| `location.latitude` | `number` | query | No | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `location.longitude` | `number` | query | No | The longitude in degrees. It must be in the range [-180.0, +180.0]. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of daily info records to return per page. The default and max value is 5, indicating 5 d... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous daily call. It is used to retrieve the subsequent page. Note that whe... |
| `plantsDescription` | `boolean` | query | No | Optional. Contains general information about plants, including details on their seasonality, special shapes and color... |

**Response**: `LookupForecastResponse`

```typescript
const res = await pollen.forecast.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pollen.mapTypes.heatmapTiles.lookupHeatmapTile`

**GET** `v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}`

Returns a byte array containing the data of the tile PNG image.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `mapType` | `string` | path | Yes | Required. The type of the pollen heatmap. Defines the combination of pollen type and index that the map will graphica... |
| `zoom` | `integer` | path | Yes | Required. The map's zoom level. Defines how large or small the contents of a map appear in a map view. * Zoom level 0... |
| `x` | `integer` | path | Yes | Required. Defines the east-west point in the requested tile. |
| `y` | `integer` | path | Yes | Required. Defines the north-south point in the requested tile. |

**Response**: `HttpBody`

```typescript
const res = await pollen.heatmapTiles.lookupHeatmapTile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DayInfo`

This object contains the daily forecast information for each day requested.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date in UTC at which the pollen forecast data is represented. |
| `plantInfo` | `array<PlantInfo>` | This list will include up to 15 pollen species affecting the location specified in the request. |
| `pollenTypeInfo` | `array<PollenTypeInfo>` | This list will include up to three pollen types (GRASS, WEED, TREE) affecting the location specif... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `IndexInfo`

This object contains data representing specific pollen index value, category and description.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Text classification of index numerical score interpretation. The index consists of six categories... |
| `code` | `string` | The index's code. This field represents the index for programming purposes by using snake cases i... |
| `color` | `Color` | The color used to represent the Pollen Index numeric score. |
| `displayName` | `string` | A human readable representation of the index name. Example: "Universal Pollen Index". |
| `indexDescription` | `string` | Textual explanation of current index level. |
| `value` | `integer` | The index's numeric score. Numeric range is between 0 and 5. |

### `LookupForecastResponse`

| Property | Type | Description |
|----------|------|-------------|
| `dailyInfo` | `array<DayInfo>` | Required. This object contains the daily forecast information for each day requested. |
| `nextPageToken` | `string` | Optional. The token to retrieve the next page. |
| `regionCode` | `string` | The ISO_3166-1 alpha-2 code of the country/region corresponding to the location provided in the r... |

### `PlantDescription`

Contains general information about plants, including details on their seasonality, special shapes and colors, information about allergic cross-reactions, and plant photos.

| Property | Type | Description |
|----------|------|-------------|
| `crossReaction` | `string` | Textual description of pollen cross reaction plants. Example: Alder, Hazel, Hornbeam, Beech, Will... |
| `family` | `string` | A human readable representation of the plant family name. Example: "Betulaceae (the Birch family)". |
| `picture` | `string` | Link to the picture of the plant. |
| `pictureCloseup` | `string` | Link to a closeup picture of the plant. |
| `season` | `string` | Textual list of explanations of seasons where the pollen is active. Example: "Late winter, spring". |
| `specialColors` | `string` | Textual description of the plants' colors of leaves, bark, flowers or seeds that helps identify t... |
| `specialShapes` | `string` | Textual description of the plants' shapes of leaves, bark, flowers or seeds that helps identify t... |
| `type` | `string` | The plant's pollen type. For example: "GRASS". A list of all available codes could be found here. |

### `PlantInfo`

This object contains the daily information on specific plant.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The plant code name. For example: "COTTONWOOD". A list of all available codes could be found here. |
| `displayName` | `string` | A human readable representation of the plant name. Example: “Cottonwood". |
| `inSeason` | `boolean` | Indication of either the plant is in season or not. |
| `indexInfo` | `IndexInfo` | This object contains data representing specific pollen index value, category and description. |
| `plantDescription` | `PlantDescription` | Contains general information about plants, including details on their seasonality, special shapes... |

### `PollenTypeInfo`

This object contains the pollen type index and health recommendation information on specific pollen type.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The pollen type's code name. For example: "GRASS" |
| `displayName` | `string` | A human readable representation of the pollen type name. Example: "Grass" |
| `healthRecommendations` | `array<string>` | Textual list of explanations, related to health insights based on the current pollen levels. |
| `inSeason` | `boolean` | Indication whether the plant is in season or not. |
| `indexInfo` | `IndexInfo` | Contains the Universal Pollen Index (UPI) data for the pollen type. |

