# Google Drive API - API Reference

**Version**: `v3` | **Methods**: 57 | **Schemas**: 43

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `drive.replies.delete` | DELETE | `files/{fileId}/comments/{commentId}/replies/{replyId}` | Deletes a reply. For more information, see [Manage comments and replies](https://developers.googl... |
| `drive.replies.list` | GET | `files/{fileId}/comments/{commentId}/replies` | Lists a comment's replies. For more information, see [Manage comments and replies](https://develo... |
| `drive.replies.update` | PATCH | `files/{fileId}/comments/{commentId}/replies/{replyId}` | Updates a reply with patch semantics. For more information, see [Manage comments and replies](htt... |
| `drive.replies.get` | GET | `files/{fileId}/comments/{commentId}/replies/{replyId}` | Gets a reply by ID. For more information, see [Manage comments and replies](https://developers.go... |
| `drive.replies.create` | POST | `files/{fileId}/comments/{commentId}/replies` | Creates a reply to a comment. For more information, see [Manage comments and replies](https://dev... |
| `drive.teamdrives.get` | GET | `teamdrives/{teamDriveId}` | Deprecated: Use `drives.get` instead. |
| `drive.teamdrives.update` | PATCH | `teamdrives/{teamDriveId}` | Deprecated: Use `drives.update` instead. |
| `drive.teamdrives.list` | GET | `teamdrives` | Deprecated: Use `drives.list` instead. |
| `drive.teamdrives.create` | POST | `teamdrives` | Deprecated: Use `drives.create` instead. |
| `drive.teamdrives.delete` | DELETE | `teamdrives/{teamDriveId}` | Deprecated: Use `drives.delete` instead. |
| `drive.comments.get` | GET | `files/{fileId}/comments/{commentId}` | Gets a comment by ID. For more information, see [Manage comments and replies](https://developers.... |
| `drive.comments.update` | PATCH | `files/{fileId}/comments/{commentId}` | Updates a comment with patch semantics. For more information, see [Manage comments and replies](h... |
| `drive.comments.create` | POST | `files/{fileId}/comments` | Creates a comment on a file. For more information, see [Manage comments and replies](https://deve... |
| `drive.comments.list` | GET | `files/{fileId}/comments` | Lists a file's comments. For more information, see [Manage comments and replies](https://develope... |
| `drive.comments.delete` | DELETE | `files/{fileId}/comments/{commentId}` | Deletes a comment. For more information, see [Manage comments and replies](https://developers.goo... |
| `drive.permissions.delete` | DELETE | `files/{fileId}/permissions/{permissionId}` | Deletes a permission. For more information, see [Share files, folders, and drives](https://develo... |
| `drive.permissions.update` | PATCH | `files/{fileId}/permissions/{permissionId}` | Updates a permission with patch semantics. For more information, see [Share files, folders, and d... |
| `drive.permissions.get` | GET | `files/{fileId}/permissions/{permissionId}` | Gets a permission by ID. For more information, see [Share files, folders, and drives](https://dev... |
| `drive.permissions.list` | GET | `files/{fileId}/permissions` | Lists a file's or shared drive's permissions. For more information, see [Share files, folders, an... |
| `drive.permissions.create` | POST | `files/{fileId}/permissions` | Creates a permission for a file or shared drive. For more information, see [Share files, folders,... |
| `drive.operations.get` | GET | `operations/{name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `drive.channels.stop` | POST | `channels/stop` | Stops watching resources through this channel. For more information, see [Notifications for resou... |
| `drive.accessproposals.list` | GET | `files/{fileId}/accessproposals` | List the access proposals on a file. For more information, see [Manage pending access proposals](... |
| `drive.accessproposals.resolve` | POST | `files/{fileId}/accessproposals/{proposalId}:resolve` | Approves or denies an access proposal. For more information, see [Manage pending access proposals... |
| `drive.accessproposals.get` | GET | `files/{fileId}/accessproposals/{proposalId}` | Retrieves an access proposal by ID. For more information, see [Manage pending access proposals](h... |
| `drive.approvals.list` | GET | `files/{fileId}/approvals` | Lists the Approvals on a file. |
| `drive.approvals.get` | GET | `files/{fileId}/approvals/{approvalId}` | Gets an Approval by ID. |
| `drive.about.get` | GET | `about` | Gets information about the user, the user's Drive, and system capabilities. For more information,... |
| `drive.changes.getStartPageToken` | GET | `changes/startPageToken` | Gets the starting pageToken for listing future changes. For more information, see [Retrieve chang... |
| `drive.changes.list` | GET | `changes` | Lists the changes for a user or shared drive. For more information, see [Retrieve changes](https:... |
| `drive.changes.watch` | POST | `changes/watch` | Subscribes to changes for a user. For more information, see [Notifications for resource changes](... |
| `drive.files.create` | POST | `files` | Creates a file. For more information, see [Create and manage files](/workspace/drive/api/guides/c... |
| `drive.files.listLabels` | GET | `files/{fileId}/listLabels` | Lists the labels on a file. For more information, see [List labels on a file](https://developers.... |
| `drive.files.delete` | DELETE | `files/{fileId}` | Permanently deletes a file owned by the user without moving it to the trash. For more information... |
| `drive.files.emptyTrash` | DELETE | `files/trash` | Permanently deletes all of the user's trashed files. For more information, see [Trash or delete f... |
| `drive.files.copy` | POST | `files/{fileId}/copy` | Creates a copy of a file and applies any requested updates with patch semantics. For more informa... |
| `drive.files.download` | POST | `files/{fileId}/download` | Downloads the content of a file. For more information, see [Download and export files](https://de... |
| `drive.files.modifyLabels` | POST | `files/{fileId}/modifyLabels` | Modifies the set of labels applied to a file. For more information, see [Set a label field on a f... |
| `drive.files.generateIds` | GET | `files/generateIds` | Generates a set of file IDs which can be provided in create or copy requests. For more informatio... |
| `drive.files.update` | PATCH | `files/{fileId}` | Updates a file's metadata, content, or both. When calling this method, only populate fields in th... |
| `drive.files.watch` | POST | `files/{fileId}/watch` | Subscribes to changes to a file. For more information, see [Notifications for resource changes](h... |
| `drive.files.list` | GET | `files` | Lists the user's files. For more information, see [Search for files and folders](/workspace/drive... |
| `drive.files.export` | GET | `files/{fileId}/export` | Exports a Google Workspace document to the requested MIME type and returns exported byte content.... |
| `drive.files.get` | GET | `files/{fileId}` | Gets a file's metadata or content by ID. For more information, see [Search for files and folders]... |
| `drive.apps.get` | GET | `apps/{appId}` | Gets a specific app. For more information, see [Return user info](https://developers.google.com/w... |
| `drive.apps.list` | GET | `apps` | Lists a user's installed apps. For more information, see [Return user info](https://developers.go... |
| `drive.drives.update` | PATCH | `drives/{driveId}` | Updates the metadata for a shared drive. For more information, see [Manage shared drives](https:/... |
| `drive.drives.create` | POST | `drives` | Creates a shared drive. For more information, see [Manage shared drives](https://developers.googl... |
| `drive.drives.hide` | POST | `drives/{driveId}/hide` | Hides a shared drive from the default view. For more information, see [Manage shared drives](http... |
| `drive.drives.list` | GET | `drives` | Lists the user's shared drives. This method accepts the `q` parameter, which is a search query co... |
| `drive.drives.delete` | DELETE | `drives/{driveId}` | Permanently deletes a shared drive for which the user is an `organizer`. The shared drive cannot ... |
| `drive.drives.unhide` | POST | `drives/{driveId}/unhide` | Restores a shared drive to the default view. For more information, see [Manage shared drives](htt... |
| `drive.drives.get` | GET | `drives/{driveId}` | Gets a shared drive's metadata by ID. For more information, see [Manage shared drives](https://de... |
| `drive.revisions.update` | PATCH | `files/{fileId}/revisions/{revisionId}` | Updates a revision with patch semantics. For more information, see [Manage file revisions](https:... |
| `drive.revisions.get` | GET | `files/{fileId}/revisions/{revisionId}` | Gets a revision's metadata or content by ID. For more information, see [Manage file revisions](ht... |
| `drive.revisions.list` | GET | `files/{fileId}/revisions` | Lists a file's revisions. For more information, see [Manage file revisions](https://developers.go... |
| `drive.revisions.delete` | DELETE | `files/{fileId}/revisions/{revisionId}` | Permanently deletes a file version. You can only delete revisions for files with binary content i... |

### `drive.replies.delete`

**DELETE** `files/{fileId}/comments/{commentId}/replies/{replyId}`

Deletes a reply. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |
| `replyId` | `string` | path | Yes | The ID of the reply. |

```typescript
const res = await drive.replies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.replies.list`

**GET** `files/{fileId}/comments/{commentId}/replies`

Lists a comment's replies. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |
| `includeDeleted` | `boolean` | query | No | Whether to include deleted replies. Deleted replies don't include their original content. |
| `pageSize` | `integer` | query | No | The maximum number of replies to return per page. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |

**Response**: `ReplyList`

```typescript
const res = await drive.replies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.replies.update`

**PATCH** `files/{fileId}/comments/{commentId}/replies/{replyId}`

Updates a reply with patch semantics. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |
| `replyId` | `string` | path | Yes | The ID of the reply. |

**Request body**: `Reply`

**Response**: `Reply`

```typescript
const res = await drive.replies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.replies.get`

**GET** `files/{fileId}/comments/{commentId}/replies/{replyId}`

Gets a reply by ID. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |
| `replyId` | `string` | path | Yes | The ID of the reply. |
| `includeDeleted` | `boolean` | query | No | Whether to return deleted replies. Deleted replies don't include their original content. |

**Response**: `Reply`

```typescript
const res = await drive.replies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.replies.create`

**POST** `files/{fileId}/comments/{commentId}/replies`

Creates a reply to a comment. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |

**Request body**: `Reply`

**Response**: `Reply`

```typescript
const res = await drive.replies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.teamdrives.get`

**GET** `teamdrives/{teamDriveId}`

Deprecated: Use `drives.get` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `teamDriveId` | `string` | path | Yes | The ID of the Team Drive |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an... |

**Response**: `TeamDrive`

```typescript
const res = await drive.teamdrives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.teamdrives.update`

**PATCH** `teamdrives/{teamDriveId}`

Deprecated: Use `drives.update` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `teamDriveId` | `string` | path | Yes | The ID of the Team Drive |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an... |

**Request body**: `TeamDrive`

**Response**: `TeamDrive`

```typescript
const res = await drive.teamdrives.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.teamdrives.list`

**GET** `teamdrives`

Deprecated: Use `drives.list` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Maximum number of Team Drives to return. |
| `pageToken` | `string` | query | No | Page token for Team Drives. |
| `q` | `string` | query | No | Query string for searching Team Drives. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requeste... |

**Response**: `TeamDriveList`

```typescript
const res = await drive.teamdrives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.teamdrives.create`

**POST** `teamdrives`

Deprecated: Use `drives.create` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `requestId` | `string` | query | Yes | Required. An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a Te... |

**Request body**: `TeamDrive`

**Response**: `TeamDrive`

```typescript
const res = await drive.teamdrives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.teamdrives.delete`

**DELETE** `teamdrives/{teamDriveId}`

Deprecated: Use `drives.delete` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `teamDriveId` | `string` | path | Yes | The ID of the Team Drive |

```typescript
const res = await drive.teamdrives.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.comments.get`

**GET** `files/{fileId}/comments/{commentId}`

Gets a comment by ID. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |
| `includeDeleted` | `boolean` | query | No | Whether to return deleted comments. Deleted comments will not include their original content. |

**Response**: `Comment`

```typescript
const res = await drive.comments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.comments.update`

**PATCH** `files/{fileId}/comments/{commentId}`

Updates a comment with patch semantics. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |

**Request body**: `Comment`

**Response**: `Comment`

```typescript
const res = await drive.comments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.comments.create`

**POST** `files/{fileId}/comments`

Creates a comment on a file. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |

**Request body**: `Comment`

**Response**: `Comment`

```typescript
const res = await drive.comments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.comments.list`

**GET** `files/{fileId}/comments`

Lists a file's comments. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `includeDeleted` | `boolean` | query | No | Whether to include deleted comments. Deleted comments will not include their original content. |
| `pageSize` | `integer` | query | No | The maximum number of comments to return per page. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken'... |
| `startModifiedTime` | `string` | query | No | The minimum value of 'modifiedTime' for the result comments (RFC 3339 date-time). |

**Response**: `CommentList`

```typescript
const res = await drive.comments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.comments.delete`

**DELETE** `files/{fileId}/comments/{commentId}`

Deletes a comment. For more information, see [Manage comments and replies](https://developers.google.com/workspace/drive/api/guides/manage-comments).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `commentId` | `string` | path | Yes | The ID of the comment. |

```typescript
const res = await drive.comments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.permissions.delete`

**DELETE** `files/{fileId}/permissions/{permissionId}`

Deletes a permission. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file or shared drive. |
| `permissionId` | `string` | path | Yes | The ID of the permission. |
| `enforceExpansiveAccess` | `boolean` | query | No | Whether the request should enforce expansive access rules. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, th... |

```typescript
const res = await drive.permissions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.permissions.update`

**PATCH** `files/{fileId}/permissions/{permissionId}`

Updates a permission with patch semantics. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file or shared drive. |
| `permissionId` | `string` | path | Yes | The ID of the permission. |
| `enforceExpansiveAccess` | `boolean` | query | No | Whether the request should enforce expansive access rules. |
| `removeExpiration` | `boolean` | query | No | Whether to remove the expiration date. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `transferOwnership` | `boolean` | query | No | Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is re... |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, th... |

**Request body**: `Permission`

**Response**: `Permission`

```typescript
const res = await drive.permissions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.permissions.get`

**GET** `files/{fileId}/permissions/{permissionId}`

Gets a permission by ID. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `permissionId` | `string` | path | Yes | The ID of the permission. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, th... |

**Response**: `Permission`

```typescript
const res = await drive.permissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.permissions.list`

**GET** `files/{fileId}/permissions`

Lists a file's or shared drive's permissions. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file or shared drive. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `pageSize` | `integer` | query | No | The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results w... |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, th... |

**Response**: `PermissionList`

```typescript
const res = await drive.permissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.permissions.create`

**POST** `files/{fileId}/permissions`

Creates a permission for a file or shared drive. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). **Warning:** Concurrent permissions operations on the same file aren't supported; only the last update is applied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file or shared drive. |
| `emailMessage` | `string` | query | No | A plain text custom message to include in the notification email. |
| `enforceExpansiveAccess` | `boolean` | query | No | Whether the request should enforce expansive access rules. |
| `enforceSingleParent` | `boolean` | query | No | Deprecated: See `moveToNewOwnersRoot` for details. |
| `moveToNewOwnersRoot` | `boolean` | query | No | This parameter only takes effect if the item isn't in a shared drive and the request is attempting to transfer the ow... |
| `sendNotificationEmail` | `boolean` | query | No | Whether to send a notification email when sharing to users or groups. This defaults to `true` for users and groups, a... |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `transferOwnership` | `boolean` | query | No | Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is re... |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator. If set to `true`, and if the following additional conditions are met, th... |

**Request body**: `Permission`

**Response**: `Permission`

```typescript
const res = await drive.permissions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.operations.get`

**GET** `operations/{name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await drive.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.channels.stop`

**POST** `channels/stop`

Stops watching resources through this channel. For more information, see [Notifications for resource changes](https://developers.google.com/workspace/drive/api/guides/push).

**Request body**: `Channel`

```typescript
const res = await drive.channels.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.accessproposals.list`

**GET** `files/{fileId}/accessproposals`

List the access proposals on a file. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access). Note: Only approvers are able to list access proposals on a file. If the user isn't an approver, a 403 error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the item the request is on. |
| `pageSize` | `integer` | query | No | Optional. The number of results per page. |
| `pageToken` | `string` | query | No | Optional. The continuation token on the list of access requests. |

**Response**: `ListAccessProposalsResponse`

```typescript
const res = await drive.accessproposals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.accessproposals.resolve`

**POST** `files/{fileId}/accessproposals/{proposalId}:resolve`

Approves or denies an access proposal. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the item the request is on. |
| `proposalId` | `string` | path | Yes | Required. The ID of the access proposal to resolve. |

**Request body**: `ResolveAccessProposalRequest`

```typescript
const res = await drive.accessproposals.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.accessproposals.get`

**GET** `files/{fileId}/accessproposals/{proposalId}`

Retrieves an access proposal by ID. For more information, see [Manage pending access proposals](https://developers.google.com/workspace/drive/api/guides/pending-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the item the request is on. |
| `proposalId` | `string` | path | Yes | Required. The ID of the access proposal to resolve. |

**Response**: `AccessProposal`

```typescript
const res = await drive.accessproposals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.approvals.list`

**GET** `files/{fileId}/approvals`

Lists the Approvals on a file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the file the Approval is on. |
| `pageSize` | `integer` | query | No | The maximum number of Approvals to return. When not set, at most 100 Approvals will be returned. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of nextPageToken f... |

**Response**: `ApprovalList`

```typescript
const res = await drive.approvals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.approvals.get`

**GET** `files/{fileId}/approvals/{approvalId}`

Gets an Approval by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the file the Approval is on. |
| `approvalId` | `string` | path | Yes | Required. The ID of the Approval. |

**Response**: `Approval`

```typescript
const res = await drive.approvals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.about.get`

**GET** `about`

Gets information about the user, the user's Drive, and system capabilities. For more information, see [Return user info](https://developers.google.com/workspace/drive/api/guides/user-info). Required: The `fields` parameter must be set. To return the exact fields you need, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter).

**Response**: `About`

```typescript
const res = await drive.about.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.changes.getStartPageToken`

**GET** `changes/startPageToken`

Gets the starting pageToken for listing future changes. For more information, see [Retrieve changes](https://developers.google.com/workspace/drive/api/guides/manage-changes).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | query | No | The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive will be... |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `teamDriveId` | `string` | query | No | Deprecated: Use `driveId` instead. |

**Response**: `StartPageToken`

```typescript
const res = await drive.changes.getStartPageToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.changes.list`

**GET** `changes`

Lists the changes for a user or shared drive. For more information, see [Retrieve changes](https://developers.google.com/workspace/drive/api/guides/manage-changes).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageToken` | `string` | query | Yes | The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken'... |
| `driveId` | `string` | query | No | The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared dr... |
| `includeCorpusRemovals` | `boolean` | query | No | Whether changes should include the file resource if the file is still accessible by the user at the time of the reque... |
| `includeItemsFromAllDrives` | `boolean` | query | No | Whether both My Drive and shared drive items should be included in results. |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only 'published' is supported. |
| `includeRemoved` | `boolean` | query | No | Whether to include changes indicating that items have been removed from the list of changes, for example by deletion ... |
| `includeTeamDriveItems` | `boolean` | query | No | Deprecated: Use `includeItemsFromAllDrives` instead. |
| `pageSize` | `integer` | query | No | The maximum number of changes to return per page. |
| `restrictToMyDrive` | `boolean` | query | No | Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those i... |
| `spaces` | `string` | query | No | A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `teamDriveId` | `string` | query | No | Deprecated: Use `driveId` instead. |

**Response**: `ChangeList`

```typescript
const res = await drive.changes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.changes.watch`

**POST** `changes/watch`

Subscribes to changes for a user. For more information, see [Notifications for resource changes](https://developers.google.com/workspace/drive/api/guides/push).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageToken` | `string` | query | Yes | The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken'... |
| `driveId` | `string` | query | No | The shared drive from which changes will be returned. If specified the change IDs will be reflective of the shared dr... |
| `includeCorpusRemovals` | `boolean` | query | No | Whether changes should include the file resource if the file is still accessible by the user at the time of the reque... |
| `includeItemsFromAllDrives` | `boolean` | query | No | Whether both My Drive and shared drive items should be included in results. |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only 'published' is supported. |
| `includeRemoved` | `boolean` | query | No | Whether to include changes indicating that items have been removed from the list of changes, for example by deletion ... |
| `includeTeamDriveItems` | `boolean` | query | No | Deprecated: Use `includeItemsFromAllDrives` instead. |
| `pageSize` | `integer` | query | No | The maximum number of changes to return per page. |
| `restrictToMyDrive` | `boolean` | query | No | Whether to restrict the results to changes inside the My Drive hierarchy. This omits changes to files such as those i... |
| `spaces` | `string` | query | No | A comma-separated list of spaces to query within the corpora. Supported values are 'drive' and 'appDataFolder'. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `teamDriveId` | `string` | query | No | Deprecated: Use `driveId` instead. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await drive.changes.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.create`

**POST** `files`

Creates a file. For more information, see [Create and manage files](/workspace/drive/api/guides/create-file). This method supports an */upload* URI and accepts uploaded media with the following characteristics: - *Maximum file size:* 5,120 GB - *Accepted Media MIME types:* `*/*` (Specify a valid MIME type, rather than the literal `*/*` value. The literal `*/*` is only used to indicate that any valid MIME type can be uploaded. For more information, see [Google Workspace and Google Drive supported MIME types](/workspace/drive/api/guides/mime-types).) For more information on uploading files, see [Upload file data](/workspace/drive/api/guides/manage-uploads). Apps creating shortcuts with the `create` method must specify the MIME type `application/vnd.google-apps.shortcut`. Apps should specify a file extension in the `name` property when inserting files with the API. For example, an operation to insert a JPEG file should specify something like `"name": "cat.jpg"` in the metadata. Subsequent `GET` requests include the read-only `fileExtension` property populated with the extension originally specified in the `name` property. When a Google Drive user requests to download a file, or when the file is downloaded through the sync client, Drive builds a full filename (with extension) based on the name. In cases where the extension is missing, Drive attempts to determine the extension based on the file's MIME type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `enforceSingleParent` | `boolean` | query | No | Deprecated: Creating files in multiple folders is no longer supported. |
| `ignoreDefaultVisibility` | `boolean` | query | No | Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to ... |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `keepRevisionForever` | `boolean` | query | No | Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content... |
| `ocrLanguage` | `string` | query | No | A language hint for OCR processing during image import (ISO 639-1 code). |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `useContentAsIndexableText` | `boolean` | query | No | Whether to use the uploaded content as indexable text. |

**Request body**: `File`

**Response**: `File`

```typescript
const res = await drive.files.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.files.listLabels`

**GET** `files/{fileId}/listLabels`

Lists the labels on a file. For more information, see [List labels on a file](https://developers.google.com/workspace/drive/api/guides/list-labels).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID for the file. |
| `maxResults` | `integer` | query | No | The maximum number of labels to return per page. When not set, defaults to 100. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |

**Response**: `LabelList`

```typescript
const res = await drive.files.listLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.delete`

**DELETE** `files/{fileId}`

Permanently deletes a file owned by the user without moving it to the trash. For more information, see [Trash or delete files and folders](https://developers.google.com/workspace/drive/api/guides/delete). If the file belongs to a shared drive, the user must be an `organizer` on the parent folder. If the target is a folder, all descendants owned by the user are also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `enforceSingleParent` | `boolean` | query | No | Deprecated: If an item isn't in a shared drive and its last parent is deleted but the item itself isn't, the item wil... |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |

```typescript
const res = await drive.files.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.files.emptyTrash`

**DELETE** `files/trash`

Permanently deletes all of the user's trashed files. For more information, see [Trash or delete files and folders](https://developers.google.com/workspace/drive/api/guides/delete).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | query | No | If set, empties the trash of the provided shared drive. |
| `enforceSingleParent` | `boolean` | query | No | Deprecated: If an item isn't in a shared drive and its last parent is deleted but the item itself isn't, the item wil... |

```typescript
const res = await drive.files.emptyTrash({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.files.copy`

**POST** `files/{fileId}/copy`

Creates a copy of a file and applies any requested updates with patch semantics. For more information, see [Create and manage files](https://developers.google.com/workspace/drive/api/guides/create-file).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `enforceSingleParent` | `boolean` | query | No | Deprecated: Copying files into multiple folders is no longer supported. Use shortcuts instead. |
| `ignoreDefaultVisibility` | `boolean` | query | No | Whether to ignore the domain's default visibility settings for the created file. Domain administrators can choose to ... |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `keepRevisionForever` | `boolean` | query | No | Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content... |
| `ocrLanguage` | `string` | query | No | A language hint for OCR processing during image import (ISO 639-1 code). |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |

**Request body**: `File`

**Response**: `File`

```typescript
const res = await drive.files.copy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.photos.readonly`

---

### `drive.files.download`

**POST** `files/{fileId}/download`

Downloads the content of a file. For more information, see [Download and export files](https://developers.google.com/workspace/drive/api/guides/manage-downloads). Operations are valid for 24 hours from the time of creation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | Required. The ID of the file to download. |
| `mimeType` | `string` | query | No | Optional. The MIME type the file should be downloaded as. This field can only be set when downloading Google Workspac... |
| `revisionId` | `string` | query | No | Optional. The revision ID of the file to download. This field can only be set when downloading blob files, Google Doc... |

**Response**: `Operation`

```typescript
const res = await drive.files.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.modifyLabels`

**POST** `files/{fileId}/modifyLabels`

Modifies the set of labels applied to a file. For more information, see [Set a label field on a file](https://developers.google.com/workspace/drive/api/guides/set-label). Returns a list of the labels that were added or modified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file to which the labels belong. |

**Request body**: `ModifyLabelsRequest`

**Response**: `ModifyLabelsResponse`

```typescript
const res = await drive.files.modifyLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`

---

### `drive.files.generateIds`

**GET** `files/generateIds`

Generates a set of file IDs which can be provided in create or copy requests. For more information, see [Create and manage files](https://developers.google.com/workspace/drive/api/guides/create-file).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `count` | `integer` | query | No | The number of IDs to return. |
| `space` | `string` | query | No | The space in which the IDs can be used to create files. Supported values are `drive` and `appDataFolder`. (Default: `... |
| `type` | `string` | query | No | The type of items which the IDs can be used for. Supported values are `files` and `shortcuts`. Note that `shortcuts` ... |

**Response**: `GeneratedIds`

```typescript
const res = await drive.files.generateIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.files.update`

**PATCH** `files/{fileId}`

Updates a file's metadata, content, or both. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might be changed automatically, such as `modifiedDate`. This method supports patch semantics. This method supports an */upload* URI and accepts uploaded media with the following characteristics: - *Maximum file size:* 5,120 GB - *Accepted Media MIME types:* `*/*` (Specify a valid MIME type, rather than the literal `*/*` value. The literal `*/*` is only used to indicate that any valid MIME type can be uploaded. For more information, see [Google Workspace and Google Drive supported MIME types](/workspace/drive/api/guides/mime-types).) For more information on uploading files, see [Upload file data](/workspace/drive/api/guides/manage-uploads).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `addParents` | `string` | query | No | A comma-separated list of parent IDs to add. |
| `enforceSingleParent` | `boolean` | query | No | Deprecated: Adding files to multiple folders is no longer supported. Use shortcuts instead. |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `keepRevisionForever` | `boolean` | query | No | Whether to set the `keepForever` field in the new head revision. This is only applicable to files with binary content... |
| `ocrLanguage` | `string` | query | No | A language hint for OCR processing during image import (ISO 639-1 code). |
| `removeParents` | `string` | query | No | A comma-separated list of parent IDs to remove. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `useContentAsIndexableText` | `boolean` | query | No | Whether to use the uploaded content as indexable text. |

**Request body**: `File`

**Response**: `File`

```typescript
const res = await drive.files.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.scripts`

---

### `drive.files.watch`

**POST** `files/{fileId}/watch`

Subscribes to changes to a file. For more information, see [Notifications for resource changes](https://developers.google.com/workspace/drive/api/guides/push).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `acknowledgeAbuse` | `boolean` | query | No | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicab... |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await drive.files.watch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.list`

**GET** `files`

Lists the user's files. For more information, see [Search for files and folders](/workspace/drive/api/guides/search-files). This method accepts the `q` parameter, which is a search query combining one or more search terms. This method returns *all* files by default, including trashed files. If you don't want trashed files to appear in the list, use the `trashed=false` query parameter to remove trashed files from the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `corpora` | `string` | query | No | Specifies a collection of items (files or documents) to which the query applies. Supported items include: * `user` * ... |
| `corpus` | `string` | query | No | Deprecated: The source of files to list. Use `corpora` instead. |
| `driveId` | `string` | query | No | ID of the shared drive to search. |
| `includeItemsFromAllDrives` | `boolean` | query | No | Whether both My Drive and shared drive items should be included in results. |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `includeTeamDriveItems` | `boolean` | query | No | Deprecated: Use `includeItemsFromAllDrives` instead. |
| `orderBy` | `string` | query | No | A comma-separated list of sort keys. Valid keys are: * `createdTime`: When the file was created. Avoid using this key... |
| `pageSize` | `integer` | query | No | The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the... |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken`... |
| `q` | `string` | query | No | A query for filtering the file results. For supported syntax, see [Search for files and folders](/workspace/drive/api... |
| `spaces` | `string` | query | No | A comma-separated list of spaces to query within the corpora. Supported values are `drive` and `appDataFolder`. For m... |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |
| `teamDriveId` | `string` | query | No | Deprecated: Use `driveId` instead. |

**Response**: `FileList`

```typescript
const res = await drive.files.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.export`

**GET** `files/{fileId}/export`

Exports a Google Workspace document to the requested MIME type and returns exported byte content. For more information, see [Download and export files](https://developers.google.com/workspace/drive/api/guides/manage-downloads). Note that the exported content is limited to 10 MB.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `mimeType` | `string` | query | Yes | Required. The MIME type of the format requested for this export. For a list of supported MIME types, see [Export MIME... |

```typescript
const res = await drive.files.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.files.get`

**GET** `files/{fileId}`

Gets a file's metadata or content by ID. For more information, see [Search for files and folders](/workspace/drive/api/guides/search-files). If you provide the URL parameter `alt=media`, then the response includes the file contents in the response body. Downloading content with `alt=media` only works if the file is stored in Drive. To download Google Docs, Sheets, and Slides use [`files.export`](/workspace/drive/api/reference/rest/v3/files/export) instead. For more information, see [Download and export files](/workspace/drive/api/guides/manage-downloads).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `acknowledgeAbuse` | `boolean` | query | No | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicab... |
| `includeLabels` | `string` | query | No | A comma-separated list of IDs of labels to include in the `labelInfo` part of the response. |
| `includePermissionsForView` | `string` | query | No | Specifies which additional view's permissions to include in the response. Only `published` is supported. |
| `supportsAllDrives` | `boolean` | query | No | Whether the requesting application supports both My Drives and shared drives. |
| `supportsTeamDrives` | `boolean` | query | No | Deprecated: Use `supportsAllDrives` instead. |

**Response**: `File`

```typescript
const res = await drive.files.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.apps.get`

**GET** `apps/{appId}`

Gets a specific app. For more information, see [Return user info](https://developers.google.com/workspace/drive/api/guides/user-info).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appId` | `string` | path | Yes | The ID of the app. |

**Response**: `App`

```typescript
const res = await drive.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.apps.readonly`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.apps.list`

**GET** `apps`

Lists a user's installed apps. For more information, see [Return user info](https://developers.google.com/workspace/drive/api/guides/user-info).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appFilterExtensions` | `string` | query | No | A comma-separated list of file extensions to limit returned results. All results within the given app query scope whi... |
| `appFilterMimeTypes` | `string` | query | No | A comma-separated list of file extensions to limit returned results. All results within the given app query scope whi... |
| `languageCode` | `string` | query | No | A language or locale code, as defined by BCP 47, with some extensions from Unicode's LDML format (http://www.unicode.... |

**Response**: `AppList`

```typescript
const res = await drive.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.apps.readonly`

---

### `drive.drives.update`

**PATCH** `drives/{driveId}`

Updates the metadata for a shared drive. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | path | Yes | The ID of the shared drive. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an... |

**Request body**: `Drive`

**Response**: `Drive`

```typescript
const res = await drive.drives.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.drives.create`

**POST** `drives`

Creates a shared drive. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `requestId` | `string` | query | Yes | Required. An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a sh... |

**Request body**: `Drive`

**Response**: `Drive`

```typescript
const res = await drive.drives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.drives.hide`

**POST** `drives/{driveId}/hide`

Hides a shared drive from the default view. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | path | Yes | The ID of the shared drive. |

**Response**: `Drive`

```typescript
const res = await drive.drives.hide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.drives.list`

**GET** `drives`

Lists the user's shared drives. This method accepts the `q` parameter, which is a search query combining one or more search terms. For more information, see the [Search for shared drives](/workspace/drive/api/guides/search-shareddrives) guide.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Maximum number of shared drives to return per page. |
| `pageToken` | `string` | query | No | Page token for shared drives. |
| `q` | `string` | query | No | Query string for searching shared drives. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the reques... |

**Response**: `DriveList`

```typescript
const res = await drive.drives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.drives.delete`

**DELETE** `drives/{driveId}`

Permanently deletes a shared drive for which the user is an `organizer`. The shared drive cannot contain any untrashed items. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | path | Yes | The ID of the shared drive. |
| `allowItemDeletion` | `boolean` | query | No | Whether any items inside the shared drive should also be deleted. This option is only supported when `useDomainAdminA... |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an... |

```typescript
const res = await drive.drives.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.drives.unhide`

**POST** `drives/{driveId}/unhide`

Restores a shared drive to the default view. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | path | Yes | The ID of the shared drive. |

**Response**: `Drive`

```typescript
const res = await drive.drives.unhide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`

---

### `drive.drives.get`

**GET** `drives/{driveId}`

Gets a shared drive's metadata by ID. For more information, see [Manage shared drives](https://developers.google.com/workspace/drive/api/guides/manage-shareddrives).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `driveId` | `string` | path | Yes | The ID of the shared drive. |
| `useDomainAdminAccess` | `boolean` | query | No | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an... |

**Response**: `Drive`

```typescript
const res = await drive.drives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.revisions.update`

**PATCH** `files/{fileId}/revisions/{revisionId}`

Updates a revision with patch semantics. For more information, see [Manage file revisions](https://developers.google.com/workspace/drive/api/guides/manage-revisions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `revisionId` | `string` | path | Yes | The ID of the revision. |

**Request body**: `Revision`

**Response**: `Revision`

```typescript
const res = await drive.revisions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`

---

### `drive.revisions.get`

**GET** `files/{fileId}/revisions/{revisionId}`

Gets a revision's metadata or content by ID. For more information, see [Manage file revisions](https://developers.google.com/workspace/drive/api/guides/manage-revisions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `revisionId` | `string` | path | Yes | The ID of the revision. |
| `acknowledgeAbuse` | `boolean` | query | No | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicab... |

**Response**: `Revision`

```typescript
const res = await drive.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.revisions.list`

**GET** `files/{fileId}/revisions`

Lists a file's revisions. For more information, see [Manage file revisions](https://developers.google.com/workspace/drive/api/guides/manage-revisions). **Important:** The list of revisions returned by this method might be incomplete for files with a large revision history, including frequently edited Google Docs, Sheets, and Slides. Older revisions might be omitted from the response, meaning the first revision returned may not be the oldest existing revision. The revision history visible in the Workspace editor user interface might be more complete than the list returned by the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `pageSize` | `integer` | query | No | The maximum number of revisions to return per page. |
| `pageToken` | `string` | query | No | The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken'... |

**Response**: `RevisionList`

```typescript
const res = await drive.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.meet.readonly`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.photos.readonly`
- `https://www.googleapis.com/auth/drive.readonly`

---

### `drive.revisions.delete`

**DELETE** `files/{fileId}/revisions/{revisionId}`

Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted. For more information, see [Manage file revisions](https://developers.google.com/drive/api/guides/manage-revisions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fileId` | `string` | path | Yes | The ID of the file. |
| `revisionId` | `string` | path | Yes | The ID of the revision. |

```typescript
const res = await drive.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.appdata`
- `https://www.googleapis.com/auth/drive.file`

---

## Schemas

### `About`

Information about the user, the user's Drive, and system capabilities.

| Property | Type | Description |
|----------|------|-------------|
| `appInstalled` | `boolean` | Whether the user has installed the requesting app. |
| `canCreateDrives` | `boolean` | Whether the user can create shared drives. |
| `canCreateTeamDrives` | `boolean` | Deprecated: Use `canCreateDrives` instead. |
| `driveThemes` | `array<object>` | A list of themes that are supported for shared drives. |
| `exportFormats` | `object` | A map of source MIME type to possible targets for all supported exports. |
| `folderColorPalette` | `array<string>` | The currently supported folder colors as RGB hex strings. |
| `importFormats` | `object` | A map of source MIME type to possible targets for all supported imports. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#about"`. |
| `maxImportSizes` | `object` | A map of maximum import sizes by MIME type, in bytes. |
| `maxUploadSize` | `string` | The maximum upload size in bytes. |
| `storageQuota` | `object` | The user's storage quota limits and usage. For users that are part of an organization with pooled... |
| `teamDriveThemes` | `array<object>` | Deprecated: Use `driveThemes` instead. |
| `user` | `User` | The authenticated user. |

### `AccessProposal`

Manage outstanding access proposals on a file.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time. |
| `fileId` | `string` | The file ID that the proposal for access is on. |
| `proposalId` | `string` | The ID of the access proposal. |
| `recipientEmailAddress` | `string` | The email address of the user that will receive permissions, if accepted. |
| `requestMessage` | `string` | The message that the requester added to the proposal. |
| `requesterEmailAddress` | `string` | The email address of the requesting user. |
| `rolesAndViews` | `array<AccessProposalRoleAndView>` | A wrapper for the role and view of an access proposal. For more information, see [Roles and permi... |

### `AccessProposalRoleAndView`

A wrapper for the role and view of an access proposal. For more information, see [Roles and permissions](https://developers.google.com/workspace/drive/api/guides/ref-roles).

| Property | Type | Description |
|----------|------|-------------|
| `role` | `string` | The role that was proposed by the requester. The supported values are: * `writer` * `commenter` *... |
| `view` | `string` | Indicates the view for this access proposal. Only populated for proposals that belong to a view. ... |

### `App`

The `apps` resource provides a list of apps that a user has installed, with information about each app's supported MIME types, file extensions, and other details. Some resource methods (such as `apps.get`) require an `appId`. Use the `apps.list` method to retrieve the ID for an installed application.

| Property | Type | Description |
|----------|------|-------------|
| `authorized` | `boolean` | Whether the app is authorized to access data on the user's Drive. |
| `createInFolderTemplate` | `string` | The template URL to create a file with this app in a given folder. The template contains the {fol... |
| `createUrl` | `string` | The URL to create a file with this app. |
| `hasDriveWideScope` | `boolean` | Whether the app has Drive-wide scope. An app with Drive-wide scope can access all files in the us... |
| `icons` | `array<AppIcons>` | The various icons for the app. |
| `id` | `string` | The ID of the app. |
| `installed` | `boolean` | Whether the app is installed. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string "drive#app". |
| `longDescription` | `string` | A long description of the app. |
| `name` | `string` | The name of the app. |
| `objectType` | `string` | The type of object this app creates such as a Chart. If empty, the app name should be used instead. |
| `openUrlTemplate` | `string` | The template URL for opening files with this app. The template contains {ids} or {exportIds} to b... |
| `primaryFileExtensions` | `array<string>` | The list of primary file extensions. |
| `primaryMimeTypes` | `array<string>` | The list of primary MIME types. |
| `productId` | `string` | The ID of the product listing for this app. |
| `productUrl` | `string` | A link to the product listing for this app. |
| `secondaryFileExtensions` | `array<string>` | The list of secondary file extensions. |
| `secondaryMimeTypes` | `array<string>` | The list of secondary MIME types. |
| `shortDescription` | `string` | A short description of the app. |
| `supportsCreate` | `boolean` | Whether this app supports creating objects. |
| `supportsImport` | `boolean` | Whether this app supports importing from Google Docs. |
| `supportsMultiOpen` | `boolean` | Whether this app supports opening more than one file. |
| `supportsOfflineCreate` | `boolean` | Whether this app supports creating files when offline. |
| `useByDefault` | `boolean` | Whether the app is selected as the default handler for the types it supports. |

### `AppIcons`

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Category of the icon. Allowed values are: * `application` - The icon for the application. * `docu... |
| `iconUrl` | `string` | URL for the icon. |
| `size` | `integer` | Size of the icon. Represented as the maximum of the width and height. |

### `AppList`

A list of third-party applications which the user has installed or given access to Google Drive.

| Property | Type | Description |
|----------|------|-------------|
| `defaultAppIds` | `array<string>` | The list of app IDs that the user has specified to use by default. The list is in reverse-priorit... |
| `items` | `array<App>` | The list of apps. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string "drive#appList". |
| `selfLink` | `string` | A link back to this list. |

### `Approval`

Metadata for an approval. An approval is a review/approve process for a Drive item.

| Property | Type | Description |
|----------|------|-------------|
| `approvalId` | `string` | The Approval ID. |
| `completeTime` | `string` | Output only. The time time the approval was completed. |
| `createTime` | `string` | Output only. The time the approval was created. |
| `dueTime` | `string` | The time that the approval is due. |
| `initiator` | `User` | The user that requested the Approval. |
| `kind` | `string` | This is always drive#approval. |
| `modifyTime` | `string` | Output only. The most recent time the approval was modified. |
| `reviewerResponses` | `array<ReviewerResponse>` | The responses made on the Approval by reviewers. |
| `status` | `string` | Output only. The status of the approval at the time this resource was requested. |
| `targetFileId` | `string` | Target file id of the approval. |

### `ApprovalList`

The response of an Approvals list request.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Approval>` | The list of Approvals. If nextPageToken is populated, then this list may be incomplete and an add... |
| `kind` | `string` | This is always drive#approvalList |
| `nextPageToken` | `string` | The page token for the next page of Approvals. This will be absent if the end of the Approvals li... |

### `Change`

A change to a file or shared drive.

| Property | Type | Description |
|----------|------|-------------|
| `changeType` | `string` | The type of the change. Possible values are `file` and `drive`. |
| `drive` | `Drive` | The updated state of the shared drive. Present if the changeType is drive, the user is still a me... |
| `driveId` | `string` | The ID of the shared drive associated with this change. |
| `file` | `File` | The updated state of the file. Present if the type is file and the file has not been removed from... |
| `fileId` | `string` | The ID of the file which has changed. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#change"`. |
| `removed` | `boolean` | Whether the file or shared drive has been removed from this list of changes, for example by delet... |
| `teamDrive` | `TeamDrive` | Deprecated: Use `drive` instead. |
| `teamDriveId` | `string` | Deprecated: Use `driveId` instead. |
| `time` | `string` | The time of this change (RFC 3339 date-time). |
| `type` | `string` | Deprecated: Use `changeType` instead. |

### `ChangeList`

A list of changes for a user.

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<Change>` | The list of changes. If nextPageToken is populated, then this list may be incomplete and an addit... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#changeList"`. |
| `newStartPageToken` | `string` | The starting page token for future changes. This will be present only if the end of the current c... |
| `nextPageToken` | `string` | The page token for the next page of changes. This will be absent if the end of the changes list h... |

### `Channel`

A notification channel used to watch for resource changes.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address where notifications are delivered for this channel. |
| `expiration` | `string` | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds.... |
| `id` | `string` | A UUID or similar unique string that identifies this channel. |
| `kind` | `string` | Identifies this as a notification channel used to watch for changes to a resource, which is `api#... |
| `params` | `object` | Additional parameters controlling delivery channel behavior. Optional. |
| `payload` | `boolean` | A Boolean value to indicate whether payload is wanted. Optional. |
| `resourceId` | `string` | An opaque ID that identifies the resource being watched on this channel. Stable across different ... |
| `resourceUri` | `string` | A version-specific identifier for the watched resource. |
| `token` | `string` | An arbitrary string delivered to the target address with each notification delivered over this ch... |
| `type` | `string` | The type of delivery mechanism used for this channel. Valid values are "web_hook" or "webhook". |

### `Comment`

A comment on a file. Some resource methods (such as `comments.update`) require a `commentId`. Use the `comments.list` method to retrieve the ID for a comment in a file.

| Property | Type | Description |
|----------|------|-------------|
| `anchor` | `string` | A region of the document represented as a JSON string. For details on defining anchor properties,... |
| `assigneeEmailAddress` | `string` | Output only. The email address of the user assigned to this comment. If no user is assigned, the ... |
| `author` | `User` | Output only. The author of the comment. The author's email address and permission ID will not be ... |
| `content` | `string` | The plain text content of the comment. This field is used for setting the content, while `htmlCon... |
| `createdTime` | `string` | The time at which the comment was created (RFC 3339 date-time). |
| `deleted` | `boolean` | Output only. Whether the comment has been deleted. A deleted comment has no content. |
| `htmlContent` | `string` | Output only. The content of the comment with HTML formatting. |
| `id` | `string` | Output only. The ID of the comment. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#comment"`. |
| `mentionedEmailAddresses` | `array<string>` | Output only. A list of email addresses for users mentioned in this comment. If no users are menti... |
| `modifiedTime` | `string` | The last time the comment or any of its replies was modified (RFC 3339 date-time). |
| `quotedFileContent` | `object` | The file content to which the comment refers, typically within the anchor region. For a text file... |
| `replies` | `array<Reply>` | Output only. The full list of replies to the comment in chronological order. |
| `resolved` | `boolean` | Output only. Whether the comment has been resolved by one of its replies. |

### `CommentList`

A list of comments on a file.

| Property | Type | Description |
|----------|------|-------------|
| `comments` | `array<Comment>` | The list of comments. If nextPageToken is populated, then this list may be incomplete and an addi... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#commentList"`. |
| `nextPageToken` | `string` | The page token for the next page of comments. This will be absent if the end of the comments list... |

### `ContentRestriction`

A restriction for accessing the content of the file.

| Property | Type | Description |
|----------|------|-------------|
| `ownerRestricted` | `boolean` | Whether the content restriction can only be modified or removed by a user who owns the file. For ... |
| `readOnly` | `boolean` | Whether the content of the file is read-only. If a file is read-only, a new revision of the file ... |
| `reason` | `string` | Reason for why the content of the file is restricted. This is only mutable on requests that also ... |
| `restrictingUser` | `User` | Output only. The user who set the content restriction. Only populated if `readOnly=true`. |
| `restrictionTime` | `string` | The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated ... |
| `systemRestricted` | `boolean` | Output only. Whether the content restriction was applied by the system, for example due to an esi... |
| `type` | `string` | Output only. The type of the content restriction. Currently the only possible value is `globalCon... |

### `DownloadRestriction`

A restriction for copy and download of the file.

| Property | Type | Description |
|----------|------|-------------|
| `restrictedForReaders` | `boolean` | Whether download and copy is restricted for readers. |
| `restrictedForWriters` | `boolean` | Whether download and copy is restricted for writers. If `true`, download is also restricted for r... |

### `DownloadRestrictionsMetadata`

Download restrictions applied to the file.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveDownloadRestrictionWithContext` | `DownloadRestriction` | Output only. The effective download restriction applied to this file. This considers all restrict... |
| `itemDownloadRestriction` | `DownloadRestriction` | The download restriction of the file applied directly by the owner or organizer. This doesn't tak... |

### `Drive`

Representation of a shared drive. Some resource methods (such as `drives.update`) require a `driveId`. Use the `drives.list` method to retrieve the ID for a shared drive.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundImageFile` | `object` | An image file and cropping parameters from which a background image for this shared drive is set.... |
| `backgroundImageLink` | `string` | Output only. A short-lived link to this shared drive's background image. |
| `capabilities` | `object` | Output only. Capabilities the current user has on this shared drive. |
| `colorRgb` | `string` | The color of this shared drive as an RGB hex string. It can only be set on a `drive.drives.update... |
| `createdTime` | `string` | The time at which the shared drive was created (RFC 3339 date-time). |
| `hidden` | `boolean` | Whether the shared drive is hidden from default view. |
| `id` | `string` | Output only. The ID of this shared drive which is also the ID of the top level folder of this sha... |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#drive"`. |
| `name` | `string` | The name of this shared drive. |
| `orgUnitId` | `string` | Output only. The organizational unit of this shared drive. This field is only populated on `drive... |
| `restrictions` | `object` | A set of restrictions that apply to this shared drive or items inside this shared drive. Note tha... |
| `themeId` | `string` | The ID of the theme from which the background image and color will be set. The set of possible `d... |

### `DriveList`

A list of shared drives.

| Property | Type | Description |
|----------|------|-------------|
| `drives` | `array<Drive>` | The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#driveList"`. |
| `nextPageToken` | `string` | The page token for the next page of shared drives. This will be absent if the end of the list has... |

### `File`

The metadata for a file. Some resource methods (such as `files.update`) require a `fileId`. Use the `files.list` method to retrieve the ID for a file.

| Property | Type | Description |
|----------|------|-------------|
| `appProperties` | `object` | A collection of arbitrary key-value pairs which are private to the requesting app. Entries with n... |
| `capabilities` | `object` | Output only. Capabilities the current user has on this file. Each capability corresponds to a fin... |
| `contentHints` | `object` | Additional information about the content of the file. These fields are never populated in responses. |
| `contentRestrictions` | `array<ContentRestriction>` | Restrictions for accessing the content of the file. Only populated if such a restriction exists. |
| `copyRequiresWriterPermission` | `boolean` | Whether the options to copy, print, or download this file should be disabled for readers and comm... |
| `createdTime` | `string` | The time at which the file was created (RFC 3339 date-time). |
| `description` | `string` | A short description of the file. |
| `downloadRestrictions` | `DownloadRestrictionsMetadata` | Download restrictions applied on the file. |
| `driveId` | `string` | Output only. ID of the shared drive the file resides in. Only populated for items in shared drives. |
| `explicitlyTrashed` | `boolean` | Output only. Whether the file has been explicitly trashed, as opposed to recursively trashed from... |
| `exportLinks` | `object` | Output only. Links for exporting Docs Editors files to specific formats. |
| `fileExtension` | `string` | Output only. The final component of `fullFileExtension`. This is only available for files with bi... |
| `folderColorRgb` | `string` | The color for a folder or a shortcut to a folder as an RGB hex string. The supported colors are p... |
| `fullFileExtension` | `string` | Output only. The full file extension extracted from the `name` field. May contain multiple concat... |
| `hasAugmentedPermissions` | `boolean` | Output only. Whether there are permissions directly on this file. This field is only populated fo... |
| `hasThumbnail` | `boolean` | Output only. Whether this file has a thumbnail. This doesn't indicate whether the requesting app ... |
| `headRevisionId` | `string` | Output only. The ID of the file's head revision. This is currently only available for files with ... |
| `iconLink` | `string` | Output only. A static, unauthenticated link to the file's icon. |
| `id` | `string` | The ID of the file. |
| `imageMediaMetadata` | `object` | Output only. Additional metadata about image media, if available. |
| `inheritedPermissionsDisabled` | `boolean` | Whether this file has inherited permissions disabled. Inherited permissions are enabled by default. |
| `isAppAuthorized` | `boolean` | Output only. Whether the file was created or opened by the requesting app. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#file"`. |
| `labelInfo` | `object` | Output only. An overview of the labels on the file. |
| `lastModifyingUser` | `User` | Output only. The last user to modify the file. This field is only populated when the last modific... |
| `linkShareMetadata` | `object` | Contains details about the link URLs that clients are using to refer to this item. |
| `md5Checksum` | `string` | Output only. The MD5 checksum for the content of the file. This is only applicable to files with ... |
| `mimeType` | `string` | The MIME type of the file. Google Drive attempts to automatically detect an appropriate value fro... |
| `modifiedByMe` | `boolean` | Output only. Whether the file has been modified by this user. |
| `modifiedByMeTime` | `string` | The last time the file was modified by the user (RFC 3339 date-time). |
| `modifiedTime` | `string` | he last time the file was modified by anyone (RFC 3339 date-time). Note that setting modifiedTime... |
| `name` | `string` | The name of the file. This isn't necessarily unique within a folder. Note that for immutable item... |
| `originalFilename` | `string` | The original filename of the uploaded content if available, or else the original value of the `na... |
| `ownedByMe` | `boolean` | Output only. Whether the user owns the file. Not populated for items in shared drives. |
| `owners` | `array<User>` | Output only. The owner of this file. Only certain legacy files may have more than one owner. This... |
| `parents` | `array<string>` | The ID of the parent folder containing the file. A file can only have one parent folder; specifyi... |
| `permissionIds` | `array<string>` | Output only. List of permission IDs for users with access to this file. |
| `permissions` | `array<Permission>` | Output only. The full list of permissions for the file. This is only available if the requesting ... |
| `properties` | `object` | A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values... |
| `quotaBytesUsed` | `string` | Output only. The number of storage quota bytes used by the file. This includes the head revision ... |
| `resourceKey` | `string` | Output only. A key needed to access the item via a shared link. |
| `sha1Checksum` | `string` | Output only. The SHA1 checksum associated with this file, if available. This field is only popula... |
| `sha256Checksum` | `string` | Output only. The SHA256 checksum associated with this file, if available. This field is only popu... |
| `shared` | `boolean` | Output only. Whether the file has been shared. Not populated for items in shared drives. |
| `sharedWithMeTime` | `string` | The time at which the file was shared with the user, if applicable (RFC 3339 date-time). |
| `sharingUser` | `User` | Output only. The user who shared the file with the requesting user, if applicable. |
| `shortcutDetails` | `object` | Shortcut file details. Only populated for shortcut files, which have the mimeType field set to `a... |
| `size` | `string` | Output only. Size in bytes of blobs and Google Workspace editor files. Won't be populated for fil... |
| `spaces` | `array<string>` | Output only. The list of spaces which contain the file. The currently supported values are `drive... |
| `starred` | `boolean` | Whether the user has starred the file. |
| `teamDriveId` | `string` | Deprecated: Output only. Use `driveId` instead. |
| `thumbnailLink` | `string` | Output only. A short-lived link to the file's thumbnail, if available. Typically lasts on the ord... |
| `thumbnailVersion` | `string` | Output only. The thumbnail version for use in thumbnail cache invalidation. |
| `trashed` | `boolean` | Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the ow... |
| `trashedTime` | `string` | The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives. |
| `trashingUser` | `User` | Output only. If the file has been explicitly trashed, the user who trashed it. Only populated for... |
| `version` | `string` | Output only. A monotonically increasing version number for the file. This reflects every change m... |
| `videoMediaMetadata` | `object` | Output only. Additional metadata about video media. This may not be available immediately upon up... |
| `viewedByMe` | `boolean` | Output only. Whether the file has been viewed by this user. |
| `viewedByMeTime` | `string` | The last time the file was viewed by the user (RFC 3339 date-time). |
| `viewersCanCopyContent` | `boolean` | Deprecated: Use `copyRequiresWriterPermission` instead. |
| `webContentLink` | `string` | Output only. A link for downloading the content of the file in a browser. This is only available ... |
| `webViewLink` | `string` | Output only. A link for opening the file in a relevant Google editor or viewer in a browser. |
| `writersCanShare` | `boolean` | Whether users with only `writer` permission can modify the file's permissions. Not populated for ... |

### `FileList`

A list of files.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<File>` | The list of files. If `nextPageToken` is populated, then this list may be incomplete and an addit... |
| `incompleteSearch` | `boolean` | Whether the search process was incomplete. If true, then some search results might be missing, si... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#fileList"`. |
| `nextPageToken` | `string` | The page token for the next page of files. This will be absent if the end of the files list has b... |

### `GeneratedIds`

A list of generated file IDs which can be provided in create requests.

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | The IDs generated for the requesting user in the specified space. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#generatedIds"`. |
| `space` | `string` | The type of file that can be created with these IDs. |

### `Label`

Representation of label and label fields.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | A map of the fields on the label, keyed by the field's ID. |
| `id` | `string` | The ID of the label. |
| `kind` | `string` | This is always drive#label |
| `revisionId` | `string` | The revision ID of the label. |

### `LabelField`

Representation of field, which is a typed key-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `dateString` | `array<string>` | Only present if valueType is dateString. RFC 3339 formatted date: YYYY-MM-DD. |
| `id` | `string` | The identifier of this label field. |
| `integer` | `array<string>` | Only present if `valueType` is `integer`. |
| `kind` | `string` | This is always drive#labelField. |
| `selection` | `array<string>` | Only present if `valueType` is `selection` |
| `text` | `array<string>` | Only present if `valueType` is `text`. |
| `user` | `array<User>` | Only present if `valueType` is `user`. |
| `valueType` | `string` | The field type. While new values may be supported in the future, the following are currently allo... |

### `LabelFieldModification`

A modification to a label's field.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | The ID of the field to be modified. |
| `kind` | `string` | This is always `"drive#labelFieldModification"`. |
| `setDateValues` | `array<string>` | Replaces the value of a dateString Field with these new values. The string must be in the RFC 333... |
| `setIntegerValues` | `array<string>` | Replaces the value of an `integer` field with these new values. |
| `setSelectionValues` | `array<string>` | Replaces a `selection` field with these new values. |
| `setTextValues` | `array<string>` | Sets the value of a `text` field. |
| `setUserValues` | `array<string>` | Replaces a `user` field with these new values. The values must be a valid email addresses. |
| `unsetValues` | `boolean` | Unsets the values for this field. |

### `LabelList`

A list of labels applied to a file.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `"drive#labelList"`. |
| `labels` | `array<Label>` | The list of labels. |
| `nextPageToken` | `string` | The page token for the next page of labels. This field will be absent if the end of the list has ... |

### `LabelModification`

A modification to a label on a file. A `LabelModification` can be used to apply a label to a file, update an existing label on a file, or remove a label from a file.

| Property | Type | Description |
|----------|------|-------------|
| `fieldModifications` | `array<LabelFieldModification>` | The list of modifications to this label's fields. |
| `kind` | `string` | This is always `"drive#labelModification"`. |
| `labelId` | `string` | The ID of the label to modify. |
| `removeLabel` | `boolean` | If true, the label will be removed from the file. |

### `ListAccessProposalsResponse`

The response to an access proposal list request.

| Property | Type | Description |
|----------|------|-------------|
| `accessProposals` | `array<AccessProposal>` | The list of access proposals. This field is only populated in Drive API v3. |
| `nextPageToken` | `string` | The continuation token for the next page of results. This will be absent if the end of the result... |

### `ModifyLabelsRequest`

A request to modify the set of labels on a file. This request may contain many modifications that will either all succeed or all fail atomically.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `"drive#modifyLabelsRequest"`. |
| `labelModifications` | `array<LabelModification>` | The list of modifications to apply to the labels on the file. |

### `ModifyLabelsResponse`

Response to a `ModifyLabels` request. This contains only those labels which were added or updated by the request.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `"drive#modifyLabelsResponse"`. |
| `modifiedLabels` | `array<Label>` | The list of labels which were added or updated by the request. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Permission`

A permission for a file. A permission grants a user, group, domain, or the world access to a file or a folder hierarchy. For more information, see [Share files, folders, and drives](https://developers.google.com/workspace/drive/api/guides/manage-sharing). By default, permission requests only return a subset of fields. Permission `kind`, `ID`, `type`, and `role` are always returned. To retrieve specific fields, see [Return specific fields](https://developers.google.com/workspace/drive/api/guides/fields-parameter). Some resource methods (such as `permissions.update`) require a `permissionId`. Use the `permissions.list` method to retrieve the ID for a file, folder, or shared drive.

| Property | Type | Description |
|----------|------|-------------|
| `allowFileDiscovery` | `boolean` | Whether the permission allows the file to be discovered through search. This is only applicable f... |
| `deleted` | `boolean` | Output only. Whether the account associated with this permission has been deleted. This field onl... |
| `displayName` | `string` | Output only. The "pretty" name of the value of the permission. The following is a list of example... |
| `domain` | `string` | The domain to which this permission refers. |
| `emailAddress` | `string` | The email address of the user or group to which this permission refers. |
| `expirationTime` | `string` | The time at which this permission will expire (RFC 3339 date-time). Expiration times have the fol... |
| `id` | `string` | Output only. The ID of this permission. This is a unique identifier for the grantee, and is publi... |
| `inheritedPermissionsDisabled` | `boolean` | When `true`, only organizers, owners, and users with permissions added directly on the item can a... |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#permission"`. |
| `pendingOwner` | `boolean` | Whether the account associated with this permission is a pending owner. Only populated for permis... |
| `permissionDetails` | `array<object>` | Output only. Details of whether the permissions on this item are inherited or are directly on thi... |
| `photoLink` | `string` | Output only. A link to the user's profile photo, if available. |
| `role` | `string` | The role granted by this permission. Supported values include: * `owner` * `organizer` * `fileOrg... |
| `teamDrivePermissionDetails` | `array<object>` | Output only. Deprecated: Output only. Use `permissionDetails` instead. |
| `type` | `string` | The type of the grantee. Supported values include: * `user` * `group` * `domain` * `anyone` When ... |
| `view` | `string` | Indicates the view for this permission. Only populated for permissions that belong to a view. The... |

### `PermissionList`

A list of permissions for a file.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#permissionList"`. |
| `nextPageToken` | `string` | The page token for the next page of permissions. This field will be absent if the end of the perm... |
| `permissions` | `array<Permission>` | The list of permissions. If `nextPageToken` is populated, then this list may be incomplete and an... |

### `Reply`

A reply to a comment on a file. Some resource methods (such as `replies.update`) require a `replyId`. Use the `replies.list` method to retrieve the ID for a reply.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action the reply performed to the parent comment. The supported values are: * `resolve` * `re... |
| `assigneeEmailAddress` | `string` | Output only. The email address of the user assigned to this comment. If no user is assigned, the ... |
| `author` | `User` | Output only. The author of the reply. The author's email address and permission ID won't be popul... |
| `content` | `string` | The plain text content of the reply. This field is used for setting the content, while `htmlConte... |
| `createdTime` | `string` | The time at which the reply was created (RFC 3339 date-time). |
| `deleted` | `boolean` | Output only. Whether the reply has been deleted. A deleted reply has no content. |
| `htmlContent` | `string` | Output only. The content of the reply with HTML formatting. |
| `id` | `string` | Output only. The ID of the reply. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#reply"`. |
| `mentionedEmailAddresses` | `array<string>` | Output only. A list of email addresses for users mentioned in this comment. If no users are menti... |
| `modifiedTime` | `string` | The last time the reply was modified (RFC 3339 date-time). |

### `ReplyList`

A list of replies to a comment on a file.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#replyList"`. |
| `nextPageToken` | `string` | The page token for the next page of replies. This will be absent if the end of the replies list h... |
| `replies` | `array<Reply>` | The list of replies. If `nextPageToken` is populated, then this list may be incomplete and an add... |

### `ResolveAccessProposalRequest`

Request message for resolving an AccessProposal on a file.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. The action to take on the access proposal. |
| `role` | `array<string>` | Optional. The roles that the approver has allowed, if any. For more information, see [Roles and p... |
| `sendNotification` | `boolean` | Optional. Whether to send an email to the requester when the access proposal is denied or accepted. |
| `view` | `string` | Optional. Indicates the view for this access proposal. This should only be set when the proposal ... |

### `ReviewerResponse`

A response on an Approval made by a specific Reviewer.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always drive#reviewerResponse. |
| `response` | `string` | A Reviewer’s Response for the Approval. |
| `reviewer` | `User` | The user that is responsible for this response. |

### `Revision`

The metadata for a revision to a file. Some resource methods (such as `revisions.update`) require a `revisionId`. Use the `revisions.list` method to retrieve the ID for a revision.

| Property | Type | Description |
|----------|------|-------------|
| `exportLinks` | `object` | Output only. Links for exporting Docs Editors files to specific formats. |
| `id` | `string` | Output only. The ID of the revision. |
| `keepForever` | `boolean` | Whether to keep this revision forever, even if it is no longer the head revision. If not set, the... |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `"drive#revision"`. |
| `lastModifyingUser` | `User` | Output only. The last user to modify this revision. This field is only populated when the last mo... |
| `md5Checksum` | `string` | Output only. The MD5 checksum of the revision's content. This is only applicable to files with bi... |
| `mimeType` | `string` | Output only. The MIME type of the revision. |
| `modifiedTime` | `string` | The last time the revision was modified (RFC 3339 date-time). |
| `originalFilename` | `string` | Output only. The original filename used to create this revision. This is only applicable to files... |
| `publishAuto` | `boolean` | Whether subsequent revisions will be automatically republished. This is only applicable to Docs E... |
| `published` | `boolean` | Whether this revision is published. This is only applicable to Docs Editors files. |
| `publishedLink` | `string` | Output only. A link to the published revision. This is only populated for Docs Editors files. |
| `publishedOutsideDomain` | `boolean` | Whether this revision is published outside the domain. This is only applicable to Docs Editors fi... |
| `size` | `string` | Output only. The size of the revision's content in bytes. This is only applicable to files with b... |

### `RevisionList`

A list of revisions of a file.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#revisionList"`. |
| `nextPageToken` | `string` | The page token for the next page of revisions. This will be absent if the end of the revisions li... |
| `revisions` | `array<Revision>` | The list of revisions. If nextPageToken is populated, then this list may be incomplete and an add... |

### `StartPageToken`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#startPageToken"`. |
| `startPageToken` | `string` | The starting page token for listing future changes. The page token doesn't expire. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TeamDrive`

Deprecated: use the drive collection instead.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundImageFile` | `object` | An image file and cropping parameters from which a background image for this Team Drive is set. T... |
| `backgroundImageLink` | `string` | A short-lived link to this Team Drive's background image. |
| `capabilities` | `object` | Capabilities the current user has on this Team Drive. |
| `colorRgb` | `string` | The color of this Team Drive as an RGB hex string. It can only be set on a `drive.teamdrives.upda... |
| `createdTime` | `string` | The time at which the Team Drive was created (RFC 3339 date-time). |
| `id` | `string` | The ID of this Team Drive which is also the ID of the top level folder of this Team Drive. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#teamDrive"`. |
| `name` | `string` | The name of this Team Drive. |
| `orgUnitId` | `string` | The organizational unit of this shared drive. This field is only populated on `drives.list` respo... |
| `restrictions` | `object` | A set of restrictions that apply to this Team Drive or items inside this Team Drive. |
| `themeId` | `string` | The ID of the theme from which the background image and color will be set. The set of possible `t... |

### `TeamDriveList`

A list of Team Drives.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string `"drive#teamDriveList"`. |
| `nextPageToken` | `string` | The page token for the next page of Team Drives. This will be absent if the end of the Team Drive... |
| `teamDrives` | `array<TeamDrive>` | The list of Team Drives. If nextPageToken is populated, then this list may be incomplete and an a... |

### `User`

Information about a Drive user.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. A plain text displayable name for this user. |
| `emailAddress` | `string` | Output only. The email address of the user. This may not be present in certain contexts if the us... |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string `drive#user`. |
| `me` | `boolean` | Output only. Whether this user is the requesting user. |
| `permissionId` | `string` | Output only. The user's ID as visible in Permission resources. |
| `photoLink` | `string` | Output only. A link to the user's profile photo, if available. |

