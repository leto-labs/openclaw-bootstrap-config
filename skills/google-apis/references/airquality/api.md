# Air Quality API - API Reference

**Version**: `v1` | **Methods**: 4 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `airquality.currentConditions.lookup` | POST | `v1/currentConditions:lookup` | The Current Conditions endpoint provides hourly air quality information in more than 100 countrie... |
| `airquality.history.lookup` | POST | `v1/history:lookup` | Returns air quality history for a specific location for a given time range. |
| `airquality.forecast.lookup` | POST | `v1/forecast:lookup` | Returns air quality forecast for a specific location for a given time range. |
| `airquality.mapTypes.heatmapTiles.lookupHeatmapTile` | GET | `v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}` | Returns a bytes array containing the data of the tile PNG image. |

### `airquality.currentConditions.lookup`

**POST** `v1/currentConditions:lookup`

The Current Conditions endpoint provides hourly air quality information in more than 100 countries, up to a 500 x 500 meters resolution. Includes over 70 local indexes and global air quality index and categories.

**Request body**: `LookupCurrentConditionsRequest`

**Response**: `LookupCurrentConditionsResponse`

```typescript
const res = await airquality.currentConditions.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `airquality.history.lookup`

**POST** `v1/history:lookup`

Returns air quality history for a specific location for a given time range.

**Request body**: `LookupHistoryRequest`

**Response**: `LookupHistoryResponse`

```typescript
const res = await airquality.history.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `airquality.forecast.lookup`

**POST** `v1/forecast:lookup`

Returns air quality forecast for a specific location for a given time range.

**Request body**: `LookupForecastRequest`

**Response**: `LookupForecastResponse`

```typescript
const res = await airquality.forecast.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `airquality.mapTypes.heatmapTiles.lookupHeatmapTile`

**GET** `v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}`

Returns a bytes array containing the data of the tile PNG image.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `mapType` | `string` | path | Yes | Required. The type of the air quality heatmap. Defines the pollutant that the map will graphically represent. Allowed... |
| `zoom` | `integer` | path | Yes | Required. The map's zoom level. Defines how large or small the contents of a map appear in a map view. Zoom level 0 i... |
| `x` | `integer` | path | Yes | Required. Defines the east-west point in the requested tile. |
| `y` | `integer` | path | Yes | Required. Defines the north-south point in the requested tile. |

**Response**: `HttpBody`

```typescript
const res = await airquality.heatmapTiles.lookupHeatmapTile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdditionalInfo`

The emission sources and health effects of a given pollutant.

| Property | Type | Description |
|----------|------|-------------|
| `effects` | `string` | Text representing the pollutant's main health effects. |
| `sources` | `string` | Text representing the pollutant's main emission sources. |

### `AirQualityIndex`

The basic object for representing different air quality metrics. When brought together, these metrics provide a snapshot about the current air quality conditions. There are multiple indexes in the world serving different purposes and groups interested in measuring different aspects of air quality.

| Property | Type | Description |
|----------|------|-------------|
| `aqi` | `integer` | The index's numeric score. Examples: 10, 100. The value is not normalized and should only be inte... |
| `aqiDisplay` | `string` | Textual representation of the index numeric score, that may include prefix or suffix symbols, whi... |
| `category` | `string` | Textual classification of the index numeric score interpretation. For example: "Excellent air qua... |
| `code` | `string` | The index's code. This field represents the index for programming purposes by using snake case in... |
| `color` | `Color` | The color used to represent the AQI numeric score. |
| `displayName` | `string` | A human readable representation of the index name. Example: "AQI (US)" |
| `dominantPollutant` | `string` | The chemical symbol of the dominant pollutant. For example: "CO". |

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `Concentration`

The concentration of a given pollutant in the air.

| Property | Type | Description |
|----------|------|-------------|
| `units` | `string` | Units for measuring this pollutant concentration. |
| `value` | `number` | Value of the pollutant concentration. |

### `CustomLocalAqi`

Expresses a 'country/region to AQI' relationship. Pairs a country/region with a desired AQI so that air quality data that is required for that country/region will be displayed according to the chosen AQI.

| Property | Type | Description |
|----------|------|-------------|
| `aqi` | `string` | The AQI to associate the country/region with. Value should be a [valid index](/maps/documentation... |
| `regionCode` | `string` | The country/region requiring the custom AQI. Value should be provided using [ISO 3166-1 alpha-2](... |

### `HealthRecommendations`

Health recommendations for different population groups in a free text format. The recommendations are derived from their associated air quality conditions.

| Property | Type | Description |
|----------|------|-------------|
| `athletes` | `string` | Sports and other strenuous outdoor activities. |
| `children` | `string` | Younger populations including children, toddlers, and babies. |
| `elderly` | `string` | Retirees and people older than the general population. |
| `generalPopulation` | `string` | No specific sensitivities. |
| `heartDiseasePopulation` | `string` | Heart and circulatory system diseases. |
| `lungDiseasePopulation` | `string` | Respiratory related problems and asthma suffers. |
| `pregnantWomen` | `string` | Women at all stages of pregnancy. |

### `HourInfo`

Contains the air quality information for each hour in the requested range. For example, if the request is for 48 hours of history there will be 48 elements of hourly info.

| Property | Type | Description |
|----------|------|-------------|
| `dateTime` | `string` | A rounded down timestamp indicating the time the data refers to in RFC3339 UTC "Zulu" format, wit... |
| `healthRecommendations` | `HealthRecommendations` | Health advice and recommended actions related to the reported air quality conditions. Recommendat... |
| `indexes` | `array<AirQualityIndex>` | Based on the request parameters, this list will include (up to) two air quality indexes: - Univer... |
| `pollutants` | `array<Pollutant>` | A list of pollutants affecting the location specified in the request. Note: This field will be re... |

### `HourlyForecast`

Contains the air quality information for each hour in the requested range. For example, if the request is for 48 hours of forecast there will be 48 elements of hourly forecasts.

| Property | Type | Description |
|----------|------|-------------|
| `dateTime` | `string` | A rounded down timestamp indicating the time (hour) the data refers to in RFC3339 UTC "Zulu" form... |
| `healthRecommendations` | `HealthRecommendations` | Health advice and recommended actions related to the reported air quality conditions. Recommendat... |
| `indexes` | `array<AirQualityIndex>` | Based on the request parameters, this list will include (up to) two air quality indexes: - Univer... |
| `pollutants` | `array<Pollutant>` | A list of pollutants affecting the location specified in the request. Note: This field will be re... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LookupCurrentConditionsRequest`

The request definition of the air quality current conditions.

| Property | Type | Description |
|----------|------|-------------|
| `customLocalAqis` | `array<CustomLocalAqi>` | Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/region with a desired... |
| `extraComputations` | `array<string>` | Optional. Additional features that can be optionally enabled. Specifying extra computations will ... |
| `languageCode` | `string` | Optional. Allows the client to choose the language for the response. If data cannot be provided f... |
| `location` | `LatLng` | Required. The longitude and latitude from which the API looks for air quality current conditions ... |
| `uaqiColorPalette` | `string` | Optional. Determines the color palette used for data provided by the 'Universal Air Quality Index... |
| `universalAqi` | `boolean` | Optional. If set to true, the Universal AQI will be included in the 'indexes' field of the respon... |

### `LookupCurrentConditionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `dateTime` | `string` | A rounded down timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine ... |
| `healthRecommendations` | `HealthRecommendations` | Health advice and recommended actions related to the reported air quality conditions. Recommendat... |
| `indexes` | `array<AirQualityIndex>` | Based on the request parameters, this list will include (up to) two air quality indexes: - Univer... |
| `pollutants` | `array<Pollutant>` | A list of pollutants affecting the location specified in the request. Note: This field will be re... |
| `regionCode` | `string` | The ISO_3166-1 alpha-2 code of the country/region corresponding to the location provided in the r... |

### `LookupForecastRequest`

The request object of the air quality forecast API.

| Property | Type | Description |
|----------|------|-------------|
| `customLocalAqis` | `array<CustomLocalAqi>` | Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/region with a desired... |
| `dateTime` | `string` | A timestamp for which to return the data for a specific point in time. The timestamp is rounded t... |
| `extraComputations` | `array<string>` | Optional. Additional features that can be optionally enabled. Specifying extra computations will ... |
| `languageCode` | `string` | Optional. Allows the client to choose the language for the response. If data cannot be provided f... |
| `location` | `LatLng` | Required. The latitude and longitude for which the API looks for air quality data. |
| `pageSize` | `integer` | Optional. The maximum number of hourly info records to return per page (default = 24). |
| `pageToken` | `string` | Optional. A page token received from a previous forecast call. It is used to retrieve the subsequ... |
| `period` | `Interval` | Indicates the start and end period for which to get the forecast data. The timestamp is rounded t... |
| `uaqiColorPalette` | `string` | Optional. Determines the color palette used for data provided by the 'Universal Air Quality Index... |
| `universalAqi` | `boolean` | Optional. If set to true, the Universal AQI will be included in the 'indexes' field of the respon... |

### `LookupForecastResponse`

The response object of the air quality forecast API.

| Property | Type | Description |
|----------|------|-------------|
| `hourlyForecasts` | `array<HourlyForecast>` | Optional. Contains the air quality information for each hour in the requested range. For example,... |
| `nextPageToken` | `string` | Optional. The token to retrieve the next page. |
| `regionCode` | `string` | Optional. The ISO_3166-1 alpha-2 code of the country/region corresponding to the location provide... |

### `LookupHistoryRequest`

The request object of the air quality history API.

| Property | Type | Description |
|----------|------|-------------|
| `customLocalAqis` | `array<CustomLocalAqi>` | Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/region with a desired... |
| `dateTime` | `string` | A timestamp for which to return historical data. The timestamp is rounded to the previous exact h... |
| `extraComputations` | `array<string>` | Optional. Additional features that can be optionally enabled. Specifying extra computations will ... |
| `hours` | `integer` | Number from 1 to 720 that indicates the hours range for the request. For example: A value of 48 w... |
| `languageCode` | `string` | Optional. Allows the client to choose the language for the response. If data cannot be provided f... |
| `location` | `LatLng` | Required. The latitude and longitude for which the API looks for air quality history data. |
| `pageSize` | `integer` | Optional. The maximum number of hourly info records to return per page. The default is 72 and the... |
| `pageToken` | `string` | Optional. A page token received from a previous history call. It is used to retrieve the subseque... |
| `period` | `Interval` | Indicates the start and end period for which to get the historical data. The timestamp is rounded... |
| `uaqiColorPalette` | `string` | Optional. Determines the color palette used for data provided by the 'Universal Air Quality Index... |
| `universalAqi` | `boolean` | Optional. If set to true, the Universal AQI will be included in the 'indexes' field of the respon... |

### `LookupHistoryResponse`

| Property | Type | Description |
|----------|------|-------------|
| `hoursInfo` | `array<HourInfo>` | Optional. Contains the air quality information for each hour in the requested range. For example,... |
| `nextPageToken` | `string` | Optional. The token to retrieve the next page. |
| `regionCode` | `string` | Optional. The ISO_3166-1 alpha-2 code of the country/region corresponding to the location provide... |

### `Pollutant`

Data regarding an air quality pollutant.

| Property | Type | Description |
|----------|------|-------------|
| `additionalInfo` | `AdditionalInfo` | Additional information about the pollutant. |
| `code` | `string` | The pollutant's code name (for example, "so2"). For a list of supported pollutant codes, see [Rep... |
| `concentration` | `Concentration` | The pollutant's concentration level measured by one of the standard air pollutation measure units. |
| `displayName` | `string` | The pollutant's display name. For example: "NOx". |
| `fullName` | `string` | The pollutant's full name. For chemical compounds, this is the IUPAC name. Example: "Sulfur Dioxi... |

