# Web Search Indexing API - API Reference

**Version**: `v3` | **Methods**: 2 | **Schemas**: 3

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `indexing.urlNotifications.publish` | POST | `v3/urlNotifications:publish` | Notifies that a URL has been updated or deleted. |
| `indexing.urlNotifications.getMetadata` | GET | `v3/urlNotifications/metadata` | Gets metadata about a Web Document. This method can _only_ be used to query URLs that were previo... |

### `indexing.urlNotifications.publish`

**POST** `v3/urlNotifications:publish`

Notifies that a URL has been updated or deleted.

**Request body**: `UrlNotification`

**Response**: `PublishUrlNotificationResponse`

```typescript
const res = await indexing.urlNotifications.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/indexing`

---

### `indexing.urlNotifications.getMetadata`

**GET** `v3/urlNotifications/metadata`

Gets metadata about a Web Document. This method can _only_ be used to query URLs that were previously seen in successful Indexing API notifications. Includes the latest `UrlNotification` received via this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `url` | `string` | query | No | URL that is being queried. |

**Response**: `UrlNotificationMetadata`

```typescript
const res = await indexing.urlNotifications.getMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/indexing`

---

## Schemas

### `PublishUrlNotificationResponse`

Output for PublishUrlNotification

| Property | Type | Description |
|----------|------|-------------|
| `urlNotificationMetadata` | `UrlNotificationMetadata` | Description of the notification events received for this URL. |

### `UrlNotification`

`UrlNotification` is the resource used in all Indexing API calls. It describes one event in the life cycle of a Web Document.

| Property | Type | Description |
|----------|------|-------------|
| `notifyTime` | `string` | Creation timestamp for this notification. Users should _not_ specify it, the field is ignored at ... |
| `type` | `string` | The URL life cycle event that Google is being notified about. |
| `url` | `string` | The object of this notification. The URL must be owned by the publisher of this notification and,... |

### `UrlNotificationMetadata`

Summary of the most recent Indexing API notifications successfully received, for a given URL.

| Property | Type | Description |
|----------|------|-------------|
| `latestRemove` | `UrlNotification` | Latest notification received with type `URL_REMOVED`. |
| `latestUpdate` | `UrlNotification` | Latest notification received with type `URL_UPDATED`. |
| `url` | `string` | URL to which this metadata refers. |

