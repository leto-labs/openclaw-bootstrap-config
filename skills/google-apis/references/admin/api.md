# Admin SDK API - API Reference

**Version**: `reports_v1` | **Methods**: 6 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `reports.userUsageReport.get` | GET | `admin/reports/v1/usage/users/{userKey}/dates/{date}` | Retrieves a report which is a collection of properties and statistics for a set of users with the... |
| `reports.activities.list` | GET | `admin/reports/v1/activity/users/{userKey}/applications/{applicationName}` | Retrieves a list of activities for a specific customer's account and application such as the Admi... |
| `reports.activities.watch` | POST | `admin/reports/v1/activity/users/{userKey}/applications/{applicationName}/watch` | Start receiving notifications for account activities. For more information, see Receiving Push No... |
| `reports.customerUsageReports.get` | GET | `admin/reports/v1/usage/dates/{date}` | Retrieves a report which is a collection of properties and statistics for a specific customer's a... |
| `reports.entityUsageReports.get` | GET | `admin/reports/v1/usage/{entityType}/{entityKey}/dates/{date}` | Retrieves a report which is a collection of properties and statistics for entities used by users ... |
| `admin.channels.stop` | POST | `admin/reports_v1/channels/stop` | Stop watching resources through this channel. |

### `reports.userUsageReport.get`

**GET** `admin/reports/v1/usage/users/{userKey}/dates/{date}`

Retrieves a report which is a collection of properties and statistics for a set of users with the account. For more information, see the User Usage Report guide. For more information about the user report's parameters, see the Users Usage parameters reference guides.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userKey` | `string` | path | Yes | Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, ... |
| `date` | `string` | path | Yes | Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the [ISO 8601 ... |
| `customerId` | `string` | query | No | The unique ID of the customer to retrieve data for. |
| `filters` | `string` | query | No | The `filters` query string is a comma-separated list of an application's event parameters where the parameter's value... |
| `groupIdFilter` | `string` | query | No | Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activiti... |
| `maxResults` | `integer` | query | No | Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1`... |
| `orgUnitID` | `string` | query | No | ID of the organizational unit to report on. User activity will be shown only for users who belong to the specified or... |
| `pageToken` | `string` | query | No | Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your foll... |
| `parameters` | `string` | query | No | The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The param... |

**Response**: `UsageReports`

```typescript
const res = await admin.userUsageReport.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.usage.readonly`

---

### `reports.activities.list`

**GET** `admin/reports/v1/activity/users/{userKey}/applications/{applicationName}`

Retrieves a list of activities for a specific customer's account and application such as the Admin console application or the Google Drive application. For more information, see the guides for administrator and Google Drive activity reports. For more information about the activity report's parameters, see the activity parameters reference guides.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userKey` | `string` | path | Yes | Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, ... |
| `applicationName` | `string` | path | Yes | Application name for which the events are to be retrieved. |
| `actorIpAddress` | `string` | query | No | The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a repor... |
| `applicationInfoFilter` | `string` | query | No | Optional. Used to filter on the `oAuthClientId` field present in [`ApplicationInfo`](#applicationinfo) message. **Usa... |
| `customerId` | `string` | query | No | The unique ID of the customer to retrieve data for. |
| `endTime` | `string` | query | No | Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:... |
| `eventName` | `string` | query | No | The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or... |
| `filters` | `string` | query | No | The `filters` query string is a comma-separated list composed of event parameters manipulated by relational operators... |
| `groupIdFilter` | `string` | query | No | Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activiti... |
| `maxResults` | `integer` | query | No | Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1`... |
| `networkInfoFilter` | `string` | query | No | Optional. Used to filter on the `regionCode` field present in [`NetworkInfo`](#networkinfo) message. **Usage** ``` GE... |
| `orgUnitID` | `string` | query | No | ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified... |
| `pageToken` | `string` | query | No | The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your ... |
| `resourceDetailsFilter` | `string` | query | No | Optional. The `resourceDetailsFilter` query string is an AND separated list composed of [Resource Details](#resourced... |
| `startTime` | `string` | query | No | Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-... |
| `statusFilter` | `string` | query | No | Optional. Used to filter on the `statusCode` field present in [`Status`](#status) message. **Usage** ``` GET...&statu... |

**Response**: `Activities`

```typescript
const res = await admin.activities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.audit.readonly`

---

### `reports.activities.watch`

**POST** `admin/reports/v1/activity/users/{userKey}/applications/{applicationName}/watch`

Start receiving notifications for account activities. For more information, see Receiving Push Notifications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userKey` | `string` | path | Yes | Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, ... |
| `applicationName` | `string` | path | Yes | Application name for which the events are to be retrieved. |
| `actorIpAddress` | `string` | query | No | The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a repor... |
| `customerId` | `string` | query | No | The unique ID of the customer to retrieve data for. |
| `endTime` | `string` | query | No | Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:... |
| `eventName` | `string` | query | No | The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or... |
| `filters` | `string` | query | No | The `filters` query string is a comma-separated list composed of event parameters manipulated by relational operators... |
| `groupIdFilter` | `string` | query | No | `Deprecated`. This field is deprecated and is no longer supported. Comma separated group ids (obfuscated) on which us... |
| `maxResults` | `integer` | query | No | Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1`... |
| `orgUnitID` | `string` | query | No | `Deprecated`. This field is deprecated and is no longer supported. ID of the organizational unit to report on. Activi... |
| `pageToken` | `string` | query | No | The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your ... |
| `startTime` | `string` | query | No | Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await admin.activities.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.audit.readonly`

---

### `reports.customerUsageReports.get`

**GET** `admin/reports/v1/usage/dates/{date}`

Retrieves a report which is a collection of properties and statistics for a specific customer's account. For more information, see the Customers Usage Report guide. For more information about the customer report's parameters, see the Customers Usage parameters reference guides.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `date` | `string` | path | Yes | Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the [ISO 8601 ... |
| `customerId` | `string` | query | No | The unique ID of the customer to retrieve data for. |
| `pageToken` | `string` | query | No | Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. For your fol... |
| `parameters` | `string` | query | No | The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The param... |

**Response**: `UsageReports`

```typescript
const res = await admin.customerUsageReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.usage.readonly`

---

### `reports.entityUsageReports.get`

**GET** `admin/reports/v1/usage/{entityType}/{entityKey}/dates/{date}`

Retrieves a report which is a collection of properties and statistics for entities used by users within the account. For more information, see the Entities Usage Report guide. For more information about the entities report's parameters, see the Entities Usage parameters reference guides.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `entityType` | `string` | path | Yes | Represents the type of entity for the report. |
| `entityKey` | `string` | path | Yes | Represents the key of the object to filter the data with. It is a string which can take the value `all` to get activi... |
| `date` | `string` | path | Yes | Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the [ISO 8601 ... |
| `customerId` | `string` | query | No | The unique ID of the customer to retrieve data for. |
| `filters` | `string` | query | No | The `filters` query string is a comma-separated list of an application's event parameters where the parameter's value... |
| `maxResults` | `integer` | query | No | Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1`... |
| `pageToken` | `string` | query | No | Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your foll... |
| `parameters` | `string` | query | No | The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The param... |

**Response**: `UsageReports`

```typescript
const res = await admin.entityUsageReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.usage.readonly`

---

### `admin.channels.stop`

**POST** `admin/reports_v1/channels/stop`

Stop watching resources through this channel.

**Request body**: `Channel`

```typescript
const res = await admin.channels.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/admin.reports.audit.readonly`

---

## Schemas

### `Activities`

JSON template for a collection of activities.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `items` | `array<Activity>` | Each activity record in the response. |
| `kind` | `string` | The type of API resource. For an activity report, the value is `reports#activities`. |
| `nextPageToken` | `string` | Token for retrieving the follow-on next page of the report. The `nextPageToken` value is used in ... |

### `Activity`

JSON template for the activity resource.

| Property | Type | Description |
|----------|------|-------------|
| `actor` | `object` | User doing the action. |
| `etag` | `string` | ETag of the entry. |
| `events` | `array<object>` | Activity events in the report. |
| `id` | `object` | Unique identifier for each activity record. |
| `ipAddress` | `string` | IP address of the user doing the action. This is the Internet Protocol (IP) address of the user w... |
| `kind` | `string` | The type of API resource. For an activity report, the value is `audit#activity`. |
| `networkInfo` | `ActivityNetworkInfo` | Network information of the user doing the action. |
| `ownerDomain` | `string` | This is the domain that is affected by the report's event. For example domain of Admin console or... |
| `resourceDetails` | `array<ResourceDetails>` | Details of the resource on which the action was performed. |

### `ActivityEventsStatus`

Status of the event. Note: Not all events have status.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Error code of the event. Note: Field can be empty. |
| `errorMessage` | `string` | Error message of the event. Note: Field can be empty. |
| `eventStatus` | `string` | * Status of the event. Possible values if not empty: - UNKNOWN_EVENT_STATUS - SUCCEEDED - SUCCEED... |
| `httpStatusCode` | `integer` | Status code of the event. Note: Field can be empty. |

### `ActivityNetworkInfo`

Network information of the user doing the action.

| Property | Type | Description |
|----------|------|-------------|
| `ipAsn` | `array<integer>` | IP Address of the user doing the action. |
| `regionCode` | `string` | ISO 3166-1 alpha-2 region code of the user doing the action. |
| `subdivisionCode` | `string` | ISO 3166-2 region code (states and provinces) for countries of the user doing the action. |

### `AppliedLabel`

Details of the label applied on the resource.

| Property | Type | Description |
|----------|------|-------------|
| `fieldValues` | `array<FieldValue>` | List of fields which are part of the label and have been set by the user. If label has a field wh... |
| `id` | `string` | Identifier of the label - Only the label id, not the full OnePlatform resource name. |
| `reason` | `Reason` | The reason why the label was applied on the resource. |
| `title` | `string` | Title of the label |

### `Channel`

A notification channel used to watch for resource changes.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address where notifications are delivered for this channel. |
| `expiration` | `string` | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds.... |
| `id` | `string` | A UUID or similar unique string that identifies this channel. |
| `kind` | `string` | Identifies this as a notification channel used to watch for changes to a resource, which is "`api... |
| `params` | `object` | Additional parameters controlling delivery channel behavior. Optional. |
| `payload` | `boolean` | A Boolean value to indicate whether payload is wanted. A payload is data that is sent in the body... |
| `resourceId` | `string` | An opaque ID that identifies the resource being watched on this channel. Stable across different ... |
| `resourceUri` | `string` | A version-specific identifier for the watched resource. |
| `token` | `string` | An arbitrary string delivered to the target address with each notification delivered over this ch... |
| `type` | `string` | The type of delivery mechanism used for this channel. The value should be set to `"web_hook"`. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `FieldValue`

Details of the field value set by the user for the particular label.

| Property | Type | Description |
|----------|------|-------------|
| `dateValue` | `Date` | Setting a date value. |
| `displayName` | `string` | Display name of the field |
| `id` | `string` | Identifier of the field |
| `integerValue` | `string` | Setting an integer value. |
| `longTextValue` | `string` | Setting a long text value. |
| `reason` | `Reason` | The reason why the field was applied to the label. |
| `selectionListValue` | `FieldValueSelectionListValue` | Setting a selection list value by selecting multiple values from a dropdown. |
| `selectionValue` | `FieldValueSelectionValue` | Setting a selection value by selecting a single value from a dropdown. |
| `textListValue` | `FieldValueTextListValue` | Setting a text list value. |
| `textValue` | `string` | Setting a text value. |
| `type` | `string` | Type of the field |
| `unsetValue` | `boolean` | If the field is unset, this will be true. |
| `userListValue` | `FieldValueUserListValue` | Setting a user list value by selecting multiple users. |
| `userValue` | `FieldValueUserValue` | Setting a user value by selecting a single user. |

### `FieldValueSelectionListValue`

Setting a selection list value by selecting multiple values from a dropdown.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<FieldValueSelectionValue>` | List of selections. |

### `FieldValueSelectionValue`

Setting a selection value by selecting a single value from a dropdown.

| Property | Type | Description |
|----------|------|-------------|
| `badged` | `boolean` | Whether the selection is badged. |
| `displayName` | `string` | Display name of the selection. |
| `id` | `string` | Identifier of the selection. |

### `FieldValueTextListValue`

Setting a text list value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | List of text values. |

### `FieldValueUserListValue`

Setting a user list value by selecting multiple users.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<FieldValueUserValue>` | List of users. |

### `FieldValueUserValue`

Setting a user value by selecting a single user.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email of the user. |

### `NestedParameter`

JSON template for a parameter used in various reports.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value of the parameter. |
| `intValue` | `string` | Integer value of the parameter. |
| `multiBoolValue` | `array<boolean>` | Multiple boolean values of the parameter. |
| `multiIntValue` | `array<string>` | Multiple integer values of the parameter. |
| `multiValue` | `array<string>` | Multiple string values of the parameter. |
| `name` | `string` | The name of the parameter. |
| `value` | `string` | String value of the parameter. |

### `Reason`

The reason why the label/field was applied.

| Property | Type | Description |
|----------|------|-------------|
| `reasonType` | `string` | The type of the reason. |

### `ResourceDetails`

Details of the resource on which the action was performed.

| Property | Type | Description |
|----------|------|-------------|
| `appliedLabels` | `array<AppliedLabel>` | List of labels applied on the resource |
| `id` | `string` | Identifier of the resource. |
| `relation` | `string` | Defines relationship of the resource to the events |
| `title` | `string` | Title of the resource. For instance, in case of a drive document, this would be the title of the ... |
| `type` | `string` | Type of the resource - document, email, chat message |

### `UsageReport`

JSON template for a usage report.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `string` | Output only. The date of the report request. |
| `entity` | `object` | Output only. Information about the type of the item. |
| `etag` | `string` | ETag of the resource. |
| `kind` | `string` | The type of API resource. For a usage report, the value is `admin#reports#usageReport`. |
| `parameters` | `array<object>` | Output only. Parameter value pairs for various applications. For the Entity Usage Report paramete... |

### `UsageReports`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `kind` | `string` | The type of API resource. For a usage report, the value is `admin#reports#usageReports`. |
| `nextPageToken` | `string` | Token to specify next page. A report with multiple pages has a `nextPageToken` property in the re... |
| `usageReports` | `array<UsageReport>` | Various application parameter records. |
| `warnings` | `array<object>` | Warnings, if any. |

