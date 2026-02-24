# Business Profile Performance API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `businessprofileperformance.locations.getDailyMetricsTimeSeries` | GET | `v1/{+name}:getDailyMetricsTimeSeries` | Returns the values for each date from a given time range that are associated with the specific da... |
| `businessprofileperformance.locations.fetchMultiDailyMetricsTimeSeries` | GET | `v1/{+location}:fetchMultiDailyMetricsTimeSeries` | Returns the values for each date from a given time range and optionally the sub entity type, wher... |
| `businessprofileperformance.locations.searchkeywords.impressions.monthly.list` | GET | `v1/{+parent}/searchkeywords/impressions/monthly` | Returns the search keywords used to find a business in search or maps. Each search keyword is acc... |

### `businessprofileperformance.locations.getDailyMetricsTimeSeries`

**GET** `v1/{+name}:getDailyMetricsTimeSeries`

Returns the values for each date from a given time range that are associated with the specific daily metric. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345:getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id... |
| `dailyMetric` | `string` | query | No | Required. The metric to retrieve time series. |
| `dailyRange.endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `dailyRange.endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `dailyRange.endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `dailyRange.startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `dailyRange.startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `dailyRange.startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `dailySubEntityType.dayOfWeek` | `string` | query | No | Represents the day of the week. Eg: MONDAY. Currently supported DailyMetrics = NONE. |
| `dailySubEntityType.timeOfDay.hours` | `integer` | query | No | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. ... |
| `dailySubEntityType.timeOfDay.minutes` | `integer` | query | No | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `dailySubEntityType.timeOfDay.nanos` | `integer` | query | No | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999. |
| `dailySubEntityType.timeOfDay.seconds` | `integer` | query | No | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may al... |

**Response**: `GetDailyMetricsTimeSeriesResponse`

```typescript
const res = await businessprofileperformance.locations.getDailyMetricsTimeSeries({
  // parameters
});
```

---

### `businessprofileperformance.locations.fetchMultiDailyMetricsTimeSeries`

**GET** `v1/{+location}:fetchMultiDailyMetricsTimeSeries`

Returns the values for each date from a given time range and optionally the sub entity type, where applicable, that are associated with the specific daily metrics. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345:fetchMultiDailyMetricsTimeSeries?dailyMetrics=WEBSITE_CLICKS&dailyMetrics=CALL_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id... |
| `dailyMetrics` | `string` | query | No | Required. The metrics to retrieve time series for. |
| `dailyRange.endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `dailyRange.endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `dailyRange.endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `dailyRange.startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `dailyRange.startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `dailyRange.startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `FetchMultiDailyMetricsTimeSeriesResponse`

```typescript
const res = await businessprofileperformance.locations.fetchMultiDailyMetricsTimeSeries({
  // parameters
});
```

---

### `businessprofileperformance.locations.searchkeywords.impressions.monthly.list`

**GET** `v1/{+parent}/searchkeywords/impressions/monthly`

Returns the search keywords used to find a business in search or maps. Each search keyword is accompanied by impressions which are aggregated on a monthly basis. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.start_month.year=2022&monthly_range.start_month.month=1&monthly_range.end_month.year=2022&monthly_range.end_month.month=3`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id... |
| `monthlyRange.endMonth.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `monthlyRange.endMonth.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `monthlyRange.endMonth.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `monthlyRange.startMonth.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `monthlyRange.startMonth.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `monthlyRange.startMonth.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `pageSize` | `integer` | query | No | Optional. The number of results requested. The default page size is 100. Page size can be set to a maximum of 100. |
| `pageToken` | `string` | query | No | Optional. A token indicating the next paginated result to be returned. |

**Response**: `ListSearchKeywordImpressionsMonthlyResponse`

```typescript
const res = await businessprofileperformance.monthly.list({
  // parameters
});
```

---

## Schemas

### `DailyMetricTimeSeries`

Represents a single datapoint, where each datapoint is a DailyMetric-DailySubEntityType-TimeSeries tuple.

| Property | Type | Description |
|----------|------|-------------|
| `dailyMetric` | `string` | The DailyMetric that the TimeSeries represents. |
| `dailySubEntityType` | `DailySubEntityType` | The DailySubEntityType that the TimeSeries represents. Will not be present when breakdown does no... |
| `timeSeries` | `TimeSeries` | List of datapoints where each datapoint is a date-value pair. |

### `DailySubEntityType`

Represents all possible subentity types that are associated with DailyMetrics.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Represents the day of the week. Eg: MONDAY. Currently supported DailyMetrics = NONE. |
| `timeOfDay` | `TimeOfDay` | Represents the time of the day in 24 hour format. Eg: 13:34:20 Currently supported DailyMetrics =... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DatedValue`

Represents a single datapoint in the timeseries, where each datapoint is a date-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date that the datapoint corresponds to. This represents a month value if the day field is not... |
| `value` | `string` | The value of the datapoint. This will not be present when the value is zero. |

### `FetchMultiDailyMetricsTimeSeriesResponse`

Represents the response for FetchMultiDailyMetricsTimeSeries.

| Property | Type | Description |
|----------|------|-------------|
| `multiDailyMetricTimeSeries` | `array<MultiDailyMetricTimeSeries>` | DailyMetrics and their corresponding time series. |

### `GetDailyMetricsTimeSeriesResponse`

Represents the response for GetDailyMetricsTimeSeries.

| Property | Type | Description |
|----------|------|-------------|
| `timeSeries` | `TimeSeries` | The daily time series. |

### `InsightsValue`

Represents an insights value.

| Property | Type | Description |
|----------|------|-------------|
| `threshold` | `string` | Represents the threshold below which the actual value falls. |
| `value` | `string` | Represents the actual value. |

### `ListSearchKeywordImpressionsMonthlyResponse`

Represents the response for ListSearchKeywordImpressionsMonthly.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token indicating the last paginated result returned. This can be used by succeeding requests to... |
| `searchKeywordsCounts` | `array<SearchKeywordCount>` | Search terms which have been used to find a business. |

### `MultiDailyMetricTimeSeries`

Represents a list of tuples of DailyMetric-DailySubEntityType-TimeSeries.

| Property | Type | Description |
|----------|------|-------------|
| `dailyMetricTimeSeries` | `array<DailyMetricTimeSeries>` | List of DailyMetric-TimeSeries pairs. |

### `SearchKeywordCount`

Represents a single search keyword and its value.

| Property | Type | Description |
|----------|------|-------------|
| `insightsValue` | `InsightsValue` | One of either: 1) The sum of the number of unique users that used the keyword in a month, aggrega... |
| `searchKeyword` | `string` | The lower-cased string that the user entered. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeSeries`

Represents a timeseries.

| Property | Type | Description |
|----------|------|-------------|
| `datedValues` | `array<DatedValue>` | List of datapoints in the timeseries, where each datapoint is a date-value pair. |

