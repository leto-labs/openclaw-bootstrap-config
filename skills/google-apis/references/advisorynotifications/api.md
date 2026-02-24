# Advisory Notifications API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 11

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `advisorynotifications.organizations.locations.getSettings` | GET | `v1/{+name}` | Get notification settings. |
| `advisorynotifications.organizations.locations.updateSettings` | PATCH | `v1/{+name}` | Update notification settings. |
| `advisorynotifications.organizations.locations.notifications.list` | GET | `v1/{+parent}/notifications` | Lists notifications under a given parent. |
| `advisorynotifications.organizations.locations.notifications.get` | GET | `v1/{+name}` | Gets a notification. |
| `advisorynotifications.projects.locations.getSettings` | GET | `v1/{+name}` | Get notification settings. |
| `advisorynotifications.projects.locations.updateSettings` | PATCH | `v1/{+name}` | Update notification settings. |
| `advisorynotifications.projects.locations.notifications.list` | GET | `v1/{+parent}/notifications` | Lists notifications under a given parent. |
| `advisorynotifications.projects.locations.notifications.get` | GET | `v1/{+name}` | Gets a notification. |

### `advisorynotifications.organizations.locations.getSettings`

**GET** `v1/{+name}`

Get notification settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the settings to retrieve. Format: organizations/{organization}/locations/{location}/se... |

**Response**: `GoogleCloudAdvisorynotificationsV1Settings`

```typescript
const res = await advisorynotifications.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.organizations.locations.updateSettings`

**PATCH** `v1/{+name}`

Update notification settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the settings to retrieve. Format: organizations/{organization}/locations/{location}/... |

**Request body**: `GoogleCloudAdvisorynotificationsV1Settings`

**Response**: `GoogleCloudAdvisorynotificationsV1Settings`

```typescript
const res = await advisorynotifications.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.organizations.locations.notifications.list`

**GET** `v1/{+parent}/notifications`

Lists notifications under a given parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of notifications. Must be of the form "organizations/{organization}/... |
| `languageCode` | `string` | query | No | ISO code for requested localization language. If unset, will be interpereted as "en". If the requested language is va... |
| `pageSize` | `integer` | query | No | The maximum number of notifications to return. The service may return fewer than this value. If unspecified or equal ... |
| `pageToken` | `string` | query | No | A page token returned from a previous request. When paginating, all other parameters provided in the request must mat... |
| `view` | `string` | query | No | Specifies which parts of the notification resource should be returned in the response. |

**Response**: `GoogleCloudAdvisorynotificationsV1ListNotificationsResponse`

```typescript
const res = await advisorynotifications.notifications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.organizations.locations.notifications.get`

**GET** `v1/{+name}`

Gets a notification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the notification to retrieve. Format: organizations/{organization}/locations/{location}/notificat... |
| `languageCode` | `string` | query | No | ISO code for requested localization language. If unset, will be interpereted as "en". If the requested language is va... |

**Response**: `GoogleCloudAdvisorynotificationsV1Notification`

```typescript
const res = await advisorynotifications.notifications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.projects.locations.getSettings`

**GET** `v1/{+name}`

Get notification settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the settings to retrieve. Format: organizations/{organization}/locations/{location}/se... |

**Response**: `GoogleCloudAdvisorynotificationsV1Settings`

```typescript
const res = await advisorynotifications.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.projects.locations.updateSettings`

**PATCH** `v1/{+name}`

Update notification settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the settings to retrieve. Format: organizations/{organization}/locations/{location}/... |

**Request body**: `GoogleCloudAdvisorynotificationsV1Settings`

**Response**: `GoogleCloudAdvisorynotificationsV1Settings`

```typescript
const res = await advisorynotifications.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.projects.locations.notifications.list`

**GET** `v1/{+parent}/notifications`

Lists notifications under a given parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of notifications. Must be of the form "organizations/{organization}/... |
| `languageCode` | `string` | query | No | ISO code for requested localization language. If unset, will be interpereted as "en". If the requested language is va... |
| `pageSize` | `integer` | query | No | The maximum number of notifications to return. The service may return fewer than this value. If unspecified or equal ... |
| `pageToken` | `string` | query | No | A page token returned from a previous request. When paginating, all other parameters provided in the request must mat... |
| `view` | `string` | query | No | Specifies which parts of the notification resource should be returned in the response. |

**Response**: `GoogleCloudAdvisorynotificationsV1ListNotificationsResponse`

```typescript
const res = await advisorynotifications.notifications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `advisorynotifications.projects.locations.notifications.get`

**GET** `v1/{+name}`

Gets a notification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the notification to retrieve. Format: organizations/{organization}/locations/{location}/notificat... |
| `languageCode` | `string` | query | No | ISO code for requested localization language. If unset, will be interpereted as "en". If the requested language is va... |

**Response**: `GoogleCloudAdvisorynotificationsV1Notification`

```typescript
const res = await advisorynotifications.notifications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudAdvisorynotificationsV1Attachment`

Attachment with specific information about the issue.

| Property | Type | Description |
|----------|------|-------------|
| `csv` | `GoogleCloudAdvisorynotificationsV1Csv` | A CSV file attachment. Max size is 10 MB. |
| `displayName` | `string` | The title of the attachment. |

### `GoogleCloudAdvisorynotificationsV1Csv`

A representation of a CSV file attachment, as a list of column headers and a list of data rows.

| Property | Type | Description |
|----------|------|-------------|
| `dataRows` | `array<GoogleCloudAdvisorynotificationsV1CsvCsvRow>` | The list of data rows in a CSV file, as string arrays rather than as a single comma-separated str... |
| `headers` | `array<string>` | The list of headers for data columns in a CSV file. |

### `GoogleCloudAdvisorynotificationsV1CsvCsvRow`

A representation of a single data row in a CSV file.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<string>` | The data entries in a CSV file row, as a string array rather than a single comma-separated string. |

### `GoogleCloudAdvisorynotificationsV1ListNotificationsResponse`

Response of ListNotifications endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `notifications` | `array<GoogleCloudAdvisorynotificationsV1Notification>` | List of notifications under a given parent. |
| `totalSize` | `integer` | Estimation of a total number of notifications. |

### `GoogleCloudAdvisorynotificationsV1Message`

A message which contains notification details.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<GoogleCloudAdvisorynotificationsV1Attachment>` | The attachments to download. |
| `body` | `GoogleCloudAdvisorynotificationsV1MessageBody` | The message content. |
| `createTime` | `string` | The Message creation timestamp. |
| `localizationTime` | `string` | Time when Message was localized |

### `GoogleCloudAdvisorynotificationsV1MessageBody`

A message body containing text.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `GoogleCloudAdvisorynotificationsV1Text` | The text content of the message body. |

### `GoogleCloudAdvisorynotificationsV1Notification`

A notification object for notifying customers about security and privacy issues.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the notification was created. |
| `messages` | `array<GoogleCloudAdvisorynotificationsV1Message>` | A list of messages in the notification. |
| `name` | `string` | The resource name of the notification. Format: organizations/{organization}/locations/{location}/... |
| `notificationType` | `string` | Type of notification |
| `subject` | `GoogleCloudAdvisorynotificationsV1Subject` | The subject line of the notification. |

### `GoogleCloudAdvisorynotificationsV1NotificationSettings`

Settings for each NotificationType.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the associated NotificationType is enabled. |

### `GoogleCloudAdvisorynotificationsV1Settings`

Settings for Advisory Notifications.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Required. Fingerprint for optimistic concurrency returned in Get requests. Must be provided for U... |
| `name` | `string` | Identifier. The resource name of the settings to retrieve. Format: organizations/{organization}/l... |
| `notificationSettings` | `object` | Required. Map of each notification type and its settings to get/set all settings at once. The ser... |

### `GoogleCloudAdvisorynotificationsV1Subject`

A subject line of a notification.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `GoogleCloudAdvisorynotificationsV1Text` | The text content. |

### `GoogleCloudAdvisorynotificationsV1Text`

A text object containing the English text and its localized copies.

| Property | Type | Description |
|----------|------|-------------|
| `enText` | `string` | The English copy. |
| `localizationState` | `string` | Status of the localization. |
| `localizedText` | `string` | The requested localized copy (if applicable). |

