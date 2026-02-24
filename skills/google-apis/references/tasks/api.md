# Google Tasks API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 7

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `tasks.tasks.clear` | POST | `tasks/v1/lists/{tasklist}/clear` | Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hi... |
| `tasks.tasks.delete` | DELETE | `tasks/v1/lists/{tasklist}/tasks/{task}` | Deletes the specified task from the task list. If the task is assigned, both the assigned task an... |
| `tasks.tasks.get` | GET | `tasks/v1/lists/{tasklist}/tasks/{task}` | Returns the specified task. |
| `tasks.tasks.insert` | POST | `tasks/v1/lists/{tasklist}/tasks` | Creates a new task on the specified task list. Tasks assigned from Docs or Chat Spaces cannot be ... |
| `tasks.tasks.list` | GET | `tasks/v1/lists/{tasklist}/tasks` | Returns all tasks in the specified task list. Doesn't return assigned tasks by default (from Docs... |
| `tasks.tasks.move` | POST | `tasks/v1/lists/{tasklist}/tasks/{task}/move` | Moves the specified task to another position in the destination task list. If the destination lis... |
| `tasks.tasks.patch` | PATCH | `tasks/v1/lists/{tasklist}/tasks/{task}` | Updates the specified task. This method supports patch semantics. |
| `tasks.tasks.update` | PUT | `tasks/v1/lists/{tasklist}/tasks/{task}` | Updates the specified task. |
| `tasks.tasklists.delete` | DELETE | `tasks/v1/users/@me/lists/{tasklist}` | Deletes the authenticated user's specified task list. If the list contains assigned tasks, both t... |
| `tasks.tasklists.get` | GET | `tasks/v1/users/@me/lists/{tasklist}` | Returns the authenticated user's specified task list. |
| `tasks.tasklists.insert` | POST | `tasks/v1/users/@me/lists` | Creates a new task list and adds it to the authenticated user's task lists. A user can have up to... |
| `tasks.tasklists.list` | GET | `tasks/v1/users/@me/lists` | Returns all the authenticated user's task lists. A user can have up to 2000 lists at a time. |
| `tasks.tasklists.patch` | PATCH | `tasks/v1/users/@me/lists/{tasklist}` | Updates the authenticated user's specified task list. This method supports patch semantics. |
| `tasks.tasklists.update` | PUT | `tasks/v1/users/@me/lists/{tasklist}` | Updates the authenticated user's specified task list. |

### `tasks.tasks.clear`

**POST** `tasks/v1/lists/{tasklist}/clear`

Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hidden' and no longer be returned by default when retrieving all tasks for a task list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |

```typescript
const res = await tasks.tasks.clear({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasks.delete`

**DELETE** `tasks/v1/lists/{tasklist}/tasks/{task}`

Deletes the specified task from the task list. If the task is assigned, both the assigned task and the original task (in Docs, Chat Spaces) are deleted. To delete the assigned task only, navigate to the assignment surface and unassign the task from there.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `task` | `string` | path | Yes | Task identifier. |

```typescript
const res = await tasks.tasks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasks.get`

**GET** `tasks/v1/lists/{tasklist}/tasks/{task}`

Returns the specified task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `task` | `string` | path | Yes | Task identifier. |

**Response**: `Task`

```typescript
const res = await tasks.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`
- `https://www.googleapis.com/auth/tasks.readonly`

---

### `tasks.tasks.insert`

**POST** `tasks/v1/lists/{tasklist}/tasks`

Creates a new task on the specified task list. Tasks assigned from Docs or Chat Spaces cannot be inserted from Tasks Public API; they can only be created by assigning them from Docs or Chat Spaces. A user can have up to 20,000 non-hidden tasks per list and up to 100,000 tasks in total at a time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `parent` | `string` | query | No | Parent task identifier. If the task is created at the top level, this parameter is omitted. An assigned task cannot b... |
| `previous` | `string` | query | No | Previous sibling task identifier. If the task is created at the first position among its siblings, this parameter is ... |

**Request body**: `Task`

**Response**: `Task`

```typescript
const res = await tasks.tasks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasks.list`

**GET** `tasks/v1/lists/{tasklist}/tasks`

Returns all tasks in the specified task list. Doesn't return assigned tasks by default (from Docs, Chat Spaces). A user can have up to 20,000 non-hidden tasks per list and up to 100,000 tasks in total at a time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `completedMax` | `string` | query | No | Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filt... |
| `completedMin` | `string` | query | No | Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filt... |
| `dueMax` | `string` | query | No | Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by d... |
| `dueMin` | `string` | query | No | Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by d... |
| `maxResults` | `integer` | query | No | Maximum number of tasks returned on one page. Optional. The default is 20 (max allowed: 100). |
| `pageToken` | `string` | query | No | Token specifying the result page to return. Optional. |
| `showAssigned` | `boolean` | query | No | Optional. Flag indicating whether tasks assigned to the current user are returned in the result. Optional. The defaul... |
| `showCompleted` | `boolean` | query | No | Flag indicating whether completed tasks are returned in the result. Note that showHidden must also be True to show ta... |
| `showDeleted` | `boolean` | query | No | Flag indicating whether deleted tasks are returned in the result. Optional. The default is False. |
| `showHidden` | `boolean` | query | No | Flag indicating whether hidden tasks are returned in the result. Optional. The default is False. |
| `updatedMin` | `string` | query | No | Lower bound for a task's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not ... |

**Response**: `Tasks`

```typescript
const res = await tasks.tasks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`
- `https://www.googleapis.com/auth/tasks.readonly`

---

### `tasks.tasks.move`

**POST** `tasks/v1/lists/{tasklist}/tasks/{task}/move`

Moves the specified task to another position in the destination task list. If the destination list is not specified, the task is moved within its current list. This can include putting it as a child task under a new parent and/or move it to a different position among its sibling tasks. A user can have up to 2,000 subtasks per task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `task` | `string` | path | Yes | Task identifier. |
| `destinationTasklist` | `string` | query | No | Optional. Destination task list identifier. If set, the task is moved from tasklist to the destinationTasklist list. ... |
| `parent` | `string` | query | No | Optional. New parent task identifier. If the task is moved to the top level, this parameter is omitted. The task set ... |
| `previous` | `string` | query | No | Optional. New previous sibling task identifier. If the task is moved to the first position among its siblings, this p... |

**Response**: `Task`

```typescript
const res = await tasks.tasks.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasks.patch`

**PATCH** `tasks/v1/lists/{tasklist}/tasks/{task}`

Updates the specified task. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `task` | `string` | path | Yes | Task identifier. |

**Request body**: `Task`

**Response**: `Task`

```typescript
const res = await tasks.tasks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasks.update`

**PUT** `tasks/v1/lists/{tasklist}/tasks/{task}`

Updates the specified task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |
| `task` | `string` | path | Yes | Task identifier. |

**Request body**: `Task`

**Response**: `Task`

```typescript
const res = await tasks.tasks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasklists.delete`

**DELETE** `tasks/v1/users/@me/lists/{tasklist}`

Deletes the authenticated user's specified task list. If the list contains assigned tasks, both the assigned tasks and the original tasks in the assignment surface (Docs, Chat Spaces) are deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |

```typescript
const res = await tasks.tasklists.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasklists.get`

**GET** `tasks/v1/users/@me/lists/{tasklist}`

Returns the authenticated user's specified task list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |

**Response**: `TaskList`

```typescript
const res = await tasks.tasklists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`
- `https://www.googleapis.com/auth/tasks.readonly`

---

### `tasks.tasklists.insert`

**POST** `tasks/v1/users/@me/lists`

Creates a new task list and adds it to the authenticated user's task lists. A user can have up to 2000 lists at a time.

**Request body**: `TaskList`

**Response**: `TaskList`

```typescript
const res = await tasks.tasklists.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasklists.list`

**GET** `tasks/v1/users/@me/lists`

Returns all the authenticated user's task lists. A user can have up to 2000 lists at a time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `maxResults` | `integer` | query | No | Maximum number of task lists returned on one page. Optional. The default is 1000 (max allowed: 1000). |
| `pageToken` | `string` | query | No | Token specifying the result page to return. Optional. |

**Response**: `TaskLists`

```typescript
const res = await tasks.tasklists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`
- `https://www.googleapis.com/auth/tasks.readonly`

---

### `tasks.tasklists.patch`

**PATCH** `tasks/v1/users/@me/lists/{tasklist}`

Updates the authenticated user's specified task list. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |

**Request body**: `TaskList`

**Response**: `TaskList`

```typescript
const res = await tasks.tasklists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

### `tasks.tasklists.update`

**PUT** `tasks/v1/users/@me/lists/{tasklist}`

Updates the authenticated user's specified task list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tasklist` | `string` | path | Yes | Task list identifier. |

**Request body**: `TaskList`

**Response**: `TaskList`

```typescript
const res = await tasks.tasklists.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tasks`

---

## Schemas

### `AssignmentInfo`

Information about the source of the task assignment (Document, Chat Space).

| Property | Type | Description |
|----------|------|-------------|
| `driveResourceInfo` | `DriveResourceInfo` | Output only. Information about the Drive file where this task originates from. Currently, the Dri... |
| `linkToTask` | `string` | Output only. An absolute link to the original task in the surface of assignment (Docs, Chat space... |
| `spaceInfo` | `SpaceInfo` | Output only. Information about the Chat Space where this task originates from. This field is read... |
| `surfaceType` | `string` | Output only. The type of surface this assigned task originates from. Currently limited to DOCUMEN... |

### `DriveResourceInfo`

Information about the Drive resource where a task was assigned from (the document, sheet, etc.).

| Property | Type | Description |
|----------|------|-------------|
| `driveFileId` | `string` | Output only. Identifier of the file in the Drive API. |
| `resourceKey` | `string` | Output only. Resource key required to access files shared via a shared link. Not required for all... |

### `SpaceInfo`

Information about the Chat Space where a task was assigned from.

| Property | Type | Description |
|----------|------|-------------|
| `space` | `string` | Output only. The Chat space where this task originates from. The format is "spaces/{space}". |

### `Task`

| Property | Type | Description |
|----------|------|-------------|
| `assignmentInfo` | `AssignmentInfo` | Output only. Context information for assigned tasks. A task can be assigned to a user, currently ... |
| `completed` | `string` | Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not ... |
| `deleted` | `boolean` | Flag indicating whether the task has been deleted. For assigned tasks this field is read-only. Th... |
| `due` | `string` | Scheduled date for the task (as an RFC 3339 timestamp). Optional. This represents the day that th... |
| `etag` | `string` | ETag of the resource. |
| `hidden` | `boolean` | Flag indicating whether the task is hidden. This is the case if the task had been marked complete... |
| `id` | `string` | Task identifier. |
| `kind` | `string` | Output only. Type of the resource. This is always "tasks#task". |
| `links` | `array<object>` | Output only. Collection of links. This collection is read-only. |
| `notes` | `string` | Notes describing the task. Tasks assigned from Google Docs cannot have notes. Optional. Maximum l... |
| `parent` | `string` | Output only. Parent task identifier. This field is omitted if it is a top-level task. Use the "mo... |
| `position` | `string` | Output only. String indicating the position of the task among its sibling tasks under the same pa... |
| `selfLink` | `string` | Output only. URL pointing to this task. Used to retrieve, update, or delete this task. |
| `status` | `string` | Status of the task. This is either "needsAction" or "completed". |
| `title` | `string` | Title of the task. Maximum length allowed: 1024 characters. |
| `updated` | `string` | Output only. Last modification time of the task (as a RFC 3339 timestamp). |
| `webViewLink` | `string` | Output only. An absolute link to the task in the Google Tasks Web UI. |

### `TaskList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `id` | `string` | Task list identifier. |
| `kind` | `string` | Output only. Type of the resource. This is always "tasks#taskList". |
| `selfLink` | `string` | Output only. URL pointing to this task list. Used to retrieve, update, or delete this task list. |
| `title` | `string` | Title of the task list. Maximum length allowed: 1024 characters. |
| `updated` | `string` | Output only. Last modification time of the task list (as a RFC 3339 timestamp). |

### `TaskLists`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `items` | `array<TaskList>` | Collection of task lists. |
| `kind` | `string` | Type of the resource. This is always "tasks#taskLists". |
| `nextPageToken` | `string` | Token that can be used to request the next page of this result. |

### `Tasks`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `items` | `array<Task>` | Collection of tasks. |
| `kind` | `string` | Type of the resource. This is always "tasks#tasks". |
| `nextPageToken` | `string` | Token used to access the next page of this result. |

