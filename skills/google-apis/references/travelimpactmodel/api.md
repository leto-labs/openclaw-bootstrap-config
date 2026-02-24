# Travel Impact Model API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `travelimpactmodel.flights.computeFlightEmissions` | POST | `v1/flights:computeFlightEmissions` | Stateless method to retrieve emission estimates. Details on how emission estimates are computed a... |
| `travelimpactmodel.flights.computeTypicalFlightEmissions` | POST | `v1/flights:computeTypicalFlightEmissions` | Retrieves typical flight emissions estimates between two airports, also known as a market. If the... |
| `travelimpactmodel.flights.computeScope3FlightEmissions` | POST | `v1/flights:computeScope3FlightEmissions` | Stateless method to retrieve GHG emissions estimates for a set of flight segments for Scope 3 rep... |

### `travelimpactmodel.flights.computeFlightEmissions`

**POST** `v1/flights:computeFlightEmissions`

Stateless method to retrieve emission estimates. Details on how emission estimates are computed are in [GitHub](https://github.com/google/travel-impact-model) The response will contain all entries that match the input flight legs, in the same order. If there are no estimates available for a certain flight leg, the response will return the flight leg object with empty emission fields. The request will still be considered successful. Reasons for missing emission estimates include: * The flight is unknown to the server. * The input flight leg is missing one or more identifiers. * The flight date is in the past. * The aircraft type is not supported by the model. * Missing seat configuration. The request can contain up to 1000 flight legs. If the request has more than 1000 direct flights, if will fail with an INVALID_ARGUMENT error.

**Request body**: `ComputeFlightEmissionsRequest`

**Response**: `ComputeFlightEmissionsResponse`

```typescript
const res = await travelimpactmodel.flights.computeFlightEmissions({
  // parameters
});
```

---

### `travelimpactmodel.flights.computeTypicalFlightEmissions`

**POST** `v1/flights:computeTypicalFlightEmissions`

Retrieves typical flight emissions estimates between two airports, also known as a market. If there are no estimates available for a certain market, the response will return the market object with empty emission fields. The request will still be considered successful. Details on how the typical emissions estimates are computed are on [GitHub](https://github.com/google/travel-impact-model/blob/main/projects/typical_flight_emissions.md). The request can contain up to 1000 markets. If the request has more than 1000 markets, it will fail with an INVALID_ARGUMENT error.

**Request body**: `ComputeTypicalFlightEmissionsRequest`

**Response**: `ComputeTypicalFlightEmissionsResponse`

```typescript
const res = await travelimpactmodel.flights.computeTypicalFlightEmissions({
  // parameters
});
```

---

### `travelimpactmodel.flights.computeScope3FlightEmissions`

**POST** `v1/flights:computeScope3FlightEmissions`

Stateless method to retrieve GHG emissions estimates for a set of flight segments for Scope 3 reporting. The response will contain all entries that match the input Scope3FlightSegment flight segments, in the same order provided. The estimates will be computed using the following cascading logic (using the first one that is available): 1. TIM-based emissions given origin, destination, carrier, flightNumber, departureDate, and cabinClass. 2. Typical flight emissions given origin, destination, year in departureDate, and cabinClass. 3. Distance-based emissions calculated using distanceKm, year in departureDate, and cabinClass. If there is a future flight requested in this calendar year, we do not support Tier 1 emissions and will fallback to Tier 2 or 3 emissions. If the requested future flight is in not in this calendar year, we will return an empty response. We recommend that for future flights, computeFlightEmissions API is used instead. If there are no estimates available for a certain flight with any of the three methods, the response will return a Scope3FlightEmissions object with empty emission fields. The request will still be considered successful. Generally, missing emissions estimates occur when the flight is unknown to the server (e.g. no specific flight exists, or typical flight emissions are not available for the requested pair). The request will fail with an `INVALID_ARGUMENT` error if: * The request contains more than 1,000 flight legs. * The input flight leg is missing one or more identifiers. For example, missing origin/destination without a valid distance for TIM_EMISSIONS or TYPICAL_FLIGHT_EMISSIONS type matching, or missing distance for a DISTANCE_BASED_EMISSIONS type matching (if you want to fallback to distance-based emissions or want a distance-based emissions estimate, you need to specify a distance). * The flight date is before 2019 (Scope 3 data is only available for 2019 and after). * The flight distance is 0 or lower. * Missing cabin class. Because the request is processed with fallback logic, it is possible that misconfigured requests return valid emissions estimates using fallback methods. For example, if a request has the wrong flight number but specifies the origin and destination, the request will still succeed, but the returned emissions will be based solely on the typical flight emissions. Similarly, if a request is missing the origin for a typical flight emissions request, but specifies a valid distance, the request could succeed based solely on the distance-based emissions. Consequently, one should check the source of the returned emissions (source) to confirm the results are as expected.

**Request body**: `ComputeScope3FlightEmissionsRequest`

**Response**: `ComputeScope3FlightEmissionsResponse`

```typescript
const res = await travelimpactmodel.flights.computeScope3FlightEmissions({
  // parameters
});
```

---

## Schemas

### `ComputeFlightEmissionsRequest`

Input definition for the ComputeFlightEmissions request.

| Property | Type | Description |
|----------|------|-------------|
| `flights` | `array<Flight>` | Required. Direct flights to return emission estimates for. |

### `ComputeFlightEmissionsResponse`

Output definition for the ComputeFlightEmissions response.

| Property | Type | Description |
|----------|------|-------------|
| `flightEmissions` | `array<FlightWithEmissions>` | List of flight legs with emission estimates. |
| `modelVersion` | `ModelVersion` | The model version under which emission estimates for all flights in this response were computed. |

### `ComputeScope3FlightEmissionsRequest`

A list of flight segments to request the Scope 3 emissions for.

| Property | Type | Description |
|----------|------|-------------|
| `flights` | `array<Scope3FlightSegment>` | Required. Flights to return emission estimates for. |
| `modelVersion` | `ModelVersion` | Optional. The model version under which emission estimates for all flights in this request were c... |

### `ComputeScope3FlightEmissionsResponse`

A list of flights with Scope 3 emission estimates.

| Property | Type | Description |
|----------|------|-------------|
| `flightEmissions` | `array<Scope3FlightEmissions>` | List of flight segments with emission estimates. |
| `modelVersion` | `ModelVersion` | The model version under which emission estimates for all flights in this response were computed. |

### `ComputeTypicalFlightEmissionsRequest`

A list of pair of airports (markets) to request the typical emissions for.

| Property | Type | Description |
|----------|------|-------------|
| `markets` | `array<Market>` | Required. Request the typical flight emissions estimates for this market pair. A maximum of 1000 ... |

### `ComputeTypicalFlightEmissionsResponse`

The response includes the emissions but also the model version.

| Property | Type | Description |
|----------|------|-------------|
| `modelVersion` | `ModelVersion` | The model version under which typical flight emission estimates for all flights in this response ... |
| `typicalFlightEmissions` | `array<TypicalFlightEmissions>` | Market's Typical Flight Emissions requested. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `EasaLabelMetadata`

Metadata about the EASA Flight Emissions Label.

| Property | Type | Description |
|----------|------|-------------|
| `labelExpiryDate` | `Date` | The date when the label expires. The label can be displayed until the end of this date. |
| `labelIssueDate` | `Date` | The date when the label was issued. |
| `labelVersion` | `string` | Version of the label. |
| `safDiscountPercentage` | `number` | Sustainable Aviation Fuel (SAF) emissions discount percentage applied to the label. It is a perce... |

### `EmissionsGramsPerPax`

Grouped emissions per seating class results.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `integer` | Emissions for one passenger in business class in grams. This field is always computed and populat... |
| `economy` | `integer` | Emissions for one passenger in economy class in grams. This field is always computed and populate... |
| `first` | `integer` | Emissions for one passenger in first class in grams. This field is always computed and populated,... |
| `premiumEconomy` | `integer` | Emissions for one passenger in premium economy class in grams. This field is always computed and ... |

### `Flight`

All details related to a single request item for a direct flight emission estimates.

| Property | Type | Description |
|----------|------|-------------|
| `departureDate` | `Date` | Required. Date of the flight in the time zone of the origin airport. Must be a date in the presen... |
| `destination` | `string` | Required. IATA airport code for flight destination, e.g. "JFK". |
| `flightNumber` | `integer` | Required. Flight number, e.g. 324. |
| `operatingCarrierCode` | `string` | Required. IATA carrier code, e.g. "AA". |
| `origin` | `string` | Required. IATA airport code for flight origin, e.g. "LHR". |

### `FlightWithEmissions`

Direct flight with emission estimates.

| Property | Type | Description |
|----------|------|-------------|
| `contrailsImpactBucket` | `string` | Optional. The significance of contrails warming impact compared to the total CO2e emissions impact. |
| `easaLabelMetadata` | `EasaLabelMetadata` | Optional. Metadata about the EASA Flight Emissions Label. Only set when the emissions data source... |
| `emissionsGramsPerPax` | `EmissionsGramsPerPax` | Optional. Per-passenger emission estimate numbers. Will not be present if emissions could not be ... |
| `flight` | `Flight` | Required. Matches the flight identifiers in the request. Note: all IATA codes are capitalized. |
| `source` | `string` | Optional. The source of the emissions data. |

### `Market`

A pair of airports.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. IATA airport code for flight destination, e.g. "JFK". |
| `origin` | `string` | Required. IATA airport code for flight origin, e.g. "LHR". |

### `McpToolDataHandlingProfile`

Profile describing the data handling characteristics of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/data_handling"

| Property | Type | Description |
|----------|------|-------------|
| `inputDataAccessLevel` | `string` | // The data access level of the tool's inputs. |
| `outputDataAccessLevel` | `string` | The data access level of the tool's outputs. |

### `McpToolLifecycleProfile`

Profile describing the lifecycle stage of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/lifecycle"

| Property | Type | Description |
|----------|------|-------------|
| `launchState` | `string` | Output only. The current launch state of the MCP tool. |

### `ModelVersion`

Travel Impact Model version. For more information about the model versioning see [GitHub](https://github.com/google/travel-impact-model/#versioning).

| Property | Type | Description |
|----------|------|-------------|
| `dated` | `string` | Dated versions: Model datasets are recreated with refreshed input data but no change to the algor... |
| `major` | `integer` | Major versions: Major changes to methodology (e.g. adding new data sources to the model that lead... |
| `minor` | `integer` | Minor versions: Changes to the model that, while being consistent across schema versions, change ... |
| `patch` | `integer` | Patch versions: Implementation changes meant to address bugs or inaccuracies in the model impleme... |

### `Scope3FlightEmissions`

Scope 3 flight with emission estimates.

| Property | Type | Description |
|----------|------|-------------|
| `flight` | `Scope3FlightSegment` | Required. Matches the flight identifiers in the request. |
| `source` | `string` | Optional. The source of the emissions data. |
| `ttwEmissionsGramsPerPax` | `string` | Optional. Tank-to-wake flight emissions per passenger based on the requested info. |
| `wttEmissionsGramsPerPax` | `string` | Optional. Well-to-tank flight emissions per passenger based on the requested info. |
| `wtwEmissionsGramsPerPax` | `string` | Optional. Total flight emissions (sum of well-to-tank and tank-to-wake) per passenger based on th... |

### `Scope3FlightSegment`

Flight parameters with which the Scope 3 emissions are fetched.

| Property | Type | Description |
|----------|------|-------------|
| `cabinClass` | `string` | Required. The cabin class of the flight. |
| `carrierCode` | `string` | Optional. 2-character [IATA carrier code](https://www.iata.org/en/publications/directories/code-s... |
| `departureDate` | `Date` | Required. Date of the flight in the time zone of the origin airport. Only year is required for ty... |
| `destination` | `string` | Optional. 3-character [IATA airport code](https://www.iata.org/en/publications/directories/code-s... |
| `distanceKm` | `string` | Optional. Distance in kilometers, e.g. `2423`, from [1, 2.5e16) km. This is used to match a fligh... |
| `flightNumber` | `integer` | Optional. Up to 4-digit [flight number](https://en.wikipedia.org/wiki/Flight_number), e.g. `71`, ... |
| `origin` | `string` | Optional. 3-character [IATA airport code](https://www.iata.org/en/publications/directories/code-s... |

### `TypicalFlightEmissions`

Typical flight emission estimates for a certain market

| Property | Type | Description |
|----------|------|-------------|
| `emissionsGramsPerPax` | `EmissionsGramsPerPax` | Optional. Typical flight emissions per passenger for requested market. Will not be present if a t... |
| `market` | `Market` | Required. Matches the flight identifiers in the request. Note: all IATA codes are capitalized. |

