# Google Chat API - API Reference

**Version**: `v1` | **Methods**: 37 | **Schemas**: 161

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `chat.media.download` | GET | `v1/media/{+resourceName}` | Downloads media. Download is supported on the URI `/v1/media/{+name}?alt=media`. |
| `chat.media.upload` | POST | `v1/{+parent}/attachments:upload` | Uploads an attachment. For an example, see [Upload media as a file attachment](https://developers... |
| `chat.users.spaces.getSpaceReadState` | GET | `v1/{+name}` | Returns details about a user's read state within a space, used to identify read and unread messag... |
| `chat.users.spaces.updateSpaceReadState` | PATCH | `v1/{+name}` | Updates a user's read state within a space, used to identify read and unread messages. For an exa... |
| `chat.users.spaces.threads.getThreadReadState` | GET | `v1/{+name}` | Returns details about a user's read state within a thread, used to identify read and unread messa... |
| `chat.users.spaces.spaceNotificationSetting.patch` | PATCH | `v1/{+name}` | Updates the space notification setting. For an example, see [Update the caller's space notificati... |
| `chat.users.spaces.spaceNotificationSetting.get` | GET | `v1/{+name}` | Gets the space notification setting. For an example, see [Get the caller's space notification set... |
| `chat.customEmojis.create` | POST | `v1/customEmojis` | Creates a custom emoji. Custom emojis are only available for Google Workspace accounts, and the a... |
| `chat.customEmojis.get` | GET | `v1/{+name}` | Returns details about a custom emoji. Custom emojis are only available for Google Workspace accou... |
| `chat.customEmojis.delete` | DELETE | `v1/{+name}` | Deletes a custom emoji. By default, users can only delete custom emoji they created. [Emoji manag... |
| `chat.customEmojis.list` | GET | `v1/customEmojis` | Lists custom emojis visible to the authenticated user. Custom emojis are only available for Googl... |
| `chat.spaces.delete` | DELETE | `v1/{+name}` | Deletes a named space. Always performs a cascading delete, which means that the space's child res... |
| `chat.spaces.get` | GET | `v1/{+name}` | Returns details about a space. For an example, see [Get details about a space](https://developers... |
| `chat.spaces.list` | GET | `v1/spaces` | Lists spaces the caller is a member of. Group chats and DMs aren't listed until the first message... |
| `chat.spaces.findDirectMessage` | GET | `v1/spaces:findDirectMessage` | Returns the existing direct message with the specified user. If no direct message space is found,... |
| `chat.spaces.setup` | POST | `v1/spaces:setup` | Creates a space and adds specified users to it. The calling user is automatically added to the sp... |
| `chat.spaces.search` | GET | `v1/spaces:search` | Returns a list of spaces in a Google Workspace organization based on an administrator's search. I... |
| `chat.spaces.patch` | PATCH | `v1/{+name}` | Updates a space. For an example, see [Update a space](https://developers.google.com/workspace/cha... |
| `chat.spaces.create` | POST | `v1/spaces` | Creates a space. Can be used to create a named space, or a group chat in `Import mode`. For an ex... |
| `chat.spaces.completeImport` | POST | `v1/{+name}:completeImport` | Completes the [import process](https://developers.google.com/workspace/chat/import-data) for the ... |
| `chat.spaces.spaceEvents.get` | GET | `v1/{+name}` | Returns an event from a Google Chat space. The [event payload](https://developers.google.com/work... |
| `chat.spaces.spaceEvents.list` | GET | `v1/{+parent}/spaceEvents` | Lists events from a Google Chat space. For each event, the [payload](https://developers.google.co... |
| `chat.spaces.messages.get` | GET | `v1/{+name}` | Returns details about a message. For an example, see [Get details about a message](https://develo... |
| `chat.spaces.messages.delete` | DELETE | `v1/{+name}` | Deletes a message. For an example, see [Delete a message](https://developers.google.com/workspace... |
| `chat.spaces.messages.list` | GET | `v1/{+parent}/messages` | Lists messages in a space that the caller is a member of, including messages from blocked members... |
| `chat.spaces.messages.create` | POST | `v1/{+parent}/messages` | Creates a message in a Google Chat space. For an example, see [Send a message](https://developers... |
| `chat.spaces.messages.patch` | PATCH | `v1/{+name}` | Updates a message. There's a difference between the `patch` and `update` methods. The `patch` met... |
| `chat.spaces.messages.update` | PUT | `v1/{+name}` | Updates a message. There's a difference between the `patch` and `update` methods. The `patch` met... |
| `chat.spaces.messages.reactions.delete` | DELETE | `v1/{+name}` | Deletes a reaction to a message. For an example, see [Delete a reaction](https://developers.googl... |
| `chat.spaces.messages.reactions.create` | POST | `v1/{+parent}/reactions` | Creates a reaction and adds it to a message. For an example, see [Add a reaction to a message](ht... |
| `chat.spaces.messages.reactions.list` | GET | `v1/{+parent}/reactions` | Lists reactions to a message. For an example, see [List reactions for a message](https://develope... |
| `chat.spaces.messages.attachments.get` | GET | `v1/{+name}` | Gets the metadata of a message attachment. The attachment data is fetched using the [media API](h... |
| `chat.spaces.members.delete` | DELETE | `v1/{+name}` | Deletes a membership. For an example, see [Remove a user or a Google Chat app from a space](https... |
| `chat.spaces.members.list` | GET | `v1/{+parent}/members` | Lists memberships in a space. For an example, see [List users and Google Chat apps in a space](ht... |
| `chat.spaces.members.create` | POST | `v1/{+parent}/members` | Creates a membership for the calling Chat app, a user, or a Google Group. Creating memberships fo... |
| `chat.spaces.members.get` | GET | `v1/{+name}` | Returns details about a membership. For an example, see [Get details about a user's or Google Cha... |
| `chat.spaces.members.patch` | PATCH | `v1/{+name}` | Updates a membership. For an example, see [Update a user's membership in a space](https://develop... |

### `chat.media.download`

**GET** `v1/media/{+resourceName}`

Downloads media. Download is supported on the URI `/v1/media/{+name}?alt=media`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Name of the media that is being downloaded. See ReadRequest.resource_name. |

**Response**: `Media`

```typescript
const res = await chat.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.readonly`

---

### `chat.media.upload`

**POST** `v1/{+parent}/attachments:upload`

Uploads an attachment. For an example, see [Upload media as a file attachment](https://developers.google.com/workspace/chat/upload-media-attachments). Requires user [authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.create` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) You can upload attachments up to 200 MB. Certain file types aren't supported. For details, see [File types blocked by Google Chat](https://support.google.com/chat/answer/7651457?&co=GENIE.Platform%3DDesktop#File%20types%20blocked%20in%20Google%20Chat).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the Chat space in which the attachment is uploaded. Format "spaces/{space}". |

**Request body**: `UploadAttachmentRequest`

**Response**: `UploadAttachmentResponse`

```typescript
const res = await chat.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.create`

---

### `chat.users.spaces.getSpaceReadState`

**GET** `v1/{+name}`

Returns details about a user's read state within a space, used to identify read and unread messages. For an example, see [Get details about a user's space read state](https://developers.google.com/workspace/chat/get-space-read-state). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.readstate.readonly` - `https://www.googleapis.com/auth/chat.users.readstate`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the space read state to retrieve. Only supports getting read state for the calling user. T... |

**Response**: `SpaceReadState`

```typescript
const res = await chat.spaces.getSpaceReadState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.users.readstate`
- `https://www.googleapis.com/auth/chat.users.readstate.readonly`

---

### `chat.users.spaces.updateSpaceReadState`

**PATCH** `v1/{+name}`

Updates a user's read state within a space, used to identify read and unread messages. For an example, see [Update a user's space read state](https://developers.google.com/workspace/chat/update-space-read-state). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.readstate`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name of the space read state. Format: `users/{user}/spaces/{space}/spaceReadState` |
| `updateMask` | `string` | query | No | Required. The field paths to update. Currently supported field paths: - `last_read_time` When the `last_read_time` is... |

**Request body**: `SpaceReadState`

**Response**: `SpaceReadState`

```typescript
const res = await chat.spaces.updateSpaceReadState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.users.readstate`

---

### `chat.users.spaces.threads.getThreadReadState`

**GET** `v1/{+name}`

Returns details about a user's read state within a thread, used to identify read and unread messages. For an example, see [Get details about a user's thread read state](https://developers.google.com/workspace/chat/get-thread-read-state). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.readstate.readonly` - `https://www.googleapis.com/auth/chat.users.readstate`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the thread read state to retrieve. Only supports getting read state for the calling user. ... |

**Response**: `ThreadReadState`

```typescript
const res = await chat.threads.getThreadReadState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.users.readstate`
- `https://www.googleapis.com/auth/chat.users.readstate.readonly`

---

### `chat.users.spaces.spaceNotificationSetting.patch`

**PATCH** `v1/{+name}`

Updates the space notification setting. For an example, see [Update the caller's space notification setting](https://developers.google.com/workspace/chat/update-space-notification-setting). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.spacesettings`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the space notification setting. Format: `users/{user}/spaces/{space}/spaceNotificati... |
| `updateMask` | `string` | query | No | Required. Supported field paths: - `notification_setting` - `mute_setting` |

**Request body**: `SpaceNotificationSetting`

**Response**: `SpaceNotificationSetting`

```typescript
const res = await chat.spaceNotificationSetting.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.users.spacesettings`

---

### `chat.users.spaces.spaceNotificationSetting.get`

**GET** `v1/{+name}`

Gets the space notification setting. For an example, see [Get the caller's space notification setting](https://developers.google.com/workspace/chat/get-space-notification-setting). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.users.spacesettings`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: users/{user}/spaces/{space}/spaceNotificationSetting - `users/me/spaces/{space}/spaceNotificationSe... |

**Response**: `SpaceNotificationSetting`

```typescript
const res = await chat.spaceNotificationSetting.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.users.spacesettings`

---

### `chat.customEmojis.create`

**POST** `v1/customEmojis`

Creates a custom emoji. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see [Learn about custom emojis in Google Chat](https://support.google.com/chat/answer/12800149) and [Manage custom emoji permissions](https://support.google.com/a/answer/12850085). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.customemojis`

**Request body**: `CustomEmoji`

**Response**: `CustomEmoji`

```typescript
const res = await chat.customEmojis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.customemojis`

---

### `chat.customEmojis.get`

**GET** `v1/{+name}`

Returns details about a custom emoji. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see [Learn about custom emojis in Google Chat](https://support.google.com/chat/answer/12800149) and [Manage custom emoji permissions](https://support.google.com/a/answer/12850085). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.customemojis.readonly` - `https://www.googleapis.com/auth/chat.customemojis`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the custom emoji. Format: `customEmojis/{customEmoji}` You can use the emoji name as an al... |

**Response**: `CustomEmoji`

```typescript
const res = await chat.customEmojis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.customemojis`
- `https://www.googleapis.com/auth/chat.customemojis.readonly`

---

### `chat.customEmojis.delete`

**DELETE** `v1/{+name}`

Deletes a custom emoji. By default, users can only delete custom emoji they created. [Emoji managers](https://support.google.com/a/answer/12850085) assigned by the administrator can delete any custom emoji in the organization. See [Learn about custom emojis in Google Chat](https://support.google.com/chat/answer/12800149). Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see [Learn about custom emojis in Google Chat](https://support.google.com/chat/answer/12800149) and [Manage custom emoji permissions](https://support.google.com/a/answer/12850085). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.customemojis`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the custom emoji to delete. Format: `customEmojis/{customEmoji}` You can use the emoji nam... |

**Response**: `Empty`

```typescript
const res = await chat.customEmojis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.customemojis`

---

### `chat.customEmojis.list`

**GET** `v1/customEmojis`

Lists custom emojis visible to the authenticated user. Custom emojis are only available for Google Workspace accounts, and the administrator must turn custom emojis on for the organization. For more information, see [Learn about custom emojis in Google Chat](https://support.google.com/chat/answer/12800149) and [Manage custom emoji permissions](https://support.google.com/a/answer/12850085). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.customemojis.readonly` - `https://www.googleapis.com/auth/chat.customemojis`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. A query filter. Supports filtering by creator. To filter by creator, you must specify a valid value. Curren... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of custom emojis returned. The service can return fewer custom emojis than this value. I... |
| `pageToken` | `string` | query | No | Optional. (If resuming from a previous query.) A page token received from a previous list custom emoji call. Provide ... |

**Response**: `ListCustomEmojisResponse`

```typescript
const res = await chat.customEmojis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.customemojis`
- `https://www.googleapis.com/auth/chat.customemojis.readonly`

---

### `chat.spaces.delete`

**DELETE** `v1/{+name}`

Deletes a named space. Always performs a cascading delete, which means that the space's child resources—like messages posted in the space and memberships in the space—are also deleted. For an example, see [Delete a space](https://developers.google.com/workspace/chat/delete-spaces). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and the authorization scope: - `https://www.googleapis.com/auth/chat.app.delete` (only in spaces the app created) - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.delete` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and the following authorization scope is used: - `https://www.googleapis.com/auth/chat.admin.delete`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the space to delete. Format: `spaces/{space}` |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Response**: `Empty`

```typescript
const res = await chat.spaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.delete`
- `https://www.googleapis.com/auth/chat.app.delete`
- `https://www.googleapis.com/auth/chat.delete`
- `https://www.googleapis.com/auth/chat.import`

---

### `chat.spaces.get`

**GET** `v1/{+name}`

Returns details about a space. For an example, see [Get details about a space](https://developers.google.com/workspace/chat/get-spaces). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.bot` - `https://www.googleapis.com/auth/chat.app.spaces` with [administrator approval](https://support.google.com/a?p=chat-app-auth) - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and one of the following authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.spaces.readonly` - `https://www.googleapis.com/auth/chat.admin.spaces` App authentication has the following limitations: - `space.access_settings` is only populated when using the `chat.app.spaces` scope. - `space.predefind_permission_settings` and `space.permission_settings` are only populated when using the `chat.app.spaces` scope, and only for spaces the app created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the space, in the form `spaces/{space}`. Format: `spaces/{space}` |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Response**: `Space`

```typescript
const res = await chat.spaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.spaces`
- `https://www.googleapis.com/auth/chat.admin.spaces.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`

---

### `chat.spaces.list`

**GET** `v1/spaces`

Lists spaces the caller is a member of. Group chats and DMs aren't listed until the first message is sent. For an example, see [List spaces](https://developers.google.com/workspace/chat/list-spaces). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` To list all named spaces by Google Workspace organization, use the [`spaces.search()`](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/search) method using Workspace administrator privileges instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. A query filter. You can filter spaces by the space type ([`space_type`](https://developers.google.com/works... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of spaces to return. The service might return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous list spaces call. Provide this parameter to retrieve the subsequent ... |

**Response**: `ListSpacesResponse`

```typescript
const res = await chat.spaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`

---

### `chat.spaces.findDirectMessage`

**GET** `v1/spaces:findDirectMessage`

Returns the existing direct message with the specified user. If no direct message space is found, returns a `404 NOT_FOUND` error. For an example, see [Find a direct message](/chat/api/guides/v1/spaces/find-direct-message). With [app authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app), returns the direct message space between the specified user and the calling Chat app. With [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), returns the direct message space between the specified user and the authenticated user. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | query | No | Required. Resource name of the user to find direct message with. Format: `users/{user}`, where `{user}` is either the... |

**Response**: `Space`

```typescript
const res = await chat.spaces.findDirectMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`

---

### `chat.spaces.setup`

**POST** `v1/spaces:setup`

Creates a space and adds specified users to it. The calling user is automatically added to the space, and shouldn't be specified as a membership in the request. For an example, see [Set up a space with initial members](https://developers.google.com/workspace/chat/set-up-spaces). To specify the human members to add, add memberships with the appropriate `membership.member.name`. To add a human user, use `users/{user}`, where `{user}` can be the email address for the user. For users in the same Workspace organization `{user}` can also be the `id` for the person from the People API, or the `id` for the user in the Directory API. For example, if the People API Person profile ID for `user@example.com` is `123456789`, you can add the user to the space by setting the `membership.member.name` to `users/user@example.com` or `users/123456789`. To specify the Google groups to add, add memberships with the appropriate `membership.group_member.name`. To add or invite a Google group, use `groups/{group}`, where `{group}` is the `id` for the group from the Cloud Identity Groups API. For example, you can use [Cloud Identity Groups lookup API](https://cloud.google.com/identity/docs/reference/rest/v1/groups/lookup) to retrieve the ID `123456789` for group email `group@example.com`, then you can add the group to the space by setting the `membership.group_member.name` to `groups/123456789`. Group email is not supported, and Google groups can only be added as members in named spaces. For a named space or group chat, if the caller blocks, or is blocked by some members, or doesn't have permission to add some members, then those members aren't added to the created space. To create a direct message (DM) between the calling user and another human user, specify exactly one membership to represent the human user. If one user blocks the other, the request fails and the DM isn't created. To create a DM between the calling user and the calling app, set `Space.singleUserBotDm` to `true` and don't specify any memberships. You can only use this method to set up a DM with the calling app. To add the calling app as a member of a space or an existing DM between two human users, see [Invite or add a user or app to a space](https://developers.google.com/workspace/chat/create-members). If a DM already exists between two users, even when one user blocks the other at the time a request is made, then the existing DM is returned. Spaces with threaded replies aren't supported. If you receive the error message `ALREADY_EXISTS` when setting up a space, try a different `displayName`. An existing space within the Google Workspace organization might already use this display name. Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.spaces.create` - `https://www.googleapis.com/auth/chat.spaces`

**Request body**: `SetUpSpaceRequest`

**Response**: `Space`

```typescript
const res = await chat.spaces.setup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.create`

---

### `chat.spaces.search`

**GET** `v1/spaces:search`

Returns a list of spaces in a Google Workspace organization based on an administrator's search. In the request, set `use_admin_access` to `true`. For an example, see [Search for and manage spaces](https://developers.google.com/workspace/chat/search-manage-admin). Requires [user authentication with administrator privileges](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user#admin-privileges) and one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.admin.spaces.readonly` - `https://www.googleapis.com/auth/chat.admin.spaces`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `orderBy` | `string` | query | No | Optional. How the list of spaces is ordered. Supported attributes to order by are: - `membership_count.joined_direct_... |
| `pageSize` | `integer` | query | No | The maximum number of spaces to return. The service may return fewer than this value. If unspecified, at most 100 spa... |
| `pageToken` | `string` | query | No | A token, received from the previous search spaces call. Provide this parameter to retrieve the subsequent page. When ... |
| `query` | `string` | query | No | Required. A search query. You can search by using the following parameters: - `create_time` - `customer` - `display_n... |
| `useAdminAccess` | `boolean` | query | No | When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user must be a G... |

**Response**: `SearchSpacesResponse`

```typescript
const res = await chat.spaces.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.spaces`
- `https://www.googleapis.com/auth/chat.admin.spaces.readonly`

---

### `chat.spaces.patch`

**PATCH** `v1/{+name}`

Updates a space. For an example, see [Update a space](https://developers.google.com/workspace/chat/update-spaces). If you're updating the `displayName` field and receive the error message `ALREADY_EXISTS`, try a different display name.. An existing space within the Google Workspace organization might already use this display name. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.app.spaces` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and the following authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.spaces` App authentication has the following limitations: - To update either `space.predefined_permission_settings` or `space.permission_settings`, the app must be the space creator. - Updating the `space.access_settings.audience` is not supported for app authentication.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the space. Format: `spaces/{space}` Where `{space}` represents the system-assigned ID fo... |
| `updateMask` | `string` | query | No | Required. The updated field paths, comma separated if there are multiple. You can update the following fields for a s... |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Request body**: `Space`

**Response**: `Space`

```typescript
const res = await chat.spaces.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.spaces`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.spaces`

---

### `chat.spaces.create`

**POST** `v1/spaces`

Creates a space. Can be used to create a named space, or a group chat in `Import mode`. For an example, see [Create a space](https://developers.google.com/workspace/chat/create-spaces). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.app.spaces.create` - `https://www.googleapis.com/auth/chat.app.spaces` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.create` - `https://www.googleapis.com/auth/chat.spaces` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) When authenticating as an app, the `space.customer` field must be set in the request. When authenticating as an app, the Chat app is added as a member of the space. However, unlike human authentication, the Chat app is not added as a space manager. By default, the Chat app can be removed from the space by all space members. To allow only space managers to remove the app from a space, set `space.permission_settings.manage_apps` to `managers_allowed`. Space membership upon creation depends on whether the space is created in `Import mode`: * **Import mode:** No members are created. * **All other modes:** The calling user is added as a member. This is: * The app itself when using app authentication. * The human user when using user authentication. If you receive the error message `ALREADY_EXISTS` when creating a space, try a different `displayName`. An existing space within the Google Workspace organization might already use this display name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. A random UUID is recommended. Specifying an existing request ID retur... |

**Request body**: `Space`

**Response**: `Space`

```typescript
const res = await chat.spaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.app.spaces.create`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.create`

---

### `chat.spaces.completeImport`

**POST** `v1/{+name}:completeImport`

Completes the [import process](https://developers.google.com/workspace/chat/import-data) for the specified space and makes it visible to users. Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) and domain-wide delegation with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.import` For more information, see [Authorize Google Chat apps to import data](https://developers.google.com/workspace/chat/authorize-import).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the import mode space. Format: `spaces/{space}` |

**Request body**: `CompleteImportSpaceRequest`

**Response**: `CompleteImportSpaceResponse`

```typescript
const res = await chat.spaces.completeImport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.import`

---

### `chat.spaces.spaceEvents.get`

**GET** `v1/{+name}`

Returns an event from a Google Chat space. The [event payload](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload) contains the most recent version of the resource that changed. For example, if you request an event about a new message but the message was later updated, the server returns the updated `Message` resource in the event payload. Note: The `permissionSettings` field is not returned in the Space object of the Space event data for this request. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize) with an [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes) appropriate for reading the requested data: - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) in [Developer Preview](https://developers.google.com/workspace/preview) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.app.spaces` - `https://www.googleapis.com/auth/chat.app.messages.readonly` - `https://www.googleapis.com/auth/chat.app.memberships` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - `https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.messages.reactions.readonly` - `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.googleapis.com/auth/chat.memberships.readonly` - `https://www.googleapis.com/auth/chat.memberships` To get an event, the authenticated caller must be a member of the space. For an example, see [Get details about an event from a Google Chat space](https://developers.google.com/workspace/chat/get-space-event).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the space event. Format: `spaces/{space}/spaceEvents/{spaceEvent}` |

**Response**: `SpaceEvent`

```typescript
const res = await chat.spaceEvents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`

---

### `chat.spaces.spaceEvents.list`

**GET** `v1/{+parent}/spaceEvents`

Lists events from a Google Chat space. For each event, the [payload](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload) contains the most recent version of the Chat resource. For example, if you list events about new space members, the server returns `Membership` resources that contain the latest membership details. If new members were removed during the requested period, the event payload contains an empty `Membership` resource. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize) with an [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes) appropriate for reading the requested data: - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) in [Developer Preview](https://developers.google.com/workspace/preview) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.app.spaces` - `https://www.googleapis.com/auth/chat.app.messages.readonly` - `https://www.googleapis.com/auth/chat.app.memberships` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.spaces.readonly` - `https://www.googleapis.com/auth/chat.spaces` - `https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.messages.reactions.readonly` - `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.googleapis.com/auth/chat.memberships.readonly` - `https://www.googleapis.com/auth/chat.memberships` To list events, the authenticated caller must be a member of the space. For an example, see [List events from a Google Chat space](https://developers.google.com/workspace/chat/list-space-events).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the [Google Chat space](https://developers.google.com/workspace/chat/api/reference/rest/v1... |
| `filter` | `string` | query | No | Required. A query filter. You must specify at least one event type (`event_type`) using the has `:` operator. To filt... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of space events returned. The service might return fewer than this value. Negative value... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous list space events call. Provide this to retrieve the subsequent page... |

**Response**: `ListSpaceEventsResponse`

```typescript
const res = await chat.spaceEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`

---

### `chat.spaces.messages.get`

**GET** `v1/{+name}`

Returns details about a message. For an example, see [Get details about a message](https://developers.google.com/workspace/chat/get-messages). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.bot`: When using this authorization scope, this method returns details about a message the Chat app has access to, like direct messages and [slash commands](https://developers.google.com/workspace/chat/slash-commands) that invoke the Chat app. - `https://www.googleapis.com/auth/chat.app.messages.readonly` with [administrator approval](https://support.google.com/a?p=chat-app-auth) (available in [Developer Preview](https://developers.google.com/workspace/preview)). When using this authentication scope, this method returns details about a public message in a space. - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/auth/chat.messages` Note: Might return a message from a blocked member or space.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the message. Format: `spaces/{space}/messages/{message}` If you've set a custom ID for you... |

**Response**: `Message`

```typescript
const res = await chat.messages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.readonly`

---

### `chat.spaces.messages.delete`

**DELETE** `v1/{+name}`

Deletes a message. For an example, see [Delete a message](https://developers.google.com/workspace/chat/delete-messages). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) When using app authentication, requests can only delete messages created by the calling Chat app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the message. Format: `spaces/{space}/messages/{message}` If you've set a custom ID for you... |
| `force` | `boolean` | query | No | Optional. When `true`, deleting a message also deletes its threaded replies. When `false`, if a message has threaded ... |

**Response**: `Empty`

```typescript
const res = await chat.messages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`

---

### `chat.spaces.messages.list`

**GET** `v1/{+parent}/messages`

Lists messages in a space that the caller is a member of, including messages from blocked members and spaces. System messages, like those announcing new space members, aren't included. If you list messages from a space with no messages, the response is an empty object. When using a REST/HTTP interface, the response contains an empty JSON object, `{}`. For an example, see [List messages](https://developers.google.com/workspace/chat/api/guides/v1/messages/list). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) in [Developer Preview](https://developers.google.com/workspace/preview) with the authorization scope: - `https://www.googleapis.com/auth/chat.app.messages.readonly`. When using this authentication scope, this method only returns public messages in a space. It doesn't include private messages. - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the space to list messages from. Format: `spaces/{space}` |
| `filter` | `string` | query | No | Optional. A query filter. You can filter messages by date (`create_time`) and thread (`thread.name`). To filter messa... |
| `orderBy` | `string` | query | No | Optional. How the list of messages is ordered. Specify a value to order by an ordering operation. Valid ordering oper... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of messages returned. The service might return fewer messages than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous list messages call. Provide this parameter to retrieve the subsequent... |
| `showDeleted` | `boolean` | query | No | Optional. Whether to include deleted messages. Deleted messages include deleted time and metadata about their deletio... |

**Response**: `ListMessagesResponse`

```typescript
const res = await chat.messages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.readonly`

---

### `chat.spaces.messages.create`

**POST** `v1/{+parent}/messages`

Creates a message in a Google Chat space. For an example, see [Send a message](https://developers.google.com/workspace/chat/create-messages). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages.create` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) Chat attributes the message sender differently depending on the type of authentication that you use in your request. The following image shows how Chat attributes a message when you use app authentication. Chat displays the Chat app as the message sender. The content of the message can contain text (`text`), cards (`cardsV2`), and accessory widgets (`accessoryWidgets`). ![Message sent with app authentication](https://developers.google.com/workspace/chat/images/message-app-auth.svg) The following image shows how Chat attributes a message when you use user authentication. Chat displays the user as the message sender and attributes the Chat app to the message by displaying its name. The content of message can only contain text (`text`). ![Message sent with user authentication](https://developers.google.com/workspace/chat/images/message-user-auth.svg) The maximum message size, including the message contents, is 32,000 bytes. For [webhook](https://developers.google.com/workspace/chat/quickstart/webhooks) requests, the response doesn't contain the full message. The response only populates the `name` and `thread.name` fields in addition to the information that was in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the space in which to create a message. Format: `spaces/{space}` |
| `messageId` | `string` | query | No | Optional. A custom ID for a message. Lets Chat apps get, update, or delete a message without needing to store the sys... |
| `messageReplyOption` | `string` | query | No | Optional. Specifies whether a message starts a thread or replies to one. Only supported in named spaces. When [respon... |
| `requestId` | `string` | query | No | Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with th... |
| `threadKey` | `string` | query | No | Optional. Deprecated: Use thread.thread_key instead. ID for the thread. Supports up to 4000 characters. To start or a... |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await chat.messages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.create`

---

### `chat.spaces.messages.patch`

**PATCH** `v1/{+name}`

Updates a message. There's a difference between the `patch` and `update` methods. The `patch` method uses a `patch` request while the `update` method uses a `put` request. We recommend using the `patch` method. For an example, see [Update a message](https://developers.google.com/workspace/chat/update-messages). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) When using app authentication, requests can only update messages created by the calling Chat app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the message. Format: `spaces/{space}/messages/{message}` Where `{space}` is the ID of th... |
| `allowMissing` | `boolean` | query | No | Optional. If `true` and the message isn't found, a new message is created and `updateMask` is ignored. The specified ... |
| `updateMask` | `string` | query | No | Required. The field paths to update. Separate multiple values with commas or use `*` to update all field paths. Curre... |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await chat.messages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`

---

### `chat.spaces.messages.update`

**PUT** `v1/{+name}`

Updates a message. There's a difference between the `patch` and `update` methods. The `patch` method uses a `patch` request while the `update` method uses a `put` request. We recommend using the `patch` method. For an example, see [Update a message](https://developers.google.com/workspace/chat/update-messages). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the authorization scope: - `https://www.googleapis.com/auth/chat.bot` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) When using app authentication, requests can only update messages created by the calling Chat app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the message. Format: `spaces/{space}/messages/{message}` Where `{space}` is the ID of th... |
| `allowMissing` | `boolean` | query | No | Optional. If `true` and the message isn't found, a new message is created and `updateMask` is ignored. The specified ... |
| `updateMask` | `string` | query | No | Required. The field paths to update. Separate multiple values with commas or use `*` to update all field paths. Curre... |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await chat.messages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`

---

### `chat.spaces.messages.reactions.delete`

**DELETE** `v1/{+name}`

Deletes a reaction to a message. For an example, see [Delete a reaction](https://developers.google.com/workspace/chat/delete-reactions). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the reaction to delete. Format: `spaces/{space}/messages/{message}/reactions/{reaction}` |

**Response**: `Empty`

```typescript
const res = await chat.reactions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`

---

### `chat.spaces.messages.reactions.create`

**POST** `v1/{+parent}/reactions`

Creates a reaction and adds it to a message. For an example, see [Add a reaction to a message](https://developers.google.com/workspace/chat/create-reactions). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.reactions.create` - `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.googleapis.com/auth/chat.messages` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only)

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The message where the reaction is created. Format: `spaces/{space}/messages/{message}` |

**Request body**: `Reaction`

**Response**: `Reaction`

```typescript
const res = await chat.reactions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.create`

---

### `chat.spaces.messages.reactions.list`

**GET** `v1/{+parent}/reactions`

Lists reactions to a message. For an example, see [List reactions for a message](https://developers.google.com/workspace/chat/list-reactions). Requires [user authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following [authorization scopes](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.messages.reactions.readonly` - `https://www.googleapis.com/auth/chat.messages.reactions` - `https://www.googleapis.com/auth/chat.messages.readonly` - `https://www.googleapis.com/auth/chat.messages`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The message users reacted to. Format: `spaces/{space}/messages/{message}` |
| `filter` | `string` | query | No | Optional. A query filter. You can filter reactions by [emoji](https://developers.google.com/workspace/chat/api/refere... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of reactions returned. The service can return fewer reactions than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. (If resuming from a previous query.) A page token received from a previous list reactions call. Provide thi... |

**Response**: `ListReactionsResponse`

```typescript
const res = await chat.reactions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`

---

### `chat.spaces.messages.attachments.get`

**GET** `v1/{+name}`

Gets the metadata of a message attachment. The attachment data is fetched using the [media API](https://developers.google.com/workspace/chat/api/reference/rest/v1/media/download). For an example, see [Get metadata about a message attachment](https://developers.google.com/workspace/chat/get-media-attachments). Requires [app authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with the [authorization scope](https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes): - `https://www.googleapis.com/auth/chat.bot`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the attachment, in the form `spaces/{space}/messages/{message}/attachments/{attachment}`. |

**Response**: `Attachment`

```typescript
const res = await chat.attachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`

---

### `chat.spaces.members.delete`

**DELETE** `v1/{+name}`

Deletes a membership. For an example, see [Remove a user or a Google Chat app from a space](https://developers.google.com/workspace/chat/delete-members). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and the authorization scope: - `https://www.googleapis.com/auth/chat.app.memberships` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.memberships` - `https://www.googleapis.com/auth/chat.memberships.app` (to remove the calling app from the space) - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and the following authorization scope is used: - `https://www.googleapis.com/auth/chat.admin.memberships` App authentication is not supported for the following use cases: - Removing a Google Group from a space. - Removing a Chat app from a space. To delete memberships for space managers, the requester must be a space manager. If you're using [app authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) the Chat app must be the space creator.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the membership to delete. Chat apps can delete human users' or their own memberships. Chat... |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Response**: `Membership`

```typescript
const res = await chat.members.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.memberships`
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.app`

---

### `chat.spaces.members.list`

**GET** `v1/{+parent}/members`

Lists memberships in a space. For an example, see [List users and Google Chat apps in a space](https://developers.google.com/workspace/chat/list-members). Listing memberships with [app authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) lists memberships in spaces that the Chat app has access to, but excludes Chat app memberships, including its own. Listing memberships with [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) lists memberships in spaces that the authenticated user has access to. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.bot` - `https://www.googleapis.com/auth/chat.app.memberships` (requires [administrator approval](https://support.google.com/a?p=chat-app-auth)) - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.memberships.readonly` - `https://www.googleapis.com/auth/chat.memberships` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and one of the following authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.memberships.readonly` - `https://www.googleapis.com/auth/chat.admin.memberships`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the space for which to fetch a membership list. Format: spaces/{space} |
| `filter` | `string` | query | No | Optional. A query filter. You can filter memberships by a member's role ([`role`](https://developers.google.com/works... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of memberships to return. The service might return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call to list memberships. Provide this parameter to retrieve the sub... |
| `showGroups` | `boolean` | query | No | Optional. When `true`, also returns memberships associated with a Google Group, in addition to other types of members... |
| `showInvited` | `boolean` | query | No | Optional. When `true`, also returns memberships associated with invited members, in addition to other types of member... |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Response**: `ListMembershipsResponse`

```typescript
const res = await chat.members.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.memberships`
- `https://www.googleapis.com/auth/chat.admin.memberships.readonly`
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`

---

### `chat.spaces.members.create`

**POST** `v1/{+parent}/members`

Creates a membership for the calling Chat app, a user, or a Google Group. Creating memberships for other Chat apps isn't supported. When creating a membership, if the specified member has their auto-accept policy turned off, then they're invited, and must accept the space invitation before joining. Otherwise, creating a membership adds the member directly to the specified space. Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and the authorization scope: - `https://www.googleapis.com/auth/chat.app.memberships` - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.memberships` - `https://www.googleapis.com/auth/chat.memberships.app` (to add the calling app to the space) - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and the following authorization scope is used: - `https://www.googleapis.com/auth/chat.admin.memberships` App authentication is not supported for the following use cases: - Inviting users external to the Workspace organization that owns the space. - Adding a Google Group to a space. - Adding a Chat app to a space. For example usage, see: - [Invite or add a user to a space](https://developers.google.com/workspace/chat/create-members#create-user-membership). - [Invite or add a Google Group to a space](https://developers.google.com/workspace/chat/create-members#create-group-membership). - [Add the Chat app to a space](https://developers.google.com/workspace/chat/create-members#create-membership-calling-api).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the space for which to create the membership. Format: spaces/{space} |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Request body**: `Membership`

**Response**: `Membership`

```typescript
const res = await chat.members.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.memberships`
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.app`

---

### `chat.spaces.members.get`

**GET** `v1/{+name}`

Returns details about a membership. For an example, see [Get details about a user's or Google Chat app's membership](https://developers.google.com/workspace/chat/get-members). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.bot` - `https://www.googleapis.com/auth/chat.app.memberships` (requires [administrator approval](https://support.google.com/a?p=chat-app-auth)) - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.memberships.readonly` - `https://www.googleapis.com/auth/chat.memberships` - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and one of the following authorization scopes is used: - `https://www.googleapis.com/auth/chat.admin.memberships.readonly` - `https://www.googleapis.com/auth/chat.admin.memberships`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the membership to retrieve. To get the app's own membership [by using user authentication]... |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Response**: `Membership`

```typescript
const res = await chat.members.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.memberships`
- `https://www.googleapis.com/auth/chat.admin.memberships.readonly`
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`

---

### `chat.spaces.members.patch`

**PATCH** `v1/{+name}`

Updates a membership. For an example, see [Update a user's membership in a space](https://developers.google.com/workspace/chat/update-members). Supports the following types of [authentication](https://developers.google.com/workspace/chat/authenticate-authorize): - [App authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) with [administrator approval](https://support.google.com/a?p=chat-app-auth) and the authorization scope: - `https://www.googleapis.com/auth/chat.app.memberships` (only in spaces the app created) - [User authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user) with one of the following authorization scopes: - `https://www.googleapis.com/auth/chat.memberships` - `https://www.googleapis.com/auth/chat.import` (import mode spaces only) - User authentication grants administrator privileges when an administrator account authenticates, `use_admin_access` is `true`, and the following authorization scope is used: - `https://www.googleapis.com/auth/chat.admin.memberships`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the membership, assigned by the server. Format: `spaces/{space}/members/{member}` |
| `updateMask` | `string` | query | No | Required. The field paths to update. Separate multiple values with commas or use `*` to update all field paths. Curre... |
| `useAdminAccess` | `boolean` | query | No | Optional. When `true`, the method runs using the user's Google Workspace administrator privileges. The calling user m... |

**Request body**: `Membership`

**Response**: `Membership`

```typescript
const res = await chat.members.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.admin.memberships`
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.import`
- `https://www.googleapis.com/auth/chat.memberships`

---

## Schemas

### `AccessSettings`

Represents the [access setting](https://support.google.com/chat/answer/11971020) of the space.

| Property | Type | Description |
|----------|------|-------------|
| `accessState` | `string` | Output only. Indicates the access state of the space. |
| `audience` | `string` | Optional. The resource name of the [target audience](https://support.google.com/a/answer/9934697)... |

### `AccessoryWidget`

One or more interactive widgets that appear at the bottom of a message. For details, see [Add interactive widgets at the bottom of a message](https://developers.google.com/workspace/chat/create-messages#add-accessory-widgets).

| Property | Type | Description |
|----------|------|-------------|
| `buttonList` | `GoogleAppsCardV1ButtonList` | A list of buttons. |

### `ActionParameter`

List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze one day, snooze next week. You might use `action method = snooze()`, passing the snooze type and snooze time in the list of string parameters.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The name of the parameter for the action script. |
| `value` | `string` | The value of the parameter. |

### `ActionResponse`

Parameters that a Chat app can use to configure how its response is posted.

| Property | Type | Description |
|----------|------|-------------|
| `dialogAction` | `DialogAction` | Input only. A response to an interaction event related to a [dialog](https://developers.google.co... |
| `type` | `string` | Input only. The type of Chat app response. |
| `updatedWidget` | `UpdatedWidget` | Input only. The response of the updated widget. |
| `url` | `string` | Input only. URL for users to authenticate or configure. (Only for `REQUEST_CONFIG` response types.) |

### `ActionStatus`

Represents the status for a request to either invoke or submit a [dialog](https://developers.google.com/workspace/chat/dialogs).

| Property | Type | Description |
|----------|------|-------------|
| `statusCode` | `string` | The status code. |
| `userFacingMessage` | `string` | The message to send users about the status of their request. If unset, a generic message based on... |

### `Annotation`

Output only. Annotations can be associated with the plain-text body of the message or with chips that link to Google Workspace resources like Google Docs or Sheets with `start_index` and `length` of 0. To add basic formatting to a text message, see [Format text messages](https://developers.google.com/workspace/chat/format-messages). Example plain-text message body: ``` Hello @FooBot how are you!" ``` The corresponding annotations metadata: ``` "annotations":[{ "type":"USER_MENTION", "startIndex":6, "length":7, "userMention": { "user": { "name":"users/{user}", "displayName":"FooBot", "avatarUrl":"https://goo.gl/aeDtrS", "type":"BOT" }, "type":"MENTION" } }] ```

| Property | Type | Description |
|----------|------|-------------|
| `customEmojiMetadata` | `CustomEmojiMetadata` | The metadata for a custom emoji. |
| `length` | `integer` | Length of the substring in the plain-text message body this annotation corresponds to. If not pre... |
| `richLinkMetadata` | `RichLinkMetadata` | The metadata for a rich link. |
| `slashCommand` | `SlashCommandMetadata` | The metadata for a slash command. |
| `startIndex` | `integer` | Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to. |
| `type` | `string` | The type of this annotation. |
| `userMention` | `UserMentionMetadata` | The metadata of user mention. |

### `AppCommandMetadata`

Metadata about a [Chat app command](https://developers.google.com/workspace/chat/commands).

| Property | Type | Description |
|----------|------|-------------|
| `appCommandId` | `integer` | The ID for the command specified in the Chat API configuration. |
| `appCommandType` | `string` | The type of Chat app command. |

### `AttachedGif`

A GIF image that's specified by a URL.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Output only. The URL that hosts the GIF image. |

### `Attachment`

An attachment in Google Chat.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentDataRef` | `AttachmentDataRef` | Optional. A reference to the attachment data. This field is used to create or update messages wit... |
| `contentName` | `string` | Output only. The original file name for the content, not the full path. |
| `contentType` | `string` | Output only. The content type (MIME type) of the file. |
| `downloadUri` | `string` | Output only. The download URL which should be used to allow a human user to download the attachme... |
| `driveDataRef` | `DriveDataRef` | Output only. A reference to the Google Drive attachment. This field is used with the Google Drive... |
| `name` | `string` | Identifier. Resource name of the attachment. Format: `spaces/{space}/messages/{message}/attachmen... |
| `source` | `string` | Output only. The source of the attachment. |
| `thumbnailUri` | `string` | Output only. The thumbnail URL which should be used to preview the attachment to a human user. Ch... |

### `AttachmentDataRef`

A reference to the attachment data.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentUploadToken` | `string` | Optional. Opaque token containing a reference to an uploaded attachment. Treated by clients as an... |
| `resourceName` | `string` | Optional. The resource name of the attachment data. This field is used with the media API to down... |

### `Button`

A button. Can be a text button or an image button.

| Property | Type | Description |
|----------|------|-------------|
| `imageButton` | `ImageButton` | A button with image and `onclick` action. |
| `textButton` | `TextButton` | A button with text and `onclick` action. |

### `CalendarEventLinkData`

Data for Calendar event links.

| Property | Type | Description |
|----------|------|-------------|
| `calendarId` | `string` | The [Calendar identifier](https://developers.google.com/workspace/calendar/api/v3/reference/calen... |
| `eventId` | `string` | The [Event identifier](https://developers.google.com/workspace/calendar/api/v3/reference/events) ... |

### `Card`

A card is a UI element that can contain UI widgets such as text and images.

| Property | Type | Description |
|----------|------|-------------|
| `cardActions` | `array<CardAction>` | The actions of this card. |
| `header` | `CardHeader` | The header of the card. A header usually contains a title and an image. |
| `name` | `string` | Name of the card. |
| `sections` | `array<Section>` | Sections are separated by a line divider. |

### `CardAction`

A card action is the action associated with the card. For an invoice card, a typical action would be: delete invoice, email invoice or open the invoice in browser. Not supported by Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `actionLabel` | `string` | The label used to be displayed in the action menu item. |
| `onClick` | `OnClick` | The onclick action for this action item. |

### `CardHeader`

| Property | Type | Description |
|----------|------|-------------|
| `imageStyle` | `string` | The image's type (for example, square border or circular border). |
| `imageUrl` | `string` | The URL of the image in the card header. |
| `subtitle` | `string` | The subtitle of the card header. |
| `title` | `string` | The title must be specified. The header has a fixed height: if both a title and subtitle is speci... |

### `CardWithId`

A [card](https://developers.google.com/workspace/chat/api/reference/rest/v1/cards) in a Google Chat message. Only Chat apps can create cards. If your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the message can't contain cards. [Card builder](https://addons.gsuite.google.com/uikit/builder)

| Property | Type | Description |
|----------|------|-------------|
| `card` | `GoogleAppsCardV1Card` | A card. Maximum size is 32 KB. |
| `cardId` | `string` | Required if the message contains multiple cards. A unique identifier for a card in a message. |

### `ChatAppLogEntry`

JSON payload of error messages. If the Cloud Logging API is enabled, these error messages are logged to [Google Cloud Logging](https://cloud.google.com/logging/docs).

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` | The deployment that caused the error. For Chat apps built in Apps Script, this is the deployment ... |
| `deploymentFunction` | `string` | The unencrypted `callback_method` name that was running when the error was encountered. |
| `error` | `Status` | The error code and message. |

### `ChatClientDataSourceMarkup`

For a `SelectionInput` widget that uses a multiselect menu, a data source from Google Chat. The data source populates selection items for the multiselect menu. For example, a user can select Google Chat spaces that they're a member of. [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `spaceDataSource` | `SpaceDataSource` | Google Chat spaces that the user is a member of. |

### `ChatSpaceLinkData`

Data for Chat space links.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message of the linked Chat space resource. Format: `spaces/{space}/messages/{message}` |
| `space` | `string` | The space of the linked Chat space resource. Format: `spaces/{space}` |
| `thread` | `string` | The thread of the linked Chat space resource. Format: `spaces/{space}/threads/{thread}` |

### `Color`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `CommonEventObject`

The common event object is the portion of the overall event object that carries general, host-independent information to the add-on from the user's client. This information includes details such as the user's locale, host app, and platform. In addition to homepage and contextual triggers, add-ons construct and pass event objects to [action callback functions](https://developers.google.com/workspace/add-ons/concepts/actions#callback_functions) when the user interacts with widgets. Your add-on's callback function can query the common event object to determine the contents of open widgets in the user's client. For example, your add-on can locate the text a user has entered into a [TextInput](https://developers.google.com/apps-script/reference/card-service/text-input) widget in the `eventObject.commentEventObject.formInputs` object. For Chat apps, the name of the function that the user invoked when interacting with a widget.

| Property | Type | Description |
|----------|------|-------------|
| `formInputs` | `object` | A map containing the current values of the widgets in the displayed card. The map keys are the st... |
| `hostApp` | `string` | Indicates the host app the add-on is active in when the event object is generated. Possible value... |
| `invokedFunction` | `string` | Name of the function to invoke. This field doesn't populate for Google Workspace Add-ons that ext... |
| `parameters` | `object` | Any additional parameters you supply to an action using [`actionParameters`](https://developers.g... |
| `platform` | `string` | The platform enum which indicates the platform where the event originates (`WEB`, `IOS`, or `ANDR... |
| `timeZone` | `TimeZone` | **Disabled by default.** The timezone ID and offset from Coordinated Universal Time (UTC). To tur... |
| `userLocale` | `string` | **Disabled by default.** The user's language and country/region identifier in the format of [ISO ... |

### `CompleteImportSpaceRequest`

Request message for completing the import process for a space.

### `CompleteImportSpaceResponse`

Response message for completing the import process for a space.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `Space` | The import mode space. |

### `CustomEmoji`

Represents a [custom emoji](https://support.google.com/chat/answer/12800149).

| Property | Type | Description |
|----------|------|-------------|
| `emojiName` | `string` | Optional. Immutable. User-provided name for the custom emoji, which is unique within the organiza... |
| `name` | `string` | Identifier. The resource name of the custom emoji, assigned by the server. Format: `customEmojis/... |
| `payload` | `CustomEmojiPayload` | Optional. Input only. Payload data. Required when the custom emoji is created. |
| `temporaryImageUri` | `string` | Output only. A temporary image URL for the custom emoji, valid for at least 10 minutes. Note that... |
| `uid` | `string` | Output only. Unique key for the custom emoji resource. |

### `CustomEmojiMetadata`

Annotation metadata for custom emoji.

| Property | Type | Description |
|----------|------|-------------|
| `customEmoji` | `CustomEmoji` | The custom emoji. |

### `CustomEmojiPayload`

Payload data for the custom emoji.

| Property | Type | Description |
|----------|------|-------------|
| `fileContent` | `string` | Required. Input only. The image used for the custom emoji. The payload must be under 256 KB and t... |
| `filename` | `string` | Required. Input only. The image file name. Supported file extensions: `.png`, `.jpg`, `.gif`. |

### `DateInput`

Date input values.

| Property | Type | Description |
|----------|------|-------------|
| `msSinceEpoch` | `string` | Time since epoch time, in milliseconds. |

### `DateTimeInput`

Date and time input values.

| Property | Type | Description |
|----------|------|-------------|
| `hasDate` | `boolean` | Whether the `datetime` input includes a calendar date. |
| `hasTime` | `boolean` | Whether the `datetime` input includes a timestamp. |
| `msSinceEpoch` | `string` | Time since epoch time, in milliseconds. |

### `DeletionMetadata`

Information about a deleted message. A message is deleted when `delete_time` is set.

| Property | Type | Description |
|----------|------|-------------|
| `deletionType` | `string` | Indicates who deleted the message. |

### `DeprecatedEvent`

A Google Chat app interaction event that represents and contains data about a user's interaction with a Chat app. To configure your Chat app to receive interaction events, see [Receive and respond to user interactions](https://developers.google.com/workspace/chat/receive-respond-interactions). In addition to receiving events from user interactions, Chat apps can receive events about changes to spaces, such as when a new member is added to a space. To learn about space events, see [Work with events from Google Chat](https://developers.google.com/workspace/chat/events-overview). Note: This event is only used for [Chat interaction events](https://developers.google.com/workspace/chat/receive-respond-interactions). If your Chat app is built as a [Google Workspace add-on](https://developers.google.com/workspace/add-ons/chat/build), see [Chat event objects](https://developers.google.com/workspace/add-ons/concepts/event-objects#chat-event-object) in the add-ons documentation.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `FormAction` | For `CARD_CLICKED` interaction events, the form action data associated when a user clicks a card ... |
| `appCommandMetadata` | `AppCommandMetadata` | Metadata about a Chat app command. |
| `common` | `CommonEventObject` | Represents information about the user's client, such as locale, host app, and platform. For Chat ... |
| `configCompleteRedirectUrl` | `string` | This URL is populated for `MESSAGE`, `ADDED_TO_SPACE`, and `APP_COMMAND` interaction events. Afte... |
| `dialogEventType` | `string` | The type of [dialog](https://developers.google.com/workspace/chat/dialogs) interaction event rece... |
| `eventTime` | `string` | The timestamp indicating when the interaction event occurred. |
| `isDialogEvent` | `boolean` | For `CARD_CLICKED` and `MESSAGE` interaction events, whether the user is interacting with or abou... |
| `message` | `Message` | For `ADDED_TO_SPACE`, `CARD_CLICKED`, and `MESSAGE` interaction events, the message that triggere... |
| `space` | `Space` | The space in which the user interacted with the Chat app. |
| `thread` | `Thread` | The thread in which the user interacted with the Chat app. This could be in a new thread created ... |
| `threadKey` | `string` | The Chat app-defined key for the thread related to the interaction event. See [`spaces.messages.t... |
| `token` | `string` | A secret value that legacy Chat apps can use to verify if a request is from Google. Google random... |
| `type` | `string` | The [type](/workspace/chat/api/reference/rest/v1/EventType) of user interaction with the Chat app... |
| `user` | `User` | The user that interacted with the Chat app. |

### `Dialog`

Wrapper around the card body of the dialog.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `GoogleAppsCardV1Card` | Input only. Body of the dialog, which is rendered in a modal. Google Chat apps don't support the ... |

### `DialogAction`

Contains a [dialog](https://developers.google.com/workspace/chat/dialogs) and request status code.

| Property | Type | Description |
|----------|------|-------------|
| `actionStatus` | `ActionStatus` | Input only. Status for a request to either invoke or submit a [dialog](https://developers.google.... |
| `dialog` | `Dialog` | Input only. [Dialog](https://developers.google.com/workspace/chat/dialogs) for the request. |

### `DriveDataRef`

A reference to the data of a drive attachment.

| Property | Type | Description |
|----------|------|-------------|
| `driveFileId` | `string` | The ID for the drive file. Use with the Drive API. |

### `DriveLinkData`

Data for Google Drive links.

| Property | Type | Description |
|----------|------|-------------|
| `driveDataRef` | `DriveDataRef` | A [DriveDataRef](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messag... |
| `mimeType` | `string` | The mime type of the linked Google Drive resource. |

### `Emoji`

An emoji that is used as a reaction to a message.

| Property | Type | Description |
|----------|------|-------------|
| `customEmoji` | `CustomEmoji` | A custom emoji. |
| `unicode` | `string` | Optional. A basic emoji represented by a unicode string. |

### `EmojiReactionSummary`

The number of people who reacted to a message with a specific emoji.

| Property | Type | Description |
|----------|------|-------------|
| `emoji` | `Emoji` | Output only. Emoji associated with the reactions. |
| `reactionCount` | `integer` | Output only. The total number of reactions using the associated emoji. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FormAction`

A form action describes the behavior when the form is submitted. For example, you can invoke Apps Script to handle the form.

| Property | Type | Description |
|----------|------|-------------|
| `actionMethodName` | `string` | The method name is used to identify which part of the form triggered the form submission. This in... |
| `parameters` | `array<ActionParameter>` | List of action parameters. |

### `ForwardedMetadata`

Metadata about the source space from which a message was forwarded.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `string` | Output only. The resource name of the source space. Format: spaces/{space} |
| `spaceDisplayName` | `string` | Output only. The display name of the source space or DM at the time of forwarding. For `SPACE`, t... |

### `GoogleAppsCardV1Action`

An action that describes the behavior when the form is submitted. For example, you can invoke an Apps Script script to handle the form. If the action is triggered, the form values are sent to the server. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `allWidgetsAreRequired` | `boolean` | Optional. If this is true, then all widgets are considered required by this action. [Google Works... |
| `function` | `string` | A custom function to invoke when the containing element is clicked or otherwise activated. For ex... |
| `interaction` | `string` | Optional. Required when opening a [dialog](https://developers.google.com/workspace/chat/dialogs).... |
| `loadIndicator` | `string` | Specifies the loading indicator that the action displays while making the call to the action. |
| `parameters` | `array<GoogleAppsCardV1ActionParameter>` | List of action parameters. |
| `persistValues` | `boolean` | Indicates whether form values persist after the action. The default value is `false`. If `true`, ... |
| `requiredWidgets` | `array<string>` | Optional. Fill this list with the names of widgets that this Action needs for a valid submission.... |

### `GoogleAppsCardV1ActionParameter`

List of string parameters to supply when the action method is invoked. For example, consider three snooze buttons: snooze now, snooze one day, or snooze next week. You might use `action method = snooze()`, passing the snooze type and snooze time in the list of string parameters. To learn more, see [`CommonEventObject`](https://developers.google.com/workspace/chat/api/reference/rest/v1/Event#commoneventobject). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The name of the parameter for the action script. |
| `value` | `string` | The value of the parameter. |

### `GoogleAppsCardV1BorderStyle`

The style options for the border of a card or widget, including the border type and color. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `cornerRadius` | `integer` | The corner radius for the border. |
| `strokeColor` | `Color` | The colors to use when the type is `BORDER_TYPE_STROKE`. To set the stroke color, specify a value... |
| `type` | `string` | The border type. |

### `GoogleAppsCardV1Button`

A text, icon, or text and icon button that users can click. For an example in Google Chat apps, see [Add a button](https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_button). To make an image a clickable button, specify an `Image` (not an `ImageComponent`) and set an `onClick` action. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | The alternative text that's used for accessibility. Set descriptive text that lets users know wha... |
| `color` | `Color` | Optional. The color of the button. If set, the button `type` is set to `FILLED` and the color of ... |
| `disabled` | `boolean` | If `true`, the button is displayed in an inactive state and doesn't respond to user actions. |
| `icon` | `GoogleAppsCardV1Icon` | An icon displayed inside the button. If both `icon` and `text` are set, then the icon appears bef... |
| `onClick` | `GoogleAppsCardV1OnClick` | Required. The action to perform when a user clicks the button, such as opening a hyperlink or run... |
| `text` | `string` | The text displayed inside the button. |
| `type` | `string` | Optional. The type of a button. If unset, button type defaults to `OUTLINED`. If the `color` fiel... |

### `GoogleAppsCardV1ButtonList`

A list of buttons layed out horizontally. For an example in Google Chat apps, see [Add a button](https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<GoogleAppsCardV1Button>` | An array of buttons. |

### `GoogleAppsCardV1Card`

A card interface displayed in a Google Chat message or Google Workspace add-on. Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use cards to present detailed information, gather information from users, and guide users to take a next step. [Card builder](https://addons.gsuite.google.com/uikit/builder) To learn how to build cards, see the following documentation: * For Google Chat apps, see [Design the components of a card or dialog](https://developers.google.com/workspace/chat/design-components-card-dialog). * For Google Workspace add-ons, see [Card-based interfaces](https://developers.google.com/apps-script/add-ons/concepts/cards). Note: You can add up to 100 widgets per card. Any widgets beyond this limit are ignored. This limit applies to both card messages and dialogs in Google Chat apps, and to cards in Google Workspace add-ons. **Example: Card message for a Google Chat app** ![Example contact card](https://developers.google.com/workspace/chat/images/card_api_reference.png) To create the sample card message in Google Chat, use the following JSON: ``` { "cardsV2": [ { "cardId": "unique-card-id", "card": { "header": { "title": "Sasha", "subtitle": "Software Engineer", "imageUrl": "https://developers.google.com/workspace/chat/images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha" }, "sections": [ { "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount": 1, "widgets": [ { "decoratedText": { "startIcon": { "knownIcon": "EMAIL" }, "text": "sasha@example.com" } }, { "decoratedText": { "startIcon": { "knownIcon": "PERSON" }, "text": "Online" } }, { "decoratedText": { "startIcon": { "knownIcon": "PHONE" }, "text": "+1 (555) 555-1234" } }, { "buttonList": { "buttons": [ { "text": "Share", "onClick": { "openLink": { "url": "https://example.com/share" } } }, { "text": "Edit", "onClick": { "action": { "function": "goToView", "parameters": [ { "key": "viewType", "value": "EDIT" } ] } } } ] } } ] } ] } } ] } ```

| Property | Type | Description |
|----------|------|-------------|
| `cardActions` | `array<GoogleAppsCardV1CardAction>` | The card's actions. Actions are added to the card's toolbar menu. [Google Workspace add-ons](http... |
| `displayStyle` | `string` | In Google Workspace add-ons, sets the display properties of the `peekCardHeader`. [Google Workspa... |
| `expressionData` | `array<GoogleAppsCardV1ExpressionData>` | The expression data for the card. Available for Google Workspace add-ons that extend Google Works... |
| `fixedFooter` | `GoogleAppsCardV1CardFixedFooter` | The fixed footer shown at the bottom of this card. Setting `fixedFooter` without specifying a `pr... |
| `header` | `GoogleAppsCardV1CardHeader` | The header of the card. A header usually contains a leading image and a title. Headers always app... |
| `name` | `string` | Name of the card. Used as a card identifier in card navigation. [Google Workspace add-ons](https:... |
| `peekCardHeader` | `GoogleAppsCardV1CardHeader` | When displaying contextual content, the peek card header acts as a placeholder so that the user c... |
| `sectionDividerStyle` | `string` | The divider style between the header, sections and footer. |
| `sections` | `array<GoogleAppsCardV1Section>` | Contains a collection of widgets. Each section has its own, optional header. Sections are visuall... |

### `GoogleAppsCardV1CardAction`

A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser. [Google Workspace add-ons](https://developers.google.com/workspace/add-ons):

| Property | Type | Description |
|----------|------|-------------|
| `actionLabel` | `string` | The label that displays as the action menu item. |
| `onClick` | `GoogleAppsCardV1OnClick` | The `onClick` action for this action item. |

### `GoogleAppsCardV1CardFixedFooter`

A persistent (sticky) footer that that appears at the bottom of the card. Setting `fixedFooter` without specifying a `primaryButton` or a `secondaryButton` causes an error. For Chat apps, you can use fixed footers in [dialogs](https://developers.google.com/workspace/chat/dialogs), but not [card messages](https://developers.google.com/workspace/chat/create-messages#create). For an example in Google Chat apps, see [Add a persistent footer](https://developers.google.com/workspace/chat/design-components-card-dialog#add_a_persistent_footer). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `primaryButton` | `GoogleAppsCardV1Button` | The primary button of the fixed footer. The button must be a text button with text and color set. |
| `secondaryButton` | `GoogleAppsCardV1Button` | The secondary button of the fixed footer. The button must be a text button with text and color se... |

### `GoogleAppsCardV1CardHeader`

Represents a card header. For an example in Google Chat apps, see [Add a header](https://developers.google.com/workspace/chat/design-components-card-dialog#add_a_header). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `imageAltText` | `string` | The alternative text of this image that's used for accessibility. |
| `imageType` | `string` | The shape used to crop the image. [Google Workspace add-ons and Chat apps](https://developers.goo... |
| `imageUrl` | `string` | The HTTPS URL of the image in the card header. |
| `subtitle` | `string` | The subtitle of the card header. If specified, appears on its own line below the `title`. |
| `title` | `string` | Required. The title of the card header. The header has a fixed height: if both a title and subtit... |

### `GoogleAppsCardV1Carousel`

A carousel, also known as a slider, rotates and displays a list of widgets in a slideshow format, with buttons navigating to the previous or next widget. For example, this is a JSON representation of a carousel that contains three text paragraph widgets. ``` { "carouselCards": [ { "widgets": [ { "textParagraph": { "text": "First text paragraph in carousel", } } ] }, { "widgets": [ { "textParagraph": { "text": "Second text paragraph in carousel", } } ] }, { "widgets": [ { "textParagraph": { "text": "Third text paragraph in carousel", } } ] } ] } ``` [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `carouselCards` | `array<GoogleAppsCardV1CarouselCard>` | A list of cards included in the carousel. |

### `GoogleAppsCardV1CarouselCard`

A card that can be displayed as a carousel item. [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `footerWidgets` | `array<GoogleAppsCardV1NestedWidget>` | A list of widgets displayed at the bottom of the carousel card. The widgets are displayed in the ... |
| `widgets` | `array<GoogleAppsCardV1NestedWidget>` | A list of widgets displayed in the carousel card. The widgets are displayed in the order that the... |

### `GoogleAppsCardV1Chip`

A text, icon, or text and icon chip that users can click. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | The alternative text that's used for accessibility. Set descriptive text that lets users know wha... |
| `disabled` | `boolean` | Whether the chip is in an inactive state and ignores user actions. Defaults to `false`. |
| `enabled` | `boolean` | Whether the chip is in an active state and responds to user actions. Defaults to `true`. Deprecat... |
| `icon` | `GoogleAppsCardV1Icon` | The icon image. If both `icon` and `text` are set, then the icon appears before the text. |
| `label` | `string` | The text displayed inside the chip. |
| `onClick` | `GoogleAppsCardV1OnClick` | Optional. The action to perform when a user clicks the chip, such as opening a hyperlink or runni... |

### `GoogleAppsCardV1ChipList`

A list of chips layed out horizontally, which can either scroll horizontally or wrap to the next line. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `chips` | `array<GoogleAppsCardV1Chip>` | An array of chips. |
| `layout` | `string` | Specified chip list layout. |

### `GoogleAppsCardV1CollapseControl`

Represent an expand and collapse control. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `collapseButton` | `GoogleAppsCardV1Button` | Optional. Define a customizable button to collapse the section. Both expand_button and collapse_b... |
| `expandButton` | `GoogleAppsCardV1Button` | Optional. Define a customizable button to expand the section. Both expand_button and collapse_but... |
| `horizontalAlignment` | `string` | The horizontal alignment of the expand and collapse button. |

### `GoogleAppsCardV1Column`

A column. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend)

| Property | Type | Description |
|----------|------|-------------|
| `horizontalAlignment` | `string` | Specifies whether widgets align to the left, right, or center of a column. |
| `horizontalSizeStyle` | `string` | Specifies how a column fills the width of the card. |
| `verticalAlignment` | `string` | Specifies whether widgets align to the top, bottom, or center of a column. |
| `widgets` | `array<GoogleAppsCardV1Widgets>` | An array of widgets included in a column. Widgets appear in the order that they are specified. |

### `GoogleAppsCardV1Columns`

The `Columns` widget displays up to 2 columns in a card or dialog. You can add widgets to each column; the widgets appear in the order that they are specified. For an example in Google Chat apps, see [Display cards and dialogs in columns](https://developers.google.com/workspace/chat/format-structure-card-dialog#display_cards_and_dialogs_in_columns). The height of each column is determined by the taller column. For example, if the first column is taller than the second column, both columns have the height of the first column. Because each column can contain a different number of widgets, you can't define rows or align widgets between the columns. Columns are displayed side-by-side. You can customize the width of each column using the `HorizontalSizeStyle` field. If the user's screen width is too narrow, the second column wraps below the first: * On web, the second column wraps if the screen width is less than or equal to 480 pixels. * On iOS devices, the second column wraps if the screen width is less than or equal to 300 pt. * On Android devices, the second column wraps if the screen width is less than or equal to 320 dp. To include more than two columns, or to use rows, use the `Grid` widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend): The add-on UIs that support columns include: * The dialog displayed when users open the add-on from an email draft. * The dialog displayed when users open the add-on from the **Add attachment** menu in a Google Calendar event.

| Property | Type | Description |
|----------|------|-------------|
| `columnItems` | `array<GoogleAppsCardV1Column>` | An array of columns. You can include up to 2 columns in a card or dialog. |

### `GoogleAppsCardV1CommonWidgetAction`

Represents an action that is not specific to a widget. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `updateVisibilityAction` | `GoogleAppsCardV1UpdateVisibilityAction` | The action to update the visibility of a widget. |

### `GoogleAppsCardV1Condition`

Represents a condition that can be used to trigger an action. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `actionRuleId` | `string` | The unique identifier of the ActionRule. |
| `expressionDataCondition` | `GoogleAppsCardV1ExpressionDataCondition` | The condition that is determined by the expression data. |

### `GoogleAppsCardV1DataSourceConfig`

A configuration object that helps configure the data sources for a widget. Available for Google Chat apps and Google Workspace add-ons that extend Google Workspace Studio.

| Property | Type | Description |
|----------|------|-------------|
| `minCharactersTrigger` | `integer` | The minimum number of characters the user must enter before this data provider is triggered (i.e.... |
| `platformDataSource` | `GoogleAppsCardV1PlatformDataSource` | The data is from a Google Workspace application. |
| `remoteDataSource` | `GoogleAppsCardV1Action` | The data is from a remote data provider. |

### `GoogleAppsCardV1DateTimePicker`

Lets users input a date, a time, or both a date and a time. Supports form submission validation. When `Action.all_widgets_are_required` is set to `true` or this widget is specified in `Action.required_widgets`, the submission action is blocked unless a value is selected. For an example in Google Chat apps, see [Let a user pick a date and time](https://developers.google.com/workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time). Users can input text or use the picker to select dates and times. If users input an invalid date or time, the picker shows an error that prompts users to input the information correctly. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `hostAppDataSource` | `HostAppDataSourceMarkup` | A data source that's unique to a Google Workspace host application, such as Gmail emails, Google ... |
| `label` | `string` | The text that prompts users to input a date, a time, or a date and time. For example, if users ar... |
| `name` | `string` | The name by which the `DateTimePicker` is identified in a form input event. For details about wor... |
| `onChangeAction` | `GoogleAppsCardV1Action` | Triggered when the user clicks **Save** or **Clear** from the `DateTimePicker` interface. |
| `timezoneOffsetDate` | `integer` | The number representing the time zone offset from UTC, in minutes. If set, the `value_ms_epoch` i... |
| `type` | `string` | Whether the widget supports inputting a date, a time, or the date and time. |
| `valueMsEpoch` | `string` | The default value displayed in the widget, in milliseconds since [Unix epoch time](https://en.wik... |

### `GoogleAppsCardV1DecoratedText`

A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget, or a button after the text. For an example in Google Chat apps, see [Display text with decorative text](https://developers.google.com/workspace/chat/add-text-image-card-dialog#display_text_with_decorative_elements). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `bottomLabel` | `string` | The text that appears below `text`. Always wraps. |
| `bottomLabelText` | `GoogleAppsCardV1TextParagraph` | `TextParagraph` equivalent of `bottom_label`. Always wraps. Allows for more complex formatting th... |
| `button` | `GoogleAppsCardV1Button` | A button that a user can click to trigger an action. |
| `contentText` | `GoogleAppsCardV1TextParagraph` | `TextParagraph` equivalent of `text`. Allows for more complex formatting than `text`. [Google Cha... |
| `endIcon` | `GoogleAppsCardV1Icon` | An icon displayed after the text. Supports [built-in](https://developers.google.com/workspace/cha... |
| `icon` | `GoogleAppsCardV1Icon` | Deprecated in favor of `startIcon`. |
| `onClick` | `GoogleAppsCardV1OnClick` | This action is triggered when users click `topLabel` or `bottomLabel`. |
| `startIcon` | `GoogleAppsCardV1Icon` | The icon displayed in front of the text. |
| `startIconVerticalAlignment` | `string` | Optional. Vertical alignment of the start icon. If not set, the icon will be vertically centered.... |
| `switchControl` | `GoogleAppsCardV1SwitchControl` | A switch widget that a user can click to change its state and trigger an action. |
| `text` | `string` | Required. The primary text. Supports simple formatting. For more information about formatting tex... |
| `topLabel` | `string` | The text that appears above `text`. Always truncates. |
| `topLabelText` | `GoogleAppsCardV1TextParagraph` | `TextParagraph` equivalent of `top_label`. Always truncates. Allows for more complex formatting t... |
| `wrapText` | `boolean` | The wrap text setting. If `true`, the text wraps and displays on multiple lines. Otherwise, the t... |

### `GoogleAppsCardV1Divider`

Displays a divider between widgets as a horizontal line. For an example in Google Chat apps, see [Add a horizontal divider between widgets](https://developers.google.com/workspace/chat/format-structure-card-dialog#add_a_horizontal_divider_between_widgets). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend): For example, the following JSON creates a divider: ``` "divider": {} ```

### `GoogleAppsCardV1EventAction`

Represents an actionthat can be performed on an ui element. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `actionRuleId` | `string` | The unique identifier of the ActionRule. |
| `commonWidgetAction` | `GoogleAppsCardV1CommonWidgetAction` | Common widget action. |
| `postEventTriggers` | `array<GoogleAppsCardV1Trigger>` | The list of triggers that will be triggered after the EventAction is executed. |

### `GoogleAppsCardV1ExpressionData`

Represents the data that is used to evaluate an expression. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<GoogleAppsCardV1Condition>` | The list of conditions that are determined by the expression evaluation result. |
| `eventActions` | `array<GoogleAppsCardV1EventAction>` | The list of actions that the ExpressionData can be used. |
| `expression` | `string` | The uncompiled expression. |
| `id` | `string` | The unique identifier of the ExpressionData. |

### `GoogleAppsCardV1ExpressionDataCondition`

Represents a condition that is evaluated using CEL. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `conditionType` | `string` | The type of the condition. |

### `GoogleAppsCardV1Grid`

Displays a grid with a collection of items. Items can only include text or images. For responsive columns, or to include more than text or images, use `Columns`. For an example in Google Chat apps, see [Display a Grid with a collection of items](https://developers.google.com/workspace/chat/format-structure-card-dialog#display_a_grid_with_a_collection_of_items). A grid supports any number of columns and items. The number of rows is determined by items divided by columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items and 2 columns has 6 rows. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend): For example, the following JSON creates a 2 column grid with a single item: ``` "grid": { "title": "A fine collection of items", "columnCount": 2, "borderStyle": { "type": "STROKE", "cornerRadius": 4 }, "items": [ { "image": { "imageUri": "https://www.example.com/image.png", "cropStyle": { "type": "SQUARE" }, "borderStyle": { "type": "STROKE" } }, "title": "An item", "textAlignment": "CENTER" } ], "onClick": { "openLink": { "url": "https://www.example.com" } } } ```

| Property | Type | Description |
|----------|------|-------------|
| `borderStyle` | `GoogleAppsCardV1BorderStyle` | The border style to apply to each grid item. |
| `columnCount` | `integer` | The number of columns to display in the grid. A default value is used if this field isn't specifi... |
| `items` | `array<GoogleAppsCardV1GridItem>` | The items to display in the grid. |
| `onClick` | `GoogleAppsCardV1OnClick` | This callback is reused by each individual grid item, but with the item's identifier and index in... |
| `title` | `string` | The text that displays in the grid header. |

### `GoogleAppsCardV1GridItem`

Represents an item in a grid layout. Items can contain text, an image, or both text and an image. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | A user-specified identifier for this grid item. This identifier is returned in the parent grid's ... |
| `image` | `GoogleAppsCardV1ImageComponent` | The image that displays in the grid item. |
| `layout` | `string` | The layout to use for the grid item. |
| `subtitle` | `string` | The grid item's subtitle. |
| `title` | `string` | The grid item's title. |

### `GoogleAppsCardV1Icon`

An icon displayed in a widget on a card. For an example in Google Chat apps, see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/workspace/chat/format-messages#builtinicons) and [custom](https://developers.google.com/workspace/chat/format-messages#customicons) icons. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | Optional. A description of the icon used for accessibility. If unspecified, the default value `Bu... |
| `iconUrl` | `string` | Display a custom icon hosted at an HTTPS URL. For example: ``` "iconUrl": "https://developers.goo... |
| `imageType` | `string` | The crop style applied to the image. In some cases, applying a `CIRCLE` crop causes the image to ... |
| `knownIcon` | `string` | Display one of the built-in icons provided by Google Workspace. For example, to display an airpla... |
| `materialIcon` | `GoogleAppsCardV1MaterialIcon` | Display one of the [Google Material Icons](https://fonts.google.com/icons). For example, to displ... |

### `GoogleAppsCardV1Image`

An image that is specified by a URL and can have an `onClick` action. For an example, see [Add an image](https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_an_image). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | The alternative text of this image that's used for accessibility. |
| `imageUrl` | `string` | The HTTPS URL that hosts the image. For example: ``` https://developers.google.com/workspace/chat... |
| `onClick` | `GoogleAppsCardV1OnClick` | When a user clicks the image, the click triggers this action. |

### `GoogleAppsCardV1ImageComponent`

Represents an image. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `altText` | `string` | The accessibility label for the image. |
| `borderStyle` | `GoogleAppsCardV1BorderStyle` | The border style to apply to the image. |
| `cropStyle` | `GoogleAppsCardV1ImageCropStyle` | The crop style to apply to the image. |
| `imageUri` | `string` | The image URL. |

### `GoogleAppsCardV1ImageCropStyle`

Represents the crop style applied to an image. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend): For example, here's how to apply a 16:9 aspect ratio: ``` cropStyle { "type": "RECTANGLE_CUSTOM", "aspectRatio": 16/9 } ```

| Property | Type | Description |
|----------|------|-------------|
| `aspectRatio` | `number` | The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`. For example, here's how to apply ... |
| `type` | `string` | The crop type. |

### `GoogleAppsCardV1MaterialIcon`

A [Google Material Icon](https://fonts.google.com/icons), which includes over 2500+ options. For example, to display a [checkbox icon](https://fonts.google.com/icons?selected=Material%20Symbols%20Outlined%3Acheck_box%3AFILL%400%3Bwght%40400%3BGRAD%400%3Bopsz%4048) with customized weight and grade, write the following: ``` { "name": "check_box", "fill": true, "weight": 300, "grade": -25 } ``` [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `fill` | `boolean` | Whether the icon renders as filled. Default value is false. To preview different icon settings, g... |
| `grade` | `integer` | Weight and grade affect a symbol’s thickness. Adjustments to grade are more granular than adjustm... |
| `name` | `string` | The icon name defined in the [Google Material Icon](https://fonts.google.com/icons), for example,... |
| `weight` | `integer` | The stroke weight of the icon. Choose from {100, 200, 300, 400, 500, 600, 700}. If absent, defaul... |

### `GoogleAppsCardV1NestedWidget`

A list of widgets that can be displayed in a containing layout, such as a `CarouselCard`. [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `buttonList` | `GoogleAppsCardV1ButtonList` | A button list widget. |
| `image` | `GoogleAppsCardV1Image` | An image widget. |
| `textParagraph` | `GoogleAppsCardV1TextParagraph` | A text paragraph widget. |

### `GoogleAppsCardV1OnClick`

Represents how to respond when users click an interactive element on a card, such as a button. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `action` | `GoogleAppsCardV1Action` | If specified, an action is triggered by this `onClick`. |
| `card` | `GoogleAppsCardV1Card` | A new card is pushed to the card stack after clicking if specified. [Google Workspace add-ons](ht... |
| `openDynamicLinkAction` | `GoogleAppsCardV1Action` | An add-on triggers this action when the action needs to open a link. This differs from the `open_... |
| `openLink` | `GoogleAppsCardV1OpenLink` | If specified, this `onClick` triggers an open link action. |
| `overflowMenu` | `GoogleAppsCardV1OverflowMenu` | If specified, this `onClick` opens an overflow menu. |

### `GoogleAppsCardV1OpenLink`

Represents an `onClick` event that opens a hyperlink. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `onClose` | `string` | Whether the client forgets about a link after opening it, or observes it until the window closes.... |
| `openAs` | `string` | How to open a link. [Google Workspace add-ons](https://developers.google.com/workspace/add-ons): |
| `url` | `string` | The URL to open. HTTP URLs are converted to HTTPS. |

### `GoogleAppsCardV1OverflowMenu`

A widget that presents a pop-up menu with one or more actions that users can invoke. For example, showing non-primary actions in a card. You can use this widget when actions don't fit in the available space. To use, specify this widget in the `OnClick` action of widgets that support it. For example, in a `Button`. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleAppsCardV1OverflowMenuItem>` | Required. The list of menu options. |

### `GoogleAppsCardV1OverflowMenuItem`

An option that users can invoke in an overflow menu. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the menu option is disabled. Defaults to false. |
| `onClick` | `GoogleAppsCardV1OnClick` | Required. The action invoked when a menu option is selected. This `OnClick` cannot contain an `Ov... |
| `startIcon` | `GoogleAppsCardV1Icon` | The icon displayed in front of the text. |
| `text` | `string` | Required. The text that identifies or describes the item to users. |

### `GoogleAppsCardV1PlatformDataSource`

For a `SelectionInput` widget that uses a multiselect menu, a data source from Google Workspace. Used to populate items in a multiselect menu. [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `commonDataSource` | `string` | A data source shared by all Google Workspace applications, such as users in a Google Workspace or... |
| `hostAppDataSource` | `HostAppDataSourceMarkup` | A data source that's unique to a Google Workspace host application, such spaces in Google Chat. T... |

### `GoogleAppsCardV1Section`

A section contains a collection of widgets that are rendered vertically in the order that they're specified. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `collapseControl` | `GoogleAppsCardV1CollapseControl` | Optional. Define the expand and collapse button of the section. This button will be shown only if... |
| `collapsible` | `boolean` | Indicates whether this section is collapsible. Collapsible sections hide some or all widgets, but... |
| `header` | `string` | Text that appears at the top of a section. Supports simple HTML formatted text. For more informat... |
| `id` | `string` | A unique ID assigned to the section that's used to identify the section to be mutated. The ID has... |
| `uncollapsibleWidgetsCount` | `integer` | The number of uncollapsible widgets which remain visible even when a section is collapsed. For ex... |
| `widgets` | `array<GoogleAppsCardV1Widget>` | All the widgets in the section. Must contain at least one widget. |

### `GoogleAppsCardV1SelectionInput`

A widget that creates one or more UI items that users can select. Supports form submission validation for `dropdown` and `multiselect` menus only. When `Action.all_widgets_are_required` is set to `true` or this widget is specified in `Action.required_widgets`, the submission action is blocked unless a value is selected. For example, a dropdown menu or checkboxes. You can use this widget to collect data that can be predicted or enumerated. For an example in Google Chat apps, see [Add selectable UI elements](/workspace/chat/design-interactive-card-dialog#add_selectable_ui_elements). Chat apps can process the value of items that users select or input. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data). To collect undefined or abstract data from users, use the TextInput widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceConfigs` | `array<GoogleAppsCardV1DataSourceConfig>` | Optional. The data source configs for the selection control. This field provides more fine-graine... |
| `externalDataSource` | `GoogleAppsCardV1Action` | An external data source, such as a relational database. |
| `hintText` | `string` | Optional. Text that appears below the selection input field meant to assist users by prompting th... |
| `items` | `array<GoogleAppsCardV1SelectionItem>` | An array of selectable items. For example, an array of radio buttons or checkboxes. Supports up t... |
| `label` | `string` | The text that appears above the selection input field in the user interface. Specify text that he... |
| `multiSelectMaxSelectedItems` | `integer` | For multiselect menus, the maximum number of items that a user can select. Minimum value is 1 ite... |
| `multiSelectMinQueryLength` | `integer` | For multiselect menus, the number of text characters that a user inputs before the menu returns s... |
| `name` | `string` | Required. The name that identifies the selection input in a form input event. For details about w... |
| `onChangeAction` | `GoogleAppsCardV1Action` | If specified, the form is submitted when the selection changes. If not specified, you must specif... |
| `platformDataSource` | `GoogleAppsCardV1PlatformDataSource` | A data source from Google Workspace. |
| `type` | `string` | The type of items that are displayed to users in a `SelectionInput` widget. Selection types suppo... |

### `GoogleAppsCardV1SelectionItem`

An item that users can select in a selection input, such as a checkbox or switch. Supports up to 100 items. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `bottomText` | `string` | For multiselect menus, a text description or label that's displayed below the item's `text` field. |
| `selected` | `boolean` | Whether the item is selected by default. If the selection input only accepts one value (such as f... |
| `startIconUri` | `string` |  |
| `text` | `string` | The text that identifies or describes the item to users. |
| `value` | `string` | The value associated with this item. The client should use this as a form input value. For detail... |

### `GoogleAppsCardV1SuggestionItem`

One suggested value that users can enter in a text input field. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | The value of a suggested input to a text input field. This is equivalent to what users enter them... |

### `GoogleAppsCardV1Suggestions`

Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing `Jav`, the list of suggestions filters to show `Java` and `JavaScript`. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter `javascript` and others `java script`. Suggesting `JavaScript` can standardize how users interact with your app. When specified, `TextInput.type` is always `SINGLE_LINE`, even if it's set to `MULTIPLE_LINE`. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleAppsCardV1SuggestionItem>` | A list of suggestions used for autocomplete recommendations in text input fields. |

### `GoogleAppsCardV1SwitchControl`

Either a toggle-style switch or a checkbox inside a `decoratedText` widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend): Only supported in the `decoratedText` widget.

| Property | Type | Description |
|----------|------|-------------|
| `controlType` | `string` | How the switch appears in the user interface. [Google Workspace add-ons and Chat apps](https://de... |
| `name` | `string` | The name by which the switch widget is identified in a form input event. For details about workin... |
| `onChangeAction` | `GoogleAppsCardV1Action` | The action to perform when the switch state is changed, such as what function to run. |
| `selected` | `boolean` | When `true`, the switch is selected. |
| `value` | `string` | The value entered by a user, returned as part of a form input event. For details about working wi... |

### `GoogleAppsCardV1TextInput`

A field in which users can enter text. Supports suggestions and on-change actions. Supports form submission validation. When `Action.all_widgets_are_required` is set to `true` or this widget is specified in `Action.required_widgets`, the submission action is blocked unless a value is entered. For an example in Google Chat apps, see [Add a field in which a user can enter text](https://developers.google.com/workspace/chat/design-interactive-card-dialog#add_a_field_in_which_a_user_can_enter_text). Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data). When you need to collect undefined or abstract data from users, use a text input. To collect defined or enumerated data from users, use the SelectionInput widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `autoCompleteAction` | `GoogleAppsCardV1Action` | Optional. Specify what action to take when the text input field provides suggestions to users who... |
| `hintText` | `string` | Text that appears below the text input field meant to assist users by prompting them to enter a c... |
| `hostAppDataSource` | `HostAppDataSourceMarkup` | A data source that's unique to a Google Workspace host application, such as Gmail emails, Google ... |
| `initialSuggestions` | `GoogleAppsCardV1Suggestions` | Suggested values that users can enter. These values appear when users click inside the text input... |
| `label` | `string` | The text that appears above the text input field in the user interface. Specify text that helps t... |
| `name` | `string` | The name by which the text input is identified in a form input event. For details about working w... |
| `onChangeAction` | `GoogleAppsCardV1Action` | What to do when a change occurs in the text input field. For example, a user adding to the field ... |
| `placeholderText` | `string` | Text that appears in the text input field when the field is empty. Use this text to prompt users ... |
| `type` | `string` | How a text input field appears in the user interface. For example, whether the field is single or... |
| `validation` | `GoogleAppsCardV1Validation` | Specify the input format validation necessary for this text field. [Google Workspace add-ons and ... |
| `value` | `string` | The value entered by a user, returned as part of a form input event. For details about working wi... |

### `GoogleAppsCardV1TextParagraph`

A paragraph of text that supports formatting. For an example in Google Chat apps, see [Add a paragraph of formatted text](https://developers.google.com/workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text). For more information about formatting text, see [Formatting text in Google Chat apps](https://developers.google.com/workspace/chat/format-messages#card-formatting) and [Formatting text in Google Workspace add-ons](https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `maxLines` | `integer` | The maximum number of lines of text that are displayed in the widget. If the text exceeds the spe... |
| `text` | `string` | The text that's shown in the widget. |
| `textSyntax` | `string` | The syntax of the text. If not set, the text is rendered as HTML. [Google Chat apps](https://deve... |

### `GoogleAppsCardV1Trigger`

Represents a trigger. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `actionRuleId` | `string` | The unique identifier of the ActionRule. |

### `GoogleAppsCardV1UpdateVisibilityAction`

Represents an action that updates the visibility of a widget. Available for Google Workspace add-ons that extend Google Workspace Studio. Unavailable for Google Chat apps.

| Property | Type | Description |
|----------|------|-------------|
| `visibility` | `string` | The new visibility. |

### `GoogleAppsCardV1Validation`

Represents the necessary data for validating the widget it's attached to. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

| Property | Type | Description |
|----------|------|-------------|
| `characterLimit` | `integer` | Specify the character limit for text input widgets. Note that this is only used for text input an... |
| `inputType` | `string` | Specify the type of the input widgets. [Google Workspace add-ons and Chat apps](https://developer... |

### `GoogleAppsCardV1Widget`

Each card is made up of widgets. A widget is a composite object that can represent one of text, images, buttons, and other object types.

| Property | Type | Description |
|----------|------|-------------|
| `buttonList` | `GoogleAppsCardV1ButtonList` | A list of buttons. For example, the following JSON creates two buttons. The first is a blue text ... |
| `carousel` | `GoogleAppsCardV1Carousel` | A carousel contains a collection of nested widgets. For example, this is a JSON representation of... |
| `chipList` | `GoogleAppsCardV1ChipList` | A list of chips. For example, the following JSON creates two chips. The first is a text chip and ... |
| `columns` | `GoogleAppsCardV1Columns` | Displays up to 2 columns. To include more than 2 columns, or to use rows, use the `Grid` widget. ... |
| `dateTimePicker` | `GoogleAppsCardV1DateTimePicker` | Displays a widget that lets users input a date, time, or date and time. For example, the followin... |
| `decoratedText` | `GoogleAppsCardV1DecoratedText` | Displays a decorated text item. For example, the following JSON creates a decorated text widget s... |
| `divider` | `GoogleAppsCardV1Divider` | Displays a horizontal line divider between widgets. For example, the following JSON creates a div... |
| `eventActions` | `array<GoogleAppsCardV1EventAction>` | Specifies the event actions that can be performed on the widget. Available for Google Workspace a... |
| `grid` | `GoogleAppsCardV1Grid` | Displays a grid with a collection of items. A grid supports any number of columns and items. The ... |
| `horizontalAlignment` | `string` | Specifies whether widgets align to the left, right, or center of a column. |
| `id` | `string` | A unique ID assigned to the widget that's used to identify the widget to be mutated. The ID has a... |
| `image` | `GoogleAppsCardV1Image` | Displays an image. For example, the following JSON creates an image with alternative text: ``` "i... |
| `selectionInput` | `GoogleAppsCardV1SelectionInput` | Displays a selection control that lets users select items. Selection controls can be checkboxes, ... |
| `textInput` | `GoogleAppsCardV1TextInput` | Displays a text box that users can type into. For example, the following JSON creates a text inpu... |
| `textParagraph` | `GoogleAppsCardV1TextParagraph` | Displays a text paragraph. Supports simple HTML formatted text. For more information about format... |
| `visibility` | `string` | Specifies whether the widget is visible or hidden. The default value is `VISIBLE`. Available for ... |

### `GoogleAppsCardV1Widgets`

The supported widgets that you can include in a column. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend)

| Property | Type | Description |
|----------|------|-------------|
| `buttonList` | `GoogleAppsCardV1ButtonList` | ButtonList widget. |
| `chipList` | `GoogleAppsCardV1ChipList` | ChipList widget. |
| `dateTimePicker` | `GoogleAppsCardV1DateTimePicker` | DateTimePicker widget. |
| `decoratedText` | `GoogleAppsCardV1DecoratedText` | DecoratedText widget. |
| `image` | `GoogleAppsCardV1Image` | Image widget. |
| `selectionInput` | `GoogleAppsCardV1SelectionInput` | SelectionInput widget. |
| `textInput` | `GoogleAppsCardV1TextInput` | TextInput widget. |
| `textParagraph` | `GoogleAppsCardV1TextParagraph` | TextParagraph widget. |

### `Group`

A Google Group in Google Chat.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Resource name for a Google Group. Represents a [group](https://cloud.google.com/identity/docs/ref... |

### `HostAppDataSourceMarkup`

A data source from a Google Workspace application. The data source populates available items for a widget.

| Property | Type | Description |
|----------|------|-------------|
| `chatDataSource` | `ChatClientDataSourceMarkup` | A data source from Google Chat. |
| `workflowDataSource` | `WorkflowDataSourceMarkup` | A data source from Google Workflow. |

### `Image`

An image that's specified by a URL and can have an `onclick` action.

| Property | Type | Description |
|----------|------|-------------|
| `aspectRatio` | `number` | The aspect ratio of this image (width and height). This field lets you reserve the right height f... |
| `imageUrl` | `string` | The URL of the image. |
| `onClick` | `OnClick` | The `onclick` action. |

### `ImageButton`

An image button with an `onclick` action.

| Property | Type | Description |
|----------|------|-------------|
| `icon` | `string` | The icon specified by an `enum` that indices to an icon provided by Chat API. |
| `iconUrl` | `string` | The icon specified by a URL. |
| `name` | `string` | The name of this `image_button` that's used for accessibility. Default value is provided if this ... |
| `onClick` | `OnClick` | The `onclick` action. |

### `Inputs`

Types of data that users can [input on cards or dialogs](https://developers.google.com/chat/ui/read-form-data). The input type depends on the type of values that the widget accepts.

| Property | Type | Description |
|----------|------|-------------|
| `dateInput` | `DateInput` | Date input values from a [`DateTimePicker`](https://developers.google.com/chat/api/reference/rest... |
| `dateTimeInput` | `DateTimeInput` | Date and time input values from a [`DateTimePicker`](https://developers.google.com/chat/api/refer... |
| `stringInputs` | `StringInputs` | A list of strings that represent the values that the user inputs in a widget. If the widget only ... |
| `timeInput` | `TimeInput` | Time input values from a [`DateTimePicker`](https://developers.google.com/chat/api/reference/rest... |

### `KeyValue`

A UI element contains a key (label) and a value (content). This element can also contain some actions such as `onclick` button.

| Property | Type | Description |
|----------|------|-------------|
| `bottomLabel` | `string` | The text of the bottom label. Formatted text supported. For more information about formatting tex... |
| `button` | `Button` | A button that can be clicked to trigger an action. |
| `content` | `string` | The text of the content. Formatted text supported and always required. For more information about... |
| `contentMultiline` | `boolean` | If the content should be multiline. |
| `icon` | `string` | An enum value that's replaced by the Chat API with the corresponding icon image. |
| `iconUrl` | `string` | The icon specified by a URL. |
| `onClick` | `OnClick` | The `onclick` action. Only the top label, bottom label, and content region are clickable. |
| `topLabel` | `string` | The text of the top label. Formatted text supported. For more information about formatting text, ... |

### `ListCustomEmojisResponse`

A response to list custom emojis.

| Property | Type | Description |
|----------|------|-------------|
| `customEmojis` | `array<CustomEmoji>` | Unordered list. List of custom emojis. |
| `nextPageToken` | `string` | A token that you can send as `pageToken` to retrieve the next page of results. If empty, there ar... |

### `ListMembershipsResponse`

Response to list memberships of the space.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<Membership>` | Unordered list. List of memberships in the requested (or first) page. |
| `nextPageToken` | `string` | A token that you can send as `pageToken` to retrieve the next page of results. If empty, there ar... |

### `ListMessagesResponse`

Response message for listing messages.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<Message>` | List of messages. |
| `nextPageToken` | `string` | You can send a token as `pageToken` to retrieve the next page of results. If empty, there are no ... |

### `ListReactionsResponse`

Response to a list reactions request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token to retrieve the next page of results. It's empty for the last page of results. |
| `reactions` | `array<Reaction>` | List of reactions in the requested (or first) page. |

### `ListSpaceEventsResponse`

Response message for listing space events.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to fetch more events. If this field is omitted, there are no subsequent p... |
| `spaceEvents` | `array<SpaceEvent>` | Results are returned in chronological order (oldest event first). Note: The `permissionSettings` ... |

### `ListSpacesResponse`

The response for a list spaces request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | You can send a token as `pageToken` to retrieve the next page of results. If empty, there are no ... |
| `spaces` | `array<Space>` | List of spaces in the requested (or first) page. Note: The `permissionSettings` field is not retu... |

### `MatchedUrl`

A matched URL in a Chat message. Chat apps can preview matched URLs. For more information, see [Preview links](https://developers.google.com/chat/how-tos/preview-links).

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | Output only. The URL that was matched. |

### `Media`

Media resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Name of the media resource. |

### `MeetSpaceLinkData`

Data for Meet space links.

| Property | Type | Description |
|----------|------|-------------|
| `huddleStatus` | `string` | Optional. Output only. If the Meet is a Huddle, indicates the status of the huddle. Otherwise, th... |
| `meetingCode` | `string` | Meeting code of the linked Meet space. |
| `type` | `string` | Indicates the type of the Meet space. |

### `Membership`

Represents a membership relation in Google Chat, such as whether a user or Chat app is invited to, part of, or absent from a space.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Optional. Immutable. The creation time of the membership, such as when a member joined or was inv... |
| `deleteTime` | `string` | Optional. Immutable. The deletion time of the membership, such as when a member left or was remov... |
| `groupMember` | `Group` | Optional. The Google Group the membership corresponds to. Reading or mutating memberships for Goo... |
| `member` | `User` | Optional. The Google Chat user or app the membership corresponds to. If your Chat app [authentica... |
| `name` | `string` | Identifier. Resource name of the membership, assigned by the server. Format: `spaces/{space}/memb... |
| `role` | `string` | Optional. User's role within a Chat space, which determines their permitted actions in the space.... |
| `state` | `string` | Output only. State of the membership. |

### `MembershipBatchCreatedEventData`

Event payload for multiple new memberships. Event type: `google.workspace.chat.membership.v1.batchCreated`

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<MembershipCreatedEventData>` | A list of new memberships. |

### `MembershipBatchDeletedEventData`

Event payload for multiple deleted memberships. Event type: `google.workspace.chat.membership.v1.batchDeleted`

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<MembershipDeletedEventData>` | A list of deleted memberships. |

### `MembershipBatchUpdatedEventData`

Event payload for multiple updated memberships. Event type: `google.workspace.chat.membership.v1.batchUpdated`

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<MembershipUpdatedEventData>` | A list of updated memberships. |

### `MembershipCount`

Represents the count of memberships of a space, grouped into categories.

| Property | Type | Description |
|----------|------|-------------|
| `joinedDirectHumanUserCount` | `integer` | Output only. Count of human users that have directly joined the space, not counting users joined ... |
| `joinedGroupCount` | `integer` | Output only. Count of all groups that have directly joined the space. |

### `MembershipCreatedEventData`

Event payload for a new membership. Event type: `google.workspace.chat.membership.v1.created`.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `Membership` | The new membership. |

### `MembershipDeletedEventData`

Event payload for a deleted membership. Event type: `google.workspace.chat.membership.v1.deleted`

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `Membership` | The deleted membership. Only the `name` and `state` fields are populated. |

### `MembershipUpdatedEventData`

Event payload for an updated membership. Event type: `google.workspace.chat.membership.v1.updated`

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `Membership` | The updated membership. |

### `Message`

A message in a Google Chat space.

| Property | Type | Description |
|----------|------|-------------|
| `accessoryWidgets` | `array<AccessoryWidget>` | Optional. One or more interactive widgets that appear at the bottom of a message. You can add acc... |
| `actionResponse` | `ActionResponse` | Input only. Parameters that a Chat app can use to configure how its response is posted. |
| `annotations` | `array<Annotation>` | Output only. Annotations can be associated with the plain-text body of the message or with chips ... |
| `argumentText` | `string` | Output only. Plain-text body of the message with all Chat app mentions stripped out. |
| `attachedGifs` | `array<AttachedGif>` | Output only. GIF images that are attached to the message. |
| `attachment` | `array<Attachment>` | Optional. User-uploaded attachment. |
| `cards` | `array<Card>` | Deprecated: Use `cards_v2` instead. Rich, formatted, and interactive cards that you can use to di... |
| `cardsV2` | `array<CardWithId>` | Optional. An array of [cards](https://developers.google.com/workspace/chat/api/reference/rest/v1/... |
| `clientAssignedMessageId` | `string` | Optional. A custom ID for the message. You can use field to identify a message, or to get, delete... |
| `createTime` | `string` | Optional. Immutable. For spaces created in Chat, the time at which the message was created. This ... |
| `deleteTime` | `string` | Output only. The time at which the message was deleted in Google Chat. If the message is never de... |
| `deletionMetadata` | `DeletionMetadata` | Output only. Information about a deleted message. A message is deleted when `delete_time` is set. |
| `emojiReactionSummaries` | `array<EmojiReactionSummary>` | Output only. The list of emoji reaction summaries on the message. |
| `fallbackText` | `string` | Optional. A plain-text description of the message's cards, used when the actual cards can't be di... |
| `formattedText` | `string` | Output only. Contains the message `text` with markups added to communicate formatting. This field... |
| `lastUpdateTime` | `string` | Output only. The time at which the message was last edited by a user. If the message has never be... |
| `matchedUrl` | `MatchedUrl` | Output only. A URL in `spaces.messages.text` that matches a link preview pattern. For more inform... |
| `name` | `string` | Identifier. Resource name of the message. Format: `spaces/{space}/messages/{message}` Where `{spa... |
| `privateMessageViewer` | `User` | Optional. Immutable. Input for creating a message, otherwise output only. The user that can view ... |
| `quotedMessageMetadata` | `QuotedMessageMetadata` | Optional. Information about a message that another message quotes. When you create a message, you... |
| `sender` | `User` | Output only. The user who created the message. If your Chat app [authenticates as a user](https:/... |
| `slashCommand` | `SlashCommand` | Output only. Slash command information, if applicable. |
| `space` | `Space` | Output only. If your Chat app [authenticates as a user](https://developers.google.com/workspace/c... |
| `text` | `string` | Optional. Plain-text body of the message. The first link to an image, video, or web page generate... |
| `thread` | `Thread` | The thread the message belongs to. For example usage, see [Start or reply to a message thread](ht... |
| `threadReply` | `boolean` | Output only. When `true`, the message is a response in a reply thread. When `false`, the message ... |

### `MessageBatchCreatedEventData`

Event payload for multiple new messages. Event type: `google.workspace.chat.message.v1.batchCreated`

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<MessageCreatedEventData>` | A list of new messages. |

### `MessageBatchDeletedEventData`

Event payload for multiple deleted messages. Event type: `google.workspace.chat.message.v1.batchDeleted`

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<MessageDeletedEventData>` | A list of deleted messages. |

### `MessageBatchUpdatedEventData`

Event payload for multiple updated messages. Event type: `google.workspace.chat.message.v1.batchUpdated`

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<MessageUpdatedEventData>` | A list of updated messages. |

### `MessageCreatedEventData`

Event payload for a new message. Event type: `google.workspace.chat.message.v1.created`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | The new message. |

### `MessageDeletedEventData`

Event payload for a deleted message. Event type: `google.workspace.chat.message.v1.deleted`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | The deleted message. Only the `name`, `createTime`, and `deletionMetadata` fields are populated. |

### `MessageUpdatedEventData`

Event payload for an updated message. Event type: `google.workspace.chat.message.v1.updated`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | The updated message. |

### `OnClick`

An `onclick` action (for example, open a link).

| Property | Type | Description |
|----------|------|-------------|
| `action` | `FormAction` | A form action is triggered by this `onclick` action if specified. |
| `openLink` | `OpenLink` | This `onclick` action triggers an open link action if specified. |

### `OpenLink`

A link that opens a new window.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | The URL to open. |

### `PermissionSetting`

Represents a space permission setting.

| Property | Type | Description |
|----------|------|-------------|
| `assistantManagersAllowed` | `boolean` | Optional. Whether space managers `ROLE_ASSISTANT_MANAGER`) have this permission. |
| `managersAllowed` | `boolean` | Optional. Whether space owners (`ROLE_MANAGER`) have this permission. |
| `membersAllowed` | `boolean` | Optional. Whether basic space members (`ROLE_MEMBER`) have this permission. |

### `PermissionSettings`

[Permission settings](https://support.google.com/chat/answer/13340792) that you can specify when updating an existing named space. To set permission settings when creating a space, specify the `PredefinedPermissionSettings` field in your request.

| Property | Type | Description |
|----------|------|-------------|
| `manageApps` | `PermissionSetting` | Optional. Setting for managing apps in a space. |
| `manageMembersAndGroups` | `PermissionSetting` | Optional. Setting for managing members and groups in a space. |
| `manageWebhooks` | `PermissionSetting` | Optional. Setting for managing webhooks in a space. |
| `modifySpaceDetails` | `PermissionSetting` | Optional. Setting for updating space name, avatar, description and guidelines. |
| `postMessages` | `PermissionSetting` | Output only. Setting for posting messages in a space. |
| `replyMessages` | `PermissionSetting` | Optional. Setting for replying to messages in a space. |
| `toggleHistory` | `PermissionSetting` | Optional. Setting for toggling space history on and off. |
| `useAtMentionAll` | `PermissionSetting` | Optional. Setting for using @all in a space. |

### `QuotedMessageMetadata`

Information about a message that another message quotes. When you create a message, you can quote messages within the same thread, or quote a root message to create a new root message. However, you can't quote a message reply from a different thread. When you update a message, you can't add or replace the `quotedMessageMetadata` field, but you can remove it. For example usage, see [Quote another message](https://developers.google.com/workspace/chat/create-messages#quote-a-message).

| Property | Type | Description |
|----------|------|-------------|
| `forwardedMetadata` | `ForwardedMetadata` | Output only. Metadata about the source space of the quoted message. Populated only for FORWARD qu... |
| `lastUpdateTime` | `string` | Required. The timestamp when the quoted message was created or when the quoted message was last u... |
| `name` | `string` | Required. Resource name of the message that is quoted. Format: `spaces/{space}/messages/{message}` |
| `quoteType` | `string` | Optional. Specifies the quote type. If not set, defaults to REPLY in the message read/write path ... |
| `quotedMessageSnapshot` | `QuotedMessageSnapshot` | Output only. A snapshot of the quoted message's content. |

### `QuotedMessageSnapshot`

Provides a snapshot of the content of the quoted message at the time of quoting or forwarding

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<Annotation>` | Output only. Annotations parsed from the text body of the quoted message. Populated only for FORW... |
| `attachments` | `array<Attachment>` | Output only. Attachments that were part of the quoted message. These are copies of the quoted mes... |
| `formattedText` | `string` | Output only. Contains the quoted message `text` with markups added to support rich formatting lik... |
| `sender` | `string` | Output only. The quoted message's author name. Populated for both REPLY & FORWARD quote types. |
| `text` | `string` | Output only. Snapshot of the quoted message's text content. |

### `Reaction`

A reaction to a message.

| Property | Type | Description |
|----------|------|-------------|
| `emoji` | `Emoji` | Required. The emoji used in the reaction. |
| `name` | `string` | Identifier. The resource name of the reaction. Format: `spaces/{space}/messages/{message}/reactio... |
| `user` | `User` | Output only. The user who created the reaction. |

### `ReactionBatchCreatedEventData`

Event payload for multiple new reactions. Event type: `google.workspace.chat.reaction.v1.batchCreated`

| Property | Type | Description |
|----------|------|-------------|
| `reactions` | `array<ReactionCreatedEventData>` | A list of new reactions. |

### `ReactionBatchDeletedEventData`

Event payload for multiple deleted reactions. Event type: `google.workspace.chat.reaction.v1.batchDeleted`

| Property | Type | Description |
|----------|------|-------------|
| `reactions` | `array<ReactionDeletedEventData>` | A list of deleted reactions. |

### `ReactionCreatedEventData`

Event payload for a new reaction. Event type: `google.workspace.chat.reaction.v1.created`

| Property | Type | Description |
|----------|------|-------------|
| `reaction` | `Reaction` | The new reaction. |

### `ReactionDeletedEventData`

Event payload for a deleted reaction. Type: `google.workspace.chat.reaction.v1.deleted`

| Property | Type | Description |
|----------|------|-------------|
| `reaction` | `Reaction` | The deleted reaction. |

### `RichLinkMetadata`

A rich link to a resource. Rich links can be associated with the plain-text body of the message or represent chips that link to Google Workspace resources like Google Docs or Sheets with `start_index` and `length` of 0.

| Property | Type | Description |
|----------|------|-------------|
| `calendarEventLinkData` | `CalendarEventLinkData` | Data for a Calendar event link. |
| `chatSpaceLinkData` | `ChatSpaceLinkData` | Data for a chat space link. |
| `driveLinkData` | `DriveLinkData` | Data for a drive link. |
| `meetSpaceLinkData` | `MeetSpaceLinkData` | Data for a Meet space link. |
| `richLinkType` | `string` | The rich link type. |
| `uri` | `string` | The URI of this link. |

### `SearchSpacesResponse`

Response with a list of spaces corresponding to the search spaces request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be used to retrieve the next page. If this field is empty, there are no subseque... |
| `spaces` | `array<Space>` | A page of the requested spaces. |
| `totalSize` | `integer` | The total number of spaces that match the query, across all pages. If the result is over 10,000 s... |

### `Section`

A section contains a collection of widgets that are rendered (vertically) in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there's currently no need for layout properties (for example, float).

| Property | Type | Description |
|----------|------|-------------|
| `header` | `string` | The header of the section. Formatted text is supported. For more information about formatting tex... |
| `widgets` | `array<WidgetMarkup>` | A section must contain at least one widget. |

### `SelectionItems`

List of widget autocomplete results.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GoogleAppsCardV1SelectionItem>` | An array of the SelectionItem objects. |

### `SetUpSpaceRequest`

Request to create a space and add specified users to it.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<Membership>` | Optional. The Google Chat users or groups to invite to join the space. Omit the calling user, as ... |
| `requestId` | `string` | Optional. A unique identifier for this request. A random UUID is recommended. Specifying an exist... |
| `space` | `Space` | Required. The `Space.spaceType` field is required. To create a space, set `Space.spaceType` to `S... |

### `SlashCommand`

Metadata about a [slash command](https://developers.google.com/workspace/chat/commands) in Google Chat.

| Property | Type | Description |
|----------|------|-------------|
| `commandId` | `string` | The ID of the slash command. |

### `SlashCommandMetadata`

Annotation metadata for slash commands (/).

| Property | Type | Description |
|----------|------|-------------|
| `bot` | `User` | The Chat app whose command was invoked. |
| `commandId` | `string` | The command ID of the invoked slash command. |
| `commandName` | `string` | The name of the invoked slash command. |
| `triggersDialog` | `boolean` | Indicates whether the slash command is for a dialog. |
| `type` | `string` | The type of slash command. |

### `Space`

A space in Google Chat. Spaces are conversations between two or more users or 1:1 messages between a user and a Chat app.

| Property | Type | Description |
|----------|------|-------------|
| `accessSettings` | `AccessSettings` | Optional. Specifies the [access setting](https://support.google.com/chat/answer/11971020) of the ... |
| `adminInstalled` | `boolean` | Output only. For direct message (DM) spaces with a Chat app, whether the space was created by a G... |
| `createTime` | `string` | Optional. Immutable. For spaces created in Chat, the time the space was created. This field is ou... |
| `customer` | `string` | Optional. Immutable. The customer id of the domain of the space. Required only when creating a sp... |
| `displayName` | `string` | Optional. The space's display name. Required when [creating a space](https://developers.google.co... |
| `externalUserAllowed` | `boolean` | Optional. Immutable. Whether this space permits any Google Chat user as a member. Input when crea... |
| `importMode` | `boolean` | Optional. Whether this space is created in `Import Mode` as part of a data migration into Google ... |
| `importModeExpireTime` | `string` | Output only. The time when the space will be automatically deleted by the system if it remains in... |
| `lastActiveTime` | `string` | Output only. Timestamp of the last message in the space. |
| `membershipCount` | `MembershipCount` | Output only. The count of joined memberships grouped by member type. Populated when the `space_ty... |
| `name` | `string` | Identifier. Resource name of the space. Format: `spaces/{space}` Where `{space}` represents the s... |
| `permissionSettings` | `PermissionSettings` | Optional. Space permission settings for existing spaces. Input for updating exact space permissio... |
| `predefinedPermissionSettings` | `string` | Optional. Input only. Predefined space permission settings, input only when creating a space. If ... |
| `singleUserBotDm` | `boolean` | Optional. Whether the space is a DM between a Chat app and a single human. |
| `spaceDetails` | `SpaceDetails` | Optional. Details about the space including description and rules. |
| `spaceHistoryState` | `string` | Optional. The message history state for messages and threads in this space. |
| `spaceThreadingState` | `string` | Output only. The threading state in the Chat space. |
| `spaceType` | `string` | Optional. The type of space. Required when creating a space or updating the space type of a space... |
| `spaceUri` | `string` | Output only. The URI for a user to access the space. |
| `threaded` | `boolean` | Output only. Deprecated: Use `spaceThreadingState` instead. Whether messages are threaded in this... |
| `type` | `string` | Output only. Deprecated: Use `space_type` instead. The type of a space. |

### `SpaceBatchUpdatedEventData`

Event payload for multiple updates to a space. Event type: `google.workspace.chat.space.v1.batchUpdated`

| Property | Type | Description |
|----------|------|-------------|
| `spaces` | `array<SpaceUpdatedEventData>` | A list of updated spaces. |

### `SpaceDataSource`

A data source that populates Google Chat spaces as selection items for a multiselect menu. Only populates spaces that the user is a member of. [Google Chat apps](https://developers.google.com/workspace/chat):

| Property | Type | Description |
|----------|------|-------------|
| `defaultToCurrentSpace` | `boolean` | If set to `true`, the multiselect menu selects the current Google Chat space as an item by default. |

### `SpaceDetails`

Details about the space including description and rules.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A description of the space. For example, describe the space's discussion topic, functio... |
| `guidelines` | `string` | Optional. The space's rules, expectations, and etiquette. Supports up to 5,000 characters. |

### `SpaceEvent`

An event that represents a change or activity in a Google Chat space. To learn more, see [Work with events from Google Chat](https://developers.google.com/workspace/chat/events-overview).

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | Time when the event occurred. |
| `eventType` | `string` | Type of space event. Each event type has a batch version, which represents multiple instances of ... |
| `membershipBatchCreatedEventData` | `MembershipBatchCreatedEventData` | Event payload for multiple new memberships. Event type: `google.workspace.chat.membership.v1.batc... |
| `membershipBatchDeletedEventData` | `MembershipBatchDeletedEventData` | Event payload for multiple deleted memberships. Event type: `google.workspace.chat.membership.v1.... |
| `membershipBatchUpdatedEventData` | `MembershipBatchUpdatedEventData` | Event payload for multiple updated memberships. Event type: `google.workspace.chat.membership.v1.... |
| `membershipCreatedEventData` | `MembershipCreatedEventData` | Event payload for a new membership. Event type: `google.workspace.chat.membership.v1.created` |
| `membershipDeletedEventData` | `MembershipDeletedEventData` | Event payload for a deleted membership. Event type: `google.workspace.chat.membership.v1.deleted` |
| `membershipUpdatedEventData` | `MembershipUpdatedEventData` | Event payload for an updated membership. Event type: `google.workspace.chat.membership.v1.updated` |
| `messageBatchCreatedEventData` | `MessageBatchCreatedEventData` | Event payload for multiple new messages. Event type: `google.workspace.chat.message.v1.batchCreated` |
| `messageBatchDeletedEventData` | `MessageBatchDeletedEventData` | Event payload for multiple deleted messages. Event type: `google.workspace.chat.message.v1.batchD... |
| `messageBatchUpdatedEventData` | `MessageBatchUpdatedEventData` | Event payload for multiple updated messages. Event type: `google.workspace.chat.message.v1.batchU... |
| `messageCreatedEventData` | `MessageCreatedEventData` | Event payload for a new message. Event type: `google.workspace.chat.message.v1.created` |
| `messageDeletedEventData` | `MessageDeletedEventData` | Event payload for a deleted message. Event type: `google.workspace.chat.message.v1.deleted` |
| `messageUpdatedEventData` | `MessageUpdatedEventData` | Event payload for an updated message. Event type: `google.workspace.chat.message.v1.updated` |
| `name` | `string` | Resource name of the space event. Format: `spaces/{space}/spaceEvents/{spaceEvent}` |
| `reactionBatchCreatedEventData` | `ReactionBatchCreatedEventData` | Event payload for multiple new reactions. Event type: `google.workspace.chat.reaction.v1.batchCre... |
| `reactionBatchDeletedEventData` | `ReactionBatchDeletedEventData` | Event payload for multiple deleted reactions. Event type: `google.workspace.chat.reaction.v1.batc... |
| `reactionCreatedEventData` | `ReactionCreatedEventData` | Event payload for a new reaction. Event type: `google.workspace.chat.reaction.v1.created` |
| `reactionDeletedEventData` | `ReactionDeletedEventData` | Event payload for a deleted reaction. Event type: `google.workspace.chat.reaction.v1.deleted` |
| `spaceBatchUpdatedEventData` | `SpaceBatchUpdatedEventData` | Event payload for multiple updates to a space. Event type: `google.workspace.chat.space.v1.batchU... |
| `spaceUpdatedEventData` | `SpaceUpdatedEventData` | Event payload for a space update. Event type: `google.workspace.chat.space.v1.updated` |

### `SpaceNotificationSetting`

The notification setting of a user in a space.

| Property | Type | Description |
|----------|------|-------------|
| `muteSetting` | `string` | The space notification mute setting. |
| `name` | `string` | Identifier. The resource name of the space notification setting. Format: `users/{user}/spaces/{sp... |
| `notificationSetting` | `string` | The notification setting. |

### `SpaceReadState`

A user's read state within a space, used to identify read and unread messages.

| Property | Type | Description |
|----------|------|-------------|
| `lastReadTime` | `string` | Optional. The time when the user's space read state was updated. Usually this corresponds with ei... |
| `name` | `string` | Resource name of the space read state. Format: `users/{user}/spaces/{space}/spaceReadState` |

### `SpaceUpdatedEventData`

Event payload for an updated space. Event type: `google.workspace.chat.space.v1.updated`

| Property | Type | Description |
|----------|------|-------------|
| `space` | `Space` | The updated space. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StringInputs`

Input parameter for regular widgets. For single-valued widgets, it is a single value list. For multi-valued widgets, such as checkbox, all the values are presented.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `array<string>` | An list of strings entered by the user. |

### `TextButton`

A button with text and `onclick` action.

| Property | Type | Description |
|----------|------|-------------|
| `onClick` | `OnClick` | The `onclick` action of the button. |
| `text` | `string` | The text of the button. |

### `TextParagraph`

A paragraph of text. Formatted text supported. For more information about formatting text, see [Formatting text in Google Chat apps](https://developers.google.com/workspace/chat/format-messages#card-formatting) and [Formatting text in Google Workspace Add-ons](https://developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting).

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` |  |

### `Thread`

A thread in a Google Chat space. For example usage, see [Start or reply to a message thread](https://developers.google.com/workspace/chat/create-messages#create-message-thread). If you specify a thread when creating a message, you can set the [`messageReplyOption`](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages/create#messagereplyoption) field to determine what happens if no matching thread is found.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. Resource name of the thread. Example: `spaces/{space}/threads/{thread}` |
| `threadKey` | `string` | Optional. Input for creating or updating a thread. Otherwise, output only. ID for the thread. Sup... |

### `ThreadReadState`

A user's read state within a thread, used to identify read and unread messages.

| Property | Type | Description |
|----------|------|-------------|
| `lastReadTime` | `string` | The time when the user's thread read state was updated. Usually this corresponds with the timesta... |
| `name` | `string` | Resource name of the thread read state. Format: `users/{user}/spaces/{space}/threads/{thread}/thr... |

### `TimeInput`

Time input values.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | The hour on a 24-hour clock. |
| `minutes` | `integer` | The number of minutes past the hour. Valid values are 0 to 59. |

### `TimeZone`

The timezone ID and offset from Coordinated Universal Time (UTC). Only supported for the event types [`CARD_CLICKED`](https://developers.google.com/chat/api/reference/rest/v1/EventType#ENUM_VALUES.CARD_CLICKED) and [`SUBMIT_DIALOG`](https://developers.google.com/chat/api/reference/rest/v1/DialogEventType#ENUM_VALUES.SUBMIT_DIALOG).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The [IANA TZ](https://www.iana.org/time-zones) time zone database code, such as "America/Toronto". |
| `offset` | `integer` | The user timezone offset, in milliseconds, from Coordinated Universal Time (UTC). |

### `UpdatedWidget`

For `selectionInput` widgets, returns autocomplete suggestions for a multiselect menu.

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `SelectionItems` | List of widget autocomplete results |
| `widget` | `string` | The ID of the updated widget. The ID must match the one for the widget that triggered the update ... |

### `UploadAttachmentRequest`

Request to upload an attachment.

| Property | Type | Description |
|----------|------|-------------|
| `filename` | `string` | Required. The filename of the attachment, including the file extension. |

### `UploadAttachmentResponse`

Response of uploading an attachment.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentDataRef` | `AttachmentDataRef` | Reference to the uploaded attachment. |

### `User`

A user in Google Chat. When returned as an output from a request, if your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the output for a `User` resource only populates the user's `name` and `type`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The user's display name. |
| `domainId` | `string` | Unique identifier of the user's Google Workspace domain. |
| `isAnonymous` | `boolean` | Output only. When `true`, the user is deleted or their profile is not visible. |
| `name` | `string` | Resource name for a Google Chat user. Format: `users/{user}`. `users/app` can be used as an alias... |
| `type` | `string` | User type. |

### `UserMentionMetadata`

Annotation metadata for user mentions (@).

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of user mention. |
| `user` | `User` | The user mentioned. |

### `WidgetMarkup`

A widget is a UI element that presents text and images.

| Property | Type | Description |
|----------|------|-------------|
| `buttons` | `array<Button>` | A list of buttons. Buttons is also `oneof data` and only one of these fields should be set. |
| `image` | `Image` | Display an image in this widget. |
| `keyValue` | `KeyValue` | Display a key value item in this widget. |
| `textParagraph` | `TextParagraph` | Display a text paragraph in this widget. |

### `WorkflowDataSourceMarkup`

* Only supported by Google Workspace Workflow, but not Google Chat apps or Google Workspace add-ons. In a `TextInput` or `SelectionInput` widget with MULTI_SELECT type or a `DateTimePicker`, provide data source from Google.

| Property | Type | Description |
|----------|------|-------------|
| `includeVariables` | `boolean` | Whether to include variables from the previous step in the data source. |
| `type` | `string` | The type of data source. |

