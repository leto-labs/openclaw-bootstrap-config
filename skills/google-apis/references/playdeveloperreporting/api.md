# Google Play Developer Reporting API - API Reference

**Version**: `v1beta1` | **Methods**: 21 | **Schemas**: 51

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `playdeveloperreporting.anomalies.list` | GET | `v1beta1/{+parent}/anomalies` | Lists anomalies in any of the datasets. |
| `playdeveloperreporting.vitals.crashrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.crashrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.anrrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.anrrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.lmkrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.lmkrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.excessivewakeuprate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.excessivewakeuprate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.stuckbackgroundwakelockrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.stuckbackgroundwakelockrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.slowstartrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.slowstartrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.slowrenderingrate.get` | GET | `v1beta1/{+name}` | Describes the properties of the metric set. |
| `playdeveloperreporting.vitals.slowrenderingrate.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metric set. |
| `playdeveloperreporting.vitals.errors.reports.search` | GET | `v1beta1/{+parent}/errorReports:search` | Searches all error reports received for an app. |
| `playdeveloperreporting.vitals.errors.issues.search` | GET | `v1beta1/{+parent}/errorIssues:search` | Searches all error issues in which reports have been grouped. |
| `playdeveloperreporting.vitals.errors.counts.get` | GET | `v1beta1/{+name}` | Describes the properties of the metrics set. |
| `playdeveloperreporting.vitals.errors.counts.query` | POST | `v1beta1/{+name}:query` | Queries the metrics in the metrics set. |
| `playdeveloperreporting.apps.fetchReleaseFilterOptions` | GET | `v1beta1/{+name}:fetchReleaseFilterOptions` | Describes filtering options for releases. |
| `playdeveloperreporting.apps.search` | GET | `v1beta1/apps:search` | Searches for Apps accessible by the user. |

### `playdeveloperreporting.anomalies.list`

**GET** `v1beta1/{+parent}/anomalies`

Lists anomalies in any of the datasets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent app for which anomalies were detected. Format: apps/{app} |
| `filter` | `string` | query | No | Optional. Filtering criteria for anomalies. For basic filter guidance, please check: https://google.aip.dev/160. **Su... |
| `pageSize` | `integer` | query | No | Optional. Maximum size of the returned data. If unspecified, at most 10 anomalies will be returned. The maximum value... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListErrorReports` call. Provide this to retrieve the subsequent pag... |

**Response**: `GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse`

```typescript
const res = await playdeveloperreporting.anomalies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.crashrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/crashRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1CrashRateMetricSet`

```typescript
const res = await playdeveloperreporting.crashrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.crashrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/crashRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.crashrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.anrrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/anrRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1AnrRateMetricSet`

```typescript
const res = await playdeveloperreporting.anrrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.anrrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/anrRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.anrrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.lmkrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/lmkRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1LmkRateMetricSet`

```typescript
const res = await playdeveloperreporting.lmkrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.lmkrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/lmkRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.lmkrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.excessivewakeuprate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/excessiveWakeupRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet`

```typescript
const res = await playdeveloperreporting.excessivewakeuprate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.excessivewakeuprate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/excessiveWakeupRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.excessivewakeuprate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.stuckbackgroundwakelockrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/stuckBackgroundWakelockRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet`

```typescript
const res = await playdeveloperreporting.stuckbackgroundwakelockrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.stuckbackgroundwakelockrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/stuckBackgroundWakelockRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.stuckbackgroundwakelockrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.slowstartrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/slowStartRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet`

```typescript
const res = await playdeveloperreporting.slowstartrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.slowstartrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/slowStartRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.slowstartrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.slowrenderingrate.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/slowRenderingRateMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet`

```typescript
const res = await playdeveloperreporting.slowrenderingrate.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.slowrenderingrate.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metric set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/slowRenderingRateMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse`

```typescript
const res = await playdeveloperreporting.slowrenderingrate.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.errors.reports.search`

**GET** `v1beta1/{+parent}/errorReports:search`

Searches all error reports received for an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the reports, indicating the application for which they were received. Format: apps/{app} |
| `filter` | `string` | query | No | Optional. A selection predicate to retrieve only a subset of the reports. For filtering basics, please check [AIP-160... |
| `interval.endTime.day` | `integer` | query | No | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without ... |
| `interval.endTime.hours` | `integer` | query | No | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allo... |
| `interval.endTime.minutes` | `integer` | query | No | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `interval.endTime.month` | `integer` | query | No | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `interval.endTime.nanos` | `integer` | query | No | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `interval.endTime.seconds` | `integer` | query | No | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60... |
| `interval.endTime.timeZone.id` | `string` | query | No | IANA Time Zone Database time zone. For example "America/New_York". |
| `interval.endTime.timeZone.version` | `string` | query | No | Optional. IANA Time Zone Database version number. For example "2019a". |
| `interval.endTime.utcOffset` | `string` | query | No | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be repre... |
| `interval.endTime.year` | `integer` | query | No | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |
| `interval.startTime.day` | `integer` | query | No | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without ... |
| `interval.startTime.hours` | `integer` | query | No | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allo... |
| `interval.startTime.minutes` | `integer` | query | No | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `interval.startTime.month` | `integer` | query | No | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `interval.startTime.nanos` | `integer` | query | No | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `interval.startTime.seconds` | `integer` | query | No | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60... |
| `interval.startTime.timeZone.id` | `string` | query | No | IANA Time Zone Database time zone. For example "America/New_York". |
| `interval.startTime.timeZone.version` | `string` | query | No | Optional. IANA Time Zone Database version number. For example "2019a". |
| `interval.startTime.utcOffset` | `string` | query | No | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be repre... |
| `interval.startTime.year` | `integer` | query | No | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of reports to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `SearchErrorReports` call. Provide this to retrieve the subsequent p... |

**Response**: `GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse`

```typescript
const res = await playdeveloperreporting.reports.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.errors.issues.search`

**GET** `v1beta1/{+parent}/errorIssues:search`

Searches all error issues in which reports have been grouped.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the error issues, indicating the application for which they were received. Format: apps/... |
| `filter` | `string` | query | No | Optional. A selection predicate to retrieve only a subset of the issues. Counts in the returned error issues will onl... |
| `interval.endTime.day` | `integer` | query | No | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without ... |
| `interval.endTime.hours` | `integer` | query | No | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allo... |
| `interval.endTime.minutes` | `integer` | query | No | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `interval.endTime.month` | `integer` | query | No | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `interval.endTime.nanos` | `integer` | query | No | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `interval.endTime.seconds` | `integer` | query | No | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60... |
| `interval.endTime.timeZone.id` | `string` | query | No | IANA Time Zone Database time zone. For example "America/New_York". |
| `interval.endTime.timeZone.version` | `string` | query | No | Optional. IANA Time Zone Database version number. For example "2019a". |
| `interval.endTime.utcOffset` | `string` | query | No | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be repre... |
| `interval.endTime.year` | `integer` | query | No | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |
| `interval.startTime.day` | `integer` | query | No | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without ... |
| `interval.startTime.hours` | `integer` | query | No | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allo... |
| `interval.startTime.minutes` | `integer` | query | No | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `interval.startTime.month` | `integer` | query | No | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `interval.startTime.nanos` | `integer` | query | No | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `interval.startTime.seconds` | `integer` | query | No | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60... |
| `interval.startTime.timeZone.id` | `string` | query | No | IANA Time Zone Database time zone. For example "America/New_York". |
| `interval.startTime.timeZone.version` | `string` | query | No | Optional. IANA Time Zone Database version number. For example "2019a". |
| `interval.startTime.utcOffset` | `string` | query | No | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be repre... |
| `interval.startTime.year` | `integer` | query | No | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |
| `orderBy` | `string` | query | No | Optional. Specifies a field that will be used to order the results. ** Supported dimensions:** * `errorReportCount`: ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of error issues to return. The service may return fewer than this value. If unspecified,... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent page. When paginating,... |
| `sampleErrorReportLimit` | `integer` | query | No | Optional. Number of sample error reports to return per ErrorIssue. If unspecified, 0 will be used. *Note:* currently ... |

**Response**: `GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse`

```typescript
const res = await playdeveloperreporting.issues.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.errors.counts.get`

**GET** `v1beta1/{+name}`

Describes the properties of the metrics set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the errors metric set. Format: apps/{app}/errorCountMetricSet |

**Response**: `GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet`

```typescript
const res = await playdeveloperreporting.counts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.vitals.errors.counts.query`

**POST** `v1beta1/{+name}:query`

Queries the metrics in the metrics set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. Format: apps/{app}/errorCountMetricSet |

**Request body**: `GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest`

**Response**: `GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse`

```typescript
const res = await playdeveloperreporting.counts.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.apps.fetchReleaseFilterOptions`

**GET** `v1beta1/{+name}:fetchReleaseFilterOptions`

Describes filtering options for releases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource, i.e. app the filtering options are for. Format: apps/{app} |

**Response**: `GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions`

```typescript
const res = await playdeveloperreporting.apps.fetchReleaseFilterOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

### `playdeveloperreporting.apps.search`

**GET** `v1beta1/apps:search`

Searches for Apps accessible by the user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of apps to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `SearchAccessibleApps` call. Provide this to retrieve the subsequent... |

**Response**: `GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse`

```typescript
const res = await playdeveloperreporting.apps.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/playdeveloperreporting`

---

## Schemas

### `ApiservingMcpMcpToolDataHandlingProfile`

Profile describing the data handling characteristics of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/data_handling"

| Property | Type | Description |
|----------|------|-------------|
| `inputDataAccessLevel` | `string` | // The data access level of the tool's inputs. |
| `outputDataAccessLevel` | `string` | The data access level of the tool's outputs. |

### `GooglePlayDeveloperReportingV1beta1Anomaly`

Represents an anomaly detected in a dataset. Our anomaly detection systems flag datapoints in a time series that fall outside of and expected range derived from historical data. Although those expected ranges have an upper and a lower bound, we only flag anomalies when the data has become unexpectedly _worse_, which usually corresponds to the case where the metric crosses the upper bound. Multiple contiguous datapoints in a timeline outside of the expected range will be grouped into a single anomaly. Therefore, an anomaly represents effectively a segment of a metric's timeline. The information stored in the `timeline_spec`, `dimensions` and `metric` can be used to fetch a full timeline with extended ragne for context. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GooglePlayDeveloperReportingV1beta1DimensionValue>` | Combination of dimensions in which the anomaly was detected. |
| `metric` | `GooglePlayDeveloperReportingV1beta1MetricValue` | Metric where the anomaly was detected, together with the anomalous value. |
| `metricSet` | `string` | Metric set resource where the anomaly was detected. |
| `name` | `string` | Identifier. Name of the anomaly. Format: apps/{app}/anomalies/{anomaly} |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Timeline specification that covers the anomaly period. |

### `GooglePlayDeveloperReportingV1beta1AnrRateMetricSet`

Singleton resource representing the set of ANR (Application not responding) metrics. This metric set contains ANRs data combined with usage data to produce a normalized metric independent of user counts. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. * HOURLY: metrics are aggregated in hourly intervals. The default and only supported timezone is `UTC`. **Supported metrics:** * `anrRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that experienced at least one ANR. * `anrRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `anrRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `anrRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `anrRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `userPerceivedAnrRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that experienced at least one user-perceived ANR. User-perceived ANRs are currently those of 'Input dispatching' type. * `userPerceivedAnrRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedAnrRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `userPerceivedAnrRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedAnrRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `anrRate` and `userPerceivedAnrRate` metrics. A user is counted in this metric if they used the app in the foreground during the aggregation period. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app. **Related metric sets:** * vitals.errors contains unnormalized version (absolute counts) of crashes. * vitals.errors contains normalized metrics about crashes, another stability metric.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/anrRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1App`

A representation of an app in the Play Store.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Title of the app. This is the latest title as set in the Play Console and may not yet have been r... |
| `name` | `string` | Identifier. The resource name. Format: apps/{app} |
| `packageName` | `string` | Package name of the app. Example: `com.example.app123`. |

### `GooglePlayDeveloperReportingV1beta1AppVersion`

Representations of an app version.

| Property | Type | Description |
|----------|------|-------------|
| `versionCode` | `string` | Optional. Numeric version code of the app version (set by the app's developer). |

### `GooglePlayDeveloperReportingV1beta1CrashRateMetricSet`

Singleton resource representing the set of crashrate metrics. This metric set contains crashes data combined with usage data to produce a normalized metric independent of user counts. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. * HOURLY: metrics are aggregated in hourly intervals. The default and only supported timezone is `UTC`. **Supported metrics:** * `crashRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that experienced at least one crash. * `crashRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `crashRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `crashRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `crashRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `userPerceivedCrashRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that experienced at least one crash while they were actively using your app (a user-perceived crash). An app is considered to be in active use if it is displaying any activity or executing any foreground service. * `userPerceivedCrashRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedCrashRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `userPerceivedCrashRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedCrashRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. Not supported in HOURLY granularity. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `crashRate` and `userPerceivedCrashRate` metrics. A user is counted in this metric if they used the app actively during the aggregation period. An app is considered to be in active use if it is displaying any activity or executing any foreground service. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app. **Related metric sets:** * vitals.errors contains unnormalized version (absolute counts) of crashes. * vitals.errors contains normalized metrics about ANRs, another stability metric.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/crashRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval`

Represents the confidence interval of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `lowerBound` | `GoogleTypeDecimal` | The confidence interval's lower bound. |
| `upperBound` | `GoogleTypeDecimal` | The confidence interval's upper bound. |

### `GooglePlayDeveloperReportingV1beta1DeviceId`

Identifier of a device.

| Property | Type | Description |
|----------|------|-------------|
| `buildBrand` | `string` | Value of Build.BRAND. |
| `buildDevice` | `string` | Value of Build.DEVICE. |

### `GooglePlayDeveloperReportingV1beta1DeviceModelSummary`

Summary of a device

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `GooglePlayDeveloperReportingV1beta1DeviceId` | Identifier of the device. |
| `deviceUri` | `string` | Link to the device in Play Device Catalog. |
| `marketingName` | `string` | Display name of the device. |

### `GooglePlayDeveloperReportingV1beta1DimensionValue`

Represents the value of a single dimension.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` | Name of the dimension. |
| `int64Value` | `string` | Actual value, represented as an int64. |
| `stringValue` | `string` | Actual value, represented as a string. |
| `valueLabel` | `string` | Optional. Human-friendly label for the value, always in English. For example, 'Spain' for the 'ES... |

### `GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet`

Singleton resource representing the set of error report metrics. This metric set contains un-normalized error report counts. **Supported aggregation periods:** * HOURLY: metrics are aggregated in hourly intervals. The default and only supported timezone is `UTC`. * DAILY: metrics are aggregated in calendar date intervals. The default and only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `errorReportCount` (`google.type.Decimal`): Absolute count of individual error reports that have been received for an app. * `distinctUsers` (`google.type.Decimal`): Count of distinct users for which reports have been received. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. This value is not rounded, however it may be an approximation. **Required dimension:** This dimension must be always specified in all requests in the `dimensions` field in query requests. * `reportType` (string): the type of error. The value should correspond to one of the possible values in ErrorType. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceType` (string): identifier of the device's form factor, e.g., PHONE. * `issueId` (string): the id an error was assigned to. The value should correspond to the `{issue}` component of the issue name. * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app. **Related metric sets:** * vitals.errors.counts contains normalized metrics about Crashes, another stability metric. * vitals.errors.counts contains normalized metrics about ANRs, another stability metric.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/errorCountMetricSet |

### `GooglePlayDeveloperReportingV1beta1ErrorIssue`

A group of related ErrorReports received for an app. Similar error reports are grouped together into issues with a likely identical root cause. **Please note:** this resource is currently in Alpha. There could be changes to the issue grouping that would result in similar but more recent error reports being assigned to different issues. This could also cause some issues disappearing entirely and being replaced by new ones. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<GooglePlayDeveloperReportingV1beta1IssueAnnotation>` | List of annotations for an issue. Annotations provide additional information that may help in dia... |
| `cause` | `string` | Cause of the issue. Depending on the type this can be either: * APPLICATION_NOT_RESPONDING: the t... |
| `distinctUsers` | `string` | An estimate of the number of unique users who have experienced this issue (only considering occur... |
| `distinctUsersPercent` | `GoogleTypeDecimal` | An estimated percentage of users affected by any issue that are affected by this issue (only cons... |
| `errorReportCount` | `string` | The total number of error reports in this issue (only considering occurrences matching the filter... |
| `firstAppVersion` | `GooglePlayDeveloperReportingV1beta1AppVersion` | The earliest (inclusive) app version appearing in this ErrorIssue in the requested time period (o... |
| `firstOsVersion` | `GooglePlayDeveloperReportingV1beta1OsVersion` | The smallest OS version in which this error cluster has occurred in the requested time period (on... |
| `issueUri` | `string` | Link to the issue in Android vitals in the Play Console. |
| `lastAppVersion` | `GooglePlayDeveloperReportingV1beta1AppVersion` | The latest (inclusive) app version appearing in this ErrorIssue in the requested time period (onl... |
| `lastErrorReportTime` | `string` | Start of the hour during which the last error report in this issue occurred. |
| `lastOsVersion` | `GooglePlayDeveloperReportingV1beta1OsVersion` | The latest OS version in which this error cluster has occurred in the requested time period (only... |
| `location` | `string` | Location where the issue happened. Depending on the type this can be either: * APPLICATION_NOT_RE... |
| `name` | `string` | Identifier. The resource name of the issue. Format: apps/{app}/{issue} |
| `sampleErrorReports` | `array<string>` | Output only. Sample error reports which belong to this ErrorIssue. *Note:* currently a maximum of... |
| `type` | `string` | Type of the errors grouped in this issue. |

### `GooglePlayDeveloperReportingV1beta1ErrorReport`

An error report received for an app. There reports are produced by the Android platform code when a (potentially fatal) error condition is detected. Identical reports from many users will be deduplicated and coalesced into a single ErrorReport. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `appVersion` | `GooglePlayDeveloperReportingV1beta1AppVersion` | The app version on which an event in this error report occurred on. |
| `deviceModel` | `GooglePlayDeveloperReportingV1beta1DeviceModelSummary` | A device model on which an event in this error report occurred on. |
| `eventTime` | `string` | Start of the hour during which the latest event in this error report occurred. |
| `issue` | `string` | The issue this report was associated with. **Please note:** this resource is currently in Alpha. ... |
| `name` | `string` | Identifier. The resource name of the report. Format: apps/{app}/{report} |
| `osVersion` | `GooglePlayDeveloperReportingV1beta1OsVersion` | The OS version on which an event in this error report occurred on. |
| `reportText` | `string` | Textual representation of the error report. These textual reports are produced by the platform. T... |
| `type` | `string` | Type of the error for which this report was generated. |
| `vcsInformation` | `string` | Version control system information from BUNDLE-METADATA/version-control-info.textproto or META-IN... |

### `GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet`

Singleton resource representing the set of Excessive Weakeups metrics. This metric set contains AlarmManager wakeup counts data combined with process state data to produce a normalized metric independent of user counts. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `excessiveWakeupRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that had more than 10 wakeups per hour. * `excessiveWakeupRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `excessiveWakeupRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `excessiveWakeupRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `excessiveWakeupRate` metric. A user is counted in this metric if they app was doing any work on the device, i.e., not just active foreground usage but also background work. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/excessiveWakeupRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1FreshnessInfo`

Represents the latest available time that can be requested in a TimelineSpec. Different aggregation periods have different freshness. For example, `DAILY` aggregation may lag behind `HOURLY` in cases where such aggregation is computed only once at the end of the day.

| Property | Type | Description |
|----------|------|-------------|
| `freshnesses` | `array<GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness>` | Information about data freshness for every supported aggregation period. This field has set seman... |

### `GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness`

Information about data freshness for a single aggregation period.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | Aggregation period for which data is available. |
| `latestEndTime` | `GoogleTypeDateTime` | Latest end time for which data is available, for the aggregation period. The time is specified in... |

### `GooglePlayDeveloperReportingV1beta1IssueAnnotation`

Representation of an annotation message for an issue.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Contains the contents of the annotation message. |
| `category` | `string` | Category that the annotation belongs to. An annotation will belong to a single category. Example ... |
| `title` | `string` | Title for the annotation. |

### `GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse`

Response with a list of anomalies in datasets.

| Property | Type | Description |
|----------|------|-------------|
| `anomalies` | `array<GooglePlayDeveloperReportingV1beta1Anomaly>` | Anomalies that were found. |
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |

### `GooglePlayDeveloperReportingV1beta1LmkRateMetricSet`

Singleton resource representing the set of LMK (Low Memory Kill) metrics. This metric set contains LMKs data combined with usage data to produce a normalized metric independent of user counts. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `userPerceivedLmkRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that experienced at least one LMK while they were actively using your app (a user-perceived LMK). An app is considered to be in active use if it is displaying any activity or executing any foreground service. * `userPerceivedLmkRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedLmkRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `userPerceivedLmkRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `userPerceivedLmkRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `userPerceivedLmkRate` metrics. A user is counted in this metric if they used the app in the foreground during the aggregation period. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app. **Related metric sets:** * vitals.errors contains normalized metrics about crashes, another stability metric. * vitals.errors contains normalized metrics about ANRs, another stability metric.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/lmkRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1MetricValue`

Represents the value of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `decimalValue` | `GoogleTypeDecimal` | Actual value, represented as a decimal number. |
| `decimalValueConfidenceInterval` | `GooglePlayDeveloperReportingV1beta1DecimalConfidenceInterval` | Confidence interval of a value that is of type `type.Decimal`. |
| `metric` | `string` | Name of the metric. |

### `GooglePlayDeveloperReportingV1beta1MetricsRow`

Represents a row of dimensions and metrics.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | Optional. Granularity of the aggregation period of the row. |
| `dimensions` | `array<GooglePlayDeveloperReportingV1beta1DimensionValue>` | Optional. Dimension columns in the row. |
| `metrics` | `array<GooglePlayDeveloperReportingV1beta1MetricValue>` | Optional. Metric columns in the row. |
| `startTime` | `GoogleTypeDateTime` | Optional. Starting date (and time for hourly aggregation) of the period covered by this row. |

### `GooglePlayDeveloperReportingV1beta1OsVersion`

Representation of an OS version.

| Property | Type | Description |
|----------|------|-------------|
| `apiLevel` | `string` | Optional. Numeric version code of the OS - API level |

### `GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest`

Request message for QueryAnrRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the metrics by. **Supported dimensions:** * `apiLevel` (string): th... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `anrRate` (`google.type.Decimal`): Perce... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. **Supported ... |

### `GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse`

Response message for QueryAnrRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest`

Request message for QueryCrashRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the metrics by. **Supported dimensions:** * `apiLevel` (string): th... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `crashRate` (`google.type.Decimal`): Per... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. **Supported ... |

### `GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse`

Response message for QueryCrashRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest`

Request message for QueryErrorCountMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (string): the A... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `errorReportCount` (`google.type.Decimal... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |

### `GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse`

Error counts query response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows. |

### `GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest`

Request message for QueryExcessiveWakeupRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (string): the A... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `excessiveWakeupRate` (`google.type.Deci... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. The only sup... |

### `GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse`

Response message for QueryExcessiveWakeupRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetRequest`

Request message for QueryLmkRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the metrics by. **Supported dimensions:** * `apiLevel` (string): th... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `userPerceivedLmkRate` (`google.type.Dec... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. **Supported ... |

### `GooglePlayDeveloperReportingV1beta1QueryLmkRateMetricSetResponse`

Response message for QueryLmkRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest`

Request message for QuerySlowRenderingRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (string): the A... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `slowRenderingRate20Fps` (`google.type.D... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. The only sup... |

### `GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse`

Response message for QuerySlowRenderingRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest`

Request message for QuerySlowStartRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (string): the A... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `slowStartRate` (`google.type.Decimal`):... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. The only sup... |

### `GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse`

Response message for QuerySlowStartRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest`

Request message for QueryStuckBackgroundWakelockRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<string>` | Optional. Dimensions to slice the data by. **Supported dimensions:** * `apiLevel` (string): the A... |
| `filter` | `string` | Optional. Filters to apply to data. The filtering expression follows [AIP-160](https://google.aip... |
| `metrics` | `array<string>` | Optional. Metrics to aggregate. **Supported metrics:** * `stuckBgWakelockRate` (`google.type.Deci... |
| `pageSize` | `integer` | Optional. Maximum size of the returned data. If unspecified, at most 1000 rows will be returned. ... |
| `pageToken` | `string` | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent pa... |
| `timelineSpec` | `GooglePlayDeveloperReportingV1beta1TimelineSpec` | Optional. Specification of the timeline aggregation parameters. **Supported aggregation periods:*... |
| `userCohort` | `string` | Optional. User view to select. The output data will correspond to the selected view. The only sup... |

### `GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse`

Response message for QueryStuckBackgroundWakelockRateMetricSet.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |
| `rows` | `array<GooglePlayDeveloperReportingV1beta1MetricsRow>` | Returned rows of data. |

### `GooglePlayDeveloperReportingV1beta1Release`

A representation of an app release.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Readable identifier of the release. |
| `versionCodes` | `array<string>` | The version codes contained in this release. |

### `GooglePlayDeveloperReportingV1beta1ReleaseFilterOptions`

A set of filtering options for releases and version codes specific to an app.

| Property | Type | Description |
|----------|------|-------------|
| `tracks` | `array<GooglePlayDeveloperReportingV1beta1Track>` | List of tracks to filter releases over. Provides the grouping of version codes under releases and... |

### `GooglePlayDeveloperReportingV1beta1SearchAccessibleAppsResponse`

Response message for SearchAccessibleApps.

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<GooglePlayDeveloperReportingV1beta1App>` | The apps accessible to the user calling the endpoint. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse`

Response with a paginated list of issues that matched the request.

| Property | Type | Description |
|----------|------|-------------|
| `errorIssues` | `array<GooglePlayDeveloperReportingV1beta1ErrorIssue>` | ErrorIssues that were found. |
| `nextPageToken` | `string` | Continuation token to fetch the next page of data. |

### `GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse`

Response with a paginated list of error reports matching the search query.

| Property | Type | Description |
|----------|------|-------------|
| `errorReports` | `array<GooglePlayDeveloperReportingV1beta1ErrorReport>` | Error reports that were found. |
| `nextPageToken` | `string` | Page token to fetch the next page of reports. |

### `GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet`

Singleton resource representing the set of Slow Rendering metrics. This metric set contains low-level rendering data captured by SurafeFlinger. Sessions are evaluated based on the present-to-present histogram of frames handled by any SurfaceFlinger layer owned by the app. A slow session is a session where more than 25% of frames for the session did not meet the metric's target frame rate (either 20fps, or 30fps). *NOTE:* This metric set is only available for games. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `slowRenderingRate20Fps` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that had slow rendering. * `slowRenderingRate20Fps7dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowRenderingRate20Fps` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `slowRenderingRate20Fps28dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowRenderingRate20Fps` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `slowRenderingRate30Fps` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that had slow rendering. * `slowRenderingRate30Fps7dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowRenderingRate30Fps` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `slowRenderingRate30Fps28dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowRenderingRate30Fps` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `slowRenderingRate20Fps`/`slowRenderingRate30Fps` metric. A user is counted in this metric if their app rendered any frames. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/slowRenderingRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet`

Singleton resource representing the set of Slow Start metrics. This metric set contains Activity start duration data. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `slowStartRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that had a slow start. * `slowStartRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowStartRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `slowStartRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `slowStartRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `slowStartRate` metric. A user is counted in this metric if their app was launched in the device. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Required dimension:** This dimension must be specified with each request for the request to be valid. * `startType` (string): the type of start that was measured. Valid types are `HOT`, `WARM` and `COLD`. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/slowStartRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet`

Singleton resource representing the set of Stuck Background Wakelocks metrics. This metric set contains PowerManager wakelock duration data combined with process state data to produce a normalized metric independent of user counts. **Supported aggregation periods:** * DAILY: metrics are aggregated in calendar date intervals. Due to historical constraints, the only supported timezone is `America/Los_Angeles`. **Supported metrics:** * `stuckBgWakelockRate` (`google.type.Decimal`): Percentage of distinct users in the aggregation period that had a wakelock held in the background for longer than 1 hour. * `stuckBgWakelockRate7dUserWeighted` (`google.type.Decimal`): Rolling average value of `stuckBgWakelockRate` in the last 7 days. The daily values are weighted by the count of distinct users for the day. * `stuckBgWakelockRate28dUserWeighted` (`google.type.Decimal`): Rolling average value of `stuckBgWakelockRate` in the last 28 days. The daily values are weighted by the count of distinct users for the day. * `distinctUsers` (`google.type.Decimal`): Count of distinct users in the aggregation period that were used as normalization value for the `stuckBgWakelockRate` metric. A user is counted in this metric if their app was doing any work on the device, i.e., not just active foreground usage but also background work. Care must be taken not to aggregate this count further, as it may result in users being counted multiple times. The value is rounded to the nearest multiple of 10, 100, 1,000 or 1,000,000, depending on the magnitude of the value. **Supported dimensions:** * `apiLevel` (string): the API level of Android that was running on the user's device, e.g., 26. * `versionCode` (int64): version of the app that was running on the user's device. * `deviceModel` (string): unique identifier of the user's device model. The form of the identifier is 'deviceBrand/device', where deviceBrand corresponds to Build.BRAND and device corresponds to Build.DEVICE, e.g., google/coral. * `deviceBrand` (string): unique identifier of the user's device brand, e.g., google. * `deviceType` (string): the type (also known as form factor) of the user's device, e.g., PHONE. * `countryCode` (string): the country or region of the user's device based on their IP address, represented as a 2-letter ISO-3166 code (e.g. US for the United States). * `deviceRamBucket` (int64): RAM of the device, in MB, in buckets (3GB, 4GB, etc.). * `deviceSocMake` (string): Make of the device's primary system-on-chip, e.g., Samsung. [Reference](https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER) * `deviceSocModel` (string): Model of the device's primary system-on-chip, e.g., "Exynos 2100". [Reference](https://developer.android.com/reference/android/os/Build#SOC_MODEL) * `deviceCpuMake` (string): Make of the device's CPU, e.g., Qualcomm. * `deviceCpuModel` (string): Model of the device's CPU, e.g., "Kryo 240". * `deviceGpuMake` (string): Make of the device's GPU, e.g., ARM. * `deviceGpuModel` (string): Model of the device's GPU, e.g., Mali. * `deviceGpuVersion` (string): Version of the device's GPU, e.g., T750. * `deviceVulkanVersion` (string): Vulkan version of the device, e.g., "4198400". * `deviceGlEsVersion` (string): OpenGL ES version of the device, e.g., "196610". * `deviceScreenSize` (string): Screen size of the device, e.g., NORMAL, LARGE. * `deviceScreenDpi` (string): Screen density of the device, e.g., mdpi, hdpi. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessInfo` | `GooglePlayDeveloperReportingV1beta1FreshnessInfo` | Summary about data freshness in this resource. |
| `name` | `string` | Identifier. The resource name. Format: apps/{app}/stuckBackgroundWakelockRateMetricSet |

### `GooglePlayDeveloperReportingV1beta1TimelineSpec`

Specification of the time-related aggregation parameters of a timeline. Timelines have an aggregation period (`DAILY`, `HOURLY`, etc) which defines how events are aggregated in metrics. The points in a timeline are defined by the starting DateTime of the aggregation period. The duration is implicit in the AggregationPeriod. Hourly aggregation periods, when supported by a metric set, are always specified in UTC to avoid ambiguities around daylight saving time transitions, where an hour is skipped when adopting DST, and repeated when abandoning DST. For example, the timestamp '2021-11-07 01:00:00 America/Los_Angeles' is ambiguous since it can correspond to '2021-11-07 08:00:00 UTC' or '2021-11-07 09:00:00 UTC'. Daily aggregation periods require specifying a timezone which will determine the precise instants of the start and the end of the day. Not all metric sets support all timezones, so make sure to check which timezones are supported by the metric set you want to query.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationPeriod` | `string` | Optional. Type of the aggregation period of the datapoints in the timeline. Intervals are identif... |
| `endTime` | `GoogleTypeDateTime` | Optional. Ending datapoint of the timeline (exclusive). See start_time for restrictions. The time... |
| `startTime` | `GoogleTypeDateTime` | Optional. Starting datapoint of the timeline (inclusive). Must be aligned to the aggregation peri... |

### `GooglePlayDeveloperReportingV1beta1Track`

A representation of a Play release track.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Readable identifier of the track. |
| `servingReleases` | `array<GooglePlayDeveloperReportingV1beta1Release>` | Represents all active releases in the track. |
| `type` | `string` | The type of the track. |

### `GoogleTypeDateTime`

Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying... |
| `hours` | `integer` | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An AP... |
| `minutes` | `integer` | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `month` | `integer` | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `nanos` | `integer` | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `seconds` | `integer` | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API ma... |
| `timeZone` | `GoogleTypeTimeZone` | Time zone. |
| `utcOffset` | `string` | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of ... |
| `year` | `integer` | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |

### `GoogleTypeDecimal`

A representation of a decimal value, such as 2.5. Clients may convert values into language-native decimal formats, such as Java's [BigDecimal](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html) or Python's [decimal.Decimal](https://docs.python.org/3/library/decimal.html).

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The decimal value, as a string. The string representation consists of an optional sign, `+` (`U+0... |

### `GoogleTypeTimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

