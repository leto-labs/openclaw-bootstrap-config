# Firebase Cloud Messaging Data API - API Reference

**Version**: `v1beta1` | **Methods**: 1 | **Schemas**: 8

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `fcmdata.projects.androidApps.deliveryData.list` | GET | `v1beta1/{+parent}/deliveryData` | List aggregate delivery data for the given Android application. |

### `fcmdata.projects.androidApps.deliveryData.list`

**GET** `v1beta1/{+parent}/deliveryData`

List aggregate delivery data for the given Android application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The application for which to list delivery data. Format: `projects/{project_id}/androidApps/{app_id}` |
| `pageSize` | `integer` | query | No | The maximum number of entries to return. The service may return fewer than this value. If unspecified, at most 1,000 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAndroidDeliveryDataRequest` call. Provide this to retrieve the subsequent... |

**Response**: `GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse`

```typescript
const res = await fcmdata.deliveryData.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleFirebaseFcmDataV1beta1AndroidDeliveryData`

Message delivery data for a given date, app, and analytics label combination.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsLabel` | `string` | The analytics label associated with the messages sent. All messages sent without an analytics lab... |
| `appId` | `string` | The app ID to which the messages were sent. |
| `data` | `GoogleFirebaseFcmDataV1beta1Data` | The data for the specified appId, date, and analyticsLabel. |
| `date` | `GoogleTypeDate` | The date represented by this entry. |

### `GoogleFirebaseFcmDataV1beta1Data`

Data detailing messaging delivery

| Property | Type | Description |
|----------|------|-------------|
| `countMessagesAccepted` | `string` | Count of messages accepted by FCM intended for Android devices. The targeted device must have opt... |
| `countNotificationsAccepted` | `string` | Count of notifications accepted by FCM intended for Android devices. The targeted device must hav... |
| `deliveryPerformancePercents` | `GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents` | Additional information about delivery performance for messages that were successfully delivered. |
| `messageInsightPercents` | `GoogleFirebaseFcmDataV1beta1MessageInsightPercents` | Additional general insights about message delivery. |
| `messageOutcomePercents` | `GoogleFirebaseFcmDataV1beta1MessageOutcomePercents` | Mutually exclusive breakdown of message delivery outcomes. |
| `proxyNotificationInsightPercents` | `GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents` | Additional insights about proxy notification delivery. |

### `GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents`

Overview of delivery performance for messages that were successfully delivered. All percentages are calculated with countMessagesAccepted as the denominator. These categories are not mutually exclusive; a message can be delayed for multiple reasons.

| Property | Type | Description |
|----------|------|-------------|
| `delayedDeviceDoze` | `number` | The percentage of accepted messages that were delayed because the device was in doze mode. Only [... |
| `delayedDeviceOffline` | `number` | The percentage of accepted messages that were delayed because the target device was not connected... |
| `delayedMessageThrottled` | `number` | The percentage of accepted messages that were delayed due to message throttling, such as [collaps... |
| `delayedUserStopped` | `number` | The percentage of accepted messages that were delayed because the intended device user-profile wa... |
| `deliveredNoDelay` | `number` | The percentage of accepted messages that were delivered to the device without delay from the FCM ... |

### `GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse`

Response message for ListAndroidDeliveryData.

| Property | Type | Description |
|----------|------|-------------|
| `androidDeliveryData` | `array<GoogleFirebaseFcmDataV1beta1AndroidDeliveryData>` | The delivery data for the provided app. There will be one entry per combination of app, date, and... |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleFirebaseFcmDataV1beta1MessageInsightPercents`

Additional information about message delivery. All percentages are calculated with countMessagesAccepted as the denominator.

| Property | Type | Description |
|----------|------|-------------|
| `priorityLowered` | `number` | The percentage of accepted messages that had their priority lowered from high to normal. See [doc... |

### `GoogleFirebaseFcmDataV1beta1MessageOutcomePercents`

Percentage breakdown of message delivery outcomes. These categories are mutually exclusive. All percentages are calculated with countMessagesAccepted as the denominator. These categories may not account for all message outcomes.

| Property | Type | Description |
|----------|------|-------------|
| `collapsed` | `number` | The percentage of accepted messages that were [collapsed](https://firebase.google.com/docs/cloud-... |
| `delivered` | `number` | The percentage of all accepted messages that were successfully delivered to the device. |
| `droppedAppForceStopped` | `number` | The percentage of accepted messages that were dropped because the application was force stopped o... |
| `droppedDeviceInactive` | `number` | The percentage of accepted messages that were dropped because the target device is inactive. FCM ... |
| `droppedTooManyPendingMessages` | `number` | The percentage of accepted messages that were dropped due to [too many undelivered non-collapsibl... |
| `droppedTtlExpired` | `number` | The percentage of accepted messages that expired because [Time To Live (TTL)](https://firebase.go... |
| `pending` | `number` | The percentage of messages accepted on this day that were not dropped and not delivered, due to t... |

### `GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents`

Additional information about [proxy notification](https://firebase.google.com/docs/cloud-messaging/android/message-priority#proxy) delivery. All percentages are calculated with countNotificationsAccepted as the denominator.

| Property | Type | Description |
|----------|------|-------------|
| `failed` | `number` | The percentage of accepted notifications that failed to be proxied. This is usually caused by exc... |
| `proxied` | `number` | The percentage of accepted notifications that were successfully proxied by [Google Play services]... |
| `skippedNotThrottled` | `number` | The percentage of accepted notifications that were skipped because the messages were not throttled. |
| `skippedOptedOut` | `number` | The percentage of accepted notifications that were skipped because the app disallowed these messa... |
| `skippedUnconfigured` | `number` | The percentage of accepted notifications that were skipped because configurations required for no... |
| `skippedUnsupported` | `number` | The percentage of accepted notifications that were skipped because proxy notification is unsuppor... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

