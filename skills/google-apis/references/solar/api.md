# Solar API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 19

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `solar.buildingInsights.findClosest` | GET | `v1/buildingInsights:findClosest` | Locates the building whose centroid is closest to a query point. Returns an error with code `NOT_... |
| `solar.dataLayers.get` | GET | `v1/dataLayers:get` | Gets solar information for a region surrounding a location. Returns an error with code `NOT_FOUND... |
| `solar.geoTiff.get` | GET | `v1/geoTiff:get` | Returns an image by its ID. |

### `solar.buildingInsights.findClosest`

**GET** `v1/buildingInsights:findClosest`

Locates the building whose centroid is closest to a query point. Returns an error with code `NOT_FOUND` if there are no buildings within approximately 50m of the query point.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `exactQualityRequired` | `boolean` | query | No | Optional. Whether to require exact quality of the imagery. If set to false, the `required_quality` field is interpret... |
| `experiments` | `string` | query | No | Optional. Specifies the pre-GA experiments to enable. Requests using this field are classified as a pre-GA offering u... |
| `location.latitude` | `number` | query | No | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `location.longitude` | `number` | query | No | The longitude in degrees. It must be in the range [-180.0, +180.0]. |
| `requiredQuality` | `string` | query | No | Optional. The minimum quality level allowed in the results. No result with lower quality than this will be returned. ... |

**Response**: `BuildingInsights`

```typescript
const res = await solar.buildingInsights.findClosest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `solar.dataLayers.get`

**GET** `v1/dataLayers:get`

Gets solar information for a region surrounding a location. Returns an error with code `NOT_FOUND` if the location is outside the coverage area.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `exactQualityRequired` | `boolean` | query | No | Optional. Whether to require exact quality of the imagery. If set to false, the `required_quality` field is interpret... |
| `experiments` | `string` | query | No | Optional. Specifies the pre-GA experiments to enable. Requests using this field are classified as a pre-GA offering u... |
| `location.latitude` | `number` | query | No | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `location.longitude` | `number` | query | No | The longitude in degrees. It must be in the range [-180.0, +180.0]. |
| `pixelSizeMeters` | `number` | query | No | Optional. The minimum scale, in meters per pixel, of the data to return. Values of 0.1 (the default, if this field is... |
| `radiusMeters` | `number` | query | No | Required. The radius, in meters, defining the region surrounding that centre point for which data should be returned.... |
| `requiredQuality` | `string` | query | No | Optional. The minimum quality level allowed in the results. No result with lower quality than this will be returned. ... |
| `view` | `string` | query | No | Optional. The desired subset of the data to return. |

**Response**: `DataLayers`

```typescript
const res = await solar.dataLayers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `solar.geoTiff.get`

**GET** `v1/geoTiff:get`

Returns an image by its ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | query | No | Required. The ID of the asset being requested. |

**Response**: `HttpBody`

```typescript
const res = await solar.geoTiff.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `BuildingInsights`

Response message for `Solar.FindClosestBuildingInsights`. Information about the location, dimensions, and solar potential of a building.

| Property | Type | Description |
|----------|------|-------------|
| `administrativeArea` | `string` | Administrative area 1 (e.g., in the US, the state) that contains this building. For example, in t... |
| `boundingBox` | `LatLngBox` | The bounding box of the building. |
| `center` | `LatLng` | A point near the center of the building. |
| `imageryDate` | `Date` | Date that the underlying imagery was acquired. This is approximate. |
| `imageryProcessedDate` | `Date` | When processing was completed on this imagery. |
| `imageryQuality` | `string` | The quality of the imagery used to compute the data for this building. |
| `name` | `string` | The resource name for the building, of the format `buildings/{place_id}`. |
| `postalCode` | `string` | Postal code (e.g., US zip code) this building is contained by. |
| `regionCode` | `string` | Region code for the country (or region) this building is in. |
| `solarPotential` | `SolarPotential` | Solar potential of the building. |
| `statisticalArea` | `string` | Statistical area (e.g., US census tract) this building is in. |

### `CashPurchaseSavings`

Cost and benefit of an outright purchase of a particular configuration of solar panels with a particular electricity usage.

| Property | Type | Description |
|----------|------|-------------|
| `outOfPocketCost` | `Money` | Initial cost before tax incentives: the amount that must be paid out-of-pocket. Contrast with `up... |
| `paybackYears` | `number` | Number of years until payback occurs. A negative value means payback never occurs within the life... |
| `rebateValue` | `Money` | The value of all tax rebates. |
| `savings` | `SavingsOverTime` | How much is saved (or not) over the lifetime period. |
| `upfrontCost` | `Money` | Initial cost after tax incentives: it's the amount that must be paid during first year. Contrast ... |

### `DataLayers`

Information about the solar potential of a region. The actual data are contained in a number of GeoTIFF files covering the requested region, for which this message contains URLs: Each string in the `DataLayers` message contains a URL from which the corresponding GeoTIFF can be fetched. These URLs are valid for a few hours after they've been generated. Most of the GeoTIFF files are at a resolution of 0.1m/pixel, but the monthly flux file is at 0.5m/pixel, and the hourly shade files are at 1m/pixel. If a `pixel_size_meters` value was specified in the `GetDataLayersRequest`, then the minimum resolution in the GeoTIFF files will be that value.

| Property | Type | Description |
|----------|------|-------------|
| `annualFluxUrl` | `string` | The URL for the annual flux map (annual sunlight on roofs) of the region. Values are kWh/kW/year.... |
| `dsmUrl` | `string` | The URL for an image of the DSM (Digital Surface Model) of the region. Values are in meters above... |
| `hourlyShadeUrls` | `array<string>` | Twelve URLs for hourly shade, corresponding to January...December, in order. Each GeoTIFF will co... |
| `imageryDate` | `Date` | When the source imagery (from which all the other data are derived) in this region was taken. It ... |
| `imageryProcessedDate` | `Date` | When processing was completed on this imagery. |
| `imageryQuality` | `string` | The quality of the result's imagery. |
| `maskUrl` | `string` | The URL for the building mask image: one bit per pixel saying whether that pixel is considered to... |
| `monthlyFluxUrl` | `string` | The URL for the monthly flux map (sunlight on roofs, broken down by month) of the region. Values ... |
| `rgbUrl` | `string` | The URL for an image of RGB data (aerial or satellite photo) of the region. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `FinancedPurchaseSavings`

Cost and benefit of using a loan to buy a particular configuration of solar panels with a particular electricity usage.

| Property | Type | Description |
|----------|------|-------------|
| `annualLoanPayment` | `Money` | Annual loan payments. |
| `loanInterestRate` | `number` | The interest rate on loans assumed in this set of calculations. |
| `rebateValue` | `Money` | The value of all tax rebates (including Federal Investment Tax Credit (ITC)). |
| `savings` | `SavingsOverTime` | How much is saved (or not) over the lifetime period. |

### `FinancialAnalysis`

Analysis of the cost and benefits of the optimum solar layout for a particular electric bill size.

| Property | Type | Description |
|----------|------|-------------|
| `averageKwhPerMonth` | `number` | How much electricity the house uses in an average month, based on the bill size and the local ele... |
| `cashPurchaseSavings` | `CashPurchaseSavings` | Cost and benefit of buying the solar panels with cash. |
| `defaultBill` | `boolean` | Whether this is the bill size selected to be the default bill for the area this building is in. E... |
| `financedPurchaseSavings` | `FinancedPurchaseSavings` | Cost and benefit of buying the solar panels by financing the purchase. |
| `financialDetails` | `FinancialDetails` | Financial information that applies regardless of the financing method used. |
| `leasingSavings` | `LeasingSavings` | Cost and benefit of leasing the solar panels. |
| `monthlyBill` | `Money` | The monthly electric bill this analysis assumes. |
| `panelConfigIndex` | `integer` | Index in solar_panel_configs of the optimum solar layout for this bill size. This can be -1 indic... |

### `FinancialDetails`

Details of a financial analysis. Some of these details are already stored at higher levels (e.g., out of pocket cost). Total money amounts are over a lifetime period defined by the panel_lifetime_years field in SolarPotential. Note: The out of pocket cost of purchasing the panels is given in the out_of_pocket_cost field in CashPurchaseSavings.

| Property | Type | Description |
|----------|------|-------------|
| `costOfElectricityWithoutSolar` | `Money` | Total cost of electricity the user would have paid over the lifetime period if they didn't instal... |
| `federalIncentive` | `Money` | Amount of money available from federal incentives; this applies if the user buys (with or without... |
| `initialAcKwhPerYear` | `number` | How many AC kWh we think the solar panels will generate in their first year. |
| `lifetimeSrecTotal` | `Money` | Amount of money the user will receive from Solar Renewable Energy Credits over the panel lifetime... |
| `netMeteringAllowed` | `boolean` | Whether net metering is allowed. |
| `percentageExportedToGrid` | `number` | The percentage (0-100) of solar electricity production we assumed was exported to the grid, based... |
| `remainingLifetimeUtilityBill` | `Money` | Utility bill for electricity not produced by solar, for the lifetime of the panels. |
| `solarPercentage` | `number` | Percentage (0-100) of the user's power supplied by solar. Valid for the first year but approximat... |
| `stateIncentive` | `Money` | Amount of money available from state incentives; this applies if the user buys (with or without a... |
| `utilityIncentive` | `Money` | Amount of money available from utility incentives; this applies if the user buys (with or without... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LatLngBox`

A bounding box in lat/lng coordinates.

| Property | Type | Description |
|----------|------|-------------|
| `ne` | `LatLng` | The northeast corner of the box. |
| `sw` | `LatLng` | The southwest corner of the box. |

### `LeasingSavings`

Cost and benefit of leasing a particular configuration of solar panels with a particular electricity usage.

| Property | Type | Description |
|----------|------|-------------|
| `annualLeasingCost` | `Money` | Estimated annual leasing cost. |
| `leasesAllowed` | `boolean` | Whether leases are allowed in this juristiction (leases are not allowed in some states). If this ... |
| `leasesSupported` | `boolean` | Whether leases are supported in this juristiction by the financial calculation engine. If this fi... |
| `savings` | `SavingsOverTime` | How much is saved (or not) over the lifetime period. |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `RoofSegmentSizeAndSunshineStats`

Information about the size and sunniness quantiles of a roof segment.

| Property | Type | Description |
|----------|------|-------------|
| `azimuthDegrees` | `number` | Compass direction the roof segment is pointing in. 0 = North, 90 = East, 180 = South. For a "flat... |
| `boundingBox` | `LatLngBox` | The bounding box of the roof segment. |
| `center` | `LatLng` | A point near the center of the roof segment. |
| `pitchDegrees` | `number` | Angle of the roof segment relative to the theoretical ground plane. 0 = parallel to the ground, 9... |
| `planeHeightAtCenterMeters` | `number` | The height of the roof segment plane, in meters above sea level, at the point designated by `cent... |
| `stats` | `SizeAndSunshineStats` | Total size and sunlight quantiles for the roof segment. |

### `RoofSegmentSummary`

Information about a roof segment on the building, with some number of panels placed on it.

| Property | Type | Description |
|----------|------|-------------|
| `azimuthDegrees` | `number` | Compass direction the roof segment is pointing in. 0 = North, 90 = East, 180 = South. For a "flat... |
| `panelsCount` | `integer` | The total number of panels on this segment. |
| `pitchDegrees` | `number` | Angle of the roof segment relative to the theoretical ground plane. 0 = parallel to the ground, 9... |
| `segmentIndex` | `integer` | Index in roof_segment_stats of the corresponding `RoofSegmentSizeAndSunshineStats`. |
| `yearlyEnergyDcKwh` | `number` | How much sunlight energy this part of the layout captures over the course of a year, in DC kWh, a... |

### `SavingsOverTime`

Financial information that's shared between different financing methods.

| Property | Type | Description |
|----------|------|-------------|
| `financiallyViable` | `boolean` | Indicates whether this scenario is financially viable. Will be false for scenarios with poor fina... |
| `presentValueOfSavingsLifetime` | `Money` | Using the assumed discount rate, what is the present value of the cumulative lifetime savings? |
| `presentValueOfSavingsYear20` | `Money` | Using the assumed discount rate, what is the present value of the cumulative 20-year savings? |
| `savingsLifetime` | `Money` | Savings in the entire panel lifetime. |
| `savingsYear1` | `Money` | Savings in the first year after panel installation. |
| `savingsYear20` | `Money` | Savings in the first twenty years after panel installation. |

### `SizeAndSunshineStats`

Size and sunniness quantiles of a roof, or part of a roof.

| Property | Type | Description |
|----------|------|-------------|
| `areaMeters2` | `number` | The area of the roof or roof segment, in m^2. This is the roof area (accounting for tilt), not th... |
| `groundAreaMeters2` | `number` | The ground footprint area covered by the roof or roof segment, in m^2. |
| `sunshineQuantiles` | `array<number>` | Quantiles of the pointwise sunniness across the area. If there are N values here, this represents... |

### `SolarPanel`

SolarPanel describes the position, orientation, and production of a single solar panel. See the panel_height_meters, panel_width_meters, and panel_capacity_watts fields in SolarPotential for information on the parameters of the panel.

| Property | Type | Description |
|----------|------|-------------|
| `center` | `LatLng` | The centre of the panel. |
| `orientation` | `string` | The orientation of the panel. |
| `segmentIndex` | `integer` | Index in roof_segment_stats of the `RoofSegmentSizeAndSunshineStats` which corresponds to the roo... |
| `yearlyEnergyDcKwh` | `number` | How much sunlight energy this layout captures over the course of a year, in DC kWh. |

### `SolarPanelConfig`

SolarPanelConfig describes a particular placement of solar panels on the roof.

| Property | Type | Description |
|----------|------|-------------|
| `panelsCount` | `integer` | Total number of panels. Note that this is redundant to (the sum of) the corresponding fields in r... |
| `roofSegmentSummaries` | `array<RoofSegmentSummary>` | Information about the production of each roof segment that is carrying at least one panel in this... |
| `yearlyEnergyDcKwh` | `number` | How much sunlight energy this layout captures over the course of a year, in DC kWh, assuming the ... |

### `SolarPotential`

Information about the solar potential of a building. A number of fields in this are defined in terms of "panels". The fields panel_capacity_watts, panel_height_meters, and panel_width_meters describe the parameters of the model of panel used in these calculations.

| Property | Type | Description |
|----------|------|-------------|
| `buildingStats` | `SizeAndSunshineStats` | Size and sunlight quantiles for the entire building, including parts of the roof that were not as... |
| `carbonOffsetFactorKgPerMwh` | `number` | Equivalent amount of CO2 produced per MWh of grid electricity. This is a measure of the carbon in... |
| `financialAnalyses` | `array<FinancialAnalysis>` | A FinancialAnalysis gives the savings from going solar assuming a given monthly bill and a given ... |
| `maxArrayAreaMeters2` | `number` | Size, in square meters, of the maximum array. |
| `maxArrayPanelsCount` | `integer` | Size of the maximum array - that is, the maximum number of panels that can fit on the roof. |
| `maxSunshineHoursPerYear` | `number` | Maximum number of sunshine hours received per year, by any point on the roof. Sunshine hours are ... |
| `panelCapacityWatts` | `number` | Capacity, in watts, of the panel used in the calculations. |
| `panelHeightMeters` | `number` | Height, in meters in portrait orientation, of the panel used in the calculations. |
| `panelLifetimeYears` | `integer` | The expected lifetime, in years, of the solar panels. This is used in the financial calculations. |
| `panelWidthMeters` | `number` | Width, in meters in portrait orientation, of the panel used in the calculations. |
| `roofSegmentStats` | `array<RoofSegmentSizeAndSunshineStats>` | Size and sunlight quantiles for each roof segment. |
| `solarPanelConfigs` | `array<SolarPanelConfig>` | Each SolarPanelConfig describes a different arrangement of solar panels on the roof. They are in ... |
| `solarPanels` | `array<SolarPanel>` | Each SolarPanel describes a single solar panel. They are listed in the order that the panel layou... |
| `wholeRoofStats` | `SizeAndSunshineStats` | Total size and sunlight quantiles for the part of the roof that was assigned to some roof segment... |

