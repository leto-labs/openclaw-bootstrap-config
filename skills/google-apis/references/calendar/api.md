# Calendar API - API Reference

**Version**: `v3` | **Methods**: 37 | **Schemas**: 37

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `calendar.acl.delete` | DELETE | `calendars/{calendarId}/acl/{ruleId}` | Deletes an access control rule. |
| `calendar.acl.get` | GET | `calendars/{calendarId}/acl/{ruleId}` | Returns an access control rule. |
| `calendar.acl.insert` | POST | `calendars/{calendarId}/acl` | Creates an access control rule. |
| `calendar.acl.list` | GET | `calendars/{calendarId}/acl` | Returns the rules in the access control list for the calendar. |
| `calendar.acl.patch` | PATCH | `calendars/{calendarId}/acl/{ruleId}` | Updates an access control rule. This method supports patch semantics. |
| `calendar.acl.update` | PUT | `calendars/{calendarId}/acl/{ruleId}` | Updates an access control rule. |
| `calendar.acl.watch` | POST | `calendars/{calendarId}/acl/watch` | Watch for changes to ACL resources. |
| `calendar.calendarList.delete` | DELETE | `users/me/calendarList/{calendarId}` | Removes a calendar from the user's calendar list. |
| `calendar.calendarList.get` | GET | `users/me/calendarList/{calendarId}` | Returns a calendar from the user's calendar list. |
| `calendar.calendarList.insert` | POST | `users/me/calendarList` | Inserts an existing calendar into the user's calendar list. |
| `calendar.calendarList.list` | GET | `users/me/calendarList` | Returns the calendars on the user's calendar list. |
| `calendar.calendarList.patch` | PATCH | `users/me/calendarList/{calendarId}` | Updates an existing calendar on the user's calendar list. This method supports patch semantics. |
| `calendar.calendarList.update` | PUT | `users/me/calendarList/{calendarId}` | Updates an existing calendar on the user's calendar list. |
| `calendar.calendarList.watch` | POST | `users/me/calendarList/watch` | Watch for changes to CalendarList resources. |
| `calendar.calendars.clear` | POST | `calendars/{calendarId}/clear` | Clears a primary calendar. This operation deletes all events associated with the primary calendar... |
| `calendar.calendars.delete` | DELETE | `calendars/{calendarId}` | Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars. |
| `calendar.calendars.get` | GET | `calendars/{calendarId}` | Returns metadata for a calendar. |
| `calendar.calendars.insert` | POST | `calendars` | Creates a secondary calendar. The authenticated user for the request is made the data owner of th... |
| `calendar.calendars.patch` | PATCH | `calendars/{calendarId}` | Updates metadata for a calendar. This method supports patch semantics. |
| `calendar.calendars.update` | PUT | `calendars/{calendarId}` | Updates metadata for a calendar. |
| `calendar.channels.stop` | POST | `channels/stop` | Stop watching resources through this channel |
| `calendar.colors.get` | GET | `colors` | Returns the color definitions for calendars and events. |
| `calendar.events.delete` | DELETE | `calendars/{calendarId}/events/{eventId}` | Deletes an event. |
| `calendar.events.get` | GET | `calendars/{calendarId}/events/{eventId}` | Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, ca... |
| `calendar.events.import` | POST | `calendars/{calendarId}/events/import` | Imports an event. This operation is used to add a private copy of an existing event to a calendar... |
| `calendar.events.insert` | POST | `calendars/{calendarId}/events` | Creates an event. |
| `calendar.events.instances` | GET | `calendars/{calendarId}/events/{eventId}/instances` | Returns instances of the specified recurring event. |
| `calendar.events.list` | GET | `calendars/{calendarId}/events` | Returns events on the specified calendar. |
| `calendar.events.move` | POST | `calendars/{calendarId}/events/{eventId}/move` | Moves an event to another calendar, i.e. changes an event's organizer. Note that only default eve... |
| `calendar.events.patch` | PATCH | `calendars/{calendarId}/events/{eventId}` | Updates an event. This method supports patch semantics. |
| `calendar.events.quickAdd` | POST | `calendars/{calendarId}/events/quickAdd` | Creates an event based on a simple text string. |
| `calendar.events.update` | PUT | `calendars/{calendarId}/events/{eventId}` | Updates an event. |
| `calendar.events.watch` | POST | `calendars/{calendarId}/events/watch` | Watch for changes to Events resources. |
| `calendar.freebusy.query` | POST | `freeBusy` | Returns free/busy information for a set of calendars. |
| `calendar.settings.get` | GET | `users/me/settings/{setting}` | Returns a single user setting. |
| `calendar.settings.list` | GET | `users/me/settings` | Returns all user settings for the authenticated user. |
| `calendar.settings.watch` | POST | `users/me/settings/watch` | Watch for changes to Settings resources. |

### `calendar.acl.delete`

**DELETE** `calendars/{calendarId}/acl/{ruleId}`

Deletes an access control rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `ruleId` | `string` | path | Yes | ACL rule identifier. |

```typescript
const res = await calendar.acl.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`

---

### `calendar.acl.get`

**GET** `calendars/{calendarId}/acl/{ruleId}`

Returns an access control rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `ruleId` | `string` | path | Yes | ACL rule identifier. |

**Response**: `AclRule`

```typescript
const res = await calendar.acl.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`
- `https://www.googleapis.com/auth/calendar.acls.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.acl.insert`

**POST** `calendars/{calendarId}/acl`

Creates an access control rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `sendNotifications` | `boolean` | query | No | Whether to send notifications about the calendar sharing change. Optional. The default is True. |

**Request body**: `AclRule`

**Response**: `AclRule`

```typescript
const res = await calendar.acl.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`

---

### `calendar.acl.list`

**GET** `calendars/{calendarId}/acl`

Returns the rules in the access control list for the calendar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `showDeleted` | `boolean` | query | No | Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to "none". Deleted ACLs wil... |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Response**: `Acl`

```typescript
const res = await calendar.acl.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`
- `https://www.googleapis.com/auth/calendar.acls.readonly`

---

### `calendar.acl.patch`

**PATCH** `calendars/{calendarId}/acl/{ruleId}`

Updates an access control rule. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `ruleId` | `string` | path | Yes | ACL rule identifier. |
| `sendNotifications` | `boolean` | query | No | Whether to send notifications about the calendar sharing change. Note that there are no notifications on access remov... |

**Request body**: `AclRule`

**Response**: `AclRule`

```typescript
const res = await calendar.acl.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`

---

### `calendar.acl.update`

**PUT** `calendars/{calendarId}/acl/{ruleId}`

Updates an access control rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `ruleId` | `string` | path | Yes | ACL rule identifier. |
| `sendNotifications` | `boolean` | query | No | Whether to send notifications about the calendar sharing change. Note that there are no notifications on access remov... |

**Request body**: `AclRule`

**Response**: `AclRule`

```typescript
const res = await calendar.acl.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`

---

### `calendar.acl.watch`

**POST** `calendars/{calendarId}/acl/watch`

Watch for changes to ACL resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `showDeleted` | `boolean` | query | No | Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to "none". Deleted ACLs wil... |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await calendar.acl.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`
- `https://www.googleapis.com/auth/calendar.acls.readonly`

---

### `calendar.calendarList.delete`

**DELETE** `users/me/calendarList/{calendarId}`

Removes a calendar from the user's calendar list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

```typescript
const res = await calendar.calendarList.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`

---

### `calendar.calendarList.get`

**GET** `users/me/calendarList/{calendarId}`

Returns a calendar from the user's calendar list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

**Response**: `CalendarListEntry`

```typescript
const res = await calendar.calendarList.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`
- `https://www.googleapis.com/auth/calendar.calendarlist.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.calendarList.insert`

**POST** `users/me/calendarList`

Inserts an existing calendar into the user's calendar list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `colorRgbFormat` | `boolean` | query | No | Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is ... |

**Request body**: `CalendarListEntry`

**Response**: `CalendarListEntry`

```typescript
const res = await calendar.calendarList.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.calendarlist`

---

### `calendar.calendarList.list`

**GET** `users/me/calendarList`

Returns the calendars on the user's calendar list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `minAccessRole` | `string` | query | No | The minimum access role for the user in the returned entries. Optional. The default is no restriction. |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `showDeleted` | `boolean` | query | No | Whether to include deleted calendar list entries in the result. Optional. The default is False. |
| `showHidden` | `boolean` | query | No | Whether to show hidden entries. Optional. The default is False. |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Response**: `CalendarList`

```typescript
const res = await calendar.calendarList.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.calendarlist`
- `https://www.googleapis.com/auth/calendar.calendarlist.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.calendarList.patch`

**PATCH** `users/me/calendarList/{calendarId}`

Updates an existing calendar on the user's calendar list. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `colorRgbFormat` | `boolean` | query | No | Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is ... |

**Request body**: `CalendarListEntry`

**Response**: `CalendarListEntry`

```typescript
const res = await calendar.calendarList.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`

---

### `calendar.calendarList.update`

**PUT** `users/me/calendarList/{calendarId}`

Updates an existing calendar on the user's calendar list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `colorRgbFormat` | `boolean` | query | No | Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is ... |

**Request body**: `CalendarListEntry`

**Response**: `CalendarListEntry`

```typescript
const res = await calendar.calendarList.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`

---

### `calendar.calendarList.watch`

**POST** `users/me/calendarList/watch`

Watch for changes to CalendarList resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `minAccessRole` | `string` | query | No | The minimum access role for the user in the returned entries. Optional. The default is no restriction. |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `showDeleted` | `boolean` | query | No | Whether to include deleted calendar list entries in the result. Optional. The default is False. |
| `showHidden` | `boolean` | query | No | Whether to show hidden entries. Optional. The default is False. |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await calendar.calendarList.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.calendarlist`
- `https://www.googleapis.com/auth/calendar.calendarlist.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.calendars.clear`

**POST** `calendars/{calendarId}/clear`

Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

```typescript
const res = await calendar.calendars.clear({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.calendars`

---

### `calendar.calendars.delete`

**DELETE** `calendars/{calendarId}`

Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

```typescript
const res = await calendar.calendars.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendars`

---

### `calendar.calendars.get`

**GET** `calendars/{calendarId}`

Returns metadata for a calendar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

**Response**: `Calendar`

```typescript
const res = await calendar.calendars.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendars`
- `https://www.googleapis.com/auth/calendar.calendars.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.calendars.insert`

**POST** `calendars`

Creates a secondary calendar.
The authenticated user for the request is made the data owner of the new calendar.

Note: We recommend to authenticate as the intended data owner of the calendar. You can use domain-wide delegation of authority to allow applications to act on behalf of a specific user. Don't use a service account for authentication. If you use a service account for authentication, the service account is the data owner, which can lead to unexpected behavior. For example, if a service account is the data owner, data ownership cannot be transferred.

**Request body**: `Calendar`

**Response**: `Calendar`

```typescript
const res = await calendar.calendars.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendars`

---

### `calendar.calendars.patch`

**PATCH** `calendars/{calendarId}`

Updates metadata for a calendar. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

**Request body**: `Calendar`

**Response**: `Calendar`

```typescript
const res = await calendar.calendars.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendars`

---

### `calendar.calendars.update`

**PUT** `calendars/{calendarId}`

Updates metadata for a calendar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |

**Request body**: `Calendar`

**Response**: `Calendar`

```typescript
const res = await calendar.calendars.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendars`

---

### `calendar.channels.stop`

**POST** `channels/stop`

Stop watching resources through this channel

**Request body**: `Channel`

```typescript
const res = await calendar.channels.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.acls`
- `https://www.googleapis.com/auth/calendar.acls.readonly`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`
- `https://www.googleapis.com/auth/calendar.calendarlist.readonly`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.events.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`
- `https://www.googleapis.com/auth/calendar.settings.readonly`

---

### `calendar.colors.get`

**GET** `colors`

Returns the color definitions for calendars and events.

**Response**: `Colors`

```typescript
const res = await calendar.colors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.calendarlist`
- `https://www.googleapis.com/auth/calendar.calendarlist.readonly`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.events.delete`

**DELETE** `calendars/{calendarId}/events/{eventId}`

Deletes an event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `eventId` | `string` | path | Yes | Event identifier. |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the deletion of the event. Note that... |
| `sendUpdates` | `string` | query | No | Guests who should receive notifications about the deletion of the event. |

```typescript
const res = await calendar.events.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.get`

**GET** `calendars/{calendarId}/events/{eventId}`

Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, call the events.list method using the iCalUID parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `eventId` | `string` | path | Yes | Event identifier. |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, ... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `timeZone` | `string` | query | No | Time zone used in the response. Optional. The default is the time zone of the calendar. |

**Response**: `Event`

```typescript
const res = await calendar.events.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.events.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.events.import`

**POST** `calendars/{calendarId}/events/import`

Imports an event. This operation is used to add a private copy of an existing event to a calendar. Only events with an eventType of default may be imported.
Deprecated behavior: If a non-default event is imported, its type will be changed to default and any event-type-specific properties it may have will be dropped.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `conferenceDataVersion` | `integer` | query | No | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignor... |
| `supportsAttachments` | `boolean` | query | No | Whether API client performing operation supports event attachments. Optional. The default is False. |

**Request body**: `Event`

**Response**: `Event`

```typescript
const res = await calendar.events.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.insert`

**POST** `calendars/{calendarId}/events`

Creates an event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `conferenceDataVersion` | `integer` | query | No | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignor... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the creation of the new event. Note ... |
| `sendUpdates` | `string` | query | No | Whether to send notifications about the creation of the new event. Note that some emails might still be sent. The def... |
| `supportsAttachments` | `boolean` | query | No | Whether API client performing operation supports event attachments. Optional. The default is False. |

**Request body**: `Event`

**Response**: `Event`

```typescript
const res = await calendar.events.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.instances`

**GET** `calendars/{calendarId}/events/{eventId}/instances`

Returns instances of the specified recurring event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `eventId` | `string` | path | Yes | Recurring event identifier. |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, ... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `maxResults` | `integer` | query | No | Maximum number of events returned on one result page. By default the value is 250 events. The page size can never be ... |
| `originalStart` | `string` | query | No | The original start time of the instance in the result. Optional. |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `showDeleted` | `boolean` | query | No | Whether to include deleted events (with status equals "cancelled") in the result. Cancelled instances of recurring ev... |
| `timeMax` | `string` | query | No | Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.... |
| `timeMin` | `string` | query | No | Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Mus... |
| `timeZone` | `string` | query | No | Time zone used in the response. Optional. The default is the time zone of the calendar. |

**Response**: `Events`

```typescript
const res = await calendar.events.instances({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.events.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.events.list`

**GET** `calendars/{calendarId}/events`

Returns events on the specified calendar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. |
| `eventTypes` | `string` | query | No | Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. I... |
| `iCalUID` | `string` | query | No | Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to searc... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `maxResults` | `integer` | query | No | Maximum number of events returned on one result page. The number of events in the resulting page may be less than thi... |
| `orderBy` | `string` | query | No | The order of the events returned in the result. Optional. The default is an unspecified, stable order. |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `privateExtendedProperty` | `string` | query | No | Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might... |
| `q` | `string` | query | No | Free text search terms to find events that match these terms in the following fields:  - summary  - description  - lo... |
| `sharedExtendedProperty` | `string` | query | No | Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might ... |
| `showDeleted` | `boolean` | query | No | Whether to include deleted events (with status equals "cancelled") in the result. Cancelled instances of recurring ev... |
| `showHiddenInvitations` | `boolean` | query | No | Whether to include hidden invitations in the result. Optional. The default is False. |
| `singleEvents` | `boolean` | query | No | Whether to expand recurring events into instances and only return single one-off events and instances of recurring ev... |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |
| `timeMax` | `string` | query | No | Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.... |
| `timeMin` | `string` | query | No | Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Mus... |
| `timeZone` | `string` | query | No | Time zone used in the response. Optional. The default is the time zone of the calendar. |
| `updatedMin` | `string` | query | No | Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries dele... |

**Response**: `Events`

```typescript
const res = await calendar.events.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.events.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.events.move`

**POST** `calendars/{calendarId}/events/{eventId}/move`

Moves an event to another calendar, i.e. changes an event's organizer. Note that only default events can be moved; birthday, focusTime, fromGmail, outOfOffice and workingLocation events cannot be moved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier of the source calendar where the event currently is on. |
| `eventId` | `string` | path | Yes | Event identifier. |
| `destination` | `string` | query | Yes | Calendar identifier of the target calendar where the event is to be moved to. |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the change of the event's organizer.... |
| `sendUpdates` | `string` | query | No | Guests who should receive notifications about the change of the event's organizer. |

**Response**: `Event`

```typescript
const res = await calendar.events.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.patch`

**PATCH** `calendars/{calendarId}/events/{eventId}`

Updates an event. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `eventId` | `string` | path | Yes | Event identifier. |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, ... |
| `conferenceDataVersion` | `integer` | query | No | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignor... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the event update (for example, descr... |
| `sendUpdates` | `string` | query | No | Guests who should receive notifications about the event update (for example, title changes, etc.). |
| `supportsAttachments` | `boolean` | query | No | Whether API client performing operation supports event attachments. Optional. The default is False. |

**Request body**: `Event`

**Response**: `Event`

```typescript
const res = await calendar.events.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.quickAdd`

**POST** `calendars/{calendarId}/events/quickAdd`

Creates an event based on a simple text string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `text` | `string` | query | Yes | The text describing the event to be created. |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the creation of the event. Note that... |
| `sendUpdates` | `string` | query | No | Guests who should receive notifications about the creation of the new event. |

**Response**: `Event`

```typescript
const res = await calendar.events.quickAdd({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.update`

**PUT** `calendars/{calendarId}/events/{eventId}`

Updates an event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `eventId` | `string` | path | Yes | Event identifier. |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, ... |
| `conferenceDataVersion` | `integer` | query | No | Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignor... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `sendNotifications` | `boolean` | query | No | Deprecated. Please use sendUpdates instead.  Whether to send notifications about the event update (for example, descr... |
| `sendUpdates` | `string` | query | No | Guests who should receive notifications about the event update (for example, title changes, etc.). |
| `supportsAttachments` | `boolean` | query | No | Whether API client performing operation supports event attachments. Optional. The default is False. |

**Request body**: `Event`

**Response**: `Event`

```typescript
const res = await calendar.events.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.owned`

---

### `calendar.events.watch`

**POST** `calendars/{calendarId}/events/watch`

Watch for changes to Events resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `calendarId` | `string` | path | Yes | Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary ca... |
| `alwaysIncludeEmail` | `boolean` | query | No | Deprecated and ignored. |
| `eventTypes` | `string` | query | No | Event types to return. Optional. This parameter can be repeated multiple times to return events of different types. I... |
| `iCalUID` | `string` | query | No | Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to searc... |
| `maxAttendees` | `integer` | query | No | The maximum number of attendees to include in the response. If there are more than the specified number of attendees,... |
| `maxResults` | `integer` | query | No | Maximum number of events returned on one result page. The number of events in the resulting page may be less than thi... |
| `orderBy` | `string` | query | No | The order of the events returned in the result. Optional. The default is an unspecified, stable order. |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `privateExtendedProperty` | `string` | query | No | Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might... |
| `q` | `string` | query | No | Free text search terms to find events that match these terms in the following fields:  - summary  - description  - lo... |
| `sharedExtendedProperty` | `string` | query | No | Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might ... |
| `showDeleted` | `boolean` | query | No | Whether to include deleted events (with status equals "cancelled") in the result. Cancelled instances of recurring ev... |
| `showHiddenInvitations` | `boolean` | query | No | Whether to include hidden invitations in the result. Optional. The default is False. |
| `singleEvents` | `boolean` | query | No | Whether to expand recurring events into instances and only return single one-off events and instances of recurring ev... |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |
| `timeMax` | `string` | query | No | Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.... |
| `timeMin` | `string` | query | No | Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Mus... |
| `timeZone` | `string` | query | No | Time zone used in the response. Optional. The default is the time zone of the calendar. |
| `updatedMin` | `string` | query | No | Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries dele... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await calendar.events.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.app.created`
- `https://www.googleapis.com/auth/calendar.events`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.events.owned`
- `https://www.googleapis.com/auth/calendar.events.owned.readonly`
- `https://www.googleapis.com/auth/calendar.events.public.readonly`
- `https://www.googleapis.com/auth/calendar.events.readonly`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.freebusy.query`

**POST** `freeBusy`

Returns free/busy information for a set of calendars.

**Request body**: `FreeBusyRequest`

**Response**: `FreeBusyResponse`

```typescript
const res = await calendar.freebusy.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.events.freebusy`
- `https://www.googleapis.com/auth/calendar.freebusy`
- `https://www.googleapis.com/auth/calendar.readonly`

---

### `calendar.settings.get`

**GET** `users/me/settings/{setting}`

Returns a single user setting.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `setting` | `string` | path | Yes | The id of the user setting. |

**Response**: `Setting`

```typescript
const res = await calendar.settings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.readonly`
- `https://www.googleapis.com/auth/calendar.settings.readonly`

---

### `calendar.settings.list`

**GET** `users/me/settings`

Returns all user settings for the authenticated user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Response**: `Settings`

```typescript
const res = await calendar.settings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.readonly`
- `https://www.googleapis.com/auth/calendar.settings.readonly`

---

### `calendar.settings.watch`

**POST** `users/me/settings/watch`

Watch for changes to Settings resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never b... |
| `pageToken` | `string` | query | No | Token specifying which result page to return. Optional. |
| `syncToken` | `string` | query | No | Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It m... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await calendar.settings.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/calendar`
- `https://www.googleapis.com/auth/calendar.readonly`
- `https://www.googleapis.com/auth/calendar.settings.readonly`

---

## Schemas

### `Acl`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the collection. |
| `items` | `array<AclRule>` | List of rules on the access control list. |
| `kind` | `string` | Type of the collection ("calendar#acl"). |
| `nextPageToken` | `string` | Token used to access the next page of this result. Omitted if no further results are available, i... |
| `nextSyncToken` | `string` | Token used at a later point in time to retrieve only the entries that have changed since this res... |

### `AclRule`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `id` | `string` | Identifier of the Access Control List (ACL) rule. See Sharing calendars. |
| `kind` | `string` | Type of the resource ("calendar#aclRule"). |
| `role` | `string` | The role assigned to the scope. Possible values are:   - "none" - Provides no access.  - "freeBus... |
| `scope` | `object` | The extent to which calendar access is granted by this ACL rule. |

### `Calendar`

| Property | Type | Description |
|----------|------|-------------|
| `autoAcceptInvitations` | `boolean` | Whether this calendar automatically accepts invitations. Only valid for resource calendars. |
| `conferenceProperties` | `ConferenceProperties` | Conferencing properties for this calendar, for example what types of conferences are allowed. |
| `dataOwner` | `string` | The email of the owner of the calendar. Set only for secondary calendars. Read-only. |
| `description` | `string` | Description of the calendar. Optional. |
| `etag` | `string` | ETag of the resource. |
| `id` | `string` | Identifier of the calendar. To retrieve IDs call the calendarList.list() method. |
| `kind` | `string` | Type of the resource ("calendar#calendar"). |
| `location` | `string` | Geographic location of the calendar as free-form text. Optional. |
| `summary` | `string` | Title of the calendar. |
| `timeZone` | `string` | The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. "Europe/Zurich... |

### `CalendarList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the collection. |
| `items` | `array<CalendarListEntry>` | Calendars that are present on the user's calendar list. |
| `kind` | `string` | Type of the collection ("calendar#calendarList"). |
| `nextPageToken` | `string` | Token used to access the next page of this result. Omitted if no further results are available, i... |
| `nextSyncToken` | `string` | Token used at a later point in time to retrieve only the entries that have changed since this res... |

### `CalendarListEntry`

| Property | Type | Description |
|----------|------|-------------|
| `accessRole` | `string` | The effective access role that the authenticated user has on the calendar. Read-only. Possible va... |
| `autoAcceptInvitations` | `boolean` | Whether this calendar automatically accepts invitations. Only valid for resource calendars. Read-... |
| `backgroundColor` | `string` | The main color of the calendar in the hexadecimal format "#0088aa". This property supersedes the ... |
| `colorId` | `string` | The color of the calendar. This is an ID referring to an entry in the calendar section of the col... |
| `conferenceProperties` | `ConferenceProperties` | Conferencing properties for this calendar, for example what types of conferences are allowed. |
| `dataOwner` | `string` | The email of the owner of the calendar. Set only for secondary calendars. Read-only. |
| `defaultReminders` | `array<EventReminder>` | The default reminders that the authenticated user has for this calendar. |
| `deleted` | `boolean` | Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. Th... |
| `description` | `string` | Description of the calendar. Optional. Read-only. |
| `etag` | `string` | ETag of the resource. |
| `foregroundColor` | `string` | The foreground color of the calendar in the hexadecimal format "#ffffff". This property supersede... |
| `hidden` | `boolean` | Whether the calendar has been hidden from the list. Optional. The attribute is only returned when... |
| `id` | `string` | Identifier of the calendar. |
| `kind` | `string` | Type of the resource ("calendar#calendarListEntry"). |
| `location` | `string` | Geographic location of the calendar as free-form text. Optional. Read-only. |
| `notificationSettings` | `object` | The notifications that the authenticated user is receiving for this calendar. |
| `primary` | `boolean` | Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The ... |
| `selected` | `boolean` | Whether the calendar content shows up in the calendar UI. Optional. The default is False. |
| `summary` | `string` | Title of the calendar. Read-only. |
| `summaryOverride` | `string` | The summary that the authenticated user has set for this calendar. Optional. |
| `timeZone` | `string` | The time zone of the calendar. Optional. Read-only. |

### `CalendarNotification`

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | The method used to deliver the notification. The possible value is:   - "email" - Notifications a... |
| `type` | `string` | The type of notification. Possible values are:   - "eventCreation" - Notification sent when a new... |

### `Channel`

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address where notifications are delivered for this channel. |
| `expiration` | `string` | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds.... |
| `id` | `string` | A UUID or similar unique string that identifies this channel. |
| `kind` | `string` | Identifies this as a notification channel used to watch for changes to a resource, which is "api#... |
| `params` | `object` | Additional parameters controlling delivery channel behavior. Optional. |
| `payload` | `boolean` | A Boolean value to indicate whether payload is wanted. Optional. |
| `resourceId` | `string` | An opaque ID that identifies the resource being watched on this channel. Stable across different ... |
| `resourceUri` | `string` | A version-specific identifier for the watched resource. |
| `token` | `string` | An arbitrary string delivered to the target address with each notification delivered over this ch... |
| `type` | `string` | The type of delivery mechanism used for this channel. Valid values are "web_hook" (or "webhook").... |

### `ColorDefinition`

| Property | Type | Description |
|----------|------|-------------|
| `background` | `string` | The background color associated with this color definition. |
| `foreground` | `string` | The foreground color that can be used to write on top of a background with 'background' color. |

### `Colors`

| Property | Type | Description |
|----------|------|-------------|
| `calendar` | `object` | A global palette of calendar colors, mapping from the color ID to its definition. A calendarListE... |
| `event` | `object` | A global palette of event colors, mapping from the color ID to its definition. An event resource ... |
| `kind` | `string` | Type of the resource ("calendar#colors"). |
| `updated` | `string` | Last modification time of the color palette (as a RFC3339 timestamp). Read-only. |

### `ConferenceData`

| Property | Type | Description |
|----------|------|-------------|
| `conferenceId` | `string` | The ID of the conference. Can be used by developers to keep track of conferences, should not be d... |
| `conferenceSolution` | `ConferenceSolution` | The conference solution, such as Google Meet. Unset for a conference with a failed create request... |
| `createRequest` | `CreateConferenceRequest` | A request to generate a new conference and attach it to the event. The data is generated asynchro... |
| `entryPoints` | `array<EntryPoint>` | Information about individual conference entry points, such as URLs or phone numbers. All of them ... |
| `notes` | `string` | Additional notes (such as instructions from the domain administrator, legal notices) to display t... |
| `parameters` | `ConferenceParameters` | Additional properties related to a conference. An example would be a solution-specific setting fo... |
| `signature` | `string` | The signature of the conference data. Generated on server side. Unset for a conference with a fai... |

### `ConferenceParameters`

| Property | Type | Description |
|----------|------|-------------|
| `addOnParameters` | `ConferenceParametersAddOnParameters` | Additional add-on specific data. |

### `ConferenceParametersAddOnParameters`

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` |  |

### `ConferenceProperties`

| Property | Type | Description |
|----------|------|-------------|
| `allowedConferenceSolutionTypes` | `array<string>` | The types of conference solutions that are supported for this calendar. The possible values are: ... |

### `ConferenceRequestStatus`

| Property | Type | Description |
|----------|------|-------------|
| `statusCode` | `string` | The current status of the conference create request. Read-only. The possible values are:   - "pen... |

### `ConferenceSolution`

| Property | Type | Description |
|----------|------|-------------|
| `iconUri` | `string` | The user-visible icon for this solution. |
| `key` | `ConferenceSolutionKey` | The key which can uniquely identify the conference solution for this event. |
| `name` | `string` | The user-visible name of this solution. Not localized. |

### `ConferenceSolutionKey`

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The conference solution type. If a client encounters an unfamiliar or empty type, it should still... |

### `CreateConferenceRequest`

| Property | Type | Description |
|----------|------|-------------|
| `conferenceSolutionKey` | `ConferenceSolutionKey` | The conference solution, such as Hangouts or Google Meet. |
| `requestId` | `string` | The client-generated unique ID for this request. Clients should regenerate this ID for every new ... |
| `status` | `ConferenceRequestStatus` | The status of the conference create request. |

### `EntryPoint`

| Property | Type | Description |
|----------|------|-------------|
| `accessCode` | `string` | The access code to access the conference. The maximum length is 128 characters. When creating new... |
| `entryPointFeatures` | `array<string>` | Features of the entry point, such as being toll or toll-free. One entry point can have multiple f... |
| `entryPointType` | `string` | The type of the conference entry point. Possible values are:   - "video" - joining a conference o... |
| `label` | `string` | The label for the URI. Visible to end users. Not localized. The maximum length is 512 characters.... |
| `meetingCode` | `string` | The meeting code to access the conference. The maximum length is 128 characters. When creating ne... |
| `passcode` | `string` | The passcode to access the conference. The maximum length is 128 characters. When creating new co... |
| `password` | `string` | The password to access the conference. The maximum length is 128 characters. When creating new co... |
| `pin` | `string` | The PIN to access the conference. The maximum length is 128 characters. When creating new confere... |
| `regionCode` | `string` | The CLDR/ISO 3166 region code for the country associated with this phone access. Example: "SE" fo... |
| `uri` | `string` | The URI of the entry point. The maximum length is 1300 characters. Format:   - for video, http: o... |

### `Error`

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain, or broad category, of the error. |
| `reason` | `string` | Specific reason for the error. Some of the possible values are:   - "groupTooBig" - The group of ... |

### `Event`

| Property | Type | Description |
|----------|------|-------------|
| `anyoneCanAddSelf` | `boolean` | Whether anyone can invite themselves to the event (deprecated). Optional. The default is False. |
| `attachments` | `array<EventAttachment>` | File attachments for the event. In order to modify attachments the supportsAttachments request pa... |
| `attendees` | `array<EventAttendee>` | The attendees of the event. See the Events with attendees guide for more information on schedulin... |
| `attendeesOmitted` | `boolean` | Whether attendees may have been omitted from the event's representation. When retrieving an event... |
| `birthdayProperties` | `EventBirthdayProperties` | Birthday or special event data. Used if eventType is "birthday". Immutable. |
| `colorId` | `string` | The color of the event. This is an ID referring to an entry in the event section of the colors de... |
| `conferenceData` | `ConferenceData` | The conference-related information, such as details of a Google Meet conference. To create new co... |
| `created` | `string` | Creation time of the event (as a RFC3339 timestamp). Read-only. |
| `creator` | `object` | The creator of the event. Read-only. |
| `description` | `string` | Description of the event. Can contain HTML. Optional. |
| `end` | `EventDateTime` | The (exclusive) end time of the event. For a recurring event, this is the end time of the first i... |
| `endTimeUnspecified` | `boolean` | Whether the end time is actually unspecified. An end time is still provided for compatibility rea... |
| `etag` | `string` | ETag of the resource. |
| `eventType` | `string` | Specific type of the event. This cannot be modified after the event is created. Possible values a... |
| `extendedProperties` | `object` | Extended properties of the event. |
| `focusTimeProperties` | `EventFocusTimeProperties` | Focus Time event data. Used if eventType is focusTime. |
| `gadget` | `object` | A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for... |
| `guestsCanInviteOthers` | `boolean` | Whether attendees other than the organizer can invite others to the event. Optional. The default ... |
| `guestsCanModify` | `boolean` | Whether attendees other than the organizer can modify the event. Optional. The default is False. |
| `guestsCanSeeOtherGuests` | `boolean` | Whether attendees other than the organizer can see who the event's attendees are. Optional. The d... |
| `hangoutLink` | `string` | An absolute link to the Google Hangout associated with this event. Read-only. |
| `htmlLink` | `string` | An absolute link to this event in the Google Calendar Web UI. Read-only. |
| `iCalUID` | `string` | Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross cal... |
| `id` | `string` | Opaque identifier of the event. When creating new single or recurring events, you can specify the... |
| `kind` | `string` | Type of the resource ("calendar#event"). |
| `location` | `string` | Geographic location of the event as free-form text. Optional. |
| `locked` | `boolean` | Whether this is a locked event copy where no changes can be made to the main event fields "summar... |
| `organizer` | `object` | The organizer of the event. If the organizer is also an attendee, this is indicated with a separa... |
| `originalStartTime` | `EventDateTime` | For an instance of a recurring event, this is the time at which this event would start according ... |
| `outOfOfficeProperties` | `EventOutOfOfficeProperties` | Out of office event data. Used if eventType is outOfOffice. |
| `privateCopy` | `boolean` | If set to True, Event propagation is disabled. Note that it is not the same thing as Private even... |
| `recurrence` | `array<string>` | List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Not... |
| `recurringEventId` | `string` | For an instance of a recurring event, this is the id of the recurring event to which this instanc... |
| `reminders` | `object` | Information about the event's reminders for the authenticated user. Note that changing reminders ... |
| `sequence` | `integer` | Sequence number as per iCalendar. |
| `source` | `object` | Source from which the event was created. For example, a web page, an email message or any documen... |
| `start` | `EventDateTime` | The (inclusive) start time of the event. For a recurring event, this is the start time of the fir... |
| `status` | `string` | Status of the event. Optional. Possible values are:   - "confirmed" - The event is confirmed. Thi... |
| `summary` | `string` | Title of the event. |
| `transparency` | `string` | Whether the event blocks time on the calendar. Optional. Possible values are:   - "opaque" - Defa... |
| `updated` | `string` | Last modification time of the main event data (as a RFC3339 timestamp). Updating event reminders ... |
| `visibility` | `string` | Visibility of the event. Optional. Possible values are:   - "default" - Uses the default visibili... |
| `workingLocationProperties` | `EventWorkingLocationProperties` | Working location event data. |

### `EventAttachment`

| Property | Type | Description |
|----------|------|-------------|
| `fileId` | `string` | ID of the attached file. Read-only. For Google Drive files, this is the ID of the corresponding F... |
| `fileUrl` | `string` | URL link to the attachment. For adding Google Drive file attachments use the same format as in al... |
| `iconLink` | `string` | URL link to the attachment's icon. This field can only be modified for custom third-party attachm... |
| `mimeType` | `string` | Internet media type (MIME type) of the attachment. |
| `title` | `string` | Attachment title. |

### `EventAttendee`

| Property | Type | Description |
|----------|------|-------------|
| `additionalGuests` | `integer` | Number of additional guests. Optional. The default is 0. |
| `comment` | `string` | The attendee's response comment. Optional. |
| `displayName` | `string` | The attendee's name, if available. Optional. |
| `email` | `string` | The attendee's email address, if available. This field must be present when adding an attendee. I... |
| `id` | `string` | The attendee's Profile ID, if available. |
| `optional` | `boolean` | Whether this is an optional attendee. Optional. The default is False. |
| `organizer` | `boolean` | Whether the attendee is the organizer of the event. Read-only. The default is False. |
| `resource` | `boolean` | Whether the attendee is a resource. Can only be set when the attendee is added to the event for t... |
| `responseStatus` | `string` | The attendee's response status. Possible values are:   - "needsAction" - The attendee has not res... |
| `self` | `boolean` | Whether this entry represents the calendar on which this copy of the event appears. Read-only. Th... |

### `EventBirthdayProperties`

| Property | Type | Description |
|----------|------|-------------|
| `contact` | `string` | Resource name of the contact this birthday event is linked to. This can be used to fetch contact ... |
| `customTypeName` | `string` | Custom type label specified for this event. This is populated if birthdayProperties.type is set t... |
| `type` | `string` | Type of birthday or special event. Possible values are:   - "anniversary" - An anniversary other ... |

### `EventDateTime`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `string` | The date, in the format "yyyy-mm-dd", if this is an all-day event. |
| `dateTime` | `string` | The time, as a combined date-time value (formatted according to RFC3339). A time zone offset is r... |
| `timeZone` | `string` | The time zone in which the time is specified. (Formatted as an IANA Time Zone Database name, e.g.... |

### `EventFocusTimeProperties`

| Property | Type | Description |
|----------|------|-------------|
| `autoDeclineMode` | `string` | Whether to decline meeting invitations which overlap Focus Time events. Valid values are declineN... |
| `chatStatus` | `string` | The status to mark the user in Chat and related products. This can be available or doNotDisturb. |
| `declineMessage` | `string` | Response message to set if an existing event or new invitation is automatically declined by Calen... |

### `EventOutOfOfficeProperties`

| Property | Type | Description |
|----------|------|-------------|
| `autoDeclineMode` | `string` | Whether to decline meeting invitations which overlap Out of office events. Valid values are decli... |
| `declineMessage` | `string` | Response message to set if an existing event or new invitation is automatically declined by Calen... |

### `EventReminder`

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | The method used by this reminder. Possible values are:   - "email" - Reminders are sent via email... |
| `minutes` | `integer` | Number of minutes before the start of the event when the reminder should trigger. Valid values ar... |

### `EventWorkingLocationProperties`

| Property | Type | Description |
|----------|------|-------------|
| `customLocation` | `object` | If present, specifies that the user is working from a custom location. |
| `homeOffice` | `any` | If present, specifies that the user is working at home. |
| `officeLocation` | `object` | If present, specifies that the user is working from an office. |
| `type` | `string` | Type of the working location. Possible values are:   - "homeOffice" - The user is working at home... |

### `Events`

| Property | Type | Description |
|----------|------|-------------|
| `accessRole` | `string` | The user's access role for this calendar. Read-only. Possible values are:   - "none" - The user h... |
| `defaultReminders` | `array<EventReminder>` | The default reminders on the calendar for the authenticated user. These reminders apply to all ev... |
| `description` | `string` | Description of the calendar. Read-only. |
| `etag` | `string` | ETag of the collection. |
| `items` | `array<Event>` | List of events on the calendar. |
| `kind` | `string` | Type of the collection ("calendar#events"). |
| `nextPageToken` | `string` | Token used to access the next page of this result. Omitted if no further results are available, i... |
| `nextSyncToken` | `string` | Token used at a later point in time to retrieve only the entries that have changed since this res... |
| `summary` | `string` | Title of the calendar. Read-only. |
| `timeZone` | `string` | The time zone of the calendar. Read-only. |
| `updated` | `string` | Last modification time of the calendar (as a RFC3339 timestamp). Read-only. |

### `FreeBusyCalendar`

| Property | Type | Description |
|----------|------|-------------|
| `busy` | `array<TimePeriod>` | List of time ranges during which this calendar should be regarded as busy. |
| `errors` | `array<Error>` | Optional error(s) (if computation for the calendar failed). |

### `FreeBusyGroup`

| Property | Type | Description |
|----------|------|-------------|
| `calendars` | `array<string>` | List of calendars' identifiers within a group. |
| `errors` | `array<Error>` | Optional error(s) (if computation for the group failed). |

### `FreeBusyRequest`

| Property | Type | Description |
|----------|------|-------------|
| `calendarExpansionMax` | `integer` | Maximal number of calendars for which FreeBusy information is to be provided. Optional. Maximum v... |
| `groupExpansionMax` | `integer` | Maximal number of calendar identifiers to be provided for a single group. Optional. An error is r... |
| `items` | `array<FreeBusyRequestItem>` | List of calendars and/or groups to query. |
| `timeMax` | `string` | The end of the interval for the query formatted as per RFC3339. |
| `timeMin` | `string` | The start of the interval for the query formatted as per RFC3339. |
| `timeZone` | `string` | Time zone used in the response. Optional. The default is UTC. |

### `FreeBusyRequestItem`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The identifier of a calendar or a group. |

### `FreeBusyResponse`

| Property | Type | Description |
|----------|------|-------------|
| `calendars` | `object` | List of free/busy information for calendars. |
| `groups` | `object` | Expansion of groups. |
| `kind` | `string` | Type of the resource ("calendar#freeBusy"). |
| `timeMax` | `string` | The end of the interval. |
| `timeMin` | `string` | The start of the interval. |

### `Setting`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `id` | `string` | The id of the user setting. |
| `kind` | `string` | Type of the resource ("calendar#setting"). |
| `value` | `string` | Value of the user setting. The format of the value depends on the ID of the setting. It must alwa... |

### `Settings`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of the collection. |
| `items` | `array<Setting>` | List of user settings. |
| `kind` | `string` | Type of the collection ("calendar#settings"). |
| `nextPageToken` | `string` | Token used to access the next page of this result. Omitted if no further results are available, i... |
| `nextSyncToken` | `string` | Token used at a later point in time to retrieve only the entries that have changed since this res... |

### `TimePeriod`

| Property | Type | Description |
|----------|------|-------------|
| `end` | `string` | The (exclusive) end of the time period. |
| `start` | `string` | The (inclusive) start of the time period. |

