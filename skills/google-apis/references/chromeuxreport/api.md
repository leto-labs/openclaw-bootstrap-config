# Chrome UX Report API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `chromeuxreport.records.queryRecord` | POST | `v1/records:queryRecord` | Queries the Chrome User Experience for a single `record` for a given site. Returns a `record` tha... |
| `chromeuxreport.records.queryHistoryRecord` | POST | `v1/records:queryHistoryRecord` | Queries the Chrome User Experience Report for a timeseries `history record` for a given site. Ret... |

### `chromeuxreport.records.queryRecord`

**POST** `v1/records:queryRecord`

Queries the Chrome User Experience for a single `record` for a given site. Returns a `record` that contains one or more `metrics` corresponding to performance data about the requested site.

**Request body**: `QueryRequest`

**Response**: `QueryResponse`

```typescript
const res = await chromeuxreport.records.queryRecord({
  // parameters
});
```

---

### `chromeuxreport.records.queryHistoryRecord`

**POST** `v1/records:queryHistoryRecord`

Queries the Chrome User Experience Report for a timeseries `history record` for a given site. Returns a `history record` that contains one or more `metric timeseries` corresponding to performance data about the requested site.

**Request body**: `QueryHistoryRequest`

**Response**: `QueryHistoryResponse`

```typescript
const res = await chromeuxreport.records.queryHistoryRecord({
  // parameters
});
```

---

## Schemas

### `Bin`

A bin is a discrete portion of data spanning from start to end, or if no end is given, then from start to +inf. A bin's start and end values are given in the value type of the metric it represents. For example, "first contentful paint" is measured in milliseconds and exposed as ints, therefore its metric bins will use int32s for its start and end types. However, "cumulative layout shift" is measured in unitless decimals and is exposed as a decimal encoded as a string, therefore its metric bins will use strings for its value type.

| Property | Type | Description |
|----------|------|-------------|
| `density` | `any` | The proportion of users that experienced this bin's value for the given metric. |
| `end` | `any` | End is the end of the data bin. If end is not populated, then the bin has no end and is valid fro... |
| `start` | `any` | Start is the beginning of the data bin. |

### `CollectionPeriod`

The collection period is a date range which includes the `first` and `last` day.

| Property | Type | Description |
|----------|------|-------------|
| `firstDate` | `Date` | The first day in the collection period, inclusive. |
| `lastDate` | `Date` | The last day in the collection period, inclusive. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `FractionTimeseries`

For enum metrics, provides fraction timeseries which add up to approximately 1.0 per entry (k-th element into the repeated fractions field for any k <= len) across fraction_timeseries.

| Property | Type | Description |
|----------|------|-------------|
| `fractions` | `array<number>` | Values between 0.0 and 1.0 (inclusive) and NaN. |

### `HistoryKey`

Key defines all the dimensions that identify this record as unique.

| Property | Type | Description |
|----------|------|-------------|
| `formFactor` | `string` | The form factor is the device class that all users used to access the site for this record. If th... |
| `origin` | `string` | Origin specifies the origin that this record is for. Note: When specifying an origin, data for lo... |
| `url` | `string` | Url specifies a specific url that this record is for. This url should be normalized, following th... |

### `HistoryRecord`

HistoryRecord is a timeseries of Chrome UX Report data. It contains user experience statistics for a single url pattern and a set of dimensions.

| Property | Type | Description |
|----------|------|-------------|
| `collectionPeriods` | `array<CollectionPeriod>` | The collection periods indicate when each of the data points reflected in the time series data in... |
| `key` | `HistoryKey` | Key defines all of the unique querying parameters needed to look up a user experience history rec... |
| `metrics` | `object` | Metrics is the map of user experience time series data available for the record defined in the ke... |

### `Key`

Key defines all the dimensions that identify this record as unique.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveConnectionType` | `string` | The effective connection type is the general connection class that all users experienced for this... |
| `formFactor` | `string` | The form factor is the device class that all users used to access the site for this record. If th... |
| `origin` | `string` | Origin specifies the origin that this record is for. Note: When specifying an origin, data for lo... |
| `url` | `string` | Url specifies a specific url that this record is for. Note: When specifying a "url" only data for... |

### `Metric`

A `metric` is a set of user experience data for a single web performance metric, like "first contentful paint". It contains a summary histogram of real world Chrome usage as a series of `bins`.

| Property | Type | Description |
|----------|------|-------------|
| `fractions` | `object` | For enum metrics, provides fractions which add up to approximately 1.0. |
| `histogram` | `array<Bin>` | The histogram of user experiences for a metric. The histogram will have at least one bin and the ... |
| `percentiles` | `Percentiles` | Commonly useful percentiles of the Metric. The value type for the percentiles will be the same as... |

### `MetricTimeseries`

A `metric timeseries` is a set of user experience data for a single web performance metric, like "first contentful paint". It contains a summary histogram of real world Chrome usage as a series of `bins`, where each bin has density values for a particular time period.

| Property | Type | Description |
|----------|------|-------------|
| `fractionTimeseries` | `object` | Mapping from labels to timeseries of fractions attributed to this label. |
| `histogramTimeseries` | `array<TimeseriesBin>` | The histogram of user experiences for a metric. The histogram will have at least one bin and the ... |
| `percentilesTimeseries` | `TimeseriesPercentiles` | Commonly useful percentiles of the Metric. The value type for the percentiles will be the same as... |

### `Percentiles`

Percentiles contains synthetic values of a metric at a given statistical percentile. These are used for estimating a metric's value as experienced by a percentage of users out of the total number of users.

| Property | Type | Description |
|----------|------|-------------|
| `p75` | `any` | 75% of users experienced the given metric at or below this value. |

### `QueryHistoryRequest`

Request payload sent by a physical web client. This request includes all necessary context to load a particular user experience history record.

| Property | Type | Description |
|----------|------|-------------|
| `collectionPeriodCount` | `integer` | The number of collection periods to return. If not specified, the default is 25. If present, must... |
| `formFactor` | `string` | The form factor is a query dimension that specifies the device class that the record's data shoul... |
| `metrics` | `array<string>` | The metrics that should be included in the response. If none are specified then any metrics found... |
| `origin` | `string` | The url pattern "origin" refers to a url pattern that is the origin of a website. Examples: "http... |
| `url` | `string` | The url pattern "url" refers to a url pattern that is any arbitrary url. Examples: "https://examp... |

### `QueryHistoryResponse`

Response payload sent back to a physical web client. This response contains the record found based on the identiers present in a `QueryHistoryRequest`. The returned response will have a history record, and sometimes details on normalization actions taken on the request that were necessary to make the request successful.

| Property | Type | Description |
|----------|------|-------------|
| `record` | `HistoryRecord` | The record that was found. |
| `urlNormalizationDetails` | `UrlNormalization` | These are details about automated normalization actions that were taken in order to make the requ... |

### `QueryRequest`

Request payload sent by a physical web client. This request includes all necessary context to load a particular user experience record.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveConnectionType` | `string` | The effective connection type is a query dimension that specifies the effective network class tha... |
| `formFactor` | `string` | The form factor is a query dimension that specifies the device class that the record's data shoul... |
| `metrics` | `array<string>` | The metrics that should be included in the response. If none are specified then any metrics found... |
| `origin` | `string` | The url pattern "origin" refers to a url pattern that is the origin of a website. Examples: "http... |
| `url` | `string` | The url pattern "url" refers to a url pattern that is any arbitrary url. Examples: "https://examp... |

### `QueryResponse`

Response payload sent back to a physical web client. This response contains the record found based on the identiers present in a `QueryRequest`. The returned response will have a record, and sometimes details on normalization actions taken on the request that were necessary to make the request successful.

| Property | Type | Description |
|----------|------|-------------|
| `record` | `Record` | The record that was found. |
| `urlNormalizationDetails` | `UrlNormalization` | These are details about automated normalization actions that were taken in order to make the requ... |

### `Record`

Record is a single Chrome UX report data record. It contains use experience statistics for a single url pattern and set of dimensions.

| Property | Type | Description |
|----------|------|-------------|
| `collectionPeriod` | `CollectionPeriod` | The collection period indicates when the data reflected in this record was collected. |
| `key` | `Key` | Key defines all of the unique querying parameters needed to look up a user experience record. |
| `metrics` | `object` | Metrics is the map of user experience data available for the record defined in the key field. Met... |

### `TimeseriesBin`

A bin is a discrete portion of data spanning from start to end, or if no end is given, then from start to +inf. A bin's start and end values are given in the value type of the metric it represents. For example, "first contentful paint" is measured in milliseconds and exposed as ints, therefore its metric bins will use int32s for its start and end types. However, "cumulative layout shift" is measured in unitless decimals and is exposed as a decimal encoded as a string, therefore its metric bins will use strings for its value type.

| Property | Type | Description |
|----------|------|-------------|
| `densities` | `array<number>` | The proportion of users that experienced this bin's value for the given metric in a given collect... |
| `end` | `any` | End is the end of the data bin. If end is not populated, then the bin has no end and is valid fro... |
| `start` | `any` | Start is the beginning of the data bin. |

### `TimeseriesPercentiles`

Percentiles contains synthetic values of a metric at a given statistical percentile. These are used for estimating a metric's value as experienced by a percentage of users out of the total number of users.

| Property | Type | Description |
|----------|------|-------------|
| `p75s` | `array<any>` | 75% of users experienced the given metric at or below this value. The length of this list of dens... |

### `UrlNormalization`

Object representing the normalization actions taken to normalize a url to achieve a higher chance of successful lookup. These are simple automated changes that are taken when looking up the provided `url_patten` would be known to fail. Complex actions like following redirects are not handled.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedUrl` | `string` | The URL after any normalization actions. This is a valid user experience URL that could reasonabl... |
| `originalUrl` | `string` | The original requested URL prior to any normalization actions. |

