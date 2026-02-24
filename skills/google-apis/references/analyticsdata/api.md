# Google Analytics Data API - API Reference

**Version**: `v1beta` | **Methods**: 11 | **Schemas**: 68

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `analyticsdata.properties.runReport` | POST | `v1beta/{+property}:runReport` | Returns a customized report of your Google Analytics event data. Reports contain statistics deriv... |
| `analyticsdata.properties.runPivotReport` | POST | `v1beta/{+property}:runPivotReport` | Returns a customized pivot report of your Google Analytics event data. Pivot reports are more adv... |
| `analyticsdata.properties.batchRunReports` | POST | `v1beta/{+property}:batchRunReports` | Returns multiple reports in a batch. All reports must be for the same Google Analytics property. |
| `analyticsdata.properties.batchRunPivotReports` | POST | `v1beta/{+property}:batchRunPivotReports` | Returns multiple pivot reports in a batch. All reports must be for the same Google Analytics prop... |
| `analyticsdata.properties.getMetadata` | GET | `v1beta/{+name}` | Returns metadata for dimensions and metrics available in reporting methods. Used to explore the d... |
| `analyticsdata.properties.runRealtimeReport` | POST | `v1beta/{+property}:runRealtimeReport` | Returns a customized report of realtime event data for your property. Events appear in realtime r... |
| `analyticsdata.properties.checkCompatibility` | POST | `v1beta/{+property}:checkCompatibility` | This compatibility method lists dimensions and metrics that can be added to a report request and ... |
| `analyticsdata.properties.audienceExports.create` | POST | `v1beta/{+parent}/audienceExports` | Creates an audience export for later retrieval. This method quickly returns the audience export's... |
| `analyticsdata.properties.audienceExports.query` | POST | `v1beta/{+name}:query` | Retrieves an audience export of users. After creating an audience, the users are not immediately ... |
| `analyticsdata.properties.audienceExports.get` | GET | `v1beta/{+name}` | Gets configuration metadata about a specific audience export. This method can be used to understa... |
| `analyticsdata.properties.audienceExports.list` | GET | `v1beta/{+parent}/audienceExports` | Lists all audience exports for a property. This method can be used for you to find and reuse exis... |

### `analyticsdata.properties.runReport`

**POST** `v1beta/{+property}:runReport`

Returns a customized report of your Google Analytics event data. Reports contain statistics derived from data collected by the Google Analytics tracking code. The data returned from the API is as a table with columns for the requested dimensions and metrics. Metrics are individual measurements of user activity on your property, such as active users or event count. Dimensions break down metrics across some common criteria, such as country or event name. For a guide to constructing requests & understanding responses, see [Creating a Report](https://developers.google.com/analytics/devguides/reporting/data/v1/basics).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. Specified in the URL path and not the body. To learn... |

**Request body**: `RunReportRequest`

**Response**: `RunReportResponse`

```typescript
const res = await analyticsdata.properties.runReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.runPivotReport`

**POST** `v1beta/{+property}:runPivotReport`

Returns a customized pivot report of your Google Analytics event data. Pivot reports are more advanced and expressive formats than regular reports. In a pivot report, dimensions are only visible if they are included in a pivot. Multiple pivots can be specified to further dissect your data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. Specified in the URL path and not the body. To learn... |

**Request body**: `RunPivotReportRequest`

**Response**: `RunPivotReportResponse`

```typescript
const res = await analyticsdata.properties.runPivotReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.batchRunReports`

**POST** `v1beta/{+property}:batchRunReports`

Returns multiple reports in a batch. All reports must be for the same Google Analytics property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. Specified in the URL path and not the body. To learn... |

**Request body**: `BatchRunReportsRequest`

**Response**: `BatchRunReportsResponse`

```typescript
const res = await analyticsdata.properties.batchRunReports({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.batchRunPivotReports`

**POST** `v1beta/{+property}:batchRunPivotReports`

Returns multiple pivot reports in a batch. All reports must be for the same Google Analytics property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. Specified in the URL path and not the body. To learn... |

**Request body**: `BatchRunPivotReportsRequest`

**Response**: `BatchRunPivotReportsResponse`

```typescript
const res = await analyticsdata.properties.batchRunPivotReports({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.getMetadata`

**GET** `v1beta/{+name}`

Returns metadata for dimensions and metrics available in reporting methods. Used to explore the dimensions and metrics. In this method, a Google Analytics property identifier is specified in the request, and the metadata response includes Custom dimensions and metrics as well as Universal metadata. For example if a custom metric with parameter name `levels_unlocked` is registered to a property, the Metadata response will contain `customEvent:levels_unlocked`. Universal metadata are dimensions and metrics applicable to any property such as `country` and `totalUsers`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the metadata to retrieve. This name field is specified in the URL path and not URL par... |

**Response**: `Metadata`

```typescript
const res = await analyticsdata.properties.getMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.runRealtimeReport`

**POST** `v1beta/{+property}:runRealtimeReport`

Returns a customized report of realtime event data for your property. Events appear in realtime reports seconds after they have been sent to the Google Analytics. Realtime reports show events and usage data for the periods of time ranging from the present moment to 30 minutes ago (up to 60 minutes for Google Analytics 360 properties). For a guide to constructing realtime requests & understanding responses, see [Creating a Realtime Report](https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. Specified in the URL path and not the body. To learn... |

**Request body**: `RunRealtimeReportRequest`

**Response**: `RunRealtimeReportResponse`

```typescript
const res = await analyticsdata.properties.runRealtimeReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.checkCompatibility`

**POST** `v1beta/{+property}:checkCompatibility`

This compatibility method lists dimensions and metrics that can be added to a report request and maintain compatibility. This method fails if the request's dimensions and metrics are incompatible. In Google Analytics, reports fail if they request incompatible dimensions and/or metrics; in that case, you will need to remove dimensions and/or metrics from the incompatible report until the report is compatible. The Realtime and Core reports have different compatibility rules. This method checks compatibility for Core reports.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | A Google Analytics property identifier whose events are tracked. To learn more, see [where to find your Property ID](... |

**Request body**: `CheckCompatibilityRequest`

**Response**: `CheckCompatibilityResponse`

```typescript
const res = await analyticsdata.properties.checkCompatibility({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.audienceExports.create`

**POST** `v1beta/{+parent}/audienceExports`

Creates an audience export for later retrieval. This method quickly returns the audience export's resource name and initiates a long running asynchronous request to form an audience export. To export the users in an audience export, first create the audience export through this method and then send the audience resource name to the `QueryAudienceExport` method. See [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics) for an introduction to Audience Exports with examples. An audience export is a snapshot of the users currently in the audience at the time of audience export creation. Creating audience exports for one audience on different days will return different results as users enter and exit the audience. Audiences in Google Analytics 4 allow you to segment your users in the ways that are important to your business. To learn more, see https://support.google.com/analytics/answer/9267572. Audience exports contain the users in each audience. Audience Export APIs have some methods at alpha and other methods at beta stability. The intention is to advance methods to beta stability after some feedback and adoption. To give your feedback on this API, complete the [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this audience export will be created. Format: `properties/{property}` |

**Request body**: `AudienceExport`

**Response**: `Operation`

```typescript
const res = await analyticsdata.audienceExports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.audienceExports.query`

**POST** `v1beta/{+name}:query`

Retrieves an audience export of users. After creating an audience, the users are not immediately available for exporting. First, a request to `CreateAudienceExport` is necessary to create an audience export of users, and then second, this method is used to retrieve the users in the audience export. See [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics) for an introduction to Audience Exports with examples. Audiences in Google Analytics 4 allow you to segment your users in the ways that are important to your business. To learn more, see https://support.google.com/analytics/answer/9267572. Audience Export APIs have some methods at alpha and other methods at beta stability. The intention is to advance methods to beta stability after some feedback and adoption. To give your feedback on this API, complete the [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the audience export to retrieve users from. Format: `properties/{property}/audienceExports/{aud... |

**Request body**: `QueryAudienceExportRequest`

**Response**: `QueryAudienceExportResponse`

```typescript
const res = await analyticsdata.audienceExports.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.audienceExports.get`

**GET** `v1beta/{+name}`

Gets configuration metadata about a specific audience export. This method can be used to understand an audience export after it has been created. See [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics) for an introduction to Audience Exports with examples. Audience Export APIs have some methods at alpha and other methods at beta stability. The intention is to advance methods to beta stability after some feedback and adoption. To give your feedback on this API, complete the [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The audience export resource name. Format: `properties/{property}/audienceExports/{audience_export}` |

**Response**: `AudienceExport`

```typescript
const res = await analyticsdata.audienceExports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsdata.properties.audienceExports.list`

**GET** `v1beta/{+parent}/audienceExports`

Lists all audience exports for a property. This method can be used for you to find and reuse existing audience exports rather than creating unnecessary new audience exports. The same audience can have multiple audience exports that represent the export of users that were in an audience on different days. See [Creating an Audience Export](https://developers.google.com/analytics/devguides/reporting/data/v1/audience-list-basics) for an introduction to Audience Exports with examples. Audience Export APIs have some methods at alpha and other methods at beta stability. The intention is to advance methods to beta stability after some feedback and adoption. To give your feedback on this API, complete the [Google Analytics Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. All audience exports for this property will be listed in the response. Format: `properties/{property}` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of audience exports to return. The service may return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAudienceExports` call. Provide this to retrieve the subsequent ... |

**Response**: `ListAudienceExportsResponse`

```typescript
const res = await analyticsdata.audienceExports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

## Schemas

### `ActiveMetricRestriction`

A metric actively restricted in creating the report.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | The name of the restricted metric. |
| `restrictedMetricTypes` | `array<string>` | The reason for this metric's restriction. |

### `AudienceExport`

An audience export is a list of users in an audience at the time of the list's creation. One audience may have multiple audience exports created for different days.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Required. The audience resource name. This resource name identifies the audience being listed and... |
| `audienceDisplayName` | `string` | Output only. The descriptive display name for this audience. For example, "Purchasers". |
| `beginCreatingTime` | `string` | Output only. The time when CreateAudienceExport was called and the AudienceExport began the `CREA... |
| `creationQuotaTokensCharged` | `integer` | Output only. The total quota tokens charged during creation of the AudienceExport. Because this t... |
| `dimensions` | `array<V1betaAudienceDimension>` | Required. The dimensions requested and displayed in the query response. |
| `errorMessage` | `string` | Output only. Error message is populated when an audience export fails during creation. A common r... |
| `name` | `string` | Output only. Identifier. The audience export resource name assigned during creation. This resourc... |
| `percentageCompleted` | `number` | Output only. The percentage completed for this audience export ranging between 0 to 100. |
| `rowCount` | `integer` | Output only. The total number of rows in the AudienceExport result. |
| `state` | `string` | Output only. The current state for this AudienceExport. |

### `AudienceListMetadata`

This metadata is currently blank.

### `BatchRunPivotReportsRequest`

The batch request containing multiple pivot report requests.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<RunPivotReportRequest>` | Individual requests. Each request has a separate pivot report response. Each batch request is all... |

### `BatchRunPivotReportsResponse`

The batch response containing multiple pivot reports.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this message is. This `kind` is always the fixed string "analyti... |
| `pivotReports` | `array<RunPivotReportResponse>` | Individual responses. Each response has a separate pivot report request. |

### `BatchRunReportsRequest`

The batch request containing multiple report requests.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<RunReportRequest>` | Individual requests. Each request has a separate report response. Each batch request is allowed u... |

### `BatchRunReportsResponse`

The batch response containing multiple reports.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this message is. This `kind` is always the fixed string "analyti... |
| `reports` | `array<RunReportResponse>` | Individual responses. Each response has a separate report request. |

### `BetweenFilter`

To express that the result needs to be between two numbers (inclusive).

| Property | Type | Description |
|----------|------|-------------|
| `fromValue` | `NumericValue` | Begins with this number. |
| `toValue` | `NumericValue` | Ends with this number. |

### `CaseExpression`

Used to convert a dimension value to a single case.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | Name of a dimension. The name must refer back to a name in dimensions field of the request. |

### `CheckCompatibilityRequest`

The request for compatibility information for a report's dimensions and metrics. Check compatibility provides a preview of the compatibility of a report; fields shared with the `runReport` request should be the same values as in your `runReport` request.

| Property | Type | Description |
|----------|------|-------------|
| `compatibilityFilter` | `string` | Filters the dimensions and metrics in the response to just this compatibility. Commonly used as `... |
| `dimensionFilter` | `FilterExpression` | The filter clause of dimensions. `dimensionFilter` should be the same value as in your `runReport... |
| `dimensions` | `array<Dimension>` | The dimensions in this report. `dimensions` should be the same value as in your `runReport` request. |
| `metricFilter` | `FilterExpression` | The filter clause of metrics. `metricFilter` should be the same value as in your `runReport` request |
| `metrics` | `array<Metric>` | The metrics in this report. `metrics` should be the same value as in your `runReport` request. |

### `CheckCompatibilityResponse`

The compatibility response with the compatibility of each dimension & metric.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionCompatibilities` | `array<DimensionCompatibility>` | The compatibility of each dimension. |
| `metricCompatibilities` | `array<MetricCompatibility>` | The compatibility of each metric. |

### `Cohort`

Defines a cohort selection criteria. A cohort is a group of users who share a common characteristic. For example, users with the same `firstSessionDate` belong to the same cohort.

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The cohort selects users whose first touch date is between start date and end date defined in the... |
| `dimension` | `string` | Dimension used by the cohort. Required and only supports `firstSessionDate`. |
| `name` | `string` | Assigns a name to this cohort. The dimension `cohort` is valued to this name in a report response... |

### `CohortReportSettings`

Optional settings of a cohort report.

| Property | Type | Description |
|----------|------|-------------|
| `accumulate` | `boolean` | If true, accumulates the result from first touch day to the end day. Not supported in `RunReportR... |

### `CohortSpec`

The specification of cohorts for a cohort report. Cohort reports create a time series of user retention for the cohort. For example, you could select the cohort of users that were acquired in the first week of September and follow that cohort for the next six weeks. Selecting the users acquired in the first week of September cohort is specified in the `cohort` object. Following that cohort for the next six weeks is specified in the `cohortsRange` object. For examples, see [Cohort Report Examples](https://developers.google.com/analytics/devguides/reporting/data/v1/advanced#cohort_report_examples). The report response could show a weekly time series where say your app has retained 60% of this cohort after three weeks and 25% of this cohort after six weeks. These two percentages can be calculated by the metric `cohortActiveUsers/cohortTotalUsers` and will be separate rows in the report.

| Property | Type | Description |
|----------|------|-------------|
| `cohortReportSettings` | `CohortReportSettings` | Optional settings for a cohort report. |
| `cohorts` | `array<Cohort>` | Defines the selection criteria to group users into cohorts. Most cohort reports define only a sin... |
| `cohortsRange` | `CohortsRange` | Cohort reports follow cohorts over an extended reporting date range. This range specifies an offs... |

### `CohortsRange`

Configures the extended reporting date range for a cohort report. Specifies an offset duration to follow the cohorts over.

| Property | Type | Description |
|----------|------|-------------|
| `endOffset` | `integer` | Required. `endOffset` specifies the end date of the extended reporting date range for a cohort re... |
| `granularity` | `string` | Required. The granularity used to interpret the `startOffset` and `endOffset` for the extended re... |
| `startOffset` | `integer` | `startOffset` specifies the start date of the extended reporting date range for a cohort report. ... |

### `Comparison`

Defines an individual comparison. Most requests will include multiple comparisons so that the report compares between the comparisons.

| Property | Type | Description |
|----------|------|-------------|
| `comparison` | `string` | A saved comparison identified by the comparison's resource name. For example, 'comparisons/1234'. |
| `dimensionFilter` | `FilterExpression` | A basic comparison. |
| `name` | `string` | Each comparison produces separate rows in the response. In the response, this comparison is ident... |

### `ComparisonMetadata`

The metadata for a single comparison.

| Property | Type | Description |
|----------|------|-------------|
| `apiName` | `string` | This comparison's resource name. Useable in [Comparison](#Comparison)'s `comparison` field. For e... |
| `description` | `string` | This comparison's description. |
| `uiName` | `string` | This comparison's name within the Google Analytics user interface. |

### `ConcatenateExpression`

Used to combine dimension values to a single dimension.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | The delimiter placed between dimension names. Delimiters are often single characters such as "|" ... |
| `dimensionNames` | `array<string>` | Names of dimensions. The names must refer back to names in the dimensions field of the request. |

### `DateRange`

A contiguous set of days: `startDate`, `startDate + 1`, ..., `endDate`. Requests are allowed up to 4 date ranges.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` | The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot be before `start_date`. T... |
| `name` | `string` | Assigns a name to this date range. The dimension `dateRange` is valued to this name in a report r... |
| `startDate` | `string` | The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot be after `end_date`. Th... |

### `Dimension`

Dimensions are attributes of your data. For example, the dimension city indicates the city from which an event originates. Dimension values in report responses are strings; for example, the city could be "Paris" or "New York". Requests are allowed up to 9 dimensions.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionExpression` | `DimensionExpression` | One dimension can be the result of an expression of multiple dimensions. For example, dimension "... |
| `name` | `string` | The name of the dimension. See the [API Dimensions](https://developers.google.com/analytics/devgu... |

### `DimensionCompatibility`

The compatibility for a single dimension.

| Property | Type | Description |
|----------|------|-------------|
| `compatibility` | `string` | The compatibility of this dimension. If the compatibility is COMPATIBLE, this dimension can be su... |
| `dimensionMetadata` | `DimensionMetadata` | The dimension metadata contains the API name for this compatibility information. The dimension me... |

### `DimensionExpression`

Used to express a dimension which is the result of a formula of multiple dimensions. Example usages: 1) lower_case(dimension) 2) concatenate(dimension1, symbol, dimension2).

| Property | Type | Description |
|----------|------|-------------|
| `concatenate` | `ConcatenateExpression` | Used to combine dimension values to a single dimension. For example, dimension "country, city": c... |
| `lowerCase` | `CaseExpression` | Used to convert a dimension value to lower case. |
| `upperCase` | `CaseExpression` | Used to convert a dimension value to upper case. |

### `DimensionHeader`

Describes a dimension column in the report. Dimensions requested in a report produce column entries within rows and DimensionHeaders. However, dimensions used exclusively within filters or expressions do not produce columns in a report; correspondingly, those dimensions do not produce headers.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The dimension's name. |

### `DimensionMetadata`

Explains a dimension.

| Property | Type | Description |
|----------|------|-------------|
| `apiName` | `string` | This dimension's name. Useable in [Dimension](#Dimension)'s `name`. For example, `eventName`. |
| `category` | `string` | The display name of the category that this dimension belongs to. Similar dimensions and metrics a... |
| `customDefinition` | `boolean` | True if the dimension is custom to this property. This includes user, event, & item scoped custom... |
| `deprecatedApiNames` | `array<string>` | Still usable but deprecated names for this dimension. If populated, this dimension is available b... |
| `description` | `string` | Description of how this dimension is used and calculated. |
| `uiName` | `string` | This dimension's name within the Google Analytics user interface. For example, `Event name`. |

### `DimensionOrderBy`

Sorts by dimension values.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | A dimension name in the request to order by. |
| `orderType` | `string` | Controls the rule for dimension value ordering. |

### `DimensionValue`

The value of a dimension.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Value as a string if the dimension type is a string. |

### `EmptyFilter`

Filter for empty values.

### `Filter`

An expression to filter dimension or metric values.

| Property | Type | Description |
|----------|------|-------------|
| `betweenFilter` | `BetweenFilter` | A filter for two values. |
| `emptyFilter` | `EmptyFilter` | A filter for empty values such as "(not set)" and "" values. |
| `fieldName` | `string` | The dimension name or metric name. In most methods, dimensions & metrics can be used for the firs... |
| `inListFilter` | `InListFilter` | A filter for in list values. |
| `numericFilter` | `NumericFilter` | A filter for numeric or date values. |
| `stringFilter` | `StringFilter` | Strings related filter. |

### `FilterExpression`

To express dimension or metric filters. The fields in the same FilterExpression need to be either all dimensions or all metrics.

| Property | Type | Description |
|----------|------|-------------|
| `andGroup` | `FilterExpressionList` | The FilterExpressions in and_group have an AND relationship. |
| `filter` | `Filter` | A primitive filter. In the same FilterExpression, all of the filter's field names need to be eith... |
| `notExpression` | `FilterExpression` | The FilterExpression is NOT of not_expression. |
| `orGroup` | `FilterExpressionList` | The FilterExpressions in or_group have an OR relationship. |

### `FilterExpressionList`

A list of filter expressions.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `array<FilterExpression>` | A list of filter expressions. |

### `InListFilter`

The result needs to be in a list of string values.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | If true, the string value is case sensitive. |
| `values` | `array<string>` | The list of string values. Must be non-empty. |

### `ListAudienceExportsResponse`

A list of all audience exports for a property.

| Property | Type | Description |
|----------|------|-------------|
| `audienceExports` | `array<AudienceExport>` | Each audience export for a property. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `Metadata`

The dimensions, metrics and comparisons currently accepted in reporting methods.

| Property | Type | Description |
|----------|------|-------------|
| `comparisons` | `array<ComparisonMetadata>` | The comparison descriptions. |
| `dimensions` | `array<DimensionMetadata>` | The dimension descriptions. |
| `metrics` | `array<MetricMetadata>` | The metric descriptions. |
| `name` | `string` | Resource name of this metadata. |

### `Metric`

The quantitative measurements of a report. For example, the metric `eventCount` is the total number of events. Requests are allowed up to 10 metrics.

| Property | Type | Description |
|----------|------|-------------|
| `expression` | `string` | A mathematical expression for derived metrics. For example, the metric Event count per user is `e... |
| `invisible` | `boolean` | Indicates if a metric is invisible in the report response. If a metric is invisible, the metric w... |
| `name` | `string` | The name of the metric. See the [API Metrics](https://developers.google.com/analytics/devguides/r... |

### `MetricCompatibility`

The compatibility for a single metric.

| Property | Type | Description |
|----------|------|-------------|
| `compatibility` | `string` | The compatibility of this metric. If the compatibility is COMPATIBLE, this metric can be successf... |
| `metricMetadata` | `MetricMetadata` | The metric metadata contains the API name for this compatibility information. The metric metadata... |

### `MetricHeader`

Describes a metric column in the report. Visible metrics requested in a report produce column entries within rows and MetricHeaders. However, metrics used exclusively within filters or expressions do not produce columns in a report; correspondingly, those metrics do not produce headers.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The metric's name. |
| `type` | `string` | The metric's data type. |

### `MetricMetadata`

Explains a metric.

| Property | Type | Description |
|----------|------|-------------|
| `apiName` | `string` | A metric name. Useable in [Metric](#Metric)'s `name`. For example, `eventCount`. |
| `blockedReasons` | `array<string>` | If reasons are specified, your access is blocked to this metric for this property. API requests f... |
| `category` | `string` | The display name of the category that this metrics belongs to. Similar dimensions and metrics are... |
| `customDefinition` | `boolean` | True if the metric is a custom metric for this property. |
| `deprecatedApiNames` | `array<string>` | Still usable but deprecated names for this metric. If populated, this metric is available by eith... |
| `description` | `string` | Description of how this metric is used and calculated. |
| `expression` | `string` | The mathematical expression for this derived metric. Can be used in [Metric](#Metric)'s `expressi... |
| `type` | `string` | The type of this metric. |
| `uiName` | `string` | This metric's name within the Google Analytics user interface. For example, `Event count`. |

### `MetricOrderBy`

Sorts by metric values.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | A metric name in the request to order by. |

### `MetricValue`

The value of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Measurement value. See MetricHeader for type. |

### `MinuteRange`

A contiguous set of minutes: `startMinutesAgo`, `startMinutesAgo + 1`, ..., `endMinutesAgo`. Requests are allowed up to 2 minute ranges.

| Property | Type | Description |
|----------|------|-------------|
| `endMinutesAgo` | `integer` | The inclusive end minute for the query as a number of minutes before now. Cannot be before `start... |
| `name` | `string` | Assigns a name to this minute range. The dimension `dateRange` is valued to this name in a report... |
| `startMinutesAgo` | `integer` | The inclusive start minute for the query as a number of minutes before now. For example, `"startM... |

### `NumericFilter`

Filters for numeric or date values.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | The operation type for this filter. |
| `value` | `NumericValue` | A numeric value or a date value. |

### `NumericValue`

To represent a number.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | Double value |
| `int64Value` | `string` | Integer value |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OrderBy`

Order bys define how rows will be sorted in the response. For example, ordering rows by descending event count is one ordering, and ordering rows by the event name string is a different ordering.

| Property | Type | Description |
|----------|------|-------------|
| `desc` | `boolean` | If true, sorts by descending order. |
| `dimension` | `DimensionOrderBy` | Sorts results by a dimension's values. |
| `metric` | `MetricOrderBy` | Sorts results by a metric's values. |
| `pivot` | `PivotOrderBy` | Sorts results by a metric's values within a pivot column group. |

### `Pivot`

Describes the visible dimension columns and rows in the report response.

| Property | Type | Description |
|----------|------|-------------|
| `fieldNames` | `array<string>` | Dimension names for visible columns in the report response. Including "dateRange" produces a date... |
| `limit` | `string` | The number of unique combinations of dimension values to return in this pivot. The `limit` parame... |
| `metricAggregations` | `array<string>` | Aggregate the metrics by dimensions in this pivot using the specified metric_aggregations. |
| `offset` | `string` | The row count of the start row. The first row is counted as row 0. |
| `orderBys` | `array<OrderBy>` | Specifies how dimensions are ordered in the pivot. In the first Pivot, the OrderBys determine Row... |

### `PivotDimensionHeader`

Summarizes dimension values from a row for this pivot.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionValues` | `array<DimensionValue>` | Values of multiple dimensions in a pivot. |

### `PivotHeader`

Dimensions' values in a single pivot.

| Property | Type | Description |
|----------|------|-------------|
| `pivotDimensionHeaders` | `array<PivotDimensionHeader>` | The size is the same as the cardinality of the corresponding dimension combinations. |
| `rowCount` | `integer` | The cardinality of the pivot. The total number of rows for this pivot's fields regardless of how ... |

### `PivotOrderBy`

Sorts by a pivot column group.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | In the response to order by, order rows by this column. Must be a metric name from the request. |
| `pivotSelections` | `array<PivotSelection>` | Used to select a dimension name and value pivot. If multiple pivot selections are given, the sort... |

### `PivotSelection`

A pair of dimension names and values. Rows with this dimension pivot pair are ordered by the metric's value. For example if pivots = {{"browser", "Chrome"}} and metric_name = "Sessions", then the rows will be sorted based on Sessions in Chrome. ---------|----------|----------------|----------|---------------- | Chrome | Chrome | Safari | Safari ---------|----------|----------------|----------|---------------- Country | Sessions | Pages/Sessions | Sessions | Pages/Sessions ---------|----------|----------------|----------|---------------- US | 2 | 2 | 3 | 1 ---------|----------|----------------|----------|---------------- Canada | 3 | 1 | 4 | 1 ---------|----------|----------------|----------|----------------

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | Must be a dimension name from the request. |
| `dimensionValue` | `string` | Order by only when the named dimension is this value. |

### `PropertyQuota`

Current state of all quotas for this Analytics Property. If any quota for a property is exhausted, all requests to that property will return Resource Exhausted errors.

| Property | Type | Description |
|----------|------|-------------|
| `concurrentRequests` | `QuotaStatus` | Standard Analytics Properties can send up to 10 concurrent requests; Analytics 360 Properties can... |
| `potentiallyThresholdedRequestsPerHour` | `QuotaStatus` | Analytics Properties can send up to 120 requests with potentially thresholded dimensions per hour... |
| `serverErrorsPerProjectPerHour` | `QuotaStatus` | Standard Analytics Properties and cloud project pairs can have up to 10 server errors per hour; A... |
| `tokensPerDay` | `QuotaStatus` | Standard Analytics Properties can use up to 200,000 tokens per day; Analytics 360 Properties can ... |
| `tokensPerHour` | `QuotaStatus` | Standard Analytics Properties can use up to 40,000 tokens per hour; Analytics 360 Properties can ... |
| `tokensPerProjectPerHour` | `QuotaStatus` | Analytics Properties can use up to 35% of their tokens per project per hour. This amounts to stan... |

### `QueryAudienceExportRequest`

A request to list users in an audience export.

| Property | Type | Description |
|----------|------|-------------|
| `limit` | `string` | Optional. The number of rows to return. If unspecified, 10,000 rows are returned. The API returns... |
| `offset` | `string` | Optional. The row count of the start row. The first row is counted as row 0. When paging, the fir... |

### `QueryAudienceExportResponse`

A list of users in an audience export.

| Property | Type | Description |
|----------|------|-------------|
| `audienceExport` | `AudienceExport` | Configuration data about AudienceExport being queried. Returned to help interpret the audience ro... |
| `audienceRows` | `array<V1betaAudienceRow>` | Rows for each user in an audience export. The number of rows in this response will be less than o... |
| `rowCount` | `integer` | The total number of rows in the AudienceExport result. `rowCount` is independent of the number of... |

### `QuotaStatus`

Current state for a particular quota group.

| Property | Type | Description |
|----------|------|-------------|
| `consumed` | `integer` | Quota consumed by this request. |
| `remaining` | `integer` | Quota remaining after this request. |

### `ResponseMetaData`

Response's metadata carrying additional information about the report content.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The currency code used in this report. Intended to be used in formatting currency metrics like `p... |
| `dataLossFromOtherRow` | `boolean` | If true, indicates some buckets of dimension combinations are rolled into "(other)" row. This can... |
| `emptyReason` | `string` | If empty reason is specified, the report is empty for this reason. |
| `samplingMetadatas` | `array<SamplingMetadata>` | If this report results is [sampled](https://support.google.com/analytics/answer/13331292), this d... |
| `schemaRestrictionResponse` | `SchemaRestrictionResponse` | Describes the schema restrictions actively enforced in creating this report. To learn more, see [... |
| `subjectToThresholding` | `boolean` | If `subjectToThresholding` is true, this report is subject to thresholding and only returns data ... |
| `timeZone` | `string` | The property's current timezone. Intended to be used to interpret time-based dimensions like `hou... |

### `Row`

Report data for each row. For example if RunReportRequest contains: ```none "dimensions": [ { "name": "eventName" }, { "name": "countryId" } ], "metrics": [ { "name": "eventCount" } ] ``` One row with 'in_app_purchase' as the eventName, 'JP' as the countryId, and 15 as the eventCount, would be: ```none "dimensionValues": [ { "value": "in_app_purchase" }, { "value": "JP" } ], "metricValues": [ { "value": "15" } ] ```

| Property | Type | Description |
|----------|------|-------------|
| `dimensionValues` | `array<DimensionValue>` | List of requested dimension values. In a PivotReport, dimension_values are only listed for dimens... |
| `metricValues` | `array<MetricValue>` | List of requested visible metric values. |

### `RunPivotReportRequest`

The request to generate a pivot report.

| Property | Type | Description |
|----------|------|-------------|
| `cohortSpec` | `CohortSpec` | Cohort group associated with this request. If there is a cohort group in the request the 'cohort'... |
| `comparisons` | `array<Comparison>` | Optional. The configuration of comparisons requested and displayed. The request requires both a c... |
| `currencyCode` | `string` | A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field is empty, the report... |
| `dateRanges` | `array<DateRange>` | The date range to retrieve event data for the report. If multiple date ranges are specified, even... |
| `dimensionFilter` | `FilterExpression` | The filter clause of dimensions. Dimensions must be requested to be used in this filter. Metrics ... |
| `dimensions` | `array<Dimension>` | The dimensions requested. All defined dimensions must be used by one of the following: dimension_... |
| `keepEmptyRows` | `boolean` | If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, thes... |
| `metricFilter` | `FilterExpression` | The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Me... |
| `metrics` | `array<Metric>` | The metrics requested, at least one metric needs to be specified. All defined metrics must be use... |
| `pivots` | `array<Pivot>` | Describes the visual format of the report's dimensions in columns or rows. The union of the field... |
| `property` | `string` | A Google Analytics property identifier whose events are tracked. Specified in the URL path and no... |
| `returnPropertyQuota` | `boolean` | Toggles whether to return the current state of this Google Analytics property's quota. Quota is r... |

### `RunPivotReportResponse`

The response pivot report table corresponding to a pivot request.

| Property | Type | Description |
|----------|------|-------------|
| `aggregates` | `array<Row>` | Aggregation of metric values. Can be totals, minimums, or maximums. The returned aggregations are... |
| `dimensionHeaders` | `array<DimensionHeader>` | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matc... |
| `kind` | `string` | Identifies what kind of resource this message is. This `kind` is always the fixed string "analyti... |
| `metadata` | `ResponseMetaData` | Metadata for the report. |
| `metricHeaders` | `array<MetricHeader>` | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the m... |
| `pivotHeaders` | `array<PivotHeader>` | Summarizes the columns and rows created by a pivot. Each pivot in the request produces one header... |
| `propertyQuota` | `PropertyQuota` | This Google Analytics property's quota state including this request. |
| `rows` | `array<Row>` | Rows of dimension value combinations and metric values in the report. |

### `RunRealtimeReportRequest`

The request to generate a realtime report.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionFilter` | `FilterExpression` | The filter clause of dimensions. Metrics cannot be used in this filter. |
| `dimensions` | `array<Dimension>` | The dimensions requested and displayed. |
| `limit` | `string` | The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum... |
| `metricAggregations` | `array<string>` | Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension_values... |
| `metricFilter` | `FilterExpression` | The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Di... |
| `metrics` | `array<Metric>` | The metrics requested and displayed. |
| `minuteRanges` | `array<MinuteRange>` | The minute ranges of event data to read. If unspecified, one minute range for the last 30 minutes... |
| `orderBys` | `array<OrderBy>` | Specifies how rows are ordered in the response. |
| `returnPropertyQuota` | `boolean` | Toggles whether to return the current state of this Google Analytics property's Realtime quota. Q... |

### `RunRealtimeReportResponse`

The response realtime report table corresponding to a request.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionHeaders` | `array<DimensionHeader>` | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matc... |
| `kind` | `string` | Identifies what kind of resource this message is. This `kind` is always the fixed string "analyti... |
| `maximums` | `array<Row>` | If requested, the maximum values of metrics. |
| `metricHeaders` | `array<MetricHeader>` | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the m... |
| `minimums` | `array<Row>` | If requested, the minimum values of metrics. |
| `propertyQuota` | `PropertyQuota` | This Google Analytics property's Realtime quota state including this request. |
| `rowCount` | `integer` | The total number of rows in the query result. `rowCount` is independent of the number of rows ret... |
| `rows` | `array<Row>` | Rows of dimension value combinations and metric values in the report. |
| `totals` | `array<Row>` | If requested, the totaled values of metrics. |

### `RunReportRequest`

The request to generate a report.

| Property | Type | Description |
|----------|------|-------------|
| `cohortSpec` | `CohortSpec` | Cohort group associated with this request. If there is a cohort group in the request the 'cohort'... |
| `comparisons` | `array<Comparison>` | Optional. The configuration of comparisons requested and displayed. The request only requires a c... |
| `currencyCode` | `string` | A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field is empty, the report... |
| `dateRanges` | `array<DateRange>` | Date ranges of data to read. If multiple date ranges are requested, each response row will contai... |
| `dimensionFilter` | `FilterExpression` | Dimension filters let you ask for only specific dimension values in the report. To learn more, se... |
| `dimensions` | `array<Dimension>` | The dimensions requested and displayed. |
| `keepEmptyRows` | `boolean` | If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, thes... |
| `limit` | `string` | The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum... |
| `metricAggregations` | `array<string>` | Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension_values... |
| `metricFilter` | `FilterExpression` | The filter clause of metrics. Applied after aggregating the report's rows, similar to SQL having-... |
| `metrics` | `array<Metric>` | The metrics requested and displayed. |
| `offset` | `string` | The row count of the start row. The first row is counted as row 0. When paging, the first request... |
| `orderBys` | `array<OrderBy>` | Specifies how rows are ordered in the response. Requests including both comparisons and multiple ... |
| `property` | `string` | A Google Analytics property identifier whose events are tracked. Specified in the URL path and no... |
| `returnPropertyQuota` | `boolean` | Toggles whether to return the current state of this Google Analytics property's quota. Quota is r... |

### `RunReportResponse`

The response report table corresponding to a request.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionHeaders` | `array<DimensionHeader>` | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matc... |
| `kind` | `string` | Identifies what kind of resource this message is. This `kind` is always the fixed string "analyti... |
| `maximums` | `array<Row>` | If requested, the maximum values of metrics. |
| `metadata` | `ResponseMetaData` | Metadata for the report. |
| `metricHeaders` | `array<MetricHeader>` | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the m... |
| `minimums` | `array<Row>` | If requested, the minimum values of metrics. |
| `propertyQuota` | `PropertyQuota` | This Google Analytics property's quota state including this request. |
| `rowCount` | `integer` | The total number of rows in the query result. `rowCount` is independent of the number of rows ret... |
| `rows` | `array<Row>` | Rows of dimension value combinations and metric values in the report. |
| `totals` | `array<Row>` | If requested, the totaled values of metrics. |

### `SamplingMetadata`

If this report results is [sampled](https://support.google.com/analytics/answer/13331292), this describes the percentage of events used in this report. Sampling is the practice of analyzing a subset of all data in order to uncover the meaningful information in the larger data set.

| Property | Type | Description |
|----------|------|-------------|
| `samplesReadCount` | `string` | The total number of events read in this sampled report for a date range. This is the size of the ... |
| `samplingSpaceSize` | `string` | The total number of events present in this property's data that could have been analyzed in this ... |

### `SchemaRestrictionResponse`

The schema restrictions actively enforced in creating this report. To learn more, see [Access and data-restriction management](https://support.google.com/analytics/answer/10851388).

| Property | Type | Description |
|----------|------|-------------|
| `activeMetricRestrictions` | `array<ActiveMetricRestriction>` | All restrictions actively enforced in creating the report. For example, `purchaseRevenue` always ... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StringFilter`

The filter for string

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | If true, the string value is case sensitive. |
| `matchType` | `string` | The match type for this filter. |
| `value` | `string` | The string value used for the matching. |

### `V1betaAudienceDimension`

An audience dimension is a user attribute. Specific user attributed are requested and then later returned in the `QueryAudienceExportResponse`.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | Optional. The API name of the dimension. See the [API Dimensions](https://developers.google.com/a... |

### `V1betaAudienceDimensionValue`

The value of a dimension.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Value as a string if the dimension type is a string. |

### `V1betaAudienceRow`

Dimension value attributes for the audience user row.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionValues` | `array<V1betaAudienceDimensionValue>` | Each dimension value attribute for an audience user. One dimension value will be added for each d... |

