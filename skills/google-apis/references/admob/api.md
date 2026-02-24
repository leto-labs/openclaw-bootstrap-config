# AdMob API - API Reference

**Version**: `v1` | **Methods**: 6 | **Schemas**: 28

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `admob.accounts.get` | GET | `v1/{+name}` | Gets information about the specified AdMob publisher account. |
| `admob.accounts.list` | GET | `v1/accounts` | Lists the AdMob publisher account that was most recently signed in to from the AdMob UI. For more... |
| `admob.accounts.networkReport.generate` | POST | `v1/{+parent}/networkReport:generate` | Generates an AdMob Network report based on the provided report specification. Returns result of a... |
| `admob.accounts.mediationReport.generate` | POST | `v1/{+parent}/mediationReport:generate` | Generates an AdMob Mediation report based on the provided report specification. Returns result of... |
| `admob.accounts.apps.list` | GET | `v1/{+parent}/apps` | List the apps under the specified AdMob account. |
| `admob.accounts.adUnits.list` | GET | `v1/{+parent}/adUnits` | List the ad units under the specified AdMob account. |

### `admob.accounts.get`

**GET** `v1/{+name}`

Gets information about the specified AdMob publisher account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the publisher account to retrieve. Example: accounts/pub-9876543210987654 |

**Response**: `PublisherAccount`

```typescript
const res = await admob.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`
- `https://www.googleapis.com/auth/admob.report`

---

### `admob.accounts.list`

**GET** `v1/accounts`

Lists the AdMob publisher account that was most recently signed in to from the AdMob UI. For more information, see https://support.google.com/admob/answer/10243672.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Maximum number of accounts to return. |
| `pageToken` | `string` | query | No | The value returned by the last `ListPublisherAccountsResponse`; indicates that this is a continuation of a prior `Lis... |

**Response**: `ListPublisherAccountsResponse`

```typescript
const res = await admob.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`
- `https://www.googleapis.com/auth/admob.report`

---

### `admob.accounts.networkReport.generate`

**POST** `v1/{+parent}/networkReport:generate`

Generates an AdMob Network report based on the provided report specification. Returns result of a server-side streaming RPC. The result is returned in a sequence of responses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Resource name of the account to generate the report for. Example: accounts/pub-9876543210987654 |

**Request body**: `GenerateNetworkReportRequest`

**Response**: `GenerateNetworkReportResponse`

```typescript
const res = await admob.networkReport.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`
- `https://www.googleapis.com/auth/admob.report`

---

### `admob.accounts.mediationReport.generate`

**POST** `v1/{+parent}/mediationReport:generate`

Generates an AdMob Mediation report based on the provided report specification. Returns result of a server-side streaming RPC. The result is returned in a sequence of responses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Resource name of the account to generate the report for. Example: accounts/pub-9876543210987654 |

**Request body**: `GenerateMediationReportRequest`

**Response**: `GenerateMediationReportResponse`

```typescript
const res = await admob.mediationReport.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`
- `https://www.googleapis.com/auth/admob.report`

---

### `admob.accounts.apps.list`

**GET** `v1/{+parent}/apps`

List the apps under the specified AdMob account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the account to list apps for. Example: accounts/pub-9876543210987654 |
| `pageSize` | `integer` | query | No | The maximum number of apps to return. If unspecified or 0, at most 10,000 apps will be returned. The maximum value is... |
| `pageToken` | `string` | query | No | The value returned by the last `ListAppsResponse`; indicates that this is a continuation of a prior `ListApps` call, ... |

**Response**: `ListAppsResponse`

```typescript
const res = await admob.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`

---

### `admob.accounts.adUnits.list`

**GET** `v1/{+parent}/adUnits`

List the ad units under the specified AdMob account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the account to list ad units for. Example: accounts/pub-9876543210987654 |
| `pageSize` | `integer` | query | No | The maximum number of ad units to return. If unspecified or 0, at most 10,000 ad units will be returned. The maximum ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListAdUnitsResponse`; indicates that this is a continuation of a prior `ListAdUnits` ... |

**Response**: `ListAdUnitsResponse`

```typescript
const res = await admob.adUnits.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admob.readonly`

---

## Schemas

### `AdUnit`

Describes an AdMob ad unit.

| Property | Type | Description |
|----------|------|-------------|
| `adFormat` | `string` | AdFormat of the ad unit. Possible values are as follows: "APP_OPEN" - App Open ad format. "BANNER... |
| `adTypes` | `array<string>` | Ad media type supported by this ad unit. Possible values as follows: "RICH_MEDIA" - Text, image, ... |
| `adUnitId` | `string` | The externally visible ID of the ad unit which can be used to integrate with the AdMob SDK. This ... |
| `appId` | `string` | The externally visible ID of the app this ad unit is associated with. Example: ca-app-pub-9876543... |
| `displayName` | `string` | The display name of the ad unit as shown in the AdMob UI, which is provided by the user. The maxi... |
| `name` | `string` | Resource name for this ad unit. Format is accounts/{publisher_id}/adUnits/{ad_unit_id_fragment} E... |

### `App`

Describes an AdMob app for a specific platform (For example: Android or iOS).

| Property | Type | Description |
|----------|------|-------------|
| `appApprovalState` | `string` | Output only. The approval state for the app. The field is read-only. |
| `appId` | `string` | The externally visible ID of the app which can be used to integrate with the AdMob SDK. This is a... |
| `linkedAppInfo` | `AppLinkedAppInfo` | Immutable. The information for an app that is linked to an app store. This field is present if an... |
| `manualAppInfo` | `AppManualAppInfo` | The information for an app that is not linked to any app store. After an app is linked, this info... |
| `name` | `string` | Resource name for this app. Format is accounts/{publisher_id}/apps/{app_id_fragment} Example: acc... |
| `platform` | `string` | Describes the platform of the app. Limited to "IOS" and "ANDROID". |

### `AppLinkedAppInfo`

Information from the app store if the app is linked to an app store.

| Property | Type | Description |
|----------|------|-------------|
| `appStoreId` | `string` | The app store ID of the app; present if and only if the app is linked to an app store. If the app... |
| `displayName` | `string` | Output only. Display name of the app as it appears in the app store. This is an output-only field... |

### `AppManualAppInfo`

Information provided for manual apps which are not linked to an application store (Example: Google Play, App Store).

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the app as shown in the AdMob UI, which is provided by the user. The maximum ... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DateRange`

Specification of a single date range. Both dates are inclusive.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | End date of the date range, inclusive. Must be greater than or equal to the start date. |
| `startDate` | `Date` | Start date of the date range, inclusive. Must be less than or equal to the end date. |

### `GenerateMediationReportRequest`

Request to generate an AdMob Mediation report.

| Property | Type | Description |
|----------|------|-------------|
| `reportSpec` | `MediationReportSpec` | Network report specification. |

### `GenerateMediationReportResponse`

The streaming response for the AdMob Mediation report where the first response contains the report header, then a stream of row responses, and finally a footer as the last response message. For example: [{ "header": { "date_range": { "start_date": {"year": 2018, "month": 9, "day": 1}, "end_date": {"year": 2018, "month": 9, "day": 1} }, "localization_settings": { "currency_code": "USD", "language_code": "en-US" } } }, { "row": { "dimension_values": { "DATE": {"value": "20180918"}, "APP": { "value": "ca-app-pub-8123415297019784~1001342552", "display_label": "My app name!" } }, "metric_values": { "ESTIMATED_EARNINGS": {"decimal_value": "1324746"} } } }, { "footer": {"matching_row_count": 1} }]

| Property | Type | Description |
|----------|------|-------------|
| `footer` | `ReportFooter` | Additional information about the generated report, such as warnings about the data. |
| `header` | `ReportHeader` | Report generation settings that describes the report contents, such as the report date range and ... |
| `row` | `ReportRow` | Actual report data. |

### `GenerateNetworkReportRequest`

Request to generate an AdMob Network report.

| Property | Type | Description |
|----------|------|-------------|
| `reportSpec` | `NetworkReportSpec` | Network report specification. |

### `GenerateNetworkReportResponse`

The streaming response for the AdMob Network report where the first response contains the report header, then a stream of row responses, and finally a footer as the last response message. For example: [{ "header": { "dateRange": { "startDate": {"year": 2018, "month": 9, "day": 1}, "endDate": {"year": 2018, "month": 9, "day": 1} }, "localizationSettings": { "currencyCode": "USD", "languageCode": "en-US" } } }, { "row": { "dimensionValues": { "DATE": {"value": "20180918"}, "APP": { "value": "ca-app-pub-8123415297019784~1001342552", displayLabel: "My app name!" } }, "metricValues": { "ESTIMATED_EARNINGS": {"microsValue": 6500000} } } }, { "footer": {"matchingRowCount": 1} }]

| Property | Type | Description |
|----------|------|-------------|
| `footer` | `ReportFooter` | Additional information about the generated report, such as warnings about the data. |
| `header` | `ReportHeader` | Report generation settings that describes the report contents, such as the report date range and ... |
| `row` | `ReportRow` | Actual report data. |

### `ListAdUnitsResponse`

Response for the ad units list request.

| Property | Type | Description |
|----------|------|-------------|
| `adUnits` | `array<AdUnit>` | The resulting ad units for the requested account. |
| `nextPageToken` | `string` | If not empty, indicates that there may be more ad units for the request; this value should be pas... |

### `ListAppsResponse`

Response for the apps list request.

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<App>` | The resulting apps for the requested account. |
| `nextPageToken` | `string` | If not empty, indicates that there may be more apps for the request; this value should be passed ... |

### `ListPublisherAccountsResponse`

Response for the publisher account list request.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `array<PublisherAccount>` | Publisher that the client credentials can access. |
| `nextPageToken` | `string` | If not empty, indicates that there might be more accounts for the request; you must pass this val... |

### `LocalizationSettings`

Localization settings for reports, such as currency and language. It affects how metrics are calculated.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Currency code of the earning related metrics, which is the 3-letter code defined in ISO 4217. The... |
| `languageCode` | `string` | Language used for any localized text, such as some dimension value display labels. The language t... |

### `MediationReportSpec`

The specification for generating an AdMob Mediation report. For example, the specification to get observed ECPM sliced by ad source and app for the 'US' and 'CN' countries can look like the following example: { "date_range": { "start_date": {"year": 2021, "month": 9, "day": 1}, "end_date": {"year": 2021, "month": 9, "day": 30} }, "dimensions": ["AD_SOURCE", "APP", "COUNTRY"], "metrics": ["OBSERVED_ECPM"], "dimension_filters": [ { "dimension": "COUNTRY", "matches_any": {"values": [{"value": "US", "value": "CN"}]} } ], "sort_conditions": [ {"dimension":"APP", order: "ASCENDING"} ], "localization_settings": { "currency_code": "USD", "language_code": "en-US" } } For a better understanding, you can treat the preceding specification like the following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM MEDIATION_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The date range for which the report is generated. |
| `dimensionFilters` | `array<MediationReportSpecDimensionFilter>` | Describes which report rows to match based on their dimension values. |
| `dimensions` | `array<string>` | List of dimensions of the report. The value combination of these dimensions determines the row of... |
| `localizationSettings` | `LocalizationSettings` | Localization settings of the report. |
| `maxReportRows` | `integer` | Maximum number of report data rows to return. If the value is not set, the API returns as many ro... |
| `metrics` | `array<string>` | List of metrics of the report. A report must specify at least one metric. |
| `sortConditions` | `array<MediationReportSpecSortCondition>` | Describes the sorting of report rows. The order of the condition in the list defines its preceden... |
| `timeZone` | `string` | A report time zone. Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time zon... |

### `MediationReportSpecDimensionFilter`

Describes which report rows to match based on their dimension values.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` | Applies the filter criterion to the specified dimension. |
| `matchesAny` | `StringList` | Matches a row if its value for the specified dimension is in one of the values specified in this ... |

### `MediationReportSpecSortCondition`

Sorting direction to be applied on a dimension or a metric.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` | Sort by the specified dimension. |
| `metric` | `string` | Sort by the specified metric. |
| `order` | `string` | Sorting order of the dimension or metric. |

### `NetworkReportSpec`

The specification for generating an AdMob Network report. For example, the specification to get clicks and estimated earnings for only the 'US' and 'CN' countries can look like the following example: { 'date_range': { 'start_date': {'year': 2021, 'month': 9, 'day': 1}, 'end_date': {'year': 2021, 'month': 9, 'day': 30} }, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', 'ESTIMATED_EARNINGS'], 'dimension_filters': [ { 'dimension': 'COUNTRY', 'matches_any': {'values': [{'value': 'US', 'value': 'CN'}]} } ], 'sort_conditions': [ {'dimension':'APP', order: 'ASCENDING'}, {'metric':'CLICKS', order: 'DESCENDING'} ], 'localization_settings': { 'currency_code': 'USD', 'language_code': 'en-US' } } For a better understanding, you can treat the preceding specification like the following pseudo SQL: SELECT DATE, APP, COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP, COUNTRY ORDER BY APP ASC, CLICKS DESC;

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The date range for which the report is generated. |
| `dimensionFilters` | `array<NetworkReportSpecDimensionFilter>` | Describes which report rows to match based on their dimension values. |
| `dimensions` | `array<string>` | List of dimensions of the report. The value combination of these dimensions determines the row of... |
| `localizationSettings` | `LocalizationSettings` | Localization settings of the report. |
| `maxReportRows` | `integer` | Maximum number of report data rows to return. If the value is not set, the API returns as many ro... |
| `metrics` | `array<string>` | List of metrics of the report. A report must specify at least one metric. |
| `sortConditions` | `array<NetworkReportSpecSortCondition>` | Describes the sorting of report rows. The order of the condition in the list defines its preceden... |
| `timeZone` | `string` | A report time zone. Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time zon... |

### `NetworkReportSpecDimensionFilter`

Describes which report rows to match based on their dimension values.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` | Applies the filter criterion to the specified dimension. |
| `matchesAny` | `StringList` | Matches a row if its value for the specified dimension is in one of the values specified in this ... |

### `NetworkReportSpecSortCondition`

Sorting direction to be applied on a dimension or a metric.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` | Sort by the specified dimension. |
| `metric` | `string` | Sort by the specified metric. |
| `order` | `string` | Sorting order of the dimension or metric. |

### `PublisherAccount`

A publisher account contains information relevant to the use of this API, such as the time zone used for the reports.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Currency code of the earning-related metrics, which is the 3-letter code defined in ISO 4217. The... |
| `name` | `string` | Resource name of this account. Format is accounts/{publisher_id}. |
| `publisherId` | `string` | The unique ID by which this publisher account can be identified in the API requests (for example,... |
| `reportingTimeZone` | `string` | The time zone that is used in reports that are generated for this account. The value is a time-zo... |

### `ReportFooter`

Groups data available after report generation, for example, warnings and row counts. Always sent as the last message in the stream response.

| Property | Type | Description |
|----------|------|-------------|
| `matchingRowCount` | `string` | Total number of rows that matched the request. Warning: This count does NOT always match the numb... |
| `warnings` | `array<ReportWarning>` | Warnings associated with generation of the report. |

### `ReportHeader`

Groups data helps to treat the generated report. Always sent as a first message in the stream response.

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The date range for which the report is generated. This is identical to the range specified in the... |
| `localizationSettings` | `LocalizationSettings` | Localization settings of the report. This is identical to the settings in the report request. |
| `reportingTimeZone` | `string` | The report time zone. The value is a time-zone ID as specified by the CLDR project, for example, ... |

### `ReportRow`

A row of the returning report.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionValues` | `object` | Map of dimension values in a row, with keys as enum name of the dimensions. |
| `metricValues` | `object` | Map of metric values in a row, with keys as enum name of the metrics. If a metric being requested... |

### `ReportRowDimensionValue`

Representation of a dimension value.

| Property | Type | Description |
|----------|------|-------------|
| `displayLabel` | `string` | The localized string representation of the value. If unspecified, the display label should be der... |
| `value` | `string` | Dimension value in the format specified in the report's spec Dimension enum. |

### `ReportRowMetricValue`

Representation of a metric value.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | Double precision (approximate) decimal values. Rates are from 0 to 1. |
| `integerValue` | `string` | Metric integer value. |
| `microsValue` | `string` | Amount in micros. One million is equivalent to one unit. Currency value is in the unit (USD, EUR ... |

### `ReportWarning`

Warnings associated with generation of the report.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes the details of the warning message, in English. |
| `type` | `string` | Type of the warning. |

### `StringList`

List of string values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The string values. |

