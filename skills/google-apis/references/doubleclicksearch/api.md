# Search Ads 360 API - API Reference

**Version**: `v2` | **Methods**: 11 | **Schemas**: 14

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `doubleclicksearch.conversion.get` | GET | `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion` | Retrieves a list of conversions from a DoubleClick Search engine account. |
| `doubleclicksearch.conversion.getByCustomerId` | GET | `doubleclicksearch/v2/customer/{customerId}/conversion` | Retrieves a list of conversions from a DoubleClick Search engine account. |
| `doubleclicksearch.conversion.insert` | POST | `doubleclicksearch/v2/conversion` | Inserts a batch of new conversions into DoubleClick Search. |
| `doubleclicksearch.conversion.update` | PUT | `doubleclicksearch/v2/conversion` | Updates a batch of conversions in DoubleClick Search. |
| `doubleclicksearch.conversion.updateAvailability` | POST | `doubleclicksearch/v2/conversion/updateAvailability` | Updates the availabilities of a batch of floodlight activities in DoubleClick Search. |
| `doubleclicksearch.reports.generate` | POST | `doubleclicksearch/v2/reports/generate` | Generates and returns a report immediately. |
| `doubleclicksearch.reports.get` | GET | `doubleclicksearch/v2/reports/{reportId}` | Polls for the status of a report request. |
| `doubleclicksearch.reports.getFile` | GET | `doubleclicksearch/v2/reports/{reportId}/files/{reportFragment}` | Downloads a report file encoded in UTF-8. |
| `doubleclicksearch.reports.getIdMappingFile` | GET | `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/idmapping` | Downloads a csv file(encoded in UTF-8) that contains ID mappings between legacy SA360 and new SA3... |
| `doubleclicksearch.reports.request` | POST | `doubleclicksearch/v2/reports` | Inserts a report request into the reporting system. |
| `doubleclicksearch.savedColumns.list` | GET | `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/savedcolumns` | Retrieve the list of saved columns for a specified advertiser. |

### `doubleclicksearch.conversion.get`

**GET** `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion`

Retrieves a list of conversions from a DoubleClick Search engine account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agencyId` | `string` | path | Yes | Numeric ID of the agency. |
| `advertiserId` | `string` | path | Yes | Numeric ID of the advertiser. |
| `engineAccountId` | `string` | path | Yes | Numeric ID of the engine account. |
| `endDate` | `integer` | query | Yes | Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd. |
| `rowCount` | `integer` | query | Yes | The number of conversions to return per call. |
| `startDate` | `integer` | query | Yes | First date (inclusive) on which to retrieve conversions. Format is yyyymmdd. |
| `startRow` | `integer` | query | Yes | The 0-based starting index for retrieving conversions results. |
| `adGroupId` | `string` | query | No | Numeric ID of the ad group. |
| `adId` | `string` | query | No | Numeric ID of the ad. |
| `campaignId` | `string` | query | No | Numeric ID of the campaign. |
| `criterionId` | `string` | query | No | Numeric ID of the criterion. |
| `customerId` | `string` | query | No | Customer ID of a client account in the new Search Ads 360 experience. |

**Response**: `ConversionList`

```typescript
const res = await doubleclicksearch.conversion.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.conversion.getByCustomerId`

**GET** `doubleclicksearch/v2/customer/{customerId}/conversion`

Retrieves a list of conversions from a DoubleClick Search engine account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | Customer ID of a client account in the new Search Ads 360 experience. |
| `endDate` | `integer` | query | Yes | Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd. |
| `rowCount` | `integer` | query | Yes | The number of conversions to return per call. |
| `startDate` | `integer` | query | Yes | First date (inclusive) on which to retrieve conversions. Format is yyyymmdd. |
| `startRow` | `integer` | query | Yes | The 0-based starting index for retrieving conversions results. |
| `adGroupId` | `string` | query | No | Numeric ID of the ad group. |
| `adId` | `string` | query | No | Numeric ID of the ad. |
| `advertiserId` | `string` | query | No | Numeric ID of the advertiser. |
| `agencyId` | `string` | query | No | Numeric ID of the agency. |
| `campaignId` | `string` | query | No | Numeric ID of the campaign. |
| `criterionId` | `string` | query | No | Numeric ID of the criterion. |
| `engineAccountId` | `string` | query | No | Numeric ID of the engine account. |

**Response**: `ConversionList`

```typescript
const res = await doubleclicksearch.conversion.getByCustomerId({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.conversion.insert`

**POST** `doubleclicksearch/v2/conversion`

Inserts a batch of new conversions into DoubleClick Search.

**Request body**: `ConversionList`

**Response**: `ConversionList`

```typescript
const res = await doubleclicksearch.conversion.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.conversion.update`

**PUT** `doubleclicksearch/v2/conversion`

Updates a batch of conversions in DoubleClick Search.

**Request body**: `ConversionList`

**Response**: `ConversionList`

```typescript
const res = await doubleclicksearch.conversion.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.conversion.updateAvailability`

**POST** `doubleclicksearch/v2/conversion/updateAvailability`

Updates the availabilities of a batch of floodlight activities in DoubleClick Search.

**Request body**: `UpdateAvailabilityRequest`

**Response**: `UpdateAvailabilityResponse`

```typescript
const res = await doubleclicksearch.conversion.updateAvailability({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.reports.generate`

**POST** `doubleclicksearch/v2/reports/generate`

Generates and returns a report immediately.

**Request body**: `ReportRequest`

**Response**: `Report`

```typescript
const res = await doubleclicksearch.reports.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.reports.get`

**GET** `doubleclicksearch/v2/reports/{reportId}`

Polls for the status of a report request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `reportId` | `string` | path | Yes | ID of the report request being polled. |

**Response**: `Report`

```typescript
const res = await doubleclicksearch.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.reports.getFile`

**GET** `doubleclicksearch/v2/reports/{reportId}/files/{reportFragment}`

Downloads a report file encoded in UTF-8.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `reportId` | `string` | path | Yes | ID of the report. |
| `reportFragment` | `integer` | path | Yes | The index of the report fragment to download. |

```typescript
const res = await doubleclicksearch.reports.getFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.reports.getIdMappingFile`

**GET** `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/idmapping`

Downloads a csv file(encoded in UTF-8) that contains ID mappings between legacy SA360 and new SA360. The file includes all children entities of the given advertiser(e.g. engine accounts, campaigns, ad groups, etc.) that exist in both legacy SA360 and new SA360.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agencyId` | `string` | path | Yes | Legacy SA360 agency ID. |
| `advertiserId` | `string` | path | Yes | Legacy SA360 advertiser ID. |

**Response**: `IdMappingFile`

```typescript
const res = await doubleclicksearch.reports.getIdMappingFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.reports.request`

**POST** `doubleclicksearch/v2/reports`

Inserts a report request into the reporting system.

**Request body**: `ReportRequest`

**Response**: `Report`

```typescript
const res = await doubleclicksearch.reports.request({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `doubleclicksearch.savedColumns.list`

**GET** `doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/savedcolumns`

Retrieve the list of saved columns for a specified advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agencyId` | `string` | path | Yes | DS ID of the agency. |
| `advertiserId` | `string` | path | Yes | DS ID of the advertiser. |

**Response**: `SavedColumnList`

```typescript
const res = await doubleclicksearch.savedColumns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

## Schemas

### `Availability`

A message containing availability data relevant to DoubleClick Search.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | DS advertiser ID. |
| `agencyId` | `string` | DS agency ID. |
| `availabilityTimestamp` | `string` | The time by which all conversions have been uploaded, in epoch millis UTC. |
| `customerId` | `string` | Customer ID of a client account in the new Search Ads 360 experience. |
| `segmentationId` | `string` | The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID). |
| `segmentationName` | `string` | The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name). |
| `segmentationType` | `string` | The segmentation type that this availability is for (its default value is `FLOODLIGHT`). |

### `Conversion`

A conversion containing data relevant to DoubleClick Search. Common DS3 API conversion fields: Id Range [1 - 2800]. Next Id to use: 33

| Property | Type | Description |
|----------|------|-------------|
| `adGroupId` | `string` | DS ad group ID. |
| `adId` | `string` | DS ad ID. |
| `adUserDataConsent` | `string` | Represents consent for core platform services (CPS) preferences in settings. No default value. Ac... |
| `advertiserId` | `string` | DS advertiser ID. |
| `agencyId` | `string` | DS agency ID. |
| `attributionModel` | `string` | Available to advertisers only after contacting DoubleClick Search customer support. |
| `campaignId` | `string` | DS campaign ID. |
| `channel` | `string` | Sales channel for the product. Acceptable values are: - "`local`": a physical store - "`online`":... |
| `clickId` | `string` | DS click ID for the conversion. |
| `conversionId` | `string` | For offline conversions, advertisers provide this ID. Advertisers can specify any ID that is mean... |
| `conversionModifiedTimestamp` | `string` | The time at which the conversion was last modified, in epoch millis UTC. |
| `conversionTimestamp` | `string` | The time at which the conversion took place, in epoch millis UTC. |
| `countMillis` | `string` | Available to advertisers only after contacting DoubleClick Search customer support. |
| `criterionId` | `string` | DS criterion (keyword) ID. |
| `currencyCode` | `string` | The currency code for the conversion's revenue. Should be in ISO 4217 alphabetic (3-char) format. |
| `customDimension` | `array<CustomDimension>` | Custom dimensions for the conversion, which can be used to filter data in a report. |
| `customMetric` | `array<CustomMetric>` | Custom metrics for the conversion. |
| `customerId` | `string` | Customer ID of a client account in the new Search Ads 360 experience. |
| `deviceType` | `string` | The type of device on which the conversion occurred. |
| `dsConversionId` | `string` | ID that DoubleClick Search generates for each conversion. |
| `engineAccountId` | `string` | DS engine account ID. |
| `floodlightOrderId` | `string` | The Floodlight order ID provided by the advertiser for the conversion. |
| `inventoryAccountId` | `string` | ID that DS generates and uses to uniquely identify the inventory account that contains the product. |
| `productCountry` | `string` | The country registered for the Merchant Center feed that contains the product. Use an ISO 3166 co... |
| `productGroupId` | `string` | DS product group ID. |
| `productId` | `string` | The product ID (SKU). |
| `productLanguage` | `string` | The language registered for the Merchant Center feed that contains the product. Use an ISO 639 co... |
| `quantityMillis` | `string` | The quantity of this conversion, in millis. |
| `revenueMicros` | `string` | The revenue amount of this `TRANSACTION` conversion, in micros (value multiplied by 1000000, no d... |
| `segmentationId` | `string` | The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID). |
| `segmentationName` | `string` | The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name). |
| `segmentationType` | `string` | The segmentation type of this conversion (for example, `FLOODLIGHT`). |
| `state` | `string` | The state of the conversion, that is, either `ACTIVE` or `REMOVED`. Note: state DELETED is deprec... |
| `storeId` | `string` | The ID of the local store for which the product was advertised. Applicable only when the channel ... |
| `type` | `string` | The type of the conversion, that is, either `ACTION` or `TRANSACTION`. An `ACTION` conversion is ... |

### `ConversionList`

A list of conversions.

| Property | Type | Description |
|----------|------|-------------|
| `conversion` | `array<Conversion>` | The conversions being requested. |
| `kind` | `string` | Identifies this as a ConversionList resource. Value: the fixed string doubleclicksearch#conversio... |

### `CustomDimension`

A message containing the custom dimension.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Custom dimension name. |
| `value` | `string` | Custom dimension value. |

### `CustomMetric`

A message containing the custom metric.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Custom metric name. |
| `value` | `number` | Custom metric numeric value. |

### `IdMappingFile`

File returned to https://developers.google.com/search-ads/v2/reference/reports/getIdMappingFile.

### `Report`

A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<object>` | Asynchronous report only. Contains a list of generated report files once the report has successfu... |
| `id` | `string` | Asynchronous report only. Id of the report. |
| `isReportReady` | `boolean` | Asynchronous report only. True if and only if the report has completed successfully and the repor... |
| `kind` | `string` | Identifies this as a Report resource. Value: the fixed string `doubleclicksearch#report`. |
| `request` | `ReportRequest` | The request that created the report. Optional fields not specified in the original request are fi... |
| `rowCount` | `integer` | The number of report rows generated by the report, not including headers. |
| `rows` | `array<ReportRow>` | Synchronous report only. Generated report rows. |
| `statisticsCurrencyCode` | `string` | The currency code of all monetary values produced in the report, including values that are set by... |
| `statisticsTimeZone` | `string` | If all statistics of the report are sourced from the same time zone, this would be it. Otherwise ... |

### `ReportApiColumnSpec`

A request object used to create a DoubleClick Search report.

| Property | Type | Description |
|----------|------|-------------|
| `columnName` | `string` | Name of a DoubleClick Search column to include in the report. |
| `customDimensionName` | `string` | Segments a report by a custom dimension. The report must be scoped to an advertiser or lower, and... |
| `customMetricName` | `string` | Name of a custom metric to include in the report. The report must be scoped to an advertiser or l... |
| `endDate` | `string` | Inclusive day in YYYY-MM-DD format. When provided, this overrides the overall time range of the r... |
| `groupByColumn` | `boolean` | Synchronous report only. Set to `true` to group by this column. Defaults to `false`. |
| `headerText` | `string` | Text used to identify this column in the report output; defaults to `columnName` or `savedColumnN... |
| `platformSource` | `string` | The platform that is used to provide data for the custom dimension. Acceptable values are "floodl... |
| `productReportPerspective` | `string` | Returns metrics only for a specific type of product activity. Accepted values are: - "`sold`": re... |
| `savedColumnName` | `string` | Name of a saved column to include in the report. The report must be scoped at advertiser or lower... |
| `startDate` | `string` | Inclusive date in YYYY-MM-DD format. When provided, this overrides the overall time range of the ... |

### `ReportRequest`

A request object used to create a DoubleClick Search report.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<ReportApiColumnSpec>` | The columns to include in the report. This includes both DoubleClick Search columns and saved col... |
| `downloadFormat` | `string` | Format that the report should be returned in. Currently `csv` or `tsv` is supported. |
| `filters` | `array<object>` | A list of filters to be applied to the report.\ The maximum number of filters per request is 300. |
| `includeDeletedEntities` | `boolean` | Determines if removed entities should be included in the report. Defaults to `false`. Deprecated,... |
| `includeRemovedEntities` | `boolean` | Determines if removed entities should be included in the report. Defaults to `false`. |
| `maxRowsPerFile` | `integer` | Asynchronous report only. The maximum number of rows per report file. A large report is split int... |
| `orderBy` | `array<object>` | Synchronous report only. A list of columns and directions defining sorting to be performed on the... |
| `reportScope` | `object` | The reportScope is a set of IDs that are used to determine which subset of entities will be retur... |
| `reportType` | `string` | Determines the type of rows that are returned in the report. For example, if you specify `reportT... |
| `rowCount` | `integer` | Synchronous report only. The maximum number of rows to return; additional rows are dropped. Accep... |
| `startRow` | `integer` | Synchronous report only. Zero-based index of the first row to return. Acceptable values are `0` t... |
| `statisticsCurrency` | `string` | Specifies the currency in which monetary will be returned. Possible values are: `usd`, `agency` (... |
| `timeRange` | `object` | If metrics are requested in a report, this argument will be used to restrict the metrics to a spe... |
| `verifySingleTimeZone` | `boolean` | If `true`, the report would only be created if all the requested stat data are sourced from a sin... |

### `ReportRow`

A row in a DoubleClick Search report.

### `SavedColumn`

A saved column

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn. |
| `savedColumnName` | `string` | The name of the saved column. |
| `type` | `string` | The type of data this saved column will produce. |

### `SavedColumnList`

A list of saved columns. Advertisers create saved columns to report on Floodlight activities, Google Analytics goals, or custom KPIs. To request reports with saved columns, you'll need the saved column names that are available from this list.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<SavedColumn>` | The saved columns being requested. |
| `kind` | `string` | Identifies this as a SavedColumnList resource. Value: the fixed string doubleclicksearch#savedCol... |

### `UpdateAvailabilityRequest`

The request to update availability.

| Property | Type | Description |
|----------|------|-------------|
| `availabilities` | `array<Availability>` | The availabilities being requested. |

### `UpdateAvailabilityResponse`

The response to a update availability request.

| Property | Type | Description |
|----------|------|-------------|
| `availabilities` | `array<Availability>` | The availabilities being returned. |

