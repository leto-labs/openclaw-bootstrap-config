# My Business Notifications API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 1

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessnotifications.accounts.getNotificationSetting` | GET | `v1/{+name}` | Returns the pubsub notification settings for the account. |
| `mybusinessnotifications.accounts.updateNotificationSetting` | PATCH | `v1/{+name}` | Sets the pubsub notification setting for the account informing Google which topic to send pubsub ... |

### `mybusinessnotifications.accounts.getNotificationSetting`

**GET** `v1/{+name}`

Returns the pubsub notification settings for the account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the notification setting we are trying to fetch. |

**Response**: `NotificationSetting`

```typescript
const res = await mybusinessnotifications.accounts.getNotificationSetting({
  // parameters
});
```

---

### `mybusinessnotifications.accounts.updateNotificationSetting`

**PATCH** `v1/{+name}`

Sets the pubsub notification setting for the account informing Google which topic to send pubsub notifications for. Use the notification_types field within notification_setting to manipulate the events an account wants to subscribe to. An account will only have one notification setting resource, and only one pubsub topic can be set. To delete the setting, update with an empty notification_types

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name this setting is for. This is of the form `accounts/{account_id}/notificationSetting`. |
| `updateMask` | `string` | query | No | Required. The specific fields that should be updated. The only editable field is notification_setting. |

**Request body**: `NotificationSetting`

**Response**: `NotificationSetting`

```typescript
const res = await mybusinessnotifications.accounts.updateNotificationSetting({
  // parameters
});
```

---

## Schemas

### `NotificationSetting`

A Google Pub/Sub topic where notifications can be published when a location is updated or has a new review. There will be only one notification setting resource per-account.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The resource name this setting is for. This is of the form `accounts/{account_id}/notif... |
| `notificationTypes` | `array<string>` | The types of notifications that will be sent to the Pub/Sub topic. To stop receiving notification... |
| `pubsubTopic` | `string` | Optional. The Google Pub/Sub topic that will receive notifications when locations managed by this... |

