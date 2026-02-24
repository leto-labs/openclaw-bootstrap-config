# Error Reporting API - API Reference

**Version**: `v1beta1` | **Methods**: 11 | **Schemas**: 15

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `clouderrorreporting.projects.deleteEvents` | DELETE | `v1beta1/{+projectName}/events` | Deletes all error events of a given project. |
| `clouderrorreporting.projects.locations.deleteEvents` | DELETE | `v1beta1/{+projectName}/events` | Deletes all error events of a given project. |
| `clouderrorreporting.projects.locations.groups.update` | PUT | `v1beta1/{+name}` | Replace the data for the specified group. Fails if the group does not exist. |
| `clouderrorreporting.projects.locations.groups.get` | GET | `v1beta1/{+groupName}` | Get the specified group. |
| `clouderrorreporting.projects.locations.groupStats.list` | GET | `v1beta1/{+projectName}/groupStats` | Lists the specified groups. |
| `clouderrorreporting.projects.locations.events.list` | GET | `v1beta1/{+projectName}/events` | Lists the specified events. |
| `clouderrorreporting.projects.groupStats.list` | GET | `v1beta1/{+projectName}/groupStats` | Lists the specified groups. |
| `clouderrorreporting.projects.groups.get` | GET | `v1beta1/{+groupName}` | Get the specified group. |
| `clouderrorreporting.projects.groups.update` | PUT | `v1beta1/{+name}` | Replace the data for the specified group. Fails if the group does not exist. |
| `clouderrorreporting.projects.events.report` | POST | `v1beta1/{+projectName}/events:report` | Report an individual error event and record the event to a log. This endpoint accepts **either** ... |
| `clouderrorreporting.projects.events.list` | GET | `v1beta1/{+projectName}/events` | Lists the specified events. |

### `clouderrorreporting.projects.deleteEvents`

**DELETE** `v1beta1/{+projectName}/events`

Deletes all error events of a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |

**Response**: `DeleteEventsResponse`

```typescript
const res = await clouderrorreporting.projects.deleteEvents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.locations.deleteEvents`

**DELETE** `v1beta1/{+projectName}/events`

Deletes all error events of a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |

**Response**: `DeleteEventsResponse`

```typescript
const res = await clouderrorreporting.locations.deleteEvents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.locations.groups.update`

**PUT** `v1beta1/{+name}`

Replace the data for the specified group. Fails if the group does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The group resource name. Written as `projects/{projectID}/groups/{group_id}` or `projects/{projectID}/locations/{loca... |

**Request body**: `ErrorGroup`

**Response**: `ErrorGroup`

```typescript
const res = await clouderrorreporting.groups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.locations.groups.get`

**GET** `v1beta1/{+groupName}`

Get the specified group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupName` | `string` | path | Yes | Required. The group resource name. Written as either `projects/{projectID}/groups/{group_id}` or `projects/{projectID... |

**Response**: `ErrorGroup`

```typescript
const res = await clouderrorreporting.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.locations.groupStats.list`

**GET** `v1beta1/{+projectName}/groupStats`

Lists the specified groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |
| `alignment` | `string` | query | No | Optional. The alignment of the timed counts to be returned. Default is `ALIGNMENT_EQUAL_AT_END`. |
| `alignmentTime` | `string` | query | No | Optional. Time where the timed counts shall be aligned if rounded alignment is chosen. Default is 00:00 UTC. |
| `groupId` | `string` | query | No | Optional. List all ErrorGroupStats with these IDs. The `group_id` is a unique identifier for a particular error group... |
| `order` | `string` | query | No | Optional. The sort order in which the results are returned. Default is `COUNT_DESC`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return per response. Default is 20. |
| `pageToken` | `string` | query | No | Optional. A next_page_token provided by a previous response. To view additional results, pass this token along with t... |
| `serviceFilter.resourceType` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.resource_type`](/error-reporting/reference/rest/v1beta1/S... |
| `serviceFilter.service` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.service`](/error-reporting/reference/rest/v1beta1/Service... |
| `serviceFilter.version` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.version`](/error-reporting/reference/rest/v1beta1/Service... |
| `timeRange.period` | `string` | query | No | Restricts the query to the specified time range. |
| `timedCountDuration` | `string` | query | No | Optional. The preferred duration for a single returned TimedCount. If not set, no timed counts are returned. |

**Response**: `ListGroupStatsResponse`

```typescript
const res = await clouderrorreporting.groupStats.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.locations.events.list`

**GET** `v1beta1/{+projectName}/events`

Lists the specified events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |
| `groupId` | `string` | query | No | Required. The group for which events shall be returned. The `group_id` is a unique identifier for a particular error ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return per response. |
| `pageToken` | `string` | query | No | Optional. A `next_page_token` provided by a previous response. |
| `serviceFilter.resourceType` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.resource_type`](/error-reporting/reference/rest/v1beta1/S... |
| `serviceFilter.service` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.service`](/error-reporting/reference/rest/v1beta1/Service... |
| `serviceFilter.version` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.version`](/error-reporting/reference/rest/v1beta1/Service... |
| `timeRange.period` | `string` | query | No | Restricts the query to the specified time range. |

**Response**: `ListEventsResponse`

```typescript
const res = await clouderrorreporting.events.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.groupStats.list`

**GET** `v1beta1/{+projectName}/groupStats`

Lists the specified groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |
| `alignment` | `string` | query | No | Optional. The alignment of the timed counts to be returned. Default is `ALIGNMENT_EQUAL_AT_END`. |
| `alignmentTime` | `string` | query | No | Optional. Time where the timed counts shall be aligned if rounded alignment is chosen. Default is 00:00 UTC. |
| `groupId` | `string` | query | No | Optional. List all ErrorGroupStats with these IDs. The `group_id` is a unique identifier for a particular error group... |
| `order` | `string` | query | No | Optional. The sort order in which the results are returned. Default is `COUNT_DESC`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return per response. Default is 20. |
| `pageToken` | `string` | query | No | Optional. A next_page_token provided by a previous response. To view additional results, pass this token along with t... |
| `serviceFilter.resourceType` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.resource_type`](/error-reporting/reference/rest/v1beta1/S... |
| `serviceFilter.service` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.service`](/error-reporting/reference/rest/v1beta1/Service... |
| `serviceFilter.version` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.version`](/error-reporting/reference/rest/v1beta1/Service... |
| `timeRange.period` | `string` | query | No | Restricts the query to the specified time range. |
| `timedCountDuration` | `string` | query | No | Optional. The preferred duration for a single returned TimedCount. If not set, no timed counts are returned. |

**Response**: `ListGroupStatsResponse`

```typescript
const res = await clouderrorreporting.groupStats.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.groups.get`

**GET** `v1beta1/{+groupName}`

Get the specified group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupName` | `string` | path | Yes | Required. The group resource name. Written as either `projects/{projectID}/groups/{group_id}` or `projects/{projectID... |

**Response**: `ErrorGroup`

```typescript
const res = await clouderrorreporting.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.groups.update`

**PUT** `v1beta1/{+name}`

Replace the data for the specified group. Fails if the group does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The group resource name. Written as `projects/{projectID}/groups/{group_id}` or `projects/{projectID}/locations/{loca... |

**Request body**: `ErrorGroup`

**Response**: `ErrorGroup`

```typescript
const res = await clouderrorreporting.groups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.events.report`

**POST** `v1beta1/{+projectName}/events:report`

Report an individual error event and record the event to a log. This endpoint accepts **either** an OAuth token, **or** an [API key](https://support.google.com/cloud/answer/6158862) for authentication. To use an API key, append it to the URL as the value of a `key` parameter. For example: `POST https://clouderrorreporting.googleapis.com/v1beta1/{projectName}/events:report?key=123ABC456` **Note:** [Error Reporting] (https://cloud.google.com/error-reporting) is a service built on Cloud Logging and can analyze log entries when all of the following are true: * Customer-managed encryption keys (CMEK) are disabled on the log bucket. * The log bucket satisfies one of the following: * The log bucket is stored in the same project where the logs originated. * The logs were routed to a project, and then that project stored those logs in a log bucket that it owns.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectId}`, where `{projectI... |

**Request body**: `ReportedErrorEvent`

**Response**: `ReportErrorEventResponse`

```typescript
const res = await clouderrorreporting.events.report({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouderrorreporting.projects.events.list`

**GET** `v1beta1/{+projectName}/events`

Lists the specified events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectName` | `string` | path | Yes | Required. The resource name of the Google Cloud Platform project. Written as `projects/{projectID}` or `projects/{pro... |
| `groupId` | `string` | query | No | Required. The group for which events shall be returned. The `group_id` is a unique identifier for a particular error ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return per response. |
| `pageToken` | `string` | query | No | Optional. A `next_page_token` provided by a previous response. |
| `serviceFilter.resourceType` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.resource_type`](/error-reporting/reference/rest/v1beta1/S... |
| `serviceFilter.service` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.service`](/error-reporting/reference/rest/v1beta1/Service... |
| `serviceFilter.version` | `string` | query | No | Optional. The exact value to match against [`ServiceContext.version`](/error-reporting/reference/rest/v1beta1/Service... |
| `timeRange.period` | `string` | query | No | Restricts the query to the specified time range. |

**Response**: `ListEventsResponse`

```typescript
const res = await clouderrorreporting.events.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `DeleteEventsResponse`

Response message for deleting error events.

### `ErrorContext`

A description of the context in which an error occurred. This data should be provided by the application when reporting an error, unless the error report has been generated automatically from Google App Engine logs.

| Property | Type | Description |
|----------|------|-------------|
| `httpRequest` | `HttpRequestContext` | The HTTP request which was processed when the error was triggered. |
| `reportLocation` | `SourceLocation` | The location in the source code where the decision was made to report the error, usually the plac... |
| `sourceReferences` | `array<SourceReference>` | Source code that was used to build the executable which has caused the given error message. |
| `user` | `string` | The user who caused or was affected by the crash. This can be a user ID, an email address, or an ... |

### `ErrorEvent`

An error event which is returned by the Error Reporting system.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `ErrorContext` | Data about the context in which the error occurred. |
| `eventTime` | `string` | Time when the event occurred as provided in the error report. If the report did not contain a tim... |
| `message` | `string` | The stack trace that was reported or logged by the service. |
| `serviceContext` | `ServiceContext` | The `ServiceContext` for which this error was reported. |

### `ErrorGroup`

Description of a group of similar error events.

| Property | Type | Description |
|----------|------|-------------|
| `groupId` | `string` | An opaque identifier of the group. This field is assigned by the Error Reporting system and alway... |
| `name` | `string` | The group resource name. Written as `projects/{projectID}/groups/{group_id}` or `projects/{projec... |
| `resolutionStatus` | `string` | Error group's resolution status. An unspecified resolution status will be interpreted as OPEN |
| `trackingIssues` | `array<TrackingIssue>` | Associated tracking issues. |

### `ErrorGroupStats`

Data extracted for a specific group based on certain filter criteria, such as a given time period and/or service filter.

| Property | Type | Description |
|----------|------|-------------|
| `affectedServices` | `array<ServiceContext>` | Service contexts with a non-zero error count for the given filter criteria. This list can be trun... |
| `affectedUsersCount` | `string` | Approximate number of affected users in the given group that match the filter criteria. Users are... |
| `count` | `string` | Approximate total number of events in the given group that match the filter criteria. |
| `firstSeenTime` | `string` | Approximate first occurrence that was ever seen for this group and which matches the given filter... |
| `group` | `ErrorGroup` | Group data that is independent of the filter criteria. |
| `lastSeenTime` | `string` | Approximate last occurrence that was ever seen for this group and which matches the given filter ... |
| `numAffectedServices` | `integer` | The total number of services with a non-zero error count for the given filter criteria. |
| `representative` | `ErrorEvent` | An arbitrary event that is chosen as representative for the whole group. The representative event... |
| `timedCounts` | `array<TimedCount>` | Approximate number of occurrences over time. Timed counts returned by ListGroups are guaranteed t... |

### `HttpRequestContext`

HTTP request data that is related to a reported error. This data should be provided by the application when reporting an error, unless the error report has been generated automatically from Google App Engine logs.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | The type of HTTP request, such as `GET`, `POST`, etc. |
| `referrer` | `string` | The referrer information that is provided with the request. |
| `remoteIp` | `string` | The IP address from which the request originated. This can be IPv4, IPv6, or a token which is der... |
| `responseStatusCode` | `integer` | The HTTP response status code for the request. |
| `url` | `string` | The URL of the request. |
| `userAgent` | `string` | The user agent information that is provided with the request. |

### `ListEventsResponse`

Contains a set of requested error events.

| Property | Type | Description |
|----------|------|-------------|
| `errorEvents` | `array<ErrorEvent>` | The error events which match the given request. |
| `nextPageToken` | `string` | If non-empty, more results are available. Pass this token, along with the same query parameters a... |
| `timeRangeBegin` | `string` | The timestamp specifies the start time to which the request was restricted. |

### `ListGroupStatsResponse`

Contains a set of requested error group stats.

| Property | Type | Description |
|----------|------|-------------|
| `errorGroupStats` | `array<ErrorGroupStats>` | The error group stats which match the given request. |
| `nextPageToken` | `string` | If non-empty, more results are available. Pass this token, along with the same query parameters a... |
| `timeRangeBegin` | `string` | The timestamp specifies the start time to which the request was restricted. The start time is set... |

### `ReportErrorEventResponse`

Response for reporting an individual error event. Data may be added to this message in the future.

### `ReportedErrorEvent`

An error event which is reported to the Error Reporting system.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `ErrorContext` | Optional. A description of the context in which the error occurred. |
| `eventTime` | `string` | Optional. Time when the event occurred. If not provided, the time when the event was received by ... |
| `message` | `string` | Required. The error message. If no `context.reportLocation` is provided, the message must contain... |
| `serviceContext` | `ServiceContext` | Required. The service context in which this error has occurred. |

### `ServiceContext`

Describes a running service that sends errors. Its version changes over time and multiple versions can run in parallel.

| Property | Type | Description |
|----------|------|-------------|
| `resourceType` | `string` | Type of the MonitoredResource. List of possible values: https://cloud.google.com/monitoring/api/r... |
| `service` | `string` | An identifier of the service, such as the name of the executable, job, or Google App Engine servi... |
| `version` | `string` | Represents the source code version that the developer provided, which could represent a version l... |

### `SourceLocation`

Indicates a location in the source code of the service for which errors are reported. `functionName` must be provided by the application when reporting an error, unless the error report contains a `message` with a supported exception stack trace. All fields are optional for the later case.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | The source code filename, which can include a truncated relative path, or a full path from a prod... |
| `functionName` | `string` | Human-readable name of a function or method. The value can include optional context like the clas... |
| `lineNumber` | `integer` | 1-based. 0 indicates that the line number is unknown. |

### `SourceReference`

A reference to a particular snapshot of the source tree used to build and deploy an application.

| Property | Type | Description |
|----------|------|-------------|
| `repository` | `string` | Optional. A URI string identifying the repository. Example: "https://github.com/GoogleCloudPlatfo... |
| `revisionId` | `string` | The canonical and persistent identifier of the deployed revision. Example (git): "0035781c50ec7aa... |

### `TimedCount`

The number of errors in a given time period. All numbers are approximate since the error events are sampled before counting them.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Approximate number of occurrences in the given time period. |
| `endTime` | `string` | End of the time period to which `count` refers (excluded). |
| `startTime` | `string` | Start of the time period to which `count` refers (included). |

### `TrackingIssue`

Information related to tracking the progress on resolving the error.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | A URL pointing to a related entry in an issue tracking system. Example: `https://github.com/user/... |

