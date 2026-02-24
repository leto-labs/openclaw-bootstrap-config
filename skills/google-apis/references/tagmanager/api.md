# Tag Manager API - API Reference

**Version**: `v2` | **Methods**: 106 | **Schemas**: 72

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `tagmanager.accounts.list` | GET | `tagmanager/v2/accounts` | Lists all GTM Accounts that a user has access to. |
| `tagmanager.accounts.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Account. |
| `tagmanager.accounts.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Account. |
| `tagmanager.accounts.user_permissions.create` | POST | `tagmanager/v2/{+parent}/user_permissions` | Creates a user's Account & Container access. |
| `tagmanager.accounts.user_permissions.list` | GET | `tagmanager/v2/{+parent}/user_permissions` | List all users that have access to the account along with Account and Container user access grant... |
| `tagmanager.accounts.user_permissions.get` | GET | `tagmanager/v2/{+path}` | Gets a user's Account & Container access. |
| `tagmanager.accounts.user_permissions.update` | PUT | `tagmanager/v2/{+path}` | Updates a user's Account & Container access. |
| `tagmanager.accounts.user_permissions.delete` | DELETE | `tagmanager/v2/{+path}` | Removes a user from the account, revoking access to it and all of its containers. |
| `tagmanager.accounts.containers.create` | POST | `tagmanager/v2/{+parent}/containers` | Creates a Container. |
| `tagmanager.accounts.containers.list` | GET | `tagmanager/v2/{+parent}/containers` | Lists all Containers that belongs to a GTM Account. |
| `tagmanager.accounts.containers.get` | GET | `tagmanager/v2/{+path}` | Gets a Container. |
| `tagmanager.accounts.containers.snippet` | GET | `tagmanager/v2/{+path}:snippet` | Gets the tagging snippet for a Container. |
| `tagmanager.accounts.containers.lookup` | GET | `tagmanager/v2/accounts/containers:lookup` | Looks up a Container by destination ID or tag ID. |
| `tagmanager.accounts.containers.update` | PUT | `tagmanager/v2/{+path}` | Updates a Container. |
| `tagmanager.accounts.containers.combine` | POST | `tagmanager/v2/{+path}:combine` | Combines Containers. |
| `tagmanager.accounts.containers.move_tag_id` | POST | `tagmanager/v2/{+path}:move_tag_id` | Move Tag ID out of a Container. |
| `tagmanager.accounts.containers.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a Container. |
| `tagmanager.accounts.containers.destinations.get` | GET | `tagmanager/v2/{+path}` | Gets a Destination. |
| `tagmanager.accounts.containers.destinations.list` | GET | `tagmanager/v2/{+parent}/destinations` | Lists all Destinations linked to a GTM Container. |
| `tagmanager.accounts.containers.destinations.link` | POST | `tagmanager/v2/{+parent}/destinations:link` | Adds a Destination to this Container and removes it from the Container to which it is currently l... |
| `tagmanager.accounts.containers.workspaces.create` | POST | `tagmanager/v2/{+parent}/workspaces` | Creates a Workspace. |
| `tagmanager.accounts.containers.workspaces.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a Workspace. |
| `tagmanager.accounts.containers.workspaces.get` | GET | `tagmanager/v2/{+path}` | Gets a Workspace. |
| `tagmanager.accounts.containers.workspaces.update` | PUT | `tagmanager/v2/{+path}` | Updates a Workspace. |
| `tagmanager.accounts.containers.workspaces.list` | GET | `tagmanager/v2/{+parent}/workspaces` | Lists all Workspaces that belong to a GTM Container. |
| `tagmanager.accounts.containers.workspaces.sync` | POST | `tagmanager/v2/{+path}:sync` | Syncs a workspace to the latest container version by updating all unmodified workspace entities a... |
| `tagmanager.accounts.containers.workspaces.getStatus` | GET | `tagmanager/v2/{+path}/status` | Finds conflicting and modified entities in the workspace. |
| `tagmanager.accounts.containers.workspaces.bulk_update` | POST | `tagmanager/v2/{+path}/bulk_update` | Applies multiple entity changes to a workspace in one call. When creating new entities, their ent... |
| `tagmanager.accounts.containers.workspaces.resolve_conflict` | POST | `tagmanager/v2/{+path}:resolve_conflict` | Resolves a merge conflict for a workspace entity by updating it to the resolved entity passed in ... |
| `tagmanager.accounts.containers.workspaces.quick_preview` | POST | `tagmanager/v2/{+path}:quick_preview` | Quick previews a workspace by creating a fake container version from all entities in the provided... |
| `tagmanager.accounts.containers.workspaces.create_version` | POST | `tagmanager/v2/{+path}:create_version` | Creates a Container Version from the entities present in the workspace, deletes the workspace, an... |
| `tagmanager.accounts.containers.workspaces.variables.create` | POST | `tagmanager/v2/{+parent}/variables` | Creates a GTM Variable. |
| `tagmanager.accounts.containers.workspaces.variables.list` | GET | `tagmanager/v2/{+parent}/variables` | Lists all GTM Variables of a Container. |
| `tagmanager.accounts.containers.workspaces.variables.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Variable. |
| `tagmanager.accounts.containers.workspaces.variables.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Variable. |
| `tagmanager.accounts.containers.workspaces.variables.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Variable. |
| `tagmanager.accounts.containers.workspaces.variables.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Variable in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.built_in_variables.create` | POST | `tagmanager/v2/{+parent}/built_in_variables` | Creates one or more GTM Built-In Variables. |
| `tagmanager.accounts.containers.workspaces.built_in_variables.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes one or more GTM Built-In Variables. |
| `tagmanager.accounts.containers.workspaces.built_in_variables.list` | GET | `tagmanager/v2/{+parent}/built_in_variables` | Lists all the enabled Built-In Variables of a GTM Container. |
| `tagmanager.accounts.containers.workspaces.built_in_variables.revert` | POST | `tagmanager/v2/{+path}/built_in_variables:revert` | Reverts changes to a GTM Built-In Variables in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.triggers.create` | POST | `tagmanager/v2/{+parent}/triggers` | Creates a GTM Trigger. |
| `tagmanager.accounts.containers.workspaces.triggers.list` | GET | `tagmanager/v2/{+parent}/triggers` | Lists all GTM Triggers of a Container. |
| `tagmanager.accounts.containers.workspaces.triggers.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Trigger. |
| `tagmanager.accounts.containers.workspaces.triggers.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Trigger. |
| `tagmanager.accounts.containers.workspaces.triggers.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Trigger. |
| `tagmanager.accounts.containers.workspaces.triggers.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Trigger in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.tags.create` | POST | `tagmanager/v2/{+parent}/tags` | Creates a GTM Tag. |
| `tagmanager.accounts.containers.workspaces.tags.list` | GET | `tagmanager/v2/{+parent}/tags` | Lists all GTM Tags of a Container. |
| `tagmanager.accounts.containers.workspaces.tags.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Tag. |
| `tagmanager.accounts.containers.workspaces.tags.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Tag. |
| `tagmanager.accounts.containers.workspaces.tags.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Tag. |
| `tagmanager.accounts.containers.workspaces.tags.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Tag in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.gtag_config.create` | POST | `tagmanager/v2/{+parent}/gtag_config` | Creates a Google tag config. |
| `tagmanager.accounts.containers.workspaces.gtag_config.list` | GET | `tagmanager/v2/{+parent}/gtag_config` | Lists all Google tag configs in a Container. |
| `tagmanager.accounts.containers.workspaces.gtag_config.get` | GET | `tagmanager/v2/{+path}` | Gets a Google tag config. |
| `tagmanager.accounts.containers.workspaces.gtag_config.update` | PUT | `tagmanager/v2/{+path}` | Updates a Google tag config. |
| `tagmanager.accounts.containers.workspaces.gtag_config.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a Google tag config. |
| `tagmanager.accounts.containers.workspaces.templates.create` | POST | `tagmanager/v2/{+parent}/templates` | Creates a GTM Custom Template. |
| `tagmanager.accounts.containers.workspaces.templates.import_from_gallery` | POST | `tagmanager/v2/{+parent}/templates:import_from_gallery` | Imports a GTM Custom Template from Gallery. |
| `tagmanager.accounts.containers.workspaces.templates.list` | GET | `tagmanager/v2/{+parent}/templates` | Lists all GTM Templates of a GTM container workspace. |
| `tagmanager.accounts.containers.workspaces.templates.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Template. |
| `tagmanager.accounts.containers.workspaces.templates.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Template. |
| `tagmanager.accounts.containers.workspaces.templates.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Template. |
| `tagmanager.accounts.containers.workspaces.templates.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Template in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.folders.create` | POST | `tagmanager/v2/{+parent}/folders` | Creates a GTM Folder. |
| `tagmanager.accounts.containers.workspaces.folders.list` | GET | `tagmanager/v2/{+parent}/folders` | Lists all GTM Folders of a Container. |
| `tagmanager.accounts.containers.workspaces.folders.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Folder. |
| `tagmanager.accounts.containers.workspaces.folders.entities` | POST | `tagmanager/v2/{+path}:entities` | List all entities in a GTM Folder. |
| `tagmanager.accounts.containers.workspaces.folders.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Folder. |
| `tagmanager.accounts.containers.workspaces.folders.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Folder. |
| `tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder` | POST | `tagmanager/v2/{+path}:move_entities_to_folder` | Moves entities to a GTM Folder. If {folder_id} in the request path equals 0, this will instead mo... |
| `tagmanager.accounts.containers.workspaces.folders.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Folder in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.zones.create` | POST | `tagmanager/v2/{+parent}/zones` | Creates a GTM Zone. |
| `tagmanager.accounts.containers.workspaces.zones.list` | GET | `tagmanager/v2/{+parent}/zones` | Lists all GTM Zones of a GTM container workspace. |
| `tagmanager.accounts.containers.workspaces.zones.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Zone. |
| `tagmanager.accounts.containers.workspaces.zones.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Zone. |
| `tagmanager.accounts.containers.workspaces.zones.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Zone. |
| `tagmanager.accounts.containers.workspaces.zones.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Zone in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.clients.create` | POST | `tagmanager/v2/{+parent}/clients` | Creates a GTM Client. |
| `tagmanager.accounts.containers.workspaces.clients.list` | GET | `tagmanager/v2/{+parent}/clients` | Lists all GTM Clients of a GTM container workspace. |
| `tagmanager.accounts.containers.workspaces.clients.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Client. |
| `tagmanager.accounts.containers.workspaces.clients.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Client. |
| `tagmanager.accounts.containers.workspaces.clients.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Client. |
| `tagmanager.accounts.containers.workspaces.clients.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Client in a GTM Workspace. |
| `tagmanager.accounts.containers.workspaces.transformations.create` | POST | `tagmanager/v2/{+parent}/transformations` | Creates a GTM Transformation. |
| `tagmanager.accounts.containers.workspaces.transformations.list` | GET | `tagmanager/v2/{+parent}/transformations` | Lists all GTM Transformations of a GTM container workspace. |
| `tagmanager.accounts.containers.workspaces.transformations.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Transformation. |
| `tagmanager.accounts.containers.workspaces.transformations.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Transformation. |
| `tagmanager.accounts.containers.workspaces.transformations.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Transformation. |
| `tagmanager.accounts.containers.workspaces.transformations.revert` | POST | `tagmanager/v2/{+path}:revert` | Reverts changes to a GTM Transformation in a GTM Workspace. |
| `tagmanager.accounts.containers.versions.get` | GET | `tagmanager/v2/{+path}` | Gets a Container Version. |
| `tagmanager.accounts.containers.versions.update` | PUT | `tagmanager/v2/{+path}` | Updates a Container Version. |
| `tagmanager.accounts.containers.versions.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a Container Version. |
| `tagmanager.accounts.containers.versions.undelete` | POST | `tagmanager/v2/{+path}:undelete` | Undeletes a Container Version. |
| `tagmanager.accounts.containers.versions.publish` | POST | `tagmanager/v2/{+path}:publish` | Publishes a Container Version. |
| `tagmanager.accounts.containers.versions.set_latest` | POST | `tagmanager/v2/{+path}:set_latest` | Sets the latest version used for synchronization of workspaces when detecting conflicts and errors. |
| `tagmanager.accounts.containers.versions.live` | GET | `tagmanager/v2/{+parent}/versions:live` | Gets the live (i.e. published) container version |
| `tagmanager.accounts.containers.version_headers.list` | GET | `tagmanager/v2/{+parent}/version_headers` | Lists all Container Versions of a GTM Container. |
| `tagmanager.accounts.containers.version_headers.latest` | GET | `tagmanager/v2/{+parent}/version_headers:latest` | Gets the latest container version header |
| `tagmanager.accounts.containers.environments.create` | POST | `tagmanager/v2/{+parent}/environments` | Creates a GTM Environment. |
| `tagmanager.accounts.containers.environments.list` | GET | `tagmanager/v2/{+parent}/environments` | Lists all GTM Environments of a GTM Container. |
| `tagmanager.accounts.containers.environments.get` | GET | `tagmanager/v2/{+path}` | Gets a GTM Environment. |
| `tagmanager.accounts.containers.environments.update` | PUT | `tagmanager/v2/{+path}` | Updates a GTM Environment. |
| `tagmanager.accounts.containers.environments.delete` | DELETE | `tagmanager/v2/{+path}` | Deletes a GTM Environment. |
| `tagmanager.accounts.containers.environments.reauthorize` | POST | `tagmanager/v2/{+path}:reauthorize` | Re-generates the authorization code for a GTM Environment. |

### `tagmanager.accounts.list`

**GET** `tagmanager/v2/accounts`

Lists all GTM Accounts that a user has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `includeGoogleTags` | `boolean` | query | No | Also retrieve accounts associated with Google Tag when true. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListAccountsResponse`

```typescript
const res = await tagmanager.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.manage.accounts`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Account's API relative path. |

**Response**: `Account`

```typescript
const res = await tagmanager.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.manage.accounts`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Account's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the account in storage. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await tagmanager.accounts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.accounts`

---

### `tagmanager.accounts.user_permissions.create`

**POST** `tagmanager/v2/{+parent}/user_permissions`

Creates a user's Account & Container access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Account's API relative path. |

**Request body**: `UserPermission`

**Response**: `UserPermission`

```typescript
const res = await tagmanager.user_permissions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.users`

---

### `tagmanager.accounts.user_permissions.list`

**GET** `tagmanager/v2/{+parent}/user_permissions`

List all users that have access to the account along with Account and Container user access granted to each of them.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Account's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListUserPermissionsResponse`

```typescript
const res = await tagmanager.user_permissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.users`

---

### `tagmanager.accounts.user_permissions.get`

**GET** `tagmanager/v2/{+path}`

Gets a user's Account & Container access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM UserPermission's API relative path. |

**Response**: `UserPermission`

```typescript
const res = await tagmanager.user_permissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.users`

---

### `tagmanager.accounts.user_permissions.update`

**PUT** `tagmanager/v2/{+path}`

Updates a user's Account & Container access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM UserPermission's API relative path. |

**Request body**: `UserPermission`

**Response**: `UserPermission`

```typescript
const res = await tagmanager.user_permissions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.users`

---

### `tagmanager.accounts.user_permissions.delete`

**DELETE** `tagmanager/v2/{+path}`

Removes a user from the account, revoking access to it and all of its containers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM UserPermission's API relative path. |

```typescript
const res = await tagmanager.user_permissions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.manage.users`

---

### `tagmanager.accounts.containers.create`

**POST** `tagmanager/v2/{+parent}/containers`

Creates a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Account's API relative path. |

**Request body**: `Container`

**Response**: `Container`

```typescript
const res = await tagmanager.containers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.list`

**GET** `tagmanager/v2/{+parent}/containers`

Lists all Containers that belongs to a GTM Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Account's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListContainersResponse`

```typescript
const res = await tagmanager.containers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.get`

**GET** `tagmanager/v2/{+path}`

Gets a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Container's API relative path. |

**Response**: `Container`

```typescript
const res = await tagmanager.containers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.snippet`

**GET** `tagmanager/v2/{+path}:snippet`

Gets the tagging snippet for a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | Container snippet's API relative path. |

**Response**: `GetContainerSnippetResponse`

```typescript
const res = await tagmanager.containers.snippet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.lookup`

**GET** `tagmanager/v2/accounts/containers:lookup`

Looks up a Container by destination ID or tag ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `destinationId` | `string` | query | No | Destination ID linked to a GTM Container, e.g. AW-123456789. Only one of destination_id or tag_id should be set. |
| `tagId` | `string` | query | No | Tag ID for a GTM Container, e.g. GTM-123456789. Only one of destination_id or tag_id should be set. |

**Response**: `Container`

```typescript
const res = await tagmanager.containers.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.update`

**PUT** `tagmanager/v2/{+path}`

Updates a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Container's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the container in storage. |

**Request body**: `Container`

**Response**: `Container`

```typescript
const res = await tagmanager.containers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.combine`

**POST** `tagmanager/v2/{+path}:combine`

Combines Containers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Container's API relative path. |
| `allowUserPermissionFeatureUpdate` | `boolean` | query | No | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an upda... |
| `containerId` | `string` | query | No | ID of container that will be merged into the current container. |
| `settingSource` | `string` | query | No | Specify the source of config setting after combine |

**Response**: `Container`

```typescript
const res = await tagmanager.containers.combine({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.move_tag_id`

**POST** `tagmanager/v2/{+path}:move_tag_id`

Move Tag ID out of a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Container's API relative path. |
| `allowUserPermissionFeatureUpdate` | `boolean` | query | No | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an upda... |
| `copySettings` | `boolean` | query | No | Whether or not to copy tag settings from this tag to the new tag. |
| `copyTermsOfService` | `boolean` | query | No | Must be set to true to accept all terms of service agreements copied from the current tag to the newly created tag. I... |
| `copyUsers` | `boolean` | query | No | Whether or not to copy users from this tag to the new tag. |
| `tagId` | `string` | query | No | Tag ID to be removed from the current Container. |
| `tagName` | `string` | query | No | The name for the newly created tag. |

**Response**: `Container`

```typescript
const res = await tagmanager.containers.move_tag_id({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Container's API relative path. |

```typescript
const res = await tagmanager.containers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.delete.containers`

---

### `tagmanager.accounts.containers.destinations.get`

**GET** `tagmanager/v2/{+path}`

Gets a Destination.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | Google Tag Destination's API relative path. |

**Response**: `Destination`

```typescript
const res = await tagmanager.destinations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.destinations.list`

**GET** `tagmanager/v2/{+parent}/destinations`

Lists all Destinations linked to a GTM Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM parent Container's API relative path. |

**Response**: `ListDestinationsResponse`

```typescript
const res = await tagmanager.destinations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.destinations.link`

**POST** `tagmanager/v2/{+parent}/destinations:link`

Adds a Destination to this Container and removes it from the Container to which it is currently linked.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM parent Container's API relative path. |
| `allowUserPermissionFeatureUpdate` | `boolean` | query | No | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an upda... |
| `destinationId` | `string` | query | No | Destination ID to be linked to the current container. |

**Response**: `Destination`

```typescript
const res = await tagmanager.destinations.link({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.create`

**POST** `tagmanager/v2/{+parent}/workspaces`

Creates a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM parent Container's API relative path. |

**Request body**: `Workspace`

**Response**: `Workspace`

```typescript
const res = await tagmanager.workspaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

```typescript
const res = await tagmanager.workspaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.delete.containers`

---

### `tagmanager.accounts.containers.workspaces.get`

**GET** `tagmanager/v2/{+path}`

Gets a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Response**: `Workspace`

```typescript
const res = await tagmanager.workspaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.update`

**PUT** `tagmanager/v2/{+path}`

Updates a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the workspace in storage. |

**Request body**: `Workspace`

**Response**: `Workspace`

```typescript
const res = await tagmanager.workspaces.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.list`

**GET** `tagmanager/v2/{+parent}/workspaces`

Lists all Workspaces that belong to a GTM Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM parent Container's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListWorkspacesResponse`

```typescript
const res = await tagmanager.workspaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.sync`

**POST** `tagmanager/v2/{+path}:sync`

Syncs a workspace to the latest container version by updating all unmodified workspace entities and displaying conflicts for modified entities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Response**: `SyncWorkspaceResponse`

```typescript
const res = await tagmanager.workspaces.sync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.getStatus`

**GET** `tagmanager/v2/{+path}/status`

Finds conflicting and modified entities in the workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Response**: `GetWorkspaceStatusResponse`

```typescript
const res = await tagmanager.workspaces.getStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.bulk_update`

**POST** `tagmanager/v2/{+path}/bulk_update`

Applies multiple entity changes to a workspace in one call. When creating new entities, their entity IDs must be unique and in correct format. That is, they must start with "new_" and followed by number, e.g. "new_1", "new_2". Example body snippet to create myNewTag under myNewFolder is: ``` "changes": [ { "folder": { "folderId": "new_1", "name": "myNewFolder", ... }, "changeStatus": "added" }, { "tag": { "tagId": "new_2", "name": "myNewTag", "parentFolderId": "new_1", ... }, "changeStatus": "added" } ] ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `ProposedChange`

**Response**: `BulkUpdateWorkspaceResponse`

```typescript
const res = await tagmanager.workspaces.bulk_update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.resolve_conflict`

**POST** `tagmanager/v2/{+path}:resolve_conflict`

Resolves a merge conflict for a workspace entity by updating it to the resolved entity passed in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the entity_in_workspace in the merge conflict. |

**Request body**: `Entity`

```typescript
const res = await tagmanager.workspaces.resolve_conflict({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.quick_preview`

**POST** `tagmanager/v2/{+path}:quick_preview`

Quick previews a workspace by creating a fake container version from all entities in the provided workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Response**: `QuickPreviewResponse`

```typescript
const res = await tagmanager.workspaces.quick_preview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`

---

### `tagmanager.accounts.containers.workspaces.create_version`

**POST** `tagmanager/v2/{+path}:create_version`

Creates a Container Version from the entities present in the workspace, deletes the workspace, and sets the base container version to the newly created version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `CreateContainerVersionRequestVersionOptions`

**Response**: `CreateContainerVersionResponse`

```typescript
const res = await tagmanager.workspaces.create_version({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`

---

### `tagmanager.accounts.containers.workspaces.variables.create`

**POST** `tagmanager/v2/{+parent}/variables`

Creates a GTM Variable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Variable`

**Response**: `Variable`

```typescript
const res = await tagmanager.variables.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.variables.list`

**GET** `tagmanager/v2/{+parent}/variables`

Lists all GTM Variables of a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListVariablesResponse`

```typescript
const res = await tagmanager.variables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.variables.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Variable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Variable's API relative path. |

**Response**: `Variable`

```typescript
const res = await tagmanager.variables.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.variables.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Variable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Variable's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the variable in storage. |

**Request body**: `Variable`

**Response**: `Variable`

```typescript
const res = await tagmanager.variables.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.variables.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Variable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Variable's API relative path. |

```typescript
const res = await tagmanager.variables.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.variables.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Variable in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Variable's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the variable in storage. |

**Response**: `RevertVariableResponse`

```typescript
const res = await tagmanager.variables.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.built_in_variables.create`

**POST** `tagmanager/v2/{+parent}/built_in_variables`

Creates one or more GTM Built-In Variables.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `type` | `string` | query | No | The types of built-in variables to enable. |

**Response**: `CreateBuiltInVariableResponse`

```typescript
const res = await tagmanager.built_in_variables.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.built_in_variables.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes one or more GTM Built-In Variables.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM BuiltInVariable's API relative path. |
| `type` | `string` | query | No | The types of built-in variables to delete. |

```typescript
const res = await tagmanager.built_in_variables.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.built_in_variables.list`

**GET** `tagmanager/v2/{+parent}/built_in_variables`

Lists all the enabled Built-In Variables of a GTM Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListEnabledBuiltInVariablesResponse`

```typescript
const res = await tagmanager.built_in_variables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.built_in_variables.revert`

**POST** `tagmanager/v2/{+path}/built_in_variables:revert`

Reverts changes to a GTM Built-In Variables in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM BuiltInVariable's API relative path. |
| `type` | `string` | query | No | The type of built-in variable to revert. |

**Response**: `RevertBuiltInVariableResponse`

```typescript
const res = await tagmanager.built_in_variables.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.triggers.create`

**POST** `tagmanager/v2/{+parent}/triggers`

Creates a GTM Trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Trigger`

**Response**: `Trigger`

```typescript
const res = await tagmanager.triggers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.triggers.list`

**GET** `tagmanager/v2/{+parent}/triggers`

Lists all GTM Triggers of a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListTriggersResponse`

```typescript
const res = await tagmanager.triggers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.triggers.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Trigger's API relative path. |

**Response**: `Trigger`

```typescript
const res = await tagmanager.triggers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.triggers.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Trigger's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the trigger in storage. |

**Request body**: `Trigger`

**Response**: `Trigger`

```typescript
const res = await tagmanager.triggers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.triggers.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Trigger's API relative path. |

```typescript
const res = await tagmanager.triggers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.triggers.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Trigger in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Trigger's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the trigger in storage. |

**Response**: `RevertTriggerResponse`

```typescript
const res = await tagmanager.triggers.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.tags.create`

**POST** `tagmanager/v2/{+parent}/tags`

Creates a GTM Tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Tag`

**Response**: `Tag`

```typescript
const res = await tagmanager.tags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.tags.list`

**GET** `tagmanager/v2/{+parent}/tags`

Lists all GTM Tags of a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListTagsResponse`

```typescript
const res = await tagmanager.tags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.tags.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Tag's API relative path. |

**Response**: `Tag`

```typescript
const res = await tagmanager.tags.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.tags.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Tag's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the tag in storage. |

**Request body**: `Tag`

**Response**: `Tag`

```typescript
const res = await tagmanager.tags.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.tags.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Tag's API relative path. |

```typescript
const res = await tagmanager.tags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.tags.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Tag in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Tag's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of thetag in storage. |

**Response**: `RevertTagResponse`

```typescript
const res = await tagmanager.tags.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.gtag_config.create`

**POST** `tagmanager/v2/{+parent}/gtag_config`

Creates a Google tag config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Workspace's API relative path. |

**Request body**: `GtagConfig`

**Response**: `GtagConfig`

```typescript
const res = await tagmanager.gtag_config.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.gtag_config.list`

**GET** `tagmanager/v2/{+parent}/gtag_config`

Lists all Google tag configs in a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListGtagConfigResponse`

```typescript
const res = await tagmanager.gtag_config.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.gtag_config.get`

**GET** `tagmanager/v2/{+path}`

Gets a Google tag config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | Google tag config's API relative path. |

**Response**: `GtagConfig`

```typescript
const res = await tagmanager.gtag_config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.gtag_config.update`

**PUT** `tagmanager/v2/{+path}`

Updates a Google tag config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | Google tag config's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the config in storage. |

**Request body**: `GtagConfig`

**Response**: `GtagConfig`

```typescript
const res = await tagmanager.gtag_config.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.gtag_config.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a Google tag config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | Google tag config's API relative path. |

```typescript
const res = await tagmanager.gtag_config.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.templates.create`

**POST** `tagmanager/v2/{+parent}/templates`

Creates a GTM Custom Template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `CustomTemplate`

**Response**: `CustomTemplate`

```typescript
const res = await tagmanager.templates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.templates.import_from_gallery`

**POST** `tagmanager/v2/{+parent}/templates:import_from_gallery`

Imports a GTM Custom Template from Gallery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `acknowledgePermissions` | `boolean` | query | No | Must be set to true to allow Gallery template to be imported into the workspace. If this bit is false, the import ope... |
| `galleryOwner` | `string` | query | No | Owner of the Gallery template to import |
| `galleryRepository` | `string` | query | No | Repository of the Gallery template to import |
| `gallerySha` | `string` | query | No | SHA version of the Gallery template to import. Defaulted to the latest SHA version if not provided. |

**Response**: `CustomTemplate`

```typescript
const res = await tagmanager.templates.import_from_gallery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.templates.list`

**GET** `tagmanager/v2/{+parent}/templates`

Lists all GTM Templates of a GTM container workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListTemplatesResponse`

```typescript
const res = await tagmanager.templates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.templates.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Custom Template's API relative path. |

**Response**: `CustomTemplate`

```typescript
const res = await tagmanager.templates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.templates.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Custom Template's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the templates in storage. |

**Request body**: `CustomTemplate`

**Response**: `CustomTemplate`

```typescript
const res = await tagmanager.templates.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.templates.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Custom Template's API relative path. |

```typescript
const res = await tagmanager.templates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.templates.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Template in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Custom Template's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the template in storage. |

**Response**: `RevertTemplateResponse`

```typescript
const res = await tagmanager.templates.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.folders.create`

**POST** `tagmanager/v2/{+parent}/folders`

Creates a GTM Folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Folder`

**Response**: `Folder`

```typescript
const res = await tagmanager.folders.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.folders.list`

**GET** `tagmanager/v2/{+parent}/folders`

Lists all GTM Folders of a Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListFoldersResponse`

```typescript
const res = await tagmanager.folders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.folders.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |

**Response**: `Folder`

```typescript
const res = await tagmanager.folders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.folders.entities`

**POST** `tagmanager/v2/{+path}:entities`

List all entities in a GTM Folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `FolderEntities`

```typescript
const res = await tagmanager.folders.entities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.folders.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the folder in storage. |

**Request body**: `Folder`

**Response**: `Folder`

```typescript
const res = await tagmanager.folders.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.folders.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |

```typescript
const res = await tagmanager.folders.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.folders.move_entities_to_folder`

**POST** `tagmanager/v2/{+path}:move_entities_to_folder`

Moves entities to a GTM Folder. If {folder_id} in the request path equals 0, this will instead move entities out of the folder they currently belong to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |
| `tagId` | `string` | query | No | The tags to be moved to the folder. |
| `triggerId` | `string` | query | No | The triggers to be moved to the folder. |
| `variableId` | `string` | query | No | The variables to be moved to the folder. |

**Request body**: `Folder`

```typescript
const res = await tagmanager.folders.move_entities_to_folder({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.folders.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Folder in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Folder's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the tag in storage. |

**Response**: `RevertFolderResponse`

```typescript
const res = await tagmanager.folders.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.zones.create`

**POST** `tagmanager/v2/{+parent}/zones`

Creates a GTM Zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Zone`

**Response**: `Zone`

```typescript
const res = await tagmanager.zones.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.zones.list`

**GET** `tagmanager/v2/{+parent}/zones`

Lists all GTM Zones of a GTM container workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListZonesResponse`

```typescript
const res = await tagmanager.zones.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.zones.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Zone's API relative path. |

**Response**: `Zone`

```typescript
const res = await tagmanager.zones.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.zones.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Zone's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the zone in storage. |

**Request body**: `Zone`

**Response**: `Zone`

```typescript
const res = await tagmanager.zones.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.zones.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Zone's API relative path. |

```typescript
const res = await tagmanager.zones.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.zones.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Zone in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Zone's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the zone in storage. |

**Response**: `RevertZoneResponse`

```typescript
const res = await tagmanager.zones.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.clients.create`

**POST** `tagmanager/v2/{+parent}/clients`

Creates a GTM Client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await tagmanager.clients.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.clients.list`

**GET** `tagmanager/v2/{+parent}/clients`

Lists all GTM Clients of a GTM container workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListClientsResponse`

```typescript
const res = await tagmanager.clients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.clients.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Client's API relative path. |

**Response**: `Client`

```typescript
const res = await tagmanager.clients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.clients.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Client's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the client in storage. |

**Request body**: `Client`

**Response**: `Client`

```typescript
const res = await tagmanager.clients.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.clients.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Client's API relative path. |

```typescript
const res = await tagmanager.clients.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.clients.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Client in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Client's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the client in storage. |

**Response**: `RevertClientResponse`

```typescript
const res = await tagmanager.clients.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.transformations.create`

**POST** `tagmanager/v2/{+parent}/transformations`

Creates a GTM Transformation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |

**Request body**: `Transformation`

**Response**: `Transformation`

```typescript
const res = await tagmanager.transformations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.transformations.list`

**GET** `tagmanager/v2/{+parent}/transformations`

Lists all GTM Transformations of a GTM container workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Workspace's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListTransformationsResponse`

```typescript
const res = await tagmanager.transformations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.transformations.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Transformation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Transformation's API relative path. |

**Response**: `Transformation`

```typescript
const res = await tagmanager.transformations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.workspaces.transformations.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Transformation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Transformation's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the transformation in storage. |

**Request body**: `Transformation`

**Response**: `Transformation`

```typescript
const res = await tagmanager.transformations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.transformations.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Transformation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Transformation's API relative path. |

```typescript
const res = await tagmanager.transformations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.workspaces.transformations.revert`

**POST** `tagmanager/v2/{+path}:revert`

Reverts changes to a GTM Transformation in a GTM Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Transformation's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the transformation in storage. |

**Response**: `RevertTransformationResponse`

```typescript
const res = await tagmanager.transformations.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.versions.get`

**GET** `tagmanager/v2/{+path}`

Gets a Container Version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |
| `containerVersionId` | `string` | query | No | The GTM ContainerVersion ID. Specify published to retrieve the currently published version. |

**Response**: `ContainerVersion`

```typescript
const res = await tagmanager.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.versions.update`

**PUT** `tagmanager/v2/{+path}`

Updates a Container Version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the container version in storage. |

**Request body**: `ContainerVersion`

**Response**: `ContainerVersion`

```typescript
const res = await tagmanager.versions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`

---

### `tagmanager.accounts.containers.versions.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a Container Version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |

```typescript
const res = await tagmanager.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`

---

### `tagmanager.accounts.containers.versions.undelete`

**POST** `tagmanager/v2/{+path}:undelete`

Undeletes a Container Version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |

**Response**: `ContainerVersion`

```typescript
const res = await tagmanager.versions.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`

---

### `tagmanager.accounts.containers.versions.publish`

**POST** `tagmanager/v2/{+path}:publish`

Publishes a Container Version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the container version in storage. |

**Response**: `PublishContainerVersionResponse`

```typescript
const res = await tagmanager.versions.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.publish`

---

### `tagmanager.accounts.containers.versions.set_latest`

**POST** `tagmanager/v2/{+path}:set_latest`

Sets the latest version used for synchronization of workspaces when detecting conflicts and errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM ContainerVersion's API relative path. |

**Response**: `ContainerVersion`

```typescript
const res = await tagmanager.versions.set_latest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.versions.live`

**GET** `tagmanager/v2/{+parent}/versions:live`

Gets the live (i.e. published) container version

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Container's API relative path. |

**Response**: `ContainerVersion`

```typescript
const res = await tagmanager.versions.live({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.version_headers.list`

**GET** `tagmanager/v2/{+parent}/version_headers`

Lists all Container Versions of a GTM Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Container's API relative path. |
| `includeDeleted` | `boolean` | query | No | Also retrieve deleted (archived) versions when true. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListContainerVersionsResponse`

```typescript
const res = await tagmanager.version_headers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.edit.containerversions`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.version_headers.latest`

**GET** `tagmanager/v2/{+parent}/version_headers:latest`

Gets the latest container version header

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Container's API relative path. |

**Response**: `ContainerVersionHeader`

```typescript
const res = await tagmanager.version_headers.latest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.environments.create`

**POST** `tagmanager/v2/{+parent}/environments`

Creates a GTM Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Container's API relative path. |

**Request body**: `Environment`

**Response**: `Environment`

```typescript
const res = await tagmanager.environments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.environments.list`

**GET** `tagmanager/v2/{+parent}/environments`

Lists all GTM Environments of a GTM Container.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | GTM Container's API relative path. |
| `pageToken` | `string` | query | No | Continuation token for fetching the next page of results. |

**Response**: `ListEnvironmentsResponse`

```typescript
const res = await tagmanager.environments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.environments.get`

**GET** `tagmanager/v2/{+path}`

Gets a GTM Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Environment's API relative path. |

**Response**: `Environment`

```typescript
const res = await tagmanager.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`
- `https://www.googleapis.com/auth/tagmanager.readonly`

---

### `tagmanager.accounts.containers.environments.update`

**PUT** `tagmanager/v2/{+path}`

Updates a GTM Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Environment's API relative path. |
| `fingerprint` | `string` | query | No | When provided, this fingerprint must match the fingerprint of the environment in storage. |

**Request body**: `Environment`

**Response**: `Environment`

```typescript
const res = await tagmanager.environments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.environments.delete`

**DELETE** `tagmanager/v2/{+path}`

Deletes a GTM Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Environment's API relative path. |

```typescript
const res = await tagmanager.environments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.edit.containers`

---

### `tagmanager.accounts.containers.environments.reauthorize`

**POST** `tagmanager/v2/{+path}:reauthorize`

Re-generates the authorization code for a GTM Environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `path` | `string` | path | Yes | GTM Environment's API relative path. |

**Request body**: `Environment`

**Response**: `Environment`

```typescript
const res = await tagmanager.environments.reauthorize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/tagmanager.publish`

---

## Schemas

### `Account`

Represents a Google Tag Manager Account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The Account ID uniquely identifies the GTM Account. |
| `features` | `AccountFeatures` | Read-only Account feature set |
| `fingerprint` | `string` | The fingerprint of the GTM Account as computed at storage time. This value is recomputed whenever... |
| `name` | `string` | Account display name. |
| `path` | `string` | GTM Account's API relative path. |
| `shareData` | `boolean` | Whether the account shares data anonymously with Google and others. This flag enables benchmarkin... |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |

### `AccountAccess`

Defines the Google Tag Manager Account access permissions.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `string` | Whether the user has no access, user access, or admin access to an account. |

### `AccountFeatures`

| Property | Type | Description |
|----------|------|-------------|
| `supportMultipleContainers` | `boolean` | Whether this Account supports multiple Containers. |
| `supportUserPermissions` | `boolean` | Whether this Account supports user permissions managed by GTM. |

### `BuiltInVariable`

Built-in variables are a special category of variables that are pre-created and non-customizable. They provide common functionality like accessing properties of the gtm data layer, monitoring clicks, or accessing elements of a page URL.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `name` | `string` | Name of the built-in variable to be used to refer to the built-in variable. |
| `path` | `string` | GTM BuiltInVariable's API relative path. |
| `type` | `string` | Type of built-in variable. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `BulkUpdateWorkspaceResponse`

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<Entity>` | The entities that were added or updated during the bulk-update. Does not include entities that we... |

### `Client`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `clientId` | `string` | The Client ID uniquely identifies the GTM client. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Client as computed at storage time. This value is recomputed whenever ... |
| `name` | `string` | Client display name. |
| `notes` | `string` | User notes on how to apply this tag in the container. |
| `parameter` | `array<Parameter>` | The client's parameters. |
| `parentFolderId` | `string` | Parent folder id. |
| `path` | `string` | GTM client's API relative path. |
| `priority` | `integer` | Priority determines relative firing order. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `type` | `string` | Client type. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `Condition`

Represents a predicate.

| Property | Type | Description |
|----------|------|-------------|
| `parameter` | `array<Parameter>` | A list of named parameters (key/value), depending on the condition's type. Notes: - For binary op... |
| `type` | `string` | The type of operator for this condition. |

### `Container`

Represents a Google Tag Manager Container, which specifies the platform tags will run on, manages workspaces, and retains container versions.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | The Container ID uniquely identifies the GTM Container. |
| `domainName` | `array<string>` | List of domain names associated with the Container. |
| `features` | `ContainerFeatures` | Read-only Container feature set. |
| `fingerprint` | `string` | The fingerprint of the GTM Container as computed at storage time. This value is recomputed whenev... |
| `name` | `string` | Container display name. |
| `notes` | `string` | Container Notes. |
| `path` | `string` | GTM Container's API relative path. |
| `publicId` | `string` | Container Public ID. |
| `tagIds` | `array<string>` | All Tag IDs that refer to this Container. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `taggingServerUrls` | `array<string>` | List of server-side container URLs for the Container. If multiple URLs are provided, all URL path... |
| `usageContext` | `array<string>` | List of Usage Contexts for the Container. Valid values include: web, android, or ios. |

### `ContainerAccess`

Defines the Google Tag Manager Container access permissions.

| Property | Type | Description |
|----------|------|-------------|
| `containerId` | `string` | GTM Container ID. |
| `permission` | `string` | List of Container permissions. |

### `ContainerFeatures`

| Property | Type | Description |
|----------|------|-------------|
| `supportBuiltInVariables` | `boolean` | Whether this Container supports built-in variables |
| `supportClients` | `boolean` | Whether this Container supports clients. |
| `supportEnvironments` | `boolean` | Whether this Container supports environments. |
| `supportFolders` | `boolean` | Whether this Container supports folders. |
| `supportGtagConfigs` | `boolean` | Whether this Container supports Google tag config. |
| `supportTags` | `boolean` | Whether this Container supports tags. |
| `supportTemplates` | `boolean` | Whether this Container supports templates. |
| `supportTransformations` | `boolean` | Whether this Container supports transformations. |
| `supportTriggers` | `boolean` | Whether this Container supports triggers. |
| `supportUserPermissions` | `boolean` | Whether this Container supports user permissions managed by GTM. |
| `supportVariables` | `boolean` | Whether this Container supports variables. |
| `supportVersions` | `boolean` | Whether this Container supports Container versions. |
| `supportWorkspaces` | `boolean` | Whether this Container supports workspaces. |
| `supportZones` | `boolean` | Whether this Container supports zones. |

### `ContainerVersion`

Represents a Google Tag Manager Container Version.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `builtInVariable` | `array<BuiltInVariable>` | The built-in variables in the container that this version was taken from. |
| `client` | `array<Client>` | The clients in the container that this version was taken from. |
| `container` | `Container` | The container that this version was taken from. |
| `containerId` | `string` | GTM Container ID. |
| `containerVersionId` | `string` | The Container Version ID uniquely identifies the GTM Container Version. |
| `customTemplate` | `array<CustomTemplate>` | The custom templates in the container that this version was taken from. |
| `deleted` | `boolean` | A value of true indicates this container version has been deleted. |
| `description` | `string` | Container version description. |
| `fingerprint` | `string` | The fingerprint of the GTM Container Version as computed at storage time. This value is recompute... |
| `folder` | `array<Folder>` | The folders in the container that this version was taken from. |
| `gtagConfig` | `array<GtagConfig>` | The Google tag configs in the container that this version was taken from. |
| `name` | `string` | Container version display name. |
| `path` | `string` | GTM Container Version's API relative path. |
| `tag` | `array<Tag>` | The tags in the container that this version was taken from. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `transformation` | `array<Transformation>` | The transformations in the container that this version was taken from. |
| `trigger` | `array<Trigger>` | The triggers in the container that this version was taken from. |
| `variable` | `array<Variable>` | The variables in the container that this version was taken from. |
| `zone` | `array<Zone>` | The zones in the container that this version was taken from. |

### `ContainerVersionHeader`

Represents a Google Tag Manager Container Version Header.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `containerVersionId` | `string` | The Container Version ID uniquely identifies the GTM Container Version. |
| `deleted` | `boolean` | A value of true indicates this container version has been deleted. |
| `name` | `string` | Container version display name. |
| `numClients` | `string` | Number of clients in the container version. |
| `numCustomTemplates` | `string` | Number of custom templates in the container version. |
| `numGtagConfigs` | `string` | Number of Google tag configs in the container version. |
| `numTags` | `string` | Number of tags in the container version. |
| `numTransformations` | `string` | Number of transformations in the container version. |
| `numTriggers` | `string` | Number of triggers in the container version. |
| `numVariables` | `string` | Number of variables in the container version. |
| `numZones` | `string` | Number of zones in the container version. |
| `path` | `string` | GTM Container Version's API relative path. |

### `CreateBuiltInVariableResponse`

| Property | Type | Description |
|----------|------|-------------|
| `builtInVariable` | `array<BuiltInVariable>` | List of created built-in variables. |

### `CreateContainerVersionRequestVersionOptions`

Options for new container versions.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the container version to be created. |
| `notes` | `string` | The notes of the container version to be created. |

### `CreateContainerVersionResponse`

Create container versions response.

| Property | Type | Description |
|----------|------|-------------|
| `compilerError` | `boolean` | Compiler errors or not. |
| `containerVersion` | `ContainerVersion` | The container version created. |
| `newWorkspacePath` | `string` | Auto generated workspace path created as a result of version creation. This field should only be ... |
| `syncStatus` | `SyncStatus` | Whether version creation failed when syncing the workspace to the latest container version. |

### `CustomTemplate`

Represents a Google Tag Manager Custom Template's contents.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Custom Template as computed at storage time. This value is recomputed ... |
| `galleryReference` | `GalleryReference` | A reference to the Community Template Gallery entry. |
| `name` | `string` | Custom Template display name. |
| `path` | `string` | GTM Custom Template's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `templateData` | `string` | The custom template in text format. |
| `templateId` | `string` | The Custom Template ID uniquely identifies the GTM custom template. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `Destination`

Represents a Google Tag Destination.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `destinationId` | `string` | Destination ID. |
| `destinationLinkId` | `string` | The Destination link ID uniquely identifies the Destination. |
| `fingerprint` | `string` | The fingerprint of the Google Tag Destination as computed at storage time. This value is recomput... |
| `name` | `string` | Destination display name. |
| `path` | `string` | Destination's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI. |

### `Entity`

A workspace entity that may represent a tag, trigger, variable, or folder in addition to its status in the workspace.

| Property | Type | Description |
|----------|------|-------------|
| `builtInVariable` | `BuiltInVariable` | The built in variable being represented by the entity. |
| `changeStatus` | `string` | Represents how the entity has been changed in the workspace. |
| `client` | `Client` | The client being represented by the entity. |
| `customTemplate` | `CustomTemplate` | The custom template being represented by the entity. |
| `folder` | `Folder` | The folder being represented by the entity. |
| `gtagConfig` | `GtagConfig` | The gtag config being represented by the entity. |
| `tag` | `Tag` | The tag being represented by the entity. |
| `transformation` | `Transformation` | The transformation being represented by the entity. |
| `trigger` | `Trigger` | The trigger being represented by the entity. |
| `variable` | `Variable` | The variable being represented by the entity. |
| `zone` | `Zone` | The zone being represented by the entity. |

### `Environment`

Represents a Google Tag Manager Environment. Note that a user can create, delete and update environments of type USER, but can only update the enable_debug and url fields of environments of other types.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `authorizationCode` | `string` | The environment authorization code. |
| `authorizationTimestamp` | `string` | The last update time-stamp for the authorization code. |
| `containerId` | `string` | GTM Container ID. |
| `containerVersionId` | `string` | Represents a link to a container version. |
| `description` | `string` | The environment description. Can be set or changed only on USER type environments. |
| `enableDebug` | `boolean` | Whether or not to enable debug by default for the environment. |
| `environmentId` | `string` | GTM Environment ID uniquely identifies the GTM Environment. |
| `fingerprint` | `string` | The fingerprint of the GTM environment as computed at storage time. This value is recomputed when... |
| `name` | `string` | The environment display name. Can be set or changed only on USER type environments. |
| `path` | `string` | GTM Environment's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `type` | `string` | The type of this environment. |
| `url` | `string` | Default preview page url for the environment. |
| `workspaceId` | `string` | Represents a link to a quick preview of a workspace. |

### `Folder`

Represents a Google Tag Manager Folder.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Folder as computed at storage time. This value is recomputed whenever ... |
| `folderId` | `string` | The Folder ID uniquely identifies the GTM Folder. |
| `name` | `string` | Folder display name. |
| `notes` | `string` | User notes on how to apply this folder in the container. |
| `path` | `string` | GTM Folder's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `workspaceId` | `string` | GTM Workspace ID. |

### `FolderEntities`

Represents a Google Tag Manager Folder's contents.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `tag` | `array<Tag>` | The list of tags inside the folder. |
| `trigger` | `array<Trigger>` | The list of triggers inside the folder. |
| `variable` | `array<Variable>` | The list of variables inside the folder. |

### `GalleryReference`

Represents the link between a custom template and an entry on the Community Template Gallery site.

| Property | Type | Description |
|----------|------|-------------|
| `galleryTemplateId` | `string` | ID for the gallery template that is generated once during first sync and travels with the templat... |
| `host` | `string` | The name of the host for the community gallery template. |
| `isModified` | `boolean` | If a user has manually edited the community gallery template. |
| `owner` | `string` | The name of the owner for the community gallery template. |
| `repository` | `string` | The name of the repository for the community gallery template. |
| `signature` | `string` | The signature of the community gallery template as computed at import time. This value is recompu... |
| `templateDeveloperId` | `string` | The developer id of the community gallery template. This value is set whenever the template is cr... |
| `version` | `string` | The version of the community gallery template. |

### `GetContainerSnippetResponse`

| Property | Type | Description |
|----------|------|-------------|
| `containerConfig` | `string` | Server container config param for manually provisioning a tagging server. |
| `snippet` | `string` | Tagging snippet for a Container. |

### `GetWorkspaceStatusResponse`

The changes that have occurred in the workspace since the base container version.

| Property | Type | Description |
|----------|------|-------------|
| `mergeConflict` | `array<MergeConflict>` | The merge conflict after sync. |
| `workspaceChange` | `array<Entity>` | Entities that have been changed in the workspace. |

### `GtagConfig`

Represents a Google tag configuration.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Google tag account ID. |
| `containerId` | `string` | Google tag container ID. |
| `fingerprint` | `string` | The fingerprint of the Google tag config as computed at storage time. This value is recomputed wh... |
| `gtagConfigId` | `string` | The ID uniquely identifies the Google tag config. |
| `parameter` | `array<Parameter>` | The Google tag config's parameters. |
| `path` | `string` | Google tag config's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `type` | `string` | Google tag config type. |
| `workspaceId` | `string` | Google tag workspace ID. Only used by GTM containers. Set to 0 otherwise. |

### `ListAccountsResponse`

List Accounts Response.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `array<Account>` | List of GTM Accounts that a user has access to. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListClientsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `client` | `array<Client>` | All GTM Clients of a GTM Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListContainerVersionsResponse`

List container versions response.

| Property | Type | Description |
|----------|------|-------------|
| `containerVersionHeader` | `array<ContainerVersionHeader>` | All container version headers of a GTM Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListContainersResponse`

List Containers Response.

| Property | Type | Description |
|----------|------|-------------|
| `container` | `array<Container>` | All Containers of a GTM Account. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListDestinationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `array<Destination>` | All Destinations linked to a GTM Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListEnabledBuiltInVariablesResponse`

A list of enabled built-in variables.

| Property | Type | Description |
|----------|------|-------------|
| `builtInVariable` | `array<BuiltInVariable>` | All GTM BuiltInVariables of a GTM container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListEnvironmentsResponse`

List Environments Response.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `array<Environment>` | All Environments of a GTM Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListFoldersResponse`

List Folders Response.

| Property | Type | Description |
|----------|------|-------------|
| `folder` | `array<Folder>` | All GTM Folders of a GTM Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListGtagConfigResponse`

| Property | Type | Description |
|----------|------|-------------|
| `gtagConfig` | `array<GtagConfig>` | All Google tag configs in a Container. |
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |

### `ListTagsResponse`

List Tags Response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `tag` | `array<Tag>` | All GTM Tags of a GTM Container. |

### `ListTemplatesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `template` | `array<CustomTemplate>` | All GTM Custom Templates of a GTM Container. |

### `ListTransformationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `transformation` | `array<Transformation>` | All GTM Transformations of a GTM Container. |

### `ListTriggersResponse`

List triggers response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `trigger` | `array<Trigger>` | All GTM Triggers of a GTM Container. |

### `ListUserPermissionsResponse`

List user permissions response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `userPermission` | `array<UserPermission>` | All GTM UserPermissions of a GTM Account. |

### `ListVariablesResponse`

List Variables Response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `variable` | `array<Variable>` | All GTM Variables of a GTM Container. |

### `ListWorkspacesResponse`

A list of workspaces in a container.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `workspace` | `array<Workspace>` | All Workspaces of a GTM Container. |

### `ListZonesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token for fetching the next page of results. |
| `zone` | `array<Zone>` | All GTM Zones of a GTM Container. |

### `MergeConflict`

Represents a merge conflict.

| Property | Type | Description |
|----------|------|-------------|
| `entityInBaseVersion` | `Entity` | The base version entity (since the latest sync operation) that has conflicting changes compared t... |
| `entityInWorkspace` | `Entity` | The workspace entity that has conflicting changes compared to the base version. If an entity is d... |

### `Parameter`

Represents a Google Tag Manager Parameter.

| Property | Type | Description |
|----------|------|-------------|
| `isWeakReference` | `boolean` | Whether or not a reference type parameter is strongly or weakly referenced. Only used by Transfor... |
| `key` | `string` | The named key that uniquely identifies a parameter. Required for top-level parameters, as well as... |
| `list` | `array<Parameter>` | This list parameter's parameters (keys will be ignored). |
| `map` | `array<Parameter>` | This map parameter's parameters (must have keys; keys must be unique). |
| `type` | `string` | The parameter type. Valid values are: - boolean: The value represents a boolean, represented as '... |
| `value` | `string` | A parameter's value (may contain variable references). as appropriate to the specified type. |

### `ProposedChange`

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<Entity>` | The list of workspace changes to be applied. |

### `PublishContainerVersionResponse`

Publish container version response.

| Property | Type | Description |
|----------|------|-------------|
| `compilerError` | `boolean` | Compiler errors or not. |
| `containerVersion` | `ContainerVersion` | The container version created. |

### `QuickPreviewResponse`

Response to quick previewing a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `compilerError` | `boolean` | Were there compiler errors or not. |
| `containerVersion` | `ContainerVersion` | The quick previewed container version. |
| `syncStatus` | `SyncStatus` | Whether quick previewing failed when syncing the workspace to the latest container version. |

### `RevertBuiltInVariableResponse`

The result of reverting a built-in variable in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the built-in variable is enabled after reversion. |

### `RevertClientResponse`

The result of reverting a client in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `client` | `Client` | Client as it appears in the latest container version since the last workspace synchronization ope... |

### `RevertFolderResponse`

The result of reverting folder changes in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `folder` | `Folder` | Folder as it appears in the latest container version since the last workspace synchronization ope... |

### `RevertTagResponse`

The result of reverting a tag in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `Tag` | Tag as it appears in the latest container version since the last workspace synchronization operat... |

### `RevertTemplateResponse`

The result of reverting a template in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `template` | `CustomTemplate` | Template as it appears in the latest container version since the last workspace synchronization o... |

### `RevertTransformationResponse`

The result of reverting a transformation in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `transformation` | `Transformation` | Transformation as it appears in the latest container version since the last workspace synchroniza... |

### `RevertTriggerResponse`

The result of reverting a trigger in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `trigger` | `Trigger` | Trigger as it appears in the latest container version since the last workspace synchronization op... |

### `RevertVariableResponse`

The result of reverting a variable in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `variable` | `Variable` | Variable as it appears in the latest container version since the last workspace synchronization o... |

### `RevertZoneResponse`

The result of reverting a zone in a workspace.

| Property | Type | Description |
|----------|------|-------------|
| `zone` | `Zone` | Zone as it appears in the latest container version since the last workspace synchronization opera... |

### `SetupTag`

Represents a reference to atag that fires before another tag in order to set up dependencies.

| Property | Type | Description |
|----------|------|-------------|
| `stopOnSetupFailure` | `boolean` | If true, fire the main tag if and only if the setup tag fires successfully. If false, fire the ma... |
| `tagName` | `string` | The name of the setup tag. |

### `SyncStatus`

The status of a workspace after synchronization.

| Property | Type | Description |
|----------|------|-------------|
| `mergeConflict` | `boolean` | Synchornization operation detected a merge conflict. |
| `syncError` | `boolean` | An error occurred during the synchronization operation. |

### `SyncWorkspaceResponse`

A response after synchronizing the workspace to the latest container version.

| Property | Type | Description |
|----------|------|-------------|
| `mergeConflict` | `array<MergeConflict>` | The merge conflict after sync. If this field is not empty, the sync is still treated as successfu... |
| `syncStatus` | `SyncStatus` | Indicates whether synchronization caused a merge conflict or sync error. |

### `Tag`

Represents a Google Tag Manager Tag.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `blockingTriggerId` | `array<string>` | Blocking trigger IDs. If any of the listed triggers evaluate to true, the tag will not fire. |
| `consentSettings` | `TagConsentSetting` | Consent settings of a tag. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Tag as computed at storage time. This value is recomputed whenever the... |
| `firingTriggerId` | `array<string>` | Firing trigger IDs. A tag will fire when any of the listed triggers are true and all of its block... |
| `liveOnly` | `boolean` | If set to true, this tag will only fire in the live environment (e.g. not in preview or debug mode). |
| `monitoringMetadata` | `Parameter` | A map of key-value pairs of tag metadata to be included in the event data for tag monitoring. Not... |
| `monitoringMetadataTagNameKey` | `string` | If non-empty, then the tag display name will be included in the monitoring metadata map using the... |
| `name` | `string` | Tag display name. |
| `notes` | `string` | User notes on how to apply this tag in the container. |
| `parameter` | `array<Parameter>` | The tag's parameters. |
| `parentFolderId` | `string` | Parent folder id. |
| `path` | `string` | GTM Tag's API relative path. |
| `paused` | `boolean` | Indicates whether the tag is paused, which prevents the tag from firing. |
| `priority` | `Parameter` | User defined numeric priority of the tag. Tags are fired asynchronously in order of priority. Tag... |
| `scheduleEndMs` | `string` | The end timestamp in milliseconds to schedule a tag. |
| `scheduleStartMs` | `string` | The start timestamp in milliseconds to schedule a tag. |
| `setupTag` | `array<SetupTag>` | The list of setup tags. Currently we only allow one. |
| `tagFiringOption` | `string` | Option to fire this tag. |
| `tagId` | `string` | The Tag ID uniquely identifies the GTM Tag. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `teardownTag` | `array<TeardownTag>` | The list of teardown tags. Currently we only allow one. |
| `type` | `string` | GTM Tag Type. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `TagConsentSetting`

| Property | Type | Description |
|----------|------|-------------|
| `consentStatus` | `string` | The tag's consent status. If set to NEEDED, the runtime will check that the consent types specifi... |
| `consentType` | `Parameter` | The type of consents to check for during tag firing if in the consent NEEDED state. This paramete... |

### `TeardownTag`

Represents a tag that fires after another tag in order to tear down dependencies.

| Property | Type | Description |
|----------|------|-------------|
| `stopTeardownOnFailure` | `boolean` | If true, fire the teardown tag if and only if the main tag fires successfully. If false, fire the... |
| `tagName` | `string` | The name of the teardown tag. |

### `Transformation`

Represents a Google Tag Manager Transformation.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Transformation as computed at storage time. This value is recomputed w... |
| `name` | `string` | Transformation display name. |
| `notes` | `string` | User notes on how to apply this transformation in the container. |
| `parameter` | `array<Parameter>` | The transformation's parameters. |
| `parentFolderId` | `string` | Parent folder id. |
| `path` | `string` | GTM transformation's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `transformationId` | `string` | The Transformation ID uniquely identifies the GTM transformation. |
| `type` | `string` | Transformation type. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `Trigger`

Represents a Google Tag Manager Trigger

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `autoEventFilter` | `array<Condition>` | Used in the case of auto event tracking. |
| `checkValidation` | `Parameter` | Whether or not we should only fire tags if the form submit or link click event is not cancelled b... |
| `containerId` | `string` | GTM Container ID. |
| `continuousTimeMinMilliseconds` | `Parameter` | A visibility trigger minimum continuous visible time (in milliseconds). Only valid for AMP Visibi... |
| `customEventFilter` | `array<Condition>` | Used in the case of custom event, which is fired iff all Conditions are true. |
| `eventName` | `Parameter` | Name of the GTM event that is fired. Only valid for Timer triggers. |
| `filter` | `array<Condition>` | The trigger will only fire iff all Conditions are true. |
| `fingerprint` | `string` | The fingerprint of the GTM Trigger as computed at storage time. This value is recomputed whenever... |
| `horizontalScrollPercentageList` | `Parameter` | List of integer percentage values for scroll triggers. The trigger will fire when each percentage... |
| `interval` | `Parameter` | Time between triggering recurring Timer Events (in milliseconds). Only valid for Timer triggers. |
| `intervalSeconds` | `Parameter` | Time between Timer Events to fire (in seconds). Only valid for AMP Timer trigger. |
| `limit` | `Parameter` | Limit of the number of GTM events this Timer Trigger will fire. If no limit is set, we will conti... |
| `maxTimerLengthSeconds` | `Parameter` | Max time to fire Timer Events (in seconds). Only valid for AMP Timer trigger. |
| `name` | `string` | Trigger display name. |
| `notes` | `string` | User notes on how to apply this trigger in the container. |
| `parameter` | `array<Parameter>` | Additional parameters. |
| `parentFolderId` | `string` | Parent folder id. |
| `path` | `string` | GTM Trigger's API relative path. |
| `selector` | `Parameter` | A click trigger CSS selector (i.e. "a", "button" etc.). Only valid for AMP Click trigger. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `totalTimeMinMilliseconds` | `Parameter` | A visibility trigger minimum total visible time (in milliseconds). Only valid for AMP Visibility ... |
| `triggerId` | `string` | The Trigger ID uniquely identifies the GTM Trigger. |
| `type` | `string` | Defines the data layer event that causes this trigger. |
| `uniqueTriggerId` | `Parameter` | Globally unique id of the trigger that auto-generates this (a Form Submit, Link Click or Timer li... |
| `verticalScrollPercentageList` | `Parameter` | List of integer percentage values for scroll triggers. The trigger will fire when each percentage... |
| `visibilitySelector` | `Parameter` | A visibility trigger CSS selector (i.e. "#id"). Only valid for AMP Visibility trigger. |
| `visiblePercentageMax` | `Parameter` | A visibility trigger maximum percent visibility. Only valid for AMP Visibility trigger. |
| `visiblePercentageMin` | `Parameter` | A visibility trigger minimum percent visibility. Only valid for AMP Visibility trigger. |
| `waitForTags` | `Parameter` | Whether or not we should delay the form submissions or link opening until all of the tags have fi... |
| `waitForTagsTimeout` | `Parameter` | How long to wait (in milliseconds) for tags to fire when 'waits_for_tags' above evaluates to true... |
| `workspaceId` | `string` | GTM Workspace ID. |

### `UserPermission`

Represents a user's permissions to an account and its container.

| Property | Type | Description |
|----------|------|-------------|
| `accountAccess` | `AccountAccess` | GTM Account access permissions. |
| `accountId` | `string` | The Account ID uniquely identifies the GTM Account. |
| `containerAccess` | `array<ContainerAccess>` | GTM Container access permissions. |
| `emailAddress` | `string` | User's email address. |
| `path` | `string` | GTM UserPermission's API relative path. |

### `Variable`

Represents a Google Tag Manager Variable.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `disablingTriggerId` | `array<string>` | For mobile containers only: A list of trigger IDs for disabling conditional variables; the variab... |
| `enablingTriggerId` | `array<string>` | For mobile containers only: A list of trigger IDs for enabling conditional variables; the variabl... |
| `fingerprint` | `string` | The fingerprint of the GTM Variable as computed at storage time. This value is recomputed wheneve... |
| `formatValue` | `VariableFormatValue` | Option to convert a variable value to other value. |
| `name` | `string` | Variable display name. |
| `notes` | `string` | User notes on how to apply this variable in the container. |
| `parameter` | `array<Parameter>` | The variable's parameters. |
| `parentFolderId` | `string` | Parent folder id. |
| `path` | `string` | GTM Variable's API relative path. |
| `scheduleEndMs` | `string` | The end timestamp in milliseconds to schedule a variable. |
| `scheduleStartMs` | `string` | The start timestamp in milliseconds to schedule a variable. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `type` | `string` | GTM Variable Type. |
| `variableId` | `string` | The Variable ID uniquely identifies the GTM Variable. |
| `workspaceId` | `string` | GTM Workspace ID. |

### `VariableFormatValue`

| Property | Type | Description |
|----------|------|-------------|
| `caseConversionType` | `string` | The option to convert a string-type variable value to either lowercase or uppercase. |
| `convertFalseToValue` | `Parameter` | The value to convert if a variable value is false. |
| `convertNullToValue` | `Parameter` | The value to convert if a variable value is null. |
| `convertTrueToValue` | `Parameter` | The value to convert if a variable value is true. |
| `convertUndefinedToValue` | `Parameter` | The value to convert if a variable value is undefined. |

### `Workspace`

Represents a Google Tag Manager Container Workspace.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `containerId` | `string` | GTM Container ID. |
| `description` | `string` | Workspace description. |
| `fingerprint` | `string` | The fingerprint of the GTM Workspace as computed at storage time. This value is recomputed whenev... |
| `name` | `string` | Workspace display name. |
| `path` | `string` | GTM Workspace's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `workspaceId` | `string` | The Workspace ID uniquely identifies the GTM Workspace. |

### `Zone`

Represents a Google Tag Manager Zone's contents.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | GTM Account ID. |
| `boundary` | `ZoneBoundary` | This Zone's boundary. |
| `childContainer` | `array<ZoneChildContainer>` | Containers that are children of this Zone. |
| `containerId` | `string` | GTM Container ID. |
| `fingerprint` | `string` | The fingerprint of the GTM Zone as computed at storage time. This value is recomputed whenever th... |
| `name` | `string` | Zone display name. |
| `notes` | `string` | User notes on how to apply this zone in the container. |
| `path` | `string` | GTM Zone's API relative path. |
| `tagManagerUrl` | `string` | Auto generated link to the tag manager UI |
| `typeRestriction` | `ZoneTypeRestriction` | This Zone's type restrictions. |
| `workspaceId` | `string` | GTM Workspace ID. |
| `zoneId` | `string` | The Zone ID uniquely identifies the GTM Zone. |

### `ZoneBoundary`

Represents a Zone's boundaries.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `array<Condition>` | The conditions that, when conjoined, make up the boundary. |
| `customEvaluationTriggerId` | `array<string>` | Custom evaluation trigger IDs. A zone will evaluate its boundary conditions when any of the liste... |

### `ZoneChildContainer`

Represents a child container of a Zone.

| Property | Type | Description |
|----------|------|-------------|
| `nickname` | `string` | The zone's nickname for the child container. |
| `publicId` | `string` | The child container's public id. |

### `ZoneTypeRestriction`

Represents a Zone's type restrictions.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | True if type restrictions have been enabled for this Zone. |
| `whitelistedTypeId` | `array<string>` | List of type public ids that have been whitelisted for use in this Zone. |

