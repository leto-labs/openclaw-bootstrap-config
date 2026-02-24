# Google Keep API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 16

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `keep.notes.create` | POST | `v1/notes` | Creates a new note. |
| `keep.notes.get` | GET | `v1/{+name}` | Gets a note. |
| `keep.notes.list` | GET | `v1/notes` | Lists notes. Every list call returns a page of results with `page_size` as the upper bound of ret... |
| `keep.notes.delete` | DELETE | `v1/{+name}` | Deletes a note. Caller must have the `OWNER` role on the note to delete. Deleting a note removes ... |
| `keep.notes.permissions.batchCreate` | POST | `v1/{+parent}/permissions:batchCreate` | Creates one or more permissions on the note. Only permissions with the `WRITER` role may be creat... |
| `keep.notes.permissions.batchDelete` | POST | `v1/{+parent}/permissions:batchDelete` | Deletes one or more permissions on the note. The specified entities will immediately lose access.... |
| `keep.media.download` | GET | `v1/{+name}` | Gets an attachment. To download attachment media via REST requires the alt=media query parameter.... |

### `keep.notes.create`

**POST** `v1/notes`

Creates a new note.

**Request body**: `Note`

**Response**: `Note`

```typescript
const res = await keep.notes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`

---

### `keep.notes.get`

**GET** `v1/{+name}`

Gets a note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Note`

```typescript
const res = await keep.notes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`
- `https://www.googleapis.com/auth/keep.readonly`

---

### `keep.notes.list`

**GET** `v1/notes`

Lists notes. Every list call returns a page of results with `page_size` as the upper bound of returned items. A `page_size` of zero allows the server to choose the upper bound. The ListNotesResponse contains at most `page_size` entries. If there are more things left to list, it provides a `next_page_token` value. (Page tokens are opaque values.) To get the next page of results, copy the result's `next_page_token` into the next request's `page_token`. Repeat until the `next_page_token` returned with a page of results is empty. ListNotes return consistent results in the face of concurrent changes, or signals that it cannot with an ABORTED error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Filter for list results. If no filter is supplied, the `trashed` filter is applied by default. Valid fields to filter... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. |
| `pageToken` | `string` | query | No | The previous page's `next_page_token` field. |

**Response**: `ListNotesResponse`

```typescript
const res = await keep.notes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`
- `https://www.googleapis.com/auth/keep.readonly`

---

### `keep.notes.delete`

**DELETE** `v1/{+name}`

Deletes a note. Caller must have the `OWNER` role on the note to delete. Deleting a note removes the resource immediately and cannot be undone. Any collaborators will lose access to the note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the note to delete. |

**Response**: `Empty`

```typescript
const res = await keep.notes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`

---

### `keep.notes.permissions.batchCreate`

**POST** `v1/{+parent}/permissions:batchCreate`

Creates one or more permissions on the note. Only permissions with the `WRITER` role may be created. If adding any permission fails, then the entire request fails and no changes are made.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource shared by all Permissions being created. Format: `notes/{note}` If this is set, the parent field ... |

**Request body**: `BatchCreatePermissionsRequest`

**Response**: `BatchCreatePermissionsResponse`

```typescript
const res = await keep.permissions.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`

---

### `keep.notes.permissions.batchDelete`

**POST** `v1/{+parent}/permissions:batchDelete`

Deletes one or more permissions on the note. The specified entities will immediately lose access. A permission with the `OWNER` role can't be removed. If removing a permission fails, then the entire request fails and no changes are made. Returns a 400 bad request error if a specified permission does not exist on the note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent resource shared by all permissions being deleted. Format: `notes/{note}` If this is set, the parent of all... |

**Request body**: `BatchDeletePermissionsRequest`

**Response**: `Empty`

```typescript
const res = await keep.permissions.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`

---

### `keep.media.download`

**GET** `v1/{+name}`

Gets an attachment. To download attachment media via REST requires the alt=media query parameter. Returns a 400 bad request error if attachment media is not available in the requested MIME type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attachment. |
| `mimeType` | `string` | query | No | The IANA MIME type format requested. The requested MIME type must be one specified in the attachment.mime_type. Requi... |

**Response**: `Attachment`

```typescript
const res = await keep.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/keep`
- `https://www.googleapis.com/auth/keep.readonly`

---

## Schemas

### `Attachment`

An attachment to a note.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `array<string>` | The MIME types (IANA media types) in which the attachment is available. |
| `name` | `string` | The resource name; |

### `BatchCreatePermissionsRequest`

The request to add one or more permissions on the note. Currently, only the `WRITER` role may be specified. If adding a permission fails, then the entire request fails and no changes are made.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<CreatePermissionRequest>` | The request message specifying the resources to create. |

### `BatchCreatePermissionsResponse`

The response for creating permissions on a note.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<Permission>` | Permissions created. |

### `BatchDeletePermissionsRequest`

The request to remove one or more permissions from a note. A permission with the `OWNER` role can't be removed. If removing a permission fails, then the entire request fails and no changes are made. Returns a 400 bad request error if a specified permission does not exist on the note.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. The names of the permissions to delete. Format: `notes/{note}/permissions/{permission}` |

### `CreatePermissionRequest`

The request to add a single permission on the note.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. The parent note where this permission will be created. Format: `notes/{note}` |
| `permission` | `Permission` | Required. The permission to create. One of Permission.email, User.email or Group.email must be su... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Family`

Describes a single Google Family.

### `Group`

Describes a single Group.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The group email. |

### `ListContent`

The list of items for a single list note.

| Property | Type | Description |
|----------|------|-------------|
| `listItems` | `array<ListItem>` | The items in the list. The number of items must be less than 1,000. |

### `ListItem`

A single list item in a note's list.

| Property | Type | Description |
|----------|------|-------------|
| `checked` | `boolean` | Whether this item has been checked off or not. |
| `childListItems` | `array<ListItem>` | If set, list of list items nested under this list item. Only one level of nesting is allowed. |
| `text` | `TextContent` | The text of this item. Length must be less than 1,000 characters. |

### `ListNotesResponse`

The response when listing a page of notes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page's `page_token` field. |
| `notes` | `array<Note>` | A page of notes. |

### `Note`

A single note.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<Attachment>` | Output only. The attachments attached to this note. |
| `body` | `Section` | The body of the note. |
| `createTime` | `string` | Output only. When this note was created. |
| `name` | `string` | Output only. The resource name of this note. See general note on identifiers in KeepService. |
| `permissions` | `array<Permission>` | Output only. The list of permissions set on the note. Contains at least one entry for the note ow... |
| `title` | `string` | The title of the note. Length must be less than 1,000 characters. |
| `trashTime` | `string` | Output only. When this note was trashed. If `trashed`, the note is eventually deleted. If the not... |
| `trashed` | `boolean` | Output only. `true` if this note has been trashed. If trashed, the note is eventually deleted. |
| `updateTime` | `string` | Output only. When this note was last modified. |

### `Permission`

A single permission on the note. Associates a `member` with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `deleted` | `boolean` | Output only. Whether this member has been deleted. If the member is recovered, this value is set ... |
| `email` | `string` | The email associated with the member. If set on create, the `email` field in the `User` or `Group... |
| `family` | `Family` | Output only. The Google Family to which this role applies. |
| `group` | `Group` | Output only. The group to which this role applies. |
| `name` | `string` | Output only. The resource name. |
| `role` | `string` | The role granted by this permission. The role determines the entity’s ability to read, write, and... |
| `user` | `User` | Output only. The user to whom this role applies. |

### `Section`

The content of the note.

| Property | Type | Description |
|----------|------|-------------|
| `list` | `ListContent` | Used if this section's content is a list. |
| `text` | `TextContent` | Used if this section's content is a block of text. The length of the text content must be less th... |

### `TextContent`

The block of text for a single text section or list item.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | The text of the note. The limits on this vary with the specific field using this type. |

### `User`

Describes a single user.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The user's email. |

