# Cloud Resource Manager API - API Reference

**Version**: `v3` | **Methods**: 62 | **Schemas**: 65

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudresourcemanager.effectiveTags.list` | GET | `v3/effectiveTags` | Return a list of effective tags for the given Google Cloud resource, as specified in `parent`. |
| `cloudresourcemanager.tagKeys.setIamPolicy` | POST | `v3/{+resource}:setIamPolicy` | Sets the access control policy on a TagKey, replacing any existing policy. The `resource` field s... |
| `cloudresourcemanager.tagKeys.patch` | PATCH | `v3/{+name}` | Updates the attributes of the TagKey resource. |
| `cloudresourcemanager.tagKeys.getNamespaced` | GET | `v3/tagKeys/namespaced` | Retrieves a TagKey by its namespaced name. This method will return `PERMISSION_DENIED` if the key... |
| `cloudresourcemanager.tagKeys.create` | POST | `v3/tagKeys` | Creates a new TagKey. If another request with the same parameters is sent while the original requ... |
| `cloudresourcemanager.tagKeys.get` | GET | `v3/{+name}` | Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key does not exist or the ... |
| `cloudresourcemanager.tagKeys.getIamPolicy` | POST | `v3/{+resource}:getIamPolicy` | Gets the access control policy for a TagKey. The returned policy may be empty if no such policy o... |
| `cloudresourcemanager.tagKeys.delete` | DELETE | `v3/{+name}` | Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues. |
| `cloudresourcemanager.tagKeys.testIamPermissions` | POST | `v3/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified TagKey. The `resource` field should be the... |
| `cloudresourcemanager.tagKeys.list` | GET | `v3/tagKeys` | Lists all TagKeys for a parent resource. |
| `cloudresourcemanager.locations.effectiveTagBindingCollections.get` | GET | `v3/{+name}` | Returns effective tag bindings on a GCP resource. |
| `cloudresourcemanager.locations.tagBindingCollections.get` | GET | `v3/{+name}` | Returns tag bindings directly attached to a GCP resource. |
| `cloudresourcemanager.locations.tagBindingCollections.patch` | PATCH | `v3/{+name}` | Updates tag bindings directly attached to a GCP resource. Update_mask can be kept empty or "*". |
| `cloudresourcemanager.tagBindings.delete` | DELETE | `v3/{+name}` | Deletes a TagBinding. |
| `cloudresourcemanager.tagBindings.list` | GET | `v3/tagBindings` | Lists the TagBindings for the given Google Cloud resource, as specified with `parent`. NOTE: The ... |
| `cloudresourcemanager.tagBindings.create` | POST | `v3/tagBindings` | Creates a TagBinding between a TagValue and a Google Cloud resource. |
| `cloudresourcemanager.folders.delete` | DELETE | `v3/{+name}` | Requests deletion of a folder. The folder is moved into the DELETE_REQUESTED state immediately, a... |
| `cloudresourcemanager.folders.search` | GET | `v3/folders:search` | Search for folders that match specific filter criteria. `search()` provides an eventually consist... |
| `cloudresourcemanager.folders.setIamPolicy` | POST | `v3/{+resource}:setIamPolicy` | Sets the access control policy on a folder, replacing any existing policy. The `resource` field s... |
| `cloudresourcemanager.folders.getIamPolicy` | POST | `v3/{+resource}:getIamPolicy` | Gets the access control policy for a folder. The returned policy may be empty if no such policy o... |
| `cloudresourcemanager.folders.patch` | PATCH | `v3/{+name}` | Updates a folder, changing its `display_name`. Changes to the folder `display_name` will be rejec... |
| `cloudresourcemanager.folders.get` | GET | `v3/{+name}` | Retrieves a folder identified by the supplied resource name. Valid folder resource names have the... |
| `cloudresourcemanager.folders.list` | GET | `v3/folders` | Lists the folders that are direct descendants of supplied parent resource. `list()` provides a st... |
| `cloudresourcemanager.folders.testIamPermissions` | POST | `v3/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified folder. The `resource` field should be the... |
| `cloudresourcemanager.folders.move` | POST | `v3/{+name}:move` | Moves a folder under a new resource parent. Returns an `Operation` which can be used to track the... |
| `cloudresourcemanager.folders.create` | POST | `v3/folders` | Creates a folder in the resource hierarchy. Returns an `Operation` which can be used to track the... |
| `cloudresourcemanager.folders.undelete` | POST | `v3/{+name}:undelete` | Cancels the deletion request for a folder. This method may be called on a folder in any state. If... |
| `cloudresourcemanager.folders.capabilities.patch` | PATCH | `v3/{+name}` | Updates the Capability. |
| `cloudresourcemanager.folders.capabilities.get` | GET | `v3/{+name}` | Retrieves the Capability identified by the supplied resource name. |
| `cloudresourcemanager.organizations.testIamPermissions` | POST | `v3/{+resource}:testIamPermissions` | Returns the permissions that a caller has on the specified organization. The `resource` field sho... |
| `cloudresourcemanager.organizations.search` | GET | `v3/organizations:search` | Searches organization resources that are visible to the user and satisfy the specified filter. Th... |
| `cloudresourcemanager.organizations.getIamPolicy` | POST | `v3/{+resource}:getIamPolicy` | Gets the access control policy for an organization resource. The policy may be empty if no such p... |
| `cloudresourcemanager.organizations.setIamPolicy` | POST | `v3/{+resource}:setIamPolicy` | Sets the access control policy on an organization resource. Replaces any existing policy. The `re... |
| `cloudresourcemanager.organizations.get` | GET | `v3/{+name}` | Fetches an organization resource identified by the specified resource name. |
| `cloudresourcemanager.liens.delete` | DELETE | `v3/{+name}` | Delete a Lien by `name`. Callers of this method will require permission on the `parent` resource.... |
| `cloudresourcemanager.liens.list` | GET | `v3/liens` | List all Liens applied to the `parent` resource. Callers of this method will require permission o... |
| `cloudresourcemanager.liens.get` | GET | `v3/{+name}` | Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resourc... |
| `cloudresourcemanager.liens.create` | POST | `v3/liens` | Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method... |
| `cloudresourcemanager.tagValues.delete` | DELETE | `v3/{+name}` | Deletes a TagValue. The TagValue cannot have any bindings when it is deleted. |
| `cloudresourcemanager.tagValues.list` | GET | `v3/tagValues` | Lists all TagValues for a specific TagKey. |
| `cloudresourcemanager.tagValues.patch` | PATCH | `v3/{+name}` | Updates the attributes of the TagValue resource. |
| `cloudresourcemanager.tagValues.getNamespaced` | GET | `v3/tagValues/namespaced` | Retrieves a TagValue by its namespaced name. This method will return `PERMISSION_DENIED` if the v... |
| `cloudresourcemanager.tagValues.get` | GET | `v3/{+name}` | Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value does not exist or ... |
| `cloudresourcemanager.tagValues.getIamPolicy` | POST | `v3/{+resource}:getIamPolicy` | Gets the access control policy for a TagValue. The returned policy may be empty if no such policy... |
| `cloudresourcemanager.tagValues.create` | POST | `v3/tagValues` | Creates a TagValue as a child of the specified TagKey. If a another request with the same paramet... |
| `cloudresourcemanager.tagValues.testIamPermissions` | POST | `v3/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified TagValue. The `resource` field should be t... |
| `cloudresourcemanager.tagValues.setIamPolicy` | POST | `v3/{+resource}:setIamPolicy` | Sets the access control policy on a TagValue, replacing any existing policy. The `resource` field... |
| `cloudresourcemanager.tagValues.tagHolds.delete` | DELETE | `v3/{+name}` | Deletes a TagHold. |
| `cloudresourcemanager.tagValues.tagHolds.create` | POST | `v3/{+parent}/tagHolds` | Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource and origin exists u... |
| `cloudresourcemanager.tagValues.tagHolds.list` | GET | `v3/{+parent}/tagHolds` | Lists TagHolds under a TagValue. |
| `cloudresourcemanager.operations.get` | GET | `v3/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudresourcemanager.projects.delete` | DELETE | `v3/{+name}` | Marks the project identified by the specified `name` (for example, `projects/415104041262`) for d... |
| `cloudresourcemanager.projects.setIamPolicy` | POST | `v3/{+resource}:setIamPolicy` | Sets the IAM access control policy for the specified project, in the format `projects/{ProjectIdO... |
| `cloudresourcemanager.projects.testIamPermissions` | POST | `v3/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified project, in the format `projects/{ProjectI... |
| `cloudresourcemanager.projects.get` | GET | `v3/{+name}` | Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). ... |
| `cloudresourcemanager.projects.search` | GET | `v3/projects:search` | Search for projects that the caller has the `resourcemanager.projects.get` permission on, and als... |
| `cloudresourcemanager.projects.patch` | PATCH | `v3/{+name}` | Updates the `display_name` and labels of the project identified by the specified `name` (for exam... |
| `cloudresourcemanager.projects.getIamPolicy` | POST | `v3/{+resource}:getIamPolicy` | Returns the IAM access control policy for the specified project, in the format `projects/{Project... |
| `cloudresourcemanager.projects.move` | POST | `v3/{+name}:move` | Move a project to another place in your resource hierarchy, under a new resource parent. Returns ... |
| `cloudresourcemanager.projects.create` | POST | `v3/projects` | Request that a new project be created. The result is an `Operation` which can be used to track th... |
| `cloudresourcemanager.projects.list` | GET | `v3/projects` | Lists projects that are direct children of the specified folder or organization resource. `list()... |
| `cloudresourcemanager.projects.undelete` | POST | `v3/{+name}:undelete` | Restores the project identified by the specified `name` (for example, `projects/415104041262`). Y... |

### `cloudresourcemanager.effectiveTags.list`

**GET** `v3/effectiveTags`

Return a list of effective tags for the given Google Cloud resource, as specified in `parent`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of effective tags to return in the response. The server allows a maximum of 300 effectiv... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListEffectiveTags` that indicates from where this list... |
| `parent` | `string` | query | No | Required. The full resource name of a resource for which you want to list the effective tags. E.g. "//cloudresourcema... |

**Response**: `ListEffectiveTagsResponse`

```typescript
const res = await cloudresourcemanager.effectiveTags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagKeys.setIamPolicy`

**POST** `v3/{+resource}:setIamPolicy`

Sets the access control policy on a TagKey, replacing any existing policy. The `resource` field should be the TagKey's resource name. For example, "tagKeys/1234". The caller must have `resourcemanager.tagKeys.setIamPolicy` permission on the identified tagValue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.tagKeys.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagKeys.patch`

**PATCH** `v3/{+name}`

Updates the attributes of the TagKey resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the ge... |
| `updateMask` | `string` | query | No | Fields to be updated. The mask may only contain `description` or `etag`. If omitted entirely, both `description` and ... |
| `validateOnly` | `boolean` | query | No | Set as true to perform validations necessary for updating the resource, but not actually perform the action. |

**Request body**: `TagKey`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagKeys.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagKeys.getNamespaced`

**GET** `v3/tagKeys/namespaced`

Retrieves a TagKey by its namespaced name. This method will return `PERMISSION_DENIED` if the key does not exist or the user does not have permission to view it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | query | No | Required. A namespaced tag key name in the format `{parentId}/{tagKeyShort}`, such as `42/foo` for a key with short n... |

**Response**: `TagKey`

```typescript
const res = await cloudresourcemanager.tagKeys.getNamespaced({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagKeys.create`

**POST** `v3/tagKeys`

Creates a new TagKey. If another request with the same parameters is sent while the original request is in process, the second request will receive an error. A maximum of 1000 TagKeys can exist under a parent at any given time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `validateOnly` | `boolean` | query | No | Optional. Set to true to perform validations necessary for creating the resource, but not actually perform the action. |

**Request body**: `TagKey`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagKeys.get`

**GET** `v3/{+name}`

Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key does not exist or the user does not have permission to view it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A resource name in the format `tagKeys/{id}`, such as `tagKeys/123`. |

**Response**: `TagKey`

```typescript
const res = await cloudresourcemanager.tagKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagKeys.getIamPolicy`

**POST** `v3/{+resource}:getIamPolicy`

Gets the access control policy for a TagKey. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagKey's resource name. For example, "tagKeys/1234". The caller must have `cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on the specified TagKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.tagKeys.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagKeys.delete`

**DELETE** `v3/{+name}`

Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of a TagKey to be deleted in the format `tagKeys/123`. The TagKey cannot be a parent of a... |
| `etag` | `string` | query | No | Optional. The etag known to the client for the expected state of the TagKey. This is to be used for optimistic concur... |
| `validateOnly` | `boolean` | query | No | Optional. Set as true to perform validations necessary for deletion, but not actually perform the action. |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagKeys.testIamPermissions`

**POST** `v3/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified TagKey. The `resource` field should be the TagKey's resource name. For example, "tagKeys/1234". There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudresourcemanager.tagKeys.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagKeys.list`

**GET** `v3/tagKeys`

Lists all TagKeys for a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of TagKeys to return in the response. The server allows a maximum of 300 TagKeys to retu... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListTagKey` that indicates where this listing should c... |
| `parent` | `string` | query | No | Required. The resource name of the TagKey's parent. Must be of the form `organizations/{org_id}` or `projects/{projec... |

**Response**: `ListTagKeysResponse`

```typescript
const res = await cloudresourcemanager.tagKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.locations.effectiveTagBindingCollections.get`

**GET** `v3/{+name}`

Returns effective tag bindings on a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the EffectiveTagBindingCollection in format: `locations/{location}/effectiveTagBindingColl... |

**Response**: `EffectiveTagBindingCollection`

```typescript
const res = await cloudresourcemanager.effectiveTagBindingCollections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.locations.tagBindingCollections.get`

**GET** `v3/{+name}`

Returns tag bindings directly attached to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the TagBindingCollection in format: `locations/{location}/tagBindingCollections/{encoded-f... |

**Response**: `TagBindingCollection`

```typescript
const res = await cloudresourcemanager.tagBindingCollections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.locations.tagBindingCollections.patch`

**PATCH** `v3/{+name}`

Updates tag bindings directly attached to a GCP resource. Update_mask can be kept empty or "*".

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the TagBindingCollection, following the convention: `locations/{location}/tagBindingCollectio... |
| `updateMask` | `string` | query | No | Optional. An update mask to selectively update fields. |

**Request body**: `TagBindingCollection`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagBindingCollections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagBindings.delete`

**DELETE** `v3/{+name}`

Deletes a TagBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the TagBinding. This is a String of the form: `tagBindings/{id}` (e.g. `tagBindings/%2F%2Fcloud... |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagBindings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagBindings.list`

**GET** `v3/tagBindings`

Lists the TagBindings for the given Google Cloud resource, as specified with `parent`. NOTE: The `parent` field is expected to be a full resource name: https://cloud.google.com/apis/design/resource_names#full_resource_name

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of TagBindings to return in the response. The server allows a maximum of 300 TagBindings... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListTagBindings` that indicates where this listing sho... |
| `parent` | `string` | query | No | Required. The full resource name of a resource for which you want to list existing TagBindings. E.g. "//cloudresource... |

**Response**: `ListTagBindingsResponse`

```typescript
const res = await cloudresourcemanager.tagBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagBindings.create`

**POST** `v3/tagBindings`

Creates a TagBinding between a TagValue and a Google Cloud resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `validateOnly` | `boolean` | query | No | Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the ac... |

**Request body**: `TagBinding`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagBindings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.delete`

**DELETE** `v3/{+name}`

Requests deletion of a folder. The folder is moved into the DELETE_REQUESTED state immediately, and is deleted approximately 30 days later. This method may only be called on an empty folder, where a folder is empty if it doesn't contain any folders or projects in the ACTIVE state. If called on a folder in DELETE_REQUESTED state the operation will result in a no-op success. The caller must have `resourcemanager.folders.delete` permission on the identified folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the folder to be deleted. Must be of the form `folders/{folder_id}`. |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.folders.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.search`

**GET** `v3/folders:search`

Search for folders that match specific filter criteria. `search()` provides an eventually consistent view of the folders a user has access to which meet the specified filter criteria. This will only return folders on which the caller has the permission `resourcemanager.folders.get`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `SearchFolders` that indicates from where search should... |
| `query` | `string` | query | No | Optional. Search criteria used to select the folders to return. If no search criteria is specified then all accessibl... |

**Response**: `SearchFoldersResponse`

```typescript
const res = await cloudresourcemanager.folders.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.folders.setIamPolicy`

**POST** `v3/{+resource}:setIamPolicy`

Sets the access control policy on a folder, replacing any existing policy. The `resource` field should be the folder's resource name, for example: "folders/1234". The caller must have `resourcemanager.folders.setIamPolicy` permission on the identified folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.folders.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.getIamPolicy`

**POST** `v3/{+resource}:getIamPolicy`

Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the folder's resource name, for example: "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.folders.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.folders.patch`

**PATCH** `v3/{+name}`

Updates a folder, changing its `display_name`. Changes to the folder `display_name` will be rejected if they violate either the `display_name` formatting rules or the naming constraints described in the CreateFolder documentation. The folder's `display_name` must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be between 3 and 30 characters. This is captured by the regular expression: `\p{L}\p{N}{1,28}[\p{L}\p{N}]`. The caller must have `resourcemanager.folders.update` permission on the identified folder. If the update fails due to the unique name constraint then a `PreconditionFailure` explaining this violation will be returned in the Status.details field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the folder. Its format is `folders/{folder_id}`, for example: "folders/1234". |
| `updateMask` | `string` | query | No | Required. Fields to be updated. Only the `display_name` can be updated. |

**Request body**: `Folder`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.folders.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.get`

**GET** `v3/{+name}`

Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the folder to retrieve. Must be of the form `folders/{folder_id}`. |

**Response**: `Folder`

```typescript
const res = await cloudresourcemanager.folders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.folders.list`

**GET** `v3/folders`

Lists the folders that are direct descendants of supplied parent resource. `list()` provides a strongly consistent view of the folders underneath the specified parent resource. `list()` returns folders sorted based upon the (ascending) lexical ordering of their display_name. The caller must have `resourcemanager.folders.list` permission on the identified parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListFolders` that indicates where this listing should ... |
| `parent` | `string` | query | No | Required. The name of the parent resource whose folders are being listed. Only children of this parent resource are l... |
| `showDeleted` | `boolean` | query | No | Optional. Controls whether folders in the DELETE_REQUESTED state should be returned. Defaults to false. |

**Response**: `ListFoldersResponse`

```typescript
const res = await cloudresourcemanager.folders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.folders.testIamPermissions`

**POST** `v3/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified folder. The `resource` field should be the folder's resource name, for example: "folders/1234". There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudresourcemanager.folders.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.move`

**POST** `v3/{+name}:move`

Moves a folder under a new resource parent. Returns an `Operation` which can be used to track the progress of the folder move workflow. Upon success, the `Operation.response` field will be populated with the moved folder. Upon failure, a `FolderOperationError` categorizing the failure cause will be returned - if the failure occurs synchronously then the `FolderOperationError` will be returned in the `Status.details` field. If it occurs asynchronously, then the FolderOperation will be returned in the `Operation.error` field. In addition, the `Operation.metadata` field will be populated with a `FolderOperation` message as an aid to stateless clients. Folder moves will be rejected if they violate either the naming, height, or fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.move` permission on the folder's current and proposed new parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Folder to move. Must be of the form folders/{folder_id} |

**Request body**: `MoveFolderRequest`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.folders.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.create`

**POST** `v3/folders`

Creates a folder in the resource hierarchy. Returns an `Operation` which can be used to track the progress of the folder creation workflow. Upon success, the `Operation.response` field will be populated with the created Folder. In order to succeed, the addition of this new folder must not violate the folder naming, height, or fanout constraints. + The folder's `display_name` must be distinct from all other folders that share its parent. + The addition of the folder must not cause the active folder hierarchy to exceed a height of 10. Note, the full active + deleted folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the folder must not cause the total number of folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the `CreateFolder` request, with status code `FAILED_PRECONDITION` and an error description. Other folder constraint violations will be communicated in the `Operation`, with the specific `PreconditionFailure` returned in the details list in the `Operation.error` field. The caller must have `resourcemanager.folders.create` permission on the identified parent.

**Request body**: `Folder`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.folders.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.undelete`

**POST** `v3/{+name}:undelete`

Cancels the deletion request for a folder. This method may be called on a folder in any state. If the folder is in the ACTIVE state the result will be a no-op success. In order to succeed, the folder's parent must be in the ACTIVE state. In addition, reintroducing the folder into the tree must not violate folder naming, height, and fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.undelete` permission on the identified folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the folder to undelete. Must be of the form `folders/{folder_id}`. |

**Request body**: `UndeleteFolderRequest`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.folders.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.capabilities.patch`

**PATCH** `v3/{+name}`

Updates the Capability.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of the capability. Must be in the following form: * `folders/{folder_id}/cap... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Only [Capability.value] can be updated. |

**Request body**: `Capability`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.capabilities.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.folders.capabilities.get`

**GET** `v3/{+name}`

Retrieves the Capability identified by the supplied resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the capability to get. For example, `folders/123/capabilities/app-management` |

**Response**: `Capability`

```typescript
const res = await cloudresourcemanager.capabilities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.organizations.testIamPermissions`

**POST** `v3/{+resource}:testIamPermissions`

Returns the permissions that a caller has on the specified organization. The `resource` field should be the organization's resource name, for example: "organizations/123". There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudresourcemanager.organizations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.organizations.search`

**GET** `v3/organizations:search`

Searches organization resources that are visible to the user and satisfy the specified filter. This method returns organizations in an unspecified order. New organizations do not necessarily appear at the end of the results, and may take a small amount of time to appear. Search will only return organizations on which the user has the permission `resourcemanager.organizations.get` or has super admin privileges.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of organizations to return in the response. The server can return fewer organizations th... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `SearchOrganizations` that indicates from where listing... |
| `query` | `string` | query | No | Optional. An optional query string used to filter the Organizations to return in the response. Query rules are case-i... |

**Response**: `SearchOrganizationsResponse`

```typescript
const res = await cloudresourcemanager.organizations.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.organizations.getIamPolicy`

**POST** `v3/{+resource}:getIamPolicy`

Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, for example: "organizations/123". Authorization requires the IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.organizations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.organizations.setIamPolicy`

**POST** `v3/{+resource}:setIamPolicy`

Sets the access control policy on an organization resource. Replaces any existing policy. The `resource` field should be the organization's resource name, for example: "organizations/123". Authorization requires the IAM permission `resourcemanager.organizations.setIamPolicy` on the specified organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.organizations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.organizations.get`

**GET** `v3/{+name}`

Fetches an organization resource identified by the specified resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Organization to fetch. This is the organization's relative path in the API, format... |

**Response**: `Organization`

```typescript
const res = await cloudresourcemanager.organizations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.liens.delete`

**DELETE** `v3/{+name}`

Delete a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.updateLiens`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name/identifier of the Lien to delete. |

**Response**: `Empty`

```typescript
const res = await cloudresourcemanager.liens.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.liens.list`

**GET** `v3/liens`

List all Liens applied to the `parent` resource. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of items to return. This is a suggestion for the server. The server can return fewer liens than re... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous List request, if any. |
| `parent` | `string` | query | No | Required. The name of the resource to list all attached Liens. For example, `projects/1234`. (google.api.field_policy... |

**Response**: `ListLiensResponse`

```typescript
const res = await cloudresourcemanager.liens.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.liens.get`

**GET** `v3/{+name}`

Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name/identifier of the Lien. |

**Response**: `Lien`

```typescript
const res = await cloudresourcemanager.liens.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.liens.create`

**POST** `v3/liens`

Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method will require permission on the `parent` resource. For example, applying to `projects/1234` requires permission `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the number of Liens which may be applied.

**Request body**: `Lien`

**Response**: `Lien`

```typescript
const res = await cloudresourcemanager.liens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagValues.delete`

**DELETE** `v3/{+name}`

Deletes a TagValue. The TagValue cannot have any bindings when it is deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for TagValue to be deleted in the format tagValues/456. |
| `etag` | `string` | query | No | Optional. The etag known to the client for the expected state of the TagValue. This is to be used for optimistic conc... |
| `validateOnly` | `boolean` | query | No | Optional. Set as true to perform the validations necessary for deletion, but not actually perform the action. |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagValues.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.list`

**GET** `v3/tagValues`

Lists all TagValues for a specific TagKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of TagValues to return in the response. The server allows a maximum of 300 TagValues to ... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListTagValues` that indicates where this listing shoul... |
| `parent` | `string` | query | No | Required. Resource name for the parent of the TagValues to be listed, in the format `tagKeys/123` or `tagValues/123`. |

**Response**: `ListTagValuesResponse`

```typescript
const res = await cloudresourcemanager.tagValues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagValues.patch`

**PATCH** `v3/{+name}`

Updates the attributes of the TagValue resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name for TagValue in the format `tagValues/456`. |
| `updateMask` | `string` | query | No | Optional. Fields to be updated. |
| `validateOnly` | `boolean` | query | No | Optional. True to perform validations necessary for updating the resource, but not actually perform the action. |

**Request body**: `TagValue`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagValues.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.getNamespaced`

**GET** `v3/tagValues/namespaced`

Retrieves a TagValue by its namespaced name. This method will return `PERMISSION_DENIED` if the value does not exist or the user does not have permission to view it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | query | No | Required. A namespaced tag value name in the following format: `{parentId}/{tagKeyShort}/{tagValueShort}` Examples: -... |

**Response**: `TagValue`

```typescript
const res = await cloudresourcemanager.tagValues.getNamespaced({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagValues.get`

**GET** `v3/{+name}`

Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value does not exist or the user does not have permission to view it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for TagValue to be fetched in the format `tagValues/456`. |

**Response**: `TagValue`

```typescript
const res = await cloudresourcemanager.tagValues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagValues.getIamPolicy`

**POST** `v3/{+resource}:getIamPolicy`

Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have the `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on the identified TagValue to get the access control policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.tagValues.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.tagValues.create`

**POST** `v3/tagValues`

Creates a TagValue as a child of the specified TagKey. If a another request with the same parameters is sent while the original request is in process the second request will receive an error. A maximum of 1000 TagValues can exist under a TagKey at any given time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `validateOnly` | `boolean` | query | No | Optional. Set as true to perform the validations necessary for creating the resource, but not actually perform the ac... |

**Request body**: `TagValue`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagValues.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.testIamPermissions`

**POST** `v3/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified TagValue. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. There are no permissions required for making this API call.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudresourcemanager.tagValues.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.setIamPolicy`

**POST** `v3/{+resource}:setIamPolicy`

Sets the access control policy on a TagValue, replacing any existing policy. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have `resourcemanager.tagValues.setIamPolicy` permission on the identified tagValue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.tagValues.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.tagHolds.delete`

**DELETE** `v3/{+name}`

Deletes a TagHold.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the TagHold to delete. Must be of the form: `tagValues/{tag-value-id}/tagHolds/{tag-ho... |
| `validateOnly` | `boolean` | query | No | Optional. Set to true to perform the validations necessary for deleting the resource, but not actually perform the ac... |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagHolds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.tagHolds.create`

**POST** `v3/{+parent}/tagHolds`

Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource and origin exists under the same TagValue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the TagHold's parent TagValue. Must be of the form: `tagValues/{tag-value-id}`. |
| `validateOnly` | `boolean` | query | No | Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the ac... |

**Request body**: `TagHold`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.tagHolds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.tagValues.tagHolds.list`

**GET** `v3/{+parent}/tagHolds`

Lists TagHolds under a TagValue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent TagValue. Must be of the form: `tagValues/{tag-value-id}`. |
| `filter` | `string` | query | No | Optional. Criteria used to select a subset of TagHolds parented by the TagValue to return. This field follows the syn... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of TagHolds to return in the response. The server allows a maximum of 300 TagHolds to re... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to `ListTagHolds` that indicates where this listing should... |

**Response**: `ListTagHoldsResponse`

```typescript
const res = await cloudresourcemanager.tagHolds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.operations.get`

**GET** `v3/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.delete`

**DELETE** `v3/{+name}`

Marks the project identified by the specified `name` (for example, `projects/415104041262`) for deletion. This method will only affect the project if it has a lifecycle state of ACTIVE. This method changes the Project's lifecycle state from ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified time, at which point the Project is no longer accessible. Until the deletion completes, you can check the lifecycle state checked by retrieving the project with GetProject, and the project remains visible to ListProjects. However, you cannot update the project. After the deletion completes, the project is not retrievable by the GetProject, ListProjects, and SearchProjects methods. The caller must have `resourcemanager.projects.delete` permissions for this project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Project (for example, `projects/415104041262`). |

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.projects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.projects.setIamPolicy`

**POST** `v3/{+resource}:setIamPolicy`

Sets the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. CAUTION: This method will replace the existing policy, and cannot be used to append additional IAM settings. Note: Removing service accounts from policies or changing their roles can render services completely inoperable. It is important to understand how the service account is being used before removing or updating its roles. The following constraints apply when using `setIamPolicy()`: + Project does not support `allUsers` and `allAuthenticatedUsers` as `members` in a `Binding` of a `Policy`. + The owner role can be granted to a `user`, `serviceAccount`, or a group that is part of an organization. For example, group@myownpersonaldomain.com could be added as an owner to a project in the myownpersonaldomain.com organization, but not the examplepetstore.com organization. + Service accounts can be made owners of a project directly without any restrictions. However, to be added as an owner, a user must be invited using the Cloud Platform console and must accept the invitation. + A user cannot be granted the owner role using `setIamPolicy()`. The user must be granted the owner role using the Cloud Platform Console and must explicitly accept the invitation. + Invitations to grant the owner role cannot be sent using `setIamPolicy()`; they must be sent only using the Cloud Platform Console. + If the project is not part of an organization, there must be at least one owner who has accepted the Terms of Service (ToS) agreement in the policy. Calling `setIamPolicy()` to remove the last ToS-accepted owner from the policy will fail. This restriction also applies to legacy projects that no longer have owners who have accepted the ToS. Edits to IAM policies will be rejected until the lack of a ToS-accepting owner is rectified. If the project is part of an organization, you can remove all owners, potentially making the organization inaccessible.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.projects.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.projects.testIamPermissions`

**POST** `v3/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123..

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudresourcemanager.projects.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.get`

**GET** `v3/{+name}`

Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). The caller must have `resourcemanager.projects.get` permission for this project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project (for example, `projects/415104041262`). |

**Response**: `Project`

```typescript
const res = await cloudresourcemanager.projects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.search`

**GET** `v3/projects:search`

Search for projects that the caller has the `resourcemanager.projects.get` permission on, and also satisfy the specified query. This method returns projects in an unspecified order. This method is eventually consistent with project mutations; this means that a newly created project may not appear in the results or recent updates to an existing project may not be reflected in the results. To retrieve the latest state of a project, use the GetProject method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of projects to return in the response. The server can return fewer projects than request... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should c... |
| `query` | `string` | query | No | Optional. A query string for searching for projects that the caller has `resourcemanager.projects.get` permission to.... |

**Response**: `SearchProjectsResponse`

```typescript
const res = await cloudresourcemanager.projects.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.patch`

**PATCH** `v3/{+name}`

Updates the `display_name` and labels of the project identified by the specified `name` (for example, `projects/415104041262`). Deleting all labels requires an update mask for labels field. The caller must have `resourcemanager.projects.update` permission for this project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The unique resource name of the project. It is an int64 generated number prefixed by "projects/". Exampl... |
| `updateMask` | `string` | query | No | Optional. An update mask to selectively update fields. |

**Request body**: `Project`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.projects.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.projects.getIamPolicy`

**POST** `v3/{+resource}:getIamPolicy`

Returns the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. Permission is denied if the policy or the resource do not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudresourcemanager.projects.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.move`

**POST** `v3/{+name}:move`

Move a project to another place in your resource hierarchy, under a new resource parent. Returns an operation which can be used to track the process of the project move workflow. Upon success, the `Operation.response` field will be populated with the moved project. The caller must have `resourcemanager.projects.move` permission on the project, on the project's current and proposed new parent. If project has no current parent, or it currently does not have an associated organization resource, you will also need the `resourcemanager.projects.setIamPolicy` permission in the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project to move. |

**Request body**: `MoveProjectRequest`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.projects.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.projects.create`

**POST** `v3/projects`

Request that a new project be created. The result is an `Operation` which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking `Operation` is automatically deleted after a few hours, so there is no need to call `DeleteOperation`.

**Request body**: `Project`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.projects.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudresourcemanager.projects.list`

**GET** `v3/projects`

Lists projects that are direct children of the specified folder or organization resource. `list()` provides a strongly consistent view of the projects underneath the specified parent resource. `list()` returns projects sorted based upon the (ascending) lexical ordering of their `display_name`. The caller must have `resourcemanager.projects.list` permission on the identified parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of projects to return in the response. The server can return fewer projects than request... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should c... |
| `parent` | `string` | query | No | Required. The name of the parent resource whose projects are being listed. Only children of this parent resource are ... |
| `showDeleted` | `boolean` | query | No | Optional. Indicate that projects in the `DELETE_REQUESTED` state should also be returned. Normally only `ACTIVE` proj... |

**Response**: `ListProjectsResponse`

```typescript
const res = await cloudresourcemanager.projects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `cloudresourcemanager.projects.undelete`

**POST** `v3/{+name}:undelete`

Restores the project identified by the specified `name` (for example, `projects/415104041262`). You can only use this method for a project that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the project cannot be restored. The caller must have `resourcemanager.projects.undelete` permission for this project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project (for example, `projects/415104041262`). Required. |

**Request body**: `UndeleteProjectRequest`

**Response**: `Operation`

```typescript
const res = await cloudresourcemanager.projects.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Capability`

Representation of a Capability.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Immutable. Identifier. The resource name of the capability. Must be in the following form: * `fol... |
| `value` | `boolean` | Required. The configured value of the capability at the given parent resource. |

### `CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation`

Metadata describing a long running folder operation

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | The resource name of the folder or organization we are either creating the folder under or moving... |
| `displayName` | `string` | The display name of the folder. |
| `operationType` | `string` | The type of this operation. |
| `sourceParent` | `string` | The resource name of the folder's parent. Only applicable when the operation_type is MOVE. |

### `CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation`

Metadata describing a long running folder operation

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | The resource name of the folder or organization we are either creating the folder under or moving... |
| `displayName` | `string` | The display name of the folder. |
| `operationType` | `string` | The type of this operation. |
| `sourceParent` | `string` | The resource name of the folder's parent. Only applicable when the operation_type is MOVE. |

### `CreateFolderMetadata`

Metadata pertaining to the Folder creation process.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the folder. |
| `parent` | `string` | The resource name of the folder or organization we are creating the folder under. |

### `CreateProjectMetadata`

A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Creation time of the project creation workflow. |
| `gettable` | `boolean` | True if the project can be retrieved using `GetProject`. No other operations on the project are g... |
| `ready` | `boolean` | True if the project creation process is complete. |

### `CreateTagBindingMetadata`

Runtime operation information for creating a TagValue.

### `CreateTagKeyMetadata`

Runtime operation information for creating a TagKey.

### `CreateTagValueMetadata`

Runtime operation information for creating a TagValue.

### `DeleteFolderMetadata`

A status object which is used as the `metadata` field for the `Operation` returned by `DeleteFolder`.

### `DeleteOrganizationMetadata`

A status object which is used as the `metadata` field for the operation returned by DeleteOrganization.

### `DeleteProjectMetadata`

A status object which is used as the `metadata` field for the Operation returned by `DeleteProject`.

### `DeleteTagBindingMetadata`

Runtime operation information for deleting a TagBinding.

### `DeleteTagKeyMetadata`

Runtime operation information for deleting a TagKey.

### `DeleteTagValueMetadata`

Runtime operation information for deleting a TagValue.

### `EffectiveTag`

An EffectiveTag represents a tag that applies to a resource during policy evaluation. Tags can be either directly bound to a resource or inherited from its ancestor. EffectiveTag contains the name and namespaced_name of the tag value and tag key, with additional fields of `inherited` to indicate the inheritance status of the effective tag.

| Property | Type | Description |
|----------|------|-------------|
| `inherited` | `boolean` | Indicates the inheritance status of a tag value attached to the given resource. If the tag value ... |
| `namespacedTagKey` | `string` | The namespaced name of the TagKey. Can be in the form `{organization_id}/{tag_key_short_name}` or... |
| `namespacedTagValue` | `string` | The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{... |
| `tagKey` | `string` | The name of the TagKey, in the format `tagKeys/{id}`, such as `tagKeys/123`. |
| `tagKeyParentName` | `string` | The parent name of the tag key. Must be in the format `organizations/{organization_id}` or `proje... |
| `tagValue` | `string` | Resource name for TagValue in the format `tagValues/456`. |

### `EffectiveTagBindingCollection`

Represents a collection of effective tag bindings for a GCP resource.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveTags` | `object` | Tag keys/values effectively bound to this resource, specified in namespaced format. For example: ... |
| `fullResourceName` | `string` | The full resource name of the resource the TagBindings are bound to. E.g. `//cloudresourcemanager... |
| `name` | `string` | Identifier. The name of the EffectiveTagBindingCollection, following the convention: `locations/{... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Folder`

A folder in an organization's resource hierarchy, used to organize that organization's resources.

| Property | Type | Description |
|----------|------|-------------|
| `configuredCapabilities` | `array<string>` | Output only. Optional capabilities configured for this folder (via UpdateCapability API). Example... |
| `createTime` | `string` | Output only. Timestamp when the folder was created. |
| `deleteTime` | `string` | Output only. Timestamp when the folder was requested to be deleted. |
| `displayName` | `string` | The folder's display name. A folder's display name must be unique amongst its siblings. For examp... |
| `etag` | `string` | Output only. A checksum computed by the server based on the current value of the folder resource.... |
| `managementProject` | `string` | Output only. Management Project associated with this folder (if app-management capability is enab... |
| `name` | `string` | Identifier. The resource name of the folder. Its format is `folders/{folder_id}`, for example: "f... |
| `parent` | `string` | Required. The folder's parent's resource name. Updates to the folder's parent must be performed u... |
| `state` | `string` | Output only. The lifecycle state of the folder. Updates to the state must be performed using Dele... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this folder. Each item in the ... |
| `updateTime` | `string` | Output only. Timestamp when the folder was last modified. |

### `FolderOperation`

Metadata describing a long running folder operation

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | The resource name of the folder or organization we are either creating the folder under or moving... |
| `displayName` | `string` | The display name of the folder. |
| `operationType` | `string` | The type of this operation. |
| `sourceParent` | `string` | The resource name of the folder's parent. Only applicable when the operation_type is MOVE. |

### `FolderOperationError`

A classification of the Folder Operation error.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessageId` | `string` | The type of operation error experienced. |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `Lien`

A Lien represents an encumbrance on the actions that can be performed on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of this Lien. |
| `name` | `string` | A system-generated unique identifier for this Lien. Example: `liens/1234abcd` |
| `origin` | `string` | A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspe... |
| `parent` | `string` | A reference to the resource this Lien is attached to. The server will validate the parent against... |
| `reason` | `string` | Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum ... |
| `restrictions` | `array<string>` | The types of operations which should be blocked as a result of this Lien. Each value should corre... |

### `ListEffectiveTagsResponse`

The response of ListEffectiveTags.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveTags` | `array<EffectiveTag>` | A possibly paginated list of effective tags for the specified resource. |
| `nextPageToken` | `string` | Pagination token. If the result set is too large to fit in a single response, this token is retur... |

### `ListFoldersResponse`

The ListFolders response message.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<Folder>` | A possibly paginated list of folders that are direct descendants of the specified parent resource. |
| `nextPageToken` | `string` | A pagination token returned from a previous call to `ListFolders` that indicates from where listi... |

### `ListLiensResponse`

The response message for Liens.ListLiens.

| Property | Type | Description |
|----------|------|-------------|
| `liens` | `array<Lien>` | A list of Liens. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListProjectsResponse`

A page of the response received from the ListProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page. NOTE: A response may contain fewer elements than the request `page_size` and still have a `next_page_token`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token. If the result set is too large to fit in a single response, this token is retur... |
| `projects` | `array<Project>` | The list of Projects under the parent. This list can be paginated. |

### `ListTagBindingsResponse`

The ListTagBindings response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token. If the result set is too large to fit in a single response, this token is retur... |
| `tagBindings` | `array<TagBinding>` | A possibly paginated list of TagBindings for the specified resource. |

### `ListTagHoldsResponse`

The ListTagHolds response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token. If the result set is too large to fit in a single response, this token is retur... |
| `tagHolds` | `array<TagHold>` | A possibly paginated list of TagHolds. |

### `ListTagKeysResponse`

The ListTagKeys response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token returned from a previous call to `ListTagKeys` that indicates from where listi... |
| `tagKeys` | `array<TagKey>` | List of TagKeys that live under the specified parent in the request. |

### `ListTagValuesResponse`

The ListTagValues response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token returned from a previous call to `ListTagValues` that indicates from where lis... |
| `tagValues` | `array<TagValue>` | A possibly paginated list of TagValues that are direct descendants of the specified parent TagKey. |

### `MoveFolderMetadata`

Metadata pertaining to the folder move process.

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | The resource name of the folder or organization to move the folder to. |
| `displayName` | `string` | The display name of the folder. |
| `sourceParent` | `string` | The resource name of the folder's parent. |

### `MoveFolderRequest`

The MoveFolder request message.

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | Required. The resource name of the folder or organization which should be the folder's new parent... |

### `MoveProjectMetadata`

A status object which is used as the `metadata` field for the Operation returned by MoveProject.

### `MoveProjectRequest`

The request sent to MoveProject method.

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | Required. The new parent to move the Project under. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Organization`

The root node in the resource hierarchy to which a particular entity's (a company, for example) resources belong.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the Organization was created. |
| `deleteTime` | `string` | Output only. Timestamp when the Organization was requested for deletion. |
| `directoryCustomerId` | `string` | Immutable. The G Suite / Workspace customer id used in the Directory API. |
| `displayName` | `string` | Output only. A human-readable string that refers to the organization in the Google Cloud Console.... |
| `etag` | `string` | Output only. A checksum computed by the server based on the current value of the Organization res... |
| `name` | `string` | Output only. The resource name of the organization. This is the organization's relative path in t... |
| `state` | `string` | Output only. The organization's current lifecycle state. |
| `updateTime` | `string` | Output only. Timestamp when the Organization was last modified. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Project`

A project is a high-level Google Cloud entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.

| Property | Type | Description |
|----------|------|-------------|
| `configuredCapabilities` | `array<string>` | Output only. If this project is a Management Project, list of capabilities configured on the pare... |
| `createTime` | `string` | Output only. Creation time. |
| `deleteTime` | `string` | Output only. The time at which this resource was requested for deletion. |
| `displayName` | `string` | Optional. A user-assigned display name of the project. When present it must be between 4 to 30 ch... |
| `etag` | `string` | Output only. A checksum computed by the server based on the current value of the Project resource... |
| `labels` | `object` | Optional. The labels associated with this project. Label keys must be between 1 and 63 characters... |
| `name` | `string` | Output only. The unique resource name of the project. It is an int64 generated number prefixed by... |
| `parent` | `string` | Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`. |
| `projectId` | `string` | Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letter... |
| `state` | `string` | Output only. The project lifecycle state. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this project. Each item in the... |
| `updateTime` | `string` | Output only. The most recent time this resource was modified. |

### `ProjectCreationStatus`

A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Creation time of the project creation workflow. |
| `gettable` | `boolean` | True if the project can be retrieved using GetProject. No other operations on the project are gua... |
| `ready` | `boolean` | True if the project creation process is complete. |

### `SearchFoldersResponse`

The response message for searching folders.

| Property | Type | Description |
|----------|------|-------------|
| `folders` | `array<Folder>` | A possibly paginated folder search results. the specified parent resource. |
| `nextPageToken` | `string` | A pagination token returned from a previous call to `SearchFolders` that indicates from where sea... |

### `SearchOrganizationsResponse`

The response returned from the `SearchOrganizations` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token to be used to retrieve the next page of results. If the result is too large to... |
| `organizations` | `array<Organization>` | The list of Organizations that matched the search query, possibly paginated. |

### `SearchProjectsResponse`

A page of the response received from the SearchProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token. If the result set is too large to fit in a single response, this token is retur... |
| `projects` | `array<Project>` | The list of Projects that matched the list filter query. This list can be paginated. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TagBinding`

A TagBinding represents a connection between a TagValue and a cloud resource Once a TagBinding is created, the TagValue is applied to all the descendants of the Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the TagBinding. This is a String of the form: `tagBindings/{full-resourc... |
| `parent` | `string` | The full resource name of the resource the TagValue is bound to. E.g. `//cloudresourcemanager.goo... |
| `tagValue` | `string` | The TagValue of the TagBinding. Must be of the form `tagValues/456`. |
| `tagValueNamespacedName` | `string` | The namespaced name for the TagValue of the TagBinding. Must be in the format `{parent_id}/{tag_k... |

### `TagBindingCollection`

Represents a collection of tags directly bound to a GCP resource.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A checksum based on the current bindings which can be passed to prevent race conditions... |
| `fullResourceName` | `string` | The full resource name of the resource the TagBindings are bound to. E.g. `//cloudresourcemanager... |
| `name` | `string` | Identifier. The name of the TagBindingCollection, following the convention: `locations/{location}... |
| `tags` | `object` | Tag keys/values directly bound to this resource, specified in namespaced format. For example: "12... |

### `TagHold`

A TagHold represents the use of a TagValue that is not captured by TagBindings. If a TagValue has any TagHolds, deletion will be blocked. This resource is intended to be created in the same cloud location as the `holder`.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time this TagHold was created. |
| `helpLink` | `string` | Optional. A URL where an end user can learn more about removing this hold. E.g. `https://cloud.go... |
| `holder` | `string` | Required. The name of the resource where the TagValue is being used. Must be less than 200 charac... |
| `name` | `string` | Output only. The resource name of a TagHold. This is a String of the form: `tagValues/{tag-value-... |
| `origin` | `string` | Optional. An optional string representing the origin of this request. This field should include h... |

### `TagKey`

A TagKey, used to group a set of TagValues.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValuesRegex` | `string` | Optional. Regular expression constraint for freeform tag values. If present, it implicitly allows... |
| `createTime` | `string` | Output only. Creation time. |
| `description` | `string` | Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write. |
| `etag` | `string` | Optional. Entity tag which users can pass to prevent race conditions. This field is always set in... |
| `name` | `string` | Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `t... |
| `namespacedName` | `string` | Output only. Immutable. Namespaced name of the TagKey. |
| `parent` | `string` | Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization ... |
| `purpose` | `string` | Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy en... |
| `purposeData` | `object` | Optional. Purpose data corresponds to the policy system that the tag is intended for. See documen... |
| `shortName` | `string` | Required. Immutable. The user friendly name for a TagKey. The short name should be unique for Tag... |
| `updateTime` | `string` | Output only. Update time. |

### `TagValue`

A TagValue is a child of a particular TagKey. This is used to group cloud resources for the purpose of controlling them using policies.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time. |
| `description` | `string` | Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write. |
| `etag` | `string` | Optional. Entity tag which users can pass to prevent race conditions. This field is always set in... |
| `name` | `string` | Immutable. Resource name for TagValue in the format `tagValues/456`. |
| `namespacedName` | `string` | Output only. The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_... |
| `parent` | `string` | Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{t... |
| `shortName` | `string` | Required. Immutable. User-assigned short name for TagValue. The short name should be unique for T... |
| `updateTime` | `string` | Output only. Update time. |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `UndeleteFolderMetadata`

A status object which is used as the `metadata` field for the `Operation` returned by `UndeleteFolder`.

### `UndeleteFolderRequest`

The UndeleteFolder request message.

### `UndeleteOrganizationMetadata`

A status object which is used as the `metadata` field for the Operation returned by UndeleteOrganization.

### `UndeleteProjectMetadata`

A status object which is used as the `metadata` field for the Operation returned by `UndeleteProject`.

### `UndeleteProjectRequest`

The request sent to the UndeleteProject method.

### `UpdateFolderMetadata`

A status object which is used as the `metadata` field for the Operation returned by UpdateFolder.

### `UpdateProjectMetadata`

A status object which is used as the `metadata` field for the Operation returned by UpdateProject.

### `UpdateTagKeyMetadata`

Runtime operation information for updating a TagKey.

### `UpdateTagValueMetadata`

Runtime operation information for updating a TagValue.

