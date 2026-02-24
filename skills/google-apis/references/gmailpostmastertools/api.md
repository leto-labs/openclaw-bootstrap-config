# Gmail Postmaster Tools API - API Reference

**Version**: `v2` | **Methods**: 5 | **Schemas**: 24

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gmailpostmastertools.domains.get` | GET | `v2/{+name}` | Retrieves detailed information about a domain registered by you. Returns NOT_FOUND if the domain ... |
| `gmailpostmastertools.domains.list` | GET | `v2/domains` | Retrieves a list of all domains registered by you, along with their corresponding metadata. The o... |
| `gmailpostmastertools.domains.getComplianceStatus` | GET | `v2/{+name}` | Retrieves the compliance status for a given domain. Returns PERMISSION_DENIED if you don't have p... |
| `gmailpostmastertools.domains.domainStats.query` | POST | `v2/{+parent}/domainStats:query` | Retrieves a list of domain statistics for a given domain and time period. Returns statistics only... |
| `gmailpostmastertools.domainStats.batchQuery` | POST | `v2/domainStats:batchQuery` | Executes a batch of QueryDomainStats requests for multiple domains. Returns PERMISSION_DENIED if ... |

### `gmailpostmastertools.domains.get`

**GET** `v2/{+name}`

Retrieves detailed information about a domain registered by you. Returns NOT_FOUND if the domain is not registered by you. Domain represents the metadata of a domain that has been registered within the system and linked to a user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the domain. Format: `domains/{domain_name}`, where domain_name is the fully qualified ... |

**Response**: `Domain`

```typescript
const res = await gmailpostmastertools.domains.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/postmaster`
- `https://www.googleapis.com/auth/postmaster.domain`

---

### `gmailpostmastertools.domains.list`

**GET** `v2/domains`

Retrieves a list of all domains registered by you, along with their corresponding metadata. The order of domains in the response is unspecified and non-deterministic. Newly registered domains will not necessarily be added to the end of this list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer domains than requested. If unspecified, the default value for ... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListDomainsResponse`

```typescript
const res = await gmailpostmastertools.domains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/postmaster`
- `https://www.googleapis.com/auth/postmaster.domain`

---

### `gmailpostmastertools.domains.getComplianceStatus`

**GET** `v2/{+name}`

Retrieves the compliance status for a given domain. Returns PERMISSION_DENIED if you don't have permission to access compliance status for the domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the domain's compliance status to retrieve. Format: `domains/{domain_id}/complianceSta... |

**Response**: `DomainComplianceStatus`

```typescript
const res = await gmailpostmastertools.domains.getComplianceStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/postmaster`
- `https://www.googleapis.com/auth/postmaster.traffic.readonly`

---

### `gmailpostmastertools.domains.domainStats.query`

**POST** `v2/{+parent}/domainStats:query`

Retrieves a list of domain statistics for a given domain and time period. Returns statistics only for dates where data is available. Returns PERMISSION_DENIED if you don't have permission to access DomainStats for the domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the stats are queried. Format: domains/{domain} |

**Request body**: `QueryDomainStatsRequest`

**Response**: `QueryDomainStatsResponse`

```typescript
const res = await gmailpostmastertools.domainStats.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/postmaster`
- `https://www.googleapis.com/auth/postmaster.traffic.readonly`

---

### `gmailpostmastertools.domainStats.batchQuery`

**POST** `v2/domainStats:batchQuery`

Executes a batch of QueryDomainStats requests for multiple domains. Returns PERMISSION_DENIED if you don't have permission to access DomainStats for any of the requested domains.

**Request body**: `BatchQueryDomainStatsRequest`

**Response**: `BatchQueryDomainStatsResponse`

```typescript
const res = await gmailpostmastertools.domainStats.batchQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/postmaster`
- `https://www.googleapis.com/auth/postmaster.traffic.readonly`

---

## Schemas

### `BaseMetric`

Specifies the base metric to query, which can be a predefined standard metric or a user-defined custom metric (if supported in the future).

| Property | Type | Description |
|----------|------|-------------|
| `standardMetric` | `string` | A predefined standard metric. |

### `BatchQueryDomainStatsRequest`

Request message for BatchQueryDomainStats.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<QueryDomainStatsRequest>` | Required. A list of individual query requests. Each request can be for a different domain. A maxi... |

### `BatchQueryDomainStatsResponse`

Response message for BatchQueryDomainStats.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<BatchQueryDomainStatsResult>` | A list of responses, one for each query in the BatchQueryDomainStatsRequest. The order of respons... |

### `BatchQueryDomainStatsResult`

Represents the result of a single QueryDomainStatsRequest within a batch.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The error status if the individual query failed. |
| `response` | `QueryDomainStatsResponse` | The successful response for the individual query. |

### `ComplianceRowData`

Data for a single row of the compliance status table.

| Property | Type | Description |
|----------|------|-------------|
| `requirement` | `string` | The compliance requirement. |
| `status` | `ComplianceStatus` | The compliance status for the requirement. |

### `ComplianceStatus`

The status of a sender compliance requirement.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | Output only. The compliance status. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DateList`

A set of specific dates.

| Property | Type | Description |
|----------|------|-------------|
| `dates` | `array<Date>` | Required. The list of specific dates for which to retrieve data. |

### `DateRange`

A single date range defined by a start and end date.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `Date` | Required. The inclusive end date of the date range. |
| `start` | `Date` | Required. The inclusive start date of the date range. |

### `DateRanges`

A set of date ranges.

| Property | Type | Description |
|----------|------|-------------|
| `dateRanges` | `array<DateRange>` | Required. The list of date ranges for which to retrieve data. |

### `Domain`

Information about a domain registered by the user.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Immutable. The timestamp at which the domain was added to the user's account. |
| `lastVerifyTime` | `string` | The timestamp at which the domain was last verified by the user. |
| `name` | `string` | Identifier. The resource name of the domain. Format: `domains/{domain_name}`, where domain_name i... |
| `permission` | `string` | Output only. User's permission of this domain. |
| `verificationState` | `string` | Output only. Information about a user's verification history and properties for the domain. |

### `DomainComplianceData`

Compliance data for a given domain.

| Property | Type | Description |
|----------|------|-------------|
| `domainId` | `string` | Domain that this data is for. |
| `honorUnsubscribeVerdict` | `HonorUnsubscribeVerdict` | Unsubscribe honoring compliance verdict. |
| `oneClickUnsubscribeVerdict` | `OneClickUnsubscribeVerdict` | One-click unsubscribe compliance verdict. |
| `rowData` | `array<ComplianceRowData>` | Data for each of the rows of the table. Each message contains all the data that backs a single row. |

### `DomainComplianceStatus`

Compliance status for a domain.

| Property | Type | Description |
|----------|------|-------------|
| `complianceData` | `DomainComplianceData` | Compliance data for the registrable domain part of the domain in `name`. For example, if `name` i... |
| `name` | `string` | Identifier. The resource name of the domain's compliance status. Format: `domains/{domain_id}/com... |
| `subdomainComplianceData` | `DomainComplianceData` | Compliance data calculated specifically for the subdomain in `name`. This field is only populated... |

### `DomainStat`

Email statistics for a domain for a specified time period or date.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | Optional. The specific date for these stats, if granularity is DAILY. This field is populated if ... |
| `metric` | `string` | The user-defined name from MetricDefinition.name in the request, used to correlate this result wi... |
| `name` | `string` | Output only. The resource name of the DomainStat resource. Format: domains/{domain}/domainStats/{... |
| `value` | `StatisticValue` | The value of the corresponding metric. |

### `HonorUnsubscribeVerdict`

Compliance verdict for whether a sender meets the unsubscribe honoring compliance requirement.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The specific reason for the compliance verdict. Must be empty if the status is compliant. |
| `status` | `ComplianceStatus` | The compliance status. |

### `ListDomainsResponse`

Response message for ListDomains.

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<Domain>` | The domains that have been registered by the user. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `MetricDefinition`

Defines a specific metric to query, including a user-defined name, the base metric type, and optional filters.

| Property | Type | Description |
|----------|------|-------------|
| `baseMetric` | `BaseMetric` | Required. The underlying metric to query. |
| `filter` | `string` | Optional. Optional filters to apply to the metric. |
| `name` | `string` | Required. The user-defined name for this metric. This name will be used as the key for this metri... |

### `OneClickUnsubscribeVerdict`

Compliance verdict for whether a sender meets the one-click unsubscribe compliance requirement.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The specific reason for the compliance verdict. Must be empty if the status is compliant. |
| `status` | `ComplianceStatus` | The compliance status. |

### `QueryDomainStatsRequest`

Request message for QueryDomainStats.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationGranularity` | `string` | Optional. The granularity at which to aggregate the statistics. If unspecified, defaults to DAILY. |
| `metricDefinitions` | `array<MetricDefinition>` | Required. The specific metrics to query. You can define a custom name for each metric, which will... |
| `pageSize` | `integer` | Optional. The maximum number of DomainStats resources to return in the response. The server may r... |
| `pageToken` | `string` | Optional. The next_page_token value returned from a previous List request, if any. If the aggrega... |
| `parent` | `string` | Required. The parent resource name where the stats are queried. Format: domains/{domain} |
| `timeQuery` | `TimeQuery` | Required. The time range or specific dates for which to retrieve the metrics. |

### `QueryDomainStatsResponse`

Response message for QueryDomainStats.

| Property | Type | Description |
|----------|------|-------------|
| `domainStats` | `array<DomainStat>` | The list of domain statistics. Each DomainStat object contains the value for a metric requested i... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `StatisticValue`

The actual value of a statistic.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | Double value. |
| `floatValue` | `number` | Float value. |
| `intValue` | `string` | Integer value. |
| `stringList` | `StringList` | List of string values. |
| `stringValue` | `string` | String value. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StringList`

Represents a list of strings.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The string values. |

### `TimeQuery`

The date ranges or specific dates for which you want to retrieve data.

| Property | Type | Description |
|----------|------|-------------|
| `dateList` | `DateList` | A list of specific dates. |
| `dateRanges` | `DateRanges` | A list of date ranges. |

