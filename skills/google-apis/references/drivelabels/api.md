# Drive Labels API - API Reference

**Version**: `v2` | **Methods**: 26 | **Schemas**: 88

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `drivelabels.users.getCapabilities` | GET | `v2/{+name}` | Gets the user capabilities. |
| `drivelabels.labels.list` | GET | `v2/labels` | List labels. For more information, see [Search for labels](https://developers.google.com/workspac... |
| `drivelabels.labels.get` | GET | `v2/{+name}` | Get a label by its resource name. For more information, see [Search for labels](https://developer... |
| `drivelabels.labels.create` | POST | `v2/labels` | Creates a label. For more information, see [Create and publish a label](https://developers.google... |
| `drivelabels.labels.delta` | POST | `v2/{+name}:delta` | Updates a single label by applying a set of update requests resulting in a new draft revision. Fo... |
| `drivelabels.labels.updateLabelCopyMode` | POST | `v2/{+name}:updateLabelCopyMode` | Updates a label's `CopyMode`. Changes to this policy aren't revisioned, don't require publishing,... |
| `drivelabels.labels.publish` | POST | `v2/{+name}:publish` | Publish all draft changes to the label. Once published, the label may not return to its draft sta... |
| `drivelabels.labels.disable` | POST | `v2/{+name}:disable` | Disable a published label. For more information, see [Disable, enable, and delete a label](https:... |
| `drivelabels.labels.enable` | POST | `v2/{+name}:enable` | Enable a disabled label and restore it to its published state. For more information, see [Disable... |
| `drivelabels.labels.delete` | DELETE | `v2/{+name}` | Permanently deletes a label and related metadata on Drive items. For more information, see [Disab... |
| `drivelabels.labels.updatePermissions` | PATCH | `v2/{+parent}/permissions` | Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label... |
| `drivelabels.labels.updateLabelEnabledAppSettings` | POST | `v2/{+name}:updateLabelEnabledAppSettings` | Updates a label's `EnabledAppSettings`. Enabling a label in a Google Workspace app allows it to b... |
| `drivelabels.labels.permissions.list` | GET | `v2/{+parent}/permissions` | Lists a label's permissions. |
| `drivelabels.labels.permissions.create` | POST | `v2/{+parent}/permissions` | Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label... |
| `drivelabels.labels.permissions.delete` | DELETE | `v2/{+name}` | Deletes a label's permission. Permissions affect the label resource as a whole, aren't revisioned... |
| `drivelabels.labels.permissions.batchUpdate` | POST | `v2/{+parent}/permissions:batchUpdate` | Updates label permissions. If a permission for the indicated principal doesn't exist, a label per... |
| `drivelabels.labels.permissions.batchDelete` | POST | `v2/{+parent}/permissions:batchDelete` | Deletes label permissions. Permissions affect the label resource as a whole, aren't revisioned, a... |
| `drivelabels.labels.revisions.updatePermissions` | PATCH | `v2/{+parent}/permissions` | Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label... |
| `drivelabels.labels.revisions.permissions.list` | GET | `v2/{+parent}/permissions` | Lists a label's permissions. |
| `drivelabels.labels.revisions.permissions.create` | POST | `v2/{+parent}/permissions` | Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label... |
| `drivelabels.labels.revisions.permissions.delete` | DELETE | `v2/{+name}` | Deletes a label's permission. Permissions affect the label resource as a whole, aren't revisioned... |
| `drivelabels.labels.revisions.permissions.batchUpdate` | POST | `v2/{+parent}/permissions:batchUpdate` | Updates label permissions. If a permission for the indicated principal doesn't exist, a label per... |
| `drivelabels.labels.revisions.permissions.batchDelete` | POST | `v2/{+parent}/permissions:batchDelete` | Deletes label permissions. Permissions affect the label resource as a whole, aren't revisioned, a... |
| `drivelabels.labels.revisions.locks.list` | GET | `v2/{+parent}/locks` | Lists the label locks on a label. |
| `drivelabels.labels.locks.list` | GET | `v2/{+parent}/locks` | Lists the label locks on a label. |
| `drivelabels.limits.getLabel` | GET | `v2/limits/label` | Get the constraints on the structure of a label; such as, the maximum number of fields allowed an... |

### `drivelabels.users.getCapabilities`

**GET** `v2/{+name}`

Gets the user capabilities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the user. Only "users/me/capabilities" is supported. |
| `customer` | `string` | query | No | The customer to scope this request to. For example: `customers/abcd1234`. If unset, it will return settings within th... |

**Response**: `GoogleAppsDriveLabelsV2UserCapabilities`

```typescript
const res = await drivelabels.users.getCapabilities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.list`

**GET** `v2/labels`

List labels. For more information, see [Search for labels](https://developers.google.com/workspace/drive/labels/guides/search-label).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | query | No | The customer to scope this list request to. For example: `customers/abcd1234`. If unset, will return all labels withi... |
| `languageCode` | `string` | query | No | The BCP-47 language code to use for evaluating localized field labels. When not specified, values in the default conf... |
| `minimumRole` | `string` | query | No | Specifies the level of access the user must have on the returned labels. The minimum role a user must have on a label... |
| `pageSize` | `integer` | query | No | Maximum number of labels to return per page. Default: 50. Max: 200. |
| `pageToken` | `string` | query | No | The token of the page to return. |
| `publishedOnly` | `boolean` | query | No | Whether to include only published labels in the results. * When `true`, only the current published label revisions ar... |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. This will return all labels within the customer. |
| `view` | `string` | query | No | When specified, only certain fields belonging to the indicated view are returned. |

**Response**: `GoogleAppsDriveLabelsV2ListLabelsResponse`

```typescript
const res = await drivelabels.labels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.get`

**GET** `v2/{+name}`

Get a label by its resource name. For more information, see [Search for labels](https://developers.google.com/workspace/drive/labels/guides/search-label). Resource name may be any of: * `labels/{id}` - See `labels/{id}@latest` * `labels/{id}@latest` - Gets the latest revision of the label. * `labels/{id}@published` - Gets the current published revision of the label. * `labels/{id}@{revision_id}` - Gets the label at the specified revision ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label resource name. May be any of: * `labels/{id}` (equivalent to labels/{id}@latest) * `labels/{id}@lates... |
| `languageCode` | `string` | query | No | The BCP-47 language code to use for evaluating localized field labels. When not specified, values in the default conf... |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server verifies that the user is an admin for the lab... |
| `view` | `string` | query | No | When specified, only certain fields belonging to the indicated view are returned. |

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.create`

**POST** `v2/labels`

Creates a label. For more information, see [Create and publish a label](https://developers.google.com/workspace/drive/labels/guides/create-label).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `languageCode` | `string` | query | No | The BCP-47 language code to use for evaluating localized field labels in response. When not specified, values in the ... |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin privileges. The server will verify the user is an admin before allowin... |

**Request body**: `GoogleAppsDriveLabelsV2Label`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.delta`

**POST** `v2/{+name}:delta`

Updates a single label by applying a set of update requests resulting in a new draft revision. For more information, see [Update a label](https://developers.google.com/workspace/drive/labels/guides/update-label). The batch update is all-or-nothing: If any of the update requests are invalid, no changes are applied. The resulting draft revision must be published before the changes may be used with Drive items.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the label to update. |

**Request body**: `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest`

**Response**: `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse`

```typescript
const res = await drivelabels.labels.delta({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.updateLabelCopyMode`

**POST** `v2/{+name}:updateLabelCopyMode`

Updates a label's `CopyMode`. Changes to this policy aren't revisioned, don't require publishing, and take effect immediately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the label to update. |

**Request body**: `GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.updateLabelCopyMode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.publish`

**POST** `v2/{+name}:publish`

Publish all draft changes to the label. Once published, the label may not return to its draft state. For more information, see [Create and publish a label](https://developers.google.com/workspace/drive/labels/guides/create-label). Publishing a label will result in a new published revision. All previous draft revisions will be deleted. Previous published revisions will be kept but are subject to automated deletion as needed. For more information, see [Label lifecycle](https://developers.google.com/workspace/drive/labels/guides/label-lifecycle). Once published, some changes are no longer permitted. Generally, any change that would invalidate or cause new restrictions on existing metadata related to the label will be rejected. For example, the following changes to a label will be rejected after the label is published: * The label cannot be directly deleted. It must be disabled first, then deleted. * `Field.FieldType` cannot be changed. * Changes to field validation options cannot reject something that was previously accepted. * Reducing the maximum entries.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label resource name. |

**Request body**: `GoogleAppsDriveLabelsV2PublishLabelRequest`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.disable`

**POST** `v2/{+name}:disable`

Disable a published label. For more information, see [Disable, enable, and delete a label](https://developers.google.com/workspace/drive/labels/guides/disable-delete-label). Disabling a label will result in a new disabled published revision based on the current published revision. If there's a draft revision, a new disabled draft revision will be created based on the latest draft revision. Older draft revisions will be deleted. Once disabled, a label may be deleted with `DeleteLabel`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label resource name. |

**Request body**: `GoogleAppsDriveLabelsV2DisableLabelRequest`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.enable`

**POST** `v2/{+name}:enable`

Enable a disabled label and restore it to its published state. For more information, see [Disable, enable, and delete a label](https://developers.google.com/workspace/drive/labels/guides/disable-delete-label). This will result in a new published revision based on the current disabled published revision. If there's an existing disabled draft revision, a new revision will be created based on that draft and will be enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label resource name. |

**Request body**: `GoogleAppsDriveLabelsV2EnableLabelRequest`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.delete`

**DELETE** `v2/{+name}`

Permanently deletes a label and related metadata on Drive items. For more information, see [Disable, enable, and delete a label](https://developers.google.com/workspace/drive/labels/guides/disable-delete-label). Once deleted, the label and related Drive item metadata will be deleted. Only draft labels and disabled labels may be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label resource name. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |
| `writeControl.requiredRevisionId` | `string` | query | No | The revision ID of the label that the write request will be applied to. If this isn't the latest revision of the labe... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await drivelabels.labels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.updatePermissions`

**PATCH** `v2/{+parent}/permissions`

Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Request body**: `GoogleAppsDriveLabelsV2LabelPermission`

**Response**: `GoogleAppsDriveLabelsV2LabelPermission`

```typescript
const res = await drivelabels.labels.updatePermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.updateLabelEnabledAppSettings`

**POST** `v2/{+name}:updateLabelEnabledAppSettings`

Updates a label's `EnabledAppSettings`. Enabling a label in a Google Workspace app allows it to be used in that app. This change isn't revisioned, doesn't require publishing, and takes effect immediately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the label to update. The resource name of the label to update. |

**Request body**: `GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest`

**Response**: `GoogleAppsDriveLabelsV2Label`

```typescript
const res = await drivelabels.labels.updateLabelEnabledAppSettings({
  // parameters
});
```

---

### `drivelabels.labels.permissions.list`

**GET** `v2/{+parent}/permissions`

Lists a label's permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name on which label permissions are listed. Format: `labels/{label}`. |
| `pageSize` | `integer` | query | No | Maximum number of permissions to return per page. Default: 50. Max: 200. |
| `pageToken` | `string` | query | No | The token of the page to return. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Response**: `GoogleAppsDriveLabelsV2ListLabelPermissionsResponse`

```typescript
const res = await drivelabels.permissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.permissions.create`

**POST** `v2/{+parent}/permissions`

Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name on the label permission is created. Format: `labels/{label}`. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Request body**: `GoogleAppsDriveLabelsV2LabelPermission`

**Response**: `GoogleAppsDriveLabelsV2LabelPermission`

```typescript
const res = await drivelabels.permissions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.permissions.delete`

**DELETE** `v2/{+name}`

Deletes a label's permission. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label permission resource name. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await drivelabels.permissions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.permissions.batchUpdate`

**POST** `v2/{+parent}/permissions:batchUpdate`

Updates label permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name shared by all permissions being updated. Format: `labels/{label}`. If this i... |

**Request body**: `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest`

**Response**: `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse`

```typescript
const res = await drivelabels.permissions.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.permissions.batchDelete`

**POST** `v2/{+parent}/permissions:batchDelete`

Deletes label permissions. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name shared by all permissions being deleted. Format: `labels/{label}`. If this i... |

**Request body**: `GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await drivelabels.permissions.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.updatePermissions`

**PATCH** `v2/{+parent}/permissions`

Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Request body**: `GoogleAppsDriveLabelsV2LabelPermission`

**Response**: `GoogleAppsDriveLabelsV2LabelPermission`

```typescript
const res = await drivelabels.revisions.updatePermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.permissions.list`

**GET** `v2/{+parent}/permissions`

Lists a label's permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name on which label permissions are listed. Format: `labels/{label}`. |
| `pageSize` | `integer` | query | No | Maximum number of permissions to return per page. Default: 50. Max: 200. |
| `pageToken` | `string` | query | No | The token of the page to return. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Response**: `GoogleAppsDriveLabelsV2ListLabelPermissionsResponse`

```typescript
const res = await drivelabels.permissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.revisions.permissions.create`

**POST** `v2/{+parent}/permissions`

Updates a label's permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name on the label permission is created. Format: `labels/{label}`. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Request body**: `GoogleAppsDriveLabelsV2LabelPermission`

**Response**: `GoogleAppsDriveLabelsV2LabelPermission`

```typescript
const res = await drivelabels.permissions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.permissions.delete`

**DELETE** `v2/{+name}`

Deletes a label's permission. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Label permission resource name. |
| `useAdminAccess` | `boolean` | query | No | Set to `true` in order to use the user's admin credentials. The server will verify the user is an admin for the label... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await drivelabels.permissions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.permissions.batchUpdate`

**POST** `v2/{+parent}/permissions:batchUpdate`

Updates label permissions. If a permission for the indicated principal doesn't exist, a label permission is created, otherwise the existing permission is updated. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name shared by all permissions being updated. Format: `labels/{label}`. If this i... |

**Request body**: `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest`

**Response**: `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse`

```typescript
const res = await drivelabels.permissions.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.permissions.batchDelete`

**POST** `v2/{+parent}/permissions:batchDelete`

Deletes label permissions. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent label resource name shared by all permissions being deleted. Format: `labels/{label}`. If this i... |

**Request body**: `GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await drivelabels.permissions.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.labels`

---

### `drivelabels.labels.revisions.locks.list`

**GET** `v2/{+parent}/locks`

Lists the label locks on a label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Label on which locks are applied. Format: `labels/{label}`. |
| `pageSize` | `integer` | query | No | Maximum number of locks to return per page. Default: 100. Max: 200. |
| `pageToken` | `string` | query | No | The token of the page to return. |

**Response**: `GoogleAppsDriveLabelsV2ListLabelLocksResponse`

```typescript
const res = await drivelabels.locks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.labels.locks.list`

**GET** `v2/{+parent}/locks`

Lists the label locks on a label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Label on which locks are applied. Format: `labels/{label}`. |
| `pageSize` | `integer` | query | No | Maximum number of locks to return per page. Default: 100. Max: 200. |
| `pageToken` | `string` | query | No | The token of the page to return. |

**Response**: `GoogleAppsDriveLabelsV2ListLabelLocksResponse`

```typescript
const res = await drivelabels.locks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

### `drivelabels.limits.getLabel`

**GET** `v2/limits/label`

Get the constraints on the structure of a label; such as, the maximum number of fields allowed and maximum length of the label title.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | query | No | Required. Label revision resource name must be: "limits/label". |

**Response**: `GoogleAppsDriveLabelsV2LabelLimits`

```typescript
const res = await drivelabels.limits.getLabel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.admin.labels`
- `https://www.googleapis.com/auth/drive.admin.labels.readonly`
- `https://www.googleapis.com/auth/drive.labels`
- `https://www.googleapis.com/auth/drive.labels.readonly`

---

## Schemas

### `GoogleAppsDriveLabelsV2BadgeColors`

The color derived from BadgeConfig and changed to the closest recommended supported color.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `GoogleTypeColor` | Output only. Badge background that pairs with the foreground. |
| `foregroundColor` | `GoogleTypeColor` | Output only. Badge foreground that pairs with the background. |
| `soloColor` | `GoogleTypeColor` | Output only. Color that can be used for text without a background. |

### `GoogleAppsDriveLabelsV2BadgeConfig`

Badge status of the label.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `GoogleTypeColor` | The color of the badge. When not specified, no badge is rendered. The background, foreground, and... |
| `priorityOverride` | `string` | Override the default global priority of this badge. When set to 0, the default priority heuristic... |

### `GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest`

Deletes one or more label permissions.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest>` | Required. The request message specifying the resources to update. |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |

### `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest`

Updates one or more label permissions.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest>` | Required. The request message specifying the resources to update. |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |

### `GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse`

Response for updating one or more label permissions.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<GoogleAppsDriveLabelsV2LabelPermission>` | Required. Permissions updated. |

### `GoogleAppsDriveLabelsV2DateLimits`

Limits for date field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `GoogleTypeDate` | Maximum value for the date field type. |
| `minValue` | `GoogleTypeDate` | Minimum value for the date field type. |

### `GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest`

Deletes a label permission. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Label permission resource name. |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest`

The set of requests for updating aspects of a label. If any request isn't valid, no requests will be applied.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code to use for evaluating localized field labels when `include_label_in_resp... |
| `requests` | `array<GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest>` | A list of updates to apply to the label. Requests will be applied in the order they are specified. |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |
| `view` | `string` | When specified, only certain fields belonging to the indicated view will be returned. |
| `writeControl` | `GoogleAppsDriveLabelsV2WriteControl` | Provides control over how write requests are executed. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest`

Request to create a field within a label.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `GoogleAppsDriveLabelsV2Field` | Required. Field to create. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest`

Request to create a selection choice.

| Property | Type | Description |
|----------|------|-------------|
| `choice` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice` | Required. The choice to create. |
| `fieldId` | `string` | Required. The selection field in which a choice will be created. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest`

Request to delete the field.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. ID of the field to delete. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest`

Request to delete a choice.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | Required. The selection field from which a choice will be deleted. |
| `id` | `string` | Required. Choice to delete. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest`

Request to disable the field.

| Property | Type | Description |
|----------|------|-------------|
| `disabledPolicy` | `GoogleAppsDriveLabelsV2LifecycleDisabledPolicy` | Required. Field disabled policy. |
| `id` | `string` | Required. Key of the field to disable. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `disabled_polic... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest`

Request to disable a choice.

| Property | Type | Description |
|----------|------|-------------|
| `disabledPolicy` | `GoogleAppsDriveLabelsV2LifecycleDisabledPolicy` | Required. The disabled policy to update. |
| `fieldId` | `string` | Required. The selection field in which a choice will be disabled. |
| `id` | `string` | Required. Choice to disable. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `disabled_polic... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest`

Request to enable the field.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. ID of the field to enable. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest`

Request to enable a choice.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | Required. The selection field in which a choice will be enabled. |
| `id` | `string` | Required. Choice to enable. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest`

A single kind of update to apply to a label.

| Property | Type | Description |
|----------|------|-------------|
| `createField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest` | Creates a field. |
| `createSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest` | Create a choice within a selection field. |
| `deleteField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest` | Deletes a field from the label. |
| `deleteSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest` | Delete a choice within a selection field. |
| `disableField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest` | Disables the field. |
| `disableSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest` | Disable a choice within a selection field. |
| `enableField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest` | Enables the field. |
| `enableSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest` | Enable a choice within a selection field. |
| `updateField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest` | Updates basic properties of a field. |
| `updateFieldType` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest` | Update field type and/or type options. |
| `updateLabel` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest` | Updates the label properties. |
| `updateSelectionChoiceProperties` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest` | Update a choice property within a selection field. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest`

Request to update field properties.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. The field to update. |
| `properties` | `GoogleAppsDriveLabelsV2FieldProperties` | Required. Basic field properties. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `properties` is... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest`

Request to change the type of a field.

| Property | Type | Description |
|----------|------|-------------|
| `dateOptions` | `GoogleAppsDriveLabelsV2FieldDateOptions` | Update field to Date. |
| `id` | `string` | Required. The field to update. |
| `integerOptions` | `GoogleAppsDriveLabelsV2FieldIntegerOptions` | Update field to Integer. |
| `selectionOptions` | `GoogleAppsDriveLabelsV2FieldSelectionOptions` | Update field to Selection. |
| `textOptions` | `GoogleAppsDriveLabelsV2FieldTextOptions` | Update field to Text. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root of `type_option... |
| `userOptions` | `GoogleAppsDriveLabelsV2FieldUserOptions` | Update field to User. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest`

Updates basic properties of a label.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `GoogleAppsDriveLabelsV2LabelProperties` | Required. Label properties to update. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `label_properti... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest`

Request to update a choice property.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | Required. The selection field to update. |
| `id` | `string` | Required. The choice to update. |
| `properties` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties` | Required. The choice properties to update. |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `properties` is... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse`

Response for label update.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse>` | The reply of the updates. This maps 1:1 with the updates, although responses to some requests may... |
| `updatedLabel` | `GoogleAppsDriveLabelsV2Label` | The label after updates were applied. This is only set if `include_label_in_response` is `true` a... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse`

Response following field create.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The field of the created field. When left blank in a create request, a key will be autogenerated ... |
| `priority` | `integer` | The priority of the created field. The priority may change from what was specified to assure cont... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse`

Response following selection choice create.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | The server-generated ID of the field. |
| `id` | `string` | The server-generated ID of the created choice within the field. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse`

Response following field delete.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse`

Response following choice delete.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse`

Response following field disable.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse`

Response following choice disable.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse`

Response following field enable.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse`

Response following choice enable.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse`

A single response from an update.

| Property | Type | Description |
|----------|------|-------------|
| `createField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse` | Creates a field. |
| `createSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse` | Creates a selection list option to add to a selection field. |
| `deleteField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse` | Deletes a field from the label. |
| `deleteSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse` | Deletes a choice from a selection field. |
| `disableField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse` | Disables field. |
| `disableSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse` | Disables a choice within a selection field. |
| `enableField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse` | Enables field. |
| `enableSelectionChoice` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse` | Enables a choice within a selection field. |
| `updateField` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse` | Updates basic properties of a field. |
| `updateFieldType` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse` | Updates field type and/or type options. |
| `updateLabel` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse` | Updates basic properties of a label. |
| `updateSelectionChoiceProperties` | `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse` | Updates a choice within a selection field. |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse`

Response following update to field properties.

| Property | Type | Description |
|----------|------|-------------|
| `priority` | `integer` | The priority of the updated field. The priority may change from what was specified to assure cont... |

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse`

Response following update to field type.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse`

Response following update to label properties.

### `GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse`

Response following update to selection choice properties.

| Property | Type | Description |
|----------|------|-------------|
| `priority` | `integer` | The priority of the updated choice. The priority may change from what was specified to assure con... |

### `GoogleAppsDriveLabelsV2DisableLabelRequest`

Request to deprecate a published label.

| Property | Type | Description |
|----------|------|-------------|
| `disabledPolicy` | `GoogleAppsDriveLabelsV2LifecycleDisabledPolicy` | Disabled policy to use. |
| `languageCode` | `string` | The BCP-47 language code to use for evaluating localized field labels. When not specified, values... |
| `updateMask` | `string` | The fields that should be updated. At least one field must be specified. The root `disabled_polic... |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |
| `writeControl` | `GoogleAppsDriveLabelsV2WriteControl` | Provides control over how write requests are executed. Defaults to unset, which means the last wr... |

### `GoogleAppsDriveLabelsV2EnableLabelRequest`

Request to enable a label.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code to use for evaluating localized field labels. When not specified, values... |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |
| `writeControl` | `GoogleAppsDriveLabelsV2WriteControl` | Provides control over how write requests are executed. Defaults to unset, which means the last wr... |

### `GoogleAppsDriveLabelsV2Field`

Defines a field that has a display name, data type, and other configuration options. This field defines the kind of metadata that may be set on a Drive item.

| Property | Type | Description |
|----------|------|-------------|
| `appliedCapabilities` | `GoogleAppsDriveLabelsV2FieldAppliedCapabilities` | Output only. The capabilities this user has on this field and its value when the label is applied... |
| `createTime` | `string` | Output only. The time this field was created. |
| `creator` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who created this field. |
| `dateOptions` | `GoogleAppsDriveLabelsV2FieldDateOptions` | Date field options. |
| `disableTime` | `string` | Output only. The time this field was disabled. This value has no meaning when the field is not di... |
| `disabler` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who disabled this field. This value has no meaning when the field is not di... |
| `displayHints` | `GoogleAppsDriveLabelsV2FieldDisplayHints` | Output only. UI display hints for rendering a field. |
| `id` | `string` | Output only. The key of a field, unique within a label or library. This value is autogenerated. M... |
| `integerOptions` | `GoogleAppsDriveLabelsV2FieldIntegerOptions` | Integer field options. |
| `lifecycle` | `GoogleAppsDriveLabelsV2Lifecycle` | Output only. The lifecycle of this field. |
| `lockStatus` | `GoogleAppsDriveLabelsV2LockStatus` | Output only. The `LockStatus` of this field. |
| `properties` | `GoogleAppsDriveLabelsV2FieldProperties` | The basic properties of the field. |
| `publisher` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who published this field. This value has no meaning when the field is not p... |
| `queryKey` | `string` | Output only. The key to use when constructing Drive search queries to find files based on values ... |
| `schemaCapabilities` | `GoogleAppsDriveLabelsV2FieldSchemaCapabilities` | Output only. The capabilities this user has when editing this field. |
| `selectionOptions` | `GoogleAppsDriveLabelsV2FieldSelectionOptions` | Selection field options. |
| `textOptions` | `GoogleAppsDriveLabelsV2FieldTextOptions` | Text field options. |
| `updateTime` | `string` | Output only. The time this field was updated. |
| `updater` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who modified this field. |
| `userOptions` | `GoogleAppsDriveLabelsV2FieldUserOptions` | User field options. |

### `GoogleAppsDriveLabelsV2FieldAppliedCapabilities`

The capabilities related to this field on applied metadata.

| Property | Type | Description |
|----------|------|-------------|
| `canRead` | `boolean` | Whether the user can read related applied metadata on items. |
| `canSearch` | `boolean` | Whether the user can search for Drive items referencing this field. |
| `canWrite` | `boolean` | Whether the user can set this field on Drive items. |

### `GoogleAppsDriveLabelsV2FieldDateOptions`

Options for the date field type.

| Property | Type | Description |
|----------|------|-------------|
| `dateFormat` | `string` | Output only. ICU date format. |
| `dateFormatType` | `string` | Localized date formatting option. Field values are rendered in this format according to their loc... |
| `maxValue` | `GoogleTypeDate` | Output only. Maximum valid value (year, month, day). |
| `minValue` | `GoogleTypeDate` | Output only. Minimum valid value (year, month, day). |

### `GoogleAppsDriveLabelsV2FieldDisplayHints`

UI display hints for rendering a field.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the field should be shown in the UI as disabled. |
| `hiddenInSearch` | `boolean` | This field should be hidden in the search menu when searching for Drive items. |
| `required` | `boolean` | Whether the field should be shown as required in the UI. |
| `shownInApply` | `boolean` | This field should be shown in the apply menu when applying values to a Drive item. |

### `GoogleAppsDriveLabelsV2FieldIntegerOptions`

Options for the Integer field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | Output only. The maximum valid value for the integer field. |
| `minValue` | `string` | Output only. The minimum valid value for the integer field. |

### `GoogleAppsDriveLabelsV2FieldLimits`

Field constants governing the structure of a field; such as, the maximum title length, minimum and maximum field values or length, etc.

| Property | Type | Description |
|----------|------|-------------|
| `dateLimits` | `GoogleAppsDriveLabelsV2DateLimits` | Date field limits. |
| `integerLimits` | `GoogleAppsDriveLabelsV2IntegerLimits` | Integer field limits. |
| `longTextLimits` | `GoogleAppsDriveLabelsV2LongTextLimits` | Long text field limits. |
| `maxDescriptionLength` | `integer` | Limits for field description, also called help text. |
| `maxDisplayNameLength` | `integer` | Limits for field title. |
| `maxIdLength` | `integer` | Maximum length for the id. |
| `selectionLimits` | `GoogleAppsDriveLabelsV2SelectionLimits` | Selection field limits. |
| `textLimits` | `GoogleAppsDriveLabelsV2TextLimits` | The relevant limits for the specified Field.Type. Text field limits. |
| `userLimits` | `GoogleAppsDriveLabelsV2UserLimits` | User field limits. |

### `GoogleAppsDriveLabelsV2FieldListOptions`

Options for a multi-valued variant of an associated field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxEntries` | `integer` | Maximum number of entries permitted. |

### `GoogleAppsDriveLabelsV2FieldProperties`

The basic properties of the field.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display text to show in the UI identifying this field. |
| `insertBeforeField` | `string` | Input only. Insert or move this field before the indicated field. If empty, the field is placed a... |
| `required` | `boolean` | Whether the field should be marked as required. |

### `GoogleAppsDriveLabelsV2FieldSchemaCapabilities`

The capabilities related to this field when editing the field.

| Property | Type | Description |
|----------|------|-------------|
| `canDelete` | `boolean` | Whether the user can delete this field. The user must have permission and the field must be depre... |
| `canDisable` | `boolean` | Whether the user can disable this field. The user must have permission and this field must not al... |
| `canEnable` | `boolean` | Whether the user can enable this field. The user must have permission and this field must be disa... |
| `canUpdate` | `boolean` | Whether the user can change this field. |

### `GoogleAppsDriveLabelsV2FieldSelectionOptions`

Options for the selection field type.

| Property | Type | Description |
|----------|------|-------------|
| `choices` | `array<GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice>` | The options available for this selection field. The list order is consistent, and modified with `... |
| `listOptions` | `GoogleAppsDriveLabelsV2FieldListOptions` | When specified, indicates this field supports a list of values. Once the field is published, this... |

### `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice`

Selection field choice.

| Property | Type | Description |
|----------|------|-------------|
| `appliedCapabilities` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities` | Output only. The capabilities related to this choice on applied metadata. |
| `createTime` | `string` | Output only. The time this choice was created. |
| `creator` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who created this choice. |
| `disableTime` | `string` | Output only. The time this choice was disabled. This value has no meaning when the choice is not ... |
| `disabler` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who disabled this choice. This value has no meaning when the option is not ... |
| `displayHints` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints` | Output only. UI display hints for rendering a choice. |
| `id` | `string` | The unique value of the choice. This ID is autogenerated. Matches the regex: `([a-zA-Z0-9_])+`. |
| `lifecycle` | `GoogleAppsDriveLabelsV2Lifecycle` | Output only. Lifecycle of the choice. |
| `lockStatus` | `GoogleAppsDriveLabelsV2LockStatus` | Output only. The `LockStatus` of this choice. |
| `properties` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties` | Basic properties of the choice. |
| `publishTime` | `string` | Output only. The time this choice was published. This value has no meaning when the choice is not... |
| `publisher` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who published this choice. This value has no meaning when the choice is not... |
| `schemaCapabilities` | `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities` | Output only. The capabilities related to this option when editing the option. |
| `updateTime` | `string` | Output only. The time this choice was updated last. |
| `updater` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who updated this choice last. |

### `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities`

The capabilities related to this choice on applied metadata.

| Property | Type | Description |
|----------|------|-------------|
| `canRead` | `boolean` | Whether the user can read related applied metadata on items. |
| `canSearch` | `boolean` | Whether the user can use this choice in search queries. |
| `canSelect` | `boolean` | Whether the user can select this choice on an item. |

### `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints`

UI display hints for rendering an option.

| Property | Type | Description |
|----------|------|-------------|
| `badgeColors` | `GoogleAppsDriveLabelsV2BadgeColors` | The colors to use for the badge. Changed to Google Material colors based on the chosen `propertie... |
| `badgePriority` | `string` | The priority of this badge. Used to compare and sort between multiple badges. A lower number mean... |
| `darkBadgeColors` | `GoogleAppsDriveLabelsV2BadgeColors` | The dark-mode color to use for the badge. Changed to Google Material colors based on the chosen `... |
| `disabled` | `boolean` | Whether the option should be shown in the UI as disabled. |
| `hiddenInSearch` | `boolean` | This option should be hidden in the search menu when searching for Drive items. |
| `shownInApply` | `boolean` | This option should be shown in the apply menu when applying values to a Drive item. |

### `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties`

Basic properties of the choice.

| Property | Type | Description |
|----------|------|-------------|
| `badgeConfig` | `GoogleAppsDriveLabelsV2BadgeConfig` | The badge configuration for this choice. When set, the label that owns this choice is considered ... |
| `description` | `string` | The description of this label. |
| `displayName` | `string` | Required. The display text to show in the UI identifying this field. |
| `insertBeforeChoice` | `string` | Input only. Insert or move this choice before the indicated choice. If empty, the choice is place... |

### `GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities`

The capabilities related to this choice when editing the choice.

| Property | Type | Description |
|----------|------|-------------|
| `canDelete` | `boolean` | Whether the user can delete this choice. |
| `canDisable` | `boolean` | Whether the user can disable this choice. |
| `canEnable` | `boolean` | Whether the user can enable this choice. |
| `canUpdate` | `boolean` | Whether the user can update this choice. |

### `GoogleAppsDriveLabelsV2FieldTextOptions`

Options for the Text field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxLength` | `integer` | Output only. The maximum valid length of values for the text field. |
| `minLength` | `integer` | Output only. The minimum valid length of values for the text field. |

### `GoogleAppsDriveLabelsV2FieldUserOptions`

Options for the user field type.

| Property | Type | Description |
|----------|------|-------------|
| `listOptions` | `GoogleAppsDriveLabelsV2FieldListOptions` | When specified, indicates that this field supports a list of values. Once the field is published,... |

### `GoogleAppsDriveLabelsV2IntegerLimits`

Limits for integer field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | Maximum value for an integer field type. |
| `minValue` | `string` | Minimum value for an integer field type. |

### `GoogleAppsDriveLabelsV2Label`

A label defines a taxonomy that can be applied to Drive items in order to organize and search across items. Labels can be simple strings, or can contain fields that describe additional metadata that can be further used to organize and search Drive items.

| Property | Type | Description |
|----------|------|-------------|
| `appliedCapabilities` | `GoogleAppsDriveLabelsV2LabelAppliedCapabilities` | Output only. The capabilities related to this label on applied metadata. |
| `appliedLabelPolicy` | `GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy` | Output only. Behavior of this label when it's applied to Drive items. |
| `createTime` | `string` | Output only. The time this label was created. |
| `creator` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who created this label. |
| `customer` | `string` | Output only. The customer this label belongs to. For example: `customers/123abc789`. |
| `disableTime` | `string` | Output only. The time this label was disabled. This value has no meaning when the label isn't dis... |
| `disabler` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who disabled this label. This value has no meaning when the label isn't dis... |
| `displayHints` | `GoogleAppsDriveLabelsV2LabelDisplayHints` | Output only. UI display hints for rendering the label. |
| `enabledAppSettings` | `GoogleAppsDriveLabelsV2LabelEnabledAppSettings` | Optional. The `EnabledAppSettings` for this Label. |
| `fields` | `array<GoogleAppsDriveLabelsV2Field>` | List of fields in descending priority order. |
| `id` | `string` | Output only. Globally unique identifier of this label. ID makes up part of the label `name`, but ... |
| `labelType` | `string` | Required. The type of label. |
| `learnMoreUri` | `string` | Custom URL to present to users to allow them to learn more about this label and how it should be ... |
| `lifecycle` | `GoogleAppsDriveLabelsV2Lifecycle` | Output only. The lifecycle state of the label including whether it's published, deprecated, and h... |
| `lockStatus` | `GoogleAppsDriveLabelsV2LockStatus` | Output only. The `LockStatus` of this label. |
| `name` | `string` | Output only. Resource name of the label. Will be in the form of either: `labels/{id}` or `labels/... |
| `properties` | `GoogleAppsDriveLabelsV2LabelProperties` | Required. The basic properties of the label. |
| `publishTime` | `string` | Output only. The time this label was published. This value has no meaning when the label isn't pu... |
| `publisher` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who published this label. This value has no meaning when the label isn't pu... |
| `revisionCreateTime` | `string` | Output only. The time this label revision was created. |
| `revisionCreator` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user who created this label revision. |
| `revisionId` | `string` | Output only. Revision ID of the label. Revision ID might be part of the label `name` depending on... |
| `schemaCapabilities` | `GoogleAppsDriveLabelsV2LabelSchemaCapabilities` | Output only. The capabilities the user has on this label. |

### `GoogleAppsDriveLabelsV2LabelAppliedCapabilities`

The capabilities a user has on this label's applied metadata.

| Property | Type | Description |
|----------|------|-------------|
| `canApply` | `boolean` | Whether the user can apply this label to items. |
| `canRead` | `boolean` | Whether the user can read applied metadata related to this label. |
| `canRemove` | `boolean` | Whether the user can remove this label from items. |

### `GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy`

Behavior of this label when it's applied to Drive items.

| Property | Type | Description |
|----------|------|-------------|
| `copyMode` | `string` | Indicates how the applied label and field values should be copied when a Drive item is copied. |

### `GoogleAppsDriveLabelsV2LabelDisplayHints`

The UI display hints for rendering the label.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the label should be shown in the UI as disabled. |
| `hiddenInSearch` | `boolean` | This label should be hidden in the search menu when searching for Drive items. |
| `priority` | `string` | The order to display labels in a list. |
| `shownInApply` | `boolean` | This label should be shown in the apply menu when applying values to a Drive item. |

### `GoogleAppsDriveLabelsV2LabelEnabledAppSettings`

Describes the Google Workspace apps in which the label can be used.

| Property | Type | Description |
|----------|------|-------------|
| `enabledApps` | `array<GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp>` | Optional. The list of apps where the label can be used. |

### `GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp`

An app where the label can be used.

| Property | Type | Description |
|----------|------|-------------|
| `app` | `string` | Optional. The name of the app. |

### `GoogleAppsDriveLabelsV2LabelLimits`

Label constraints governing the structure of a label; such as, the maximum number of fields allowed and maximum length of the label title.

| Property | Type | Description |
|----------|------|-------------|
| `fieldLimits` | `GoogleAppsDriveLabelsV2FieldLimits` | The limits for fields. |
| `maxDeletedFields` | `integer` | The maximum number of published fields that can be deleted. |
| `maxDescriptionLength` | `integer` | The maximum number of characters allowed for the description. |
| `maxDraftRevisions` | `integer` | The maximum number of draft revisions that will be kept before deleting old drafts. |
| `maxFields` | `integer` | The maximum number of fields allowed within the label. |
| `maxTitleLength` | `integer` | The maximum number of characters allowed for the title. |
| `name` | `string` | Resource name. |

### `GoogleAppsDriveLabelsV2LabelLock`

A lock that can be applied to a label, field, or choice.

| Property | Type | Description |
|----------|------|-------------|
| `capabilities` | `GoogleAppsDriveLabelsV2LabelLockCapabilities` | Output only. The user's capabilities on this label lock. |
| `choiceId` | `string` | The ID of the selection field choice that should be locked. If present, `field_id` must also be p... |
| `createTime` | `string` | Output only. The time this label lock was created. |
| `creator` | `GoogleAppsDriveLabelsV2UserInfo` | Output only. The user whose credentials were used to create the label lock. Not present if no use... |
| `deleteTime` | `string` | Output only. A timestamp indicating when this label lock was scheduled for deletion. Present only... |
| `fieldId` | `string` | The ID of the field that should be locked. Empty if the whole label should be locked. |
| `name` | `string` | Output only. Resource name of this label lock. |
| `state` | `string` | Output only. This label lock's state. |

### `GoogleAppsDriveLabelsV2LabelLockCapabilities`

A description of a user's capabilities on a label lock.

| Property | Type | Description |
|----------|------|-------------|
| `canViewPolicy` | `boolean` | True if the user is authorized to view the policy. |

### `GoogleAppsDriveLabelsV2LabelPermission`

The permission that applies to a principal (user, group, audience) on a label.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Audience to grant a role to. The magic value of `audiences/default` may be used to apply the role... |
| `email` | `string` | Specifies the email address for a user or group principal. Not populated for audience principals.... |
| `group` | `string` | Group resource name. |
| `name` | `string` | Resource name of this permission. |
| `person` | `string` | Person resource name. |
| `role` | `string` | The role the principal should have. |

### `GoogleAppsDriveLabelsV2LabelProperties`

Basic properties of the label.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the label. |
| `title` | `string` | Required. Title of the label. |

### `GoogleAppsDriveLabelsV2LabelSchemaCapabilities`

The capabilities related to this label when editing the label.

| Property | Type | Description |
|----------|------|-------------|
| `canDelete` | `boolean` | Whether the user can delete this label. The user must have permission and the label must be disab... |
| `canDisable` | `boolean` | Whether the user can disable this label. The user must have permission and this label must not al... |
| `canEnable` | `boolean` | Whether the user can enable this label. The user must have permission and this label must be disa... |
| `canUpdate` | `boolean` | Whether the user can change this label. |

### `GoogleAppsDriveLabelsV2Lifecycle`

The lifecycle state of an object, such as label, field, or choice. For more information, see [Label lifecycle](https://developers.google.com/workspace/drive/labels/guides/label-lifecycle). The lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted) * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (Deleted) The published and disabled states have some distinct characteristics: * `Published`: Some kinds of changes might be made to an object in this state, in which case `has_unpublished_changes` will be true. Also, some kinds of changes aren't permitted. Generally, any change that would invalidate or cause new restrictions on existing metadata related to the label are rejected. * `Disabled`: When disabled, the configured `DisabledPolicy` takes effect.

| Property | Type | Description |
|----------|------|-------------|
| `disabledPolicy` | `GoogleAppsDriveLabelsV2LifecycleDisabledPolicy` | The policy that governs how to show a disabled label, field, or selection choice. |
| `hasUnpublishedChanges` | `boolean` | Output only. Whether the object associated with this lifecycle has unpublished changes. |
| `state` | `string` | Output only. The state of the object associated with this lifecycle. |

### `GoogleAppsDriveLabelsV2LifecycleDisabledPolicy`

The policy that governs how to treat a disabled label, field, or selection choice in different contexts.

| Property | Type | Description |
|----------|------|-------------|
| `hideInSearch` | `boolean` | Whether to hide this disabled object in the search menu for Drive items. * When `false`, the obje... |
| `showInApply` | `boolean` | Whether to show this disabled object in the apply menu on Drive items. * When `true`, the object ... |

### `GoogleAppsDriveLabelsV2ListLabelLocksResponse`

The response to a `ListLabelLocksRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `labelLocks` | `array<GoogleAppsDriveLabelsV2LabelLock>` | Label locks. |
| `nextPageToken` | `string` | The token of the next page in the response. |

### `GoogleAppsDriveLabelsV2ListLabelPermissionsResponse`

Response for listing the permissions on a label.

| Property | Type | Description |
|----------|------|-------------|
| `labelPermissions` | `array<GoogleAppsDriveLabelsV2LabelPermission>` | Label permissions. |
| `nextPageToken` | `string` | The token of the next page in the response. |

### `GoogleAppsDriveLabelsV2ListLabelsResponse`

Response for listing labels.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<GoogleAppsDriveLabelsV2Label>` | Labels. |
| `nextPageToken` | `string` | The token of the next page in the response. |

### `GoogleAppsDriveLabelsV2ListLimits`

Limits for list-variant of a field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxEntries` | `integer` | Maximum number of values allowed for the field type. |

### `GoogleAppsDriveLabelsV2LockStatus`

Contains information about whether a label component should be considered locked.

| Property | Type | Description |
|----------|------|-------------|
| `locked` | `boolean` | Output only. Indicates whether this label component is the (direct) target of a label lock. A lab... |

### `GoogleAppsDriveLabelsV2LongTextLimits`

Limits for long text field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxLength` | `integer` | Maximum length allowed for a long text field type. |
| `minLength` | `integer` | Minimum length allowed for a long text field type. |

### `GoogleAppsDriveLabelsV2PublishLabelRequest`

Request to publish a label.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The BCP-47 language code to use for evaluating localized field labels. When not specified, values... |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |
| `writeControl` | `GoogleAppsDriveLabelsV2WriteControl` | Provides control over how write requests are executed. Defaults to unset, which means the last wr... |

### `GoogleAppsDriveLabelsV2SelectionLimits`

Limits for selection field type.

| Property | Type | Description |
|----------|------|-------------|
| `listLimits` | `GoogleAppsDriveLabelsV2ListLimits` | Limits for list-variant of a field type. |
| `maxChoices` | `integer` | Maximum number of choices. |
| `maxDeletedChoices` | `integer` | Maximum number of deleted choices. |
| `maxDisplayNameLength` | `integer` | Maximum length for display name. |
| `maxIdLength` | `integer` | Maximum ID length for a selection option. |

### `GoogleAppsDriveLabelsV2TextLimits`

Limits for text field type.

| Property | Type | Description |
|----------|------|-------------|
| `maxLength` | `integer` | Maximum length allowed for a text field type. |
| `minLength` | `integer` | Minimum length allowed for a text field type. |

### `GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest`

Request to update the `CopyMode` of the given label. Changes to this policy aren't revisioned, don't require publishing, and take effect immediately. \

| Property | Type | Description |
|----------|------|-------------|
| `copyMode` | `string` | Required. Indicates how the applied label and field values should be copied when a Drive item is ... |
| `languageCode` | `string` | The BCP-47 language code to use for evaluating localized field labels. When not specified, values... |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |
| `view` | `string` | When specified, only certain fields belonging to the indicated view will be returned. |

### `GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest`

Request to update the `EnabledAppSettings` of the given label. This change is not revisioned, doesn't require publishing, and takes effect immediately. \

| Property | Type | Description |
|----------|------|-------------|
| `enabledAppSettings` | `GoogleAppsDriveLabelsV2LabelEnabledAppSettings` | Required. The new `EnabledAppSettings` value for the label. |
| `languageCode` | `string` | Optional. The BCP-47 language code to use for evaluating localized field labels. When not specifi... |
| `useAdminAccess` | `boolean` | Optional. Set to `true` in order to use the user's admin credentials. The server will verify the ... |
| `view` | `string` | Optional. When specified, only certain fields belonging to the indicated view will be returned. |

### `GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest`

Updates a label permission. Permissions affect the label resource as a whole, aren't revisioned, and don't require publishing.

| Property | Type | Description |
|----------|------|-------------|
| `labelPermission` | `GoogleAppsDriveLabelsV2LabelPermission` | Required. The permission to create or update on the label. |
| `parent` | `string` | Required. The parent label resource name. |
| `useAdminAccess` | `boolean` | Set to `true` in order to use the user's admin credentials. The server will verify the user is an... |

### `GoogleAppsDriveLabelsV2UserCapabilities`

The capabilities of a user.

| Property | Type | Description |
|----------|------|-------------|
| `canAccessLabelManager` | `boolean` | Output only. Whether the user is allowed access to the label manager. |
| `canAdministrateLabels` | `boolean` | Output only. Whether the user is an administrator for the shared labels feature. |
| `canCreateAdminLabels` | `boolean` | Output only. Whether the user is allowed to create admin labels. |
| `canCreateSharedLabels` | `boolean` | Output only. Whether the user is allowed to create shared labels. |
| `name` | `string` | Output only. Resource name for the user capabilities. |

### `GoogleAppsDriveLabelsV2UserInfo`

Information about a user.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `string` | The identifier for this user that can be used with the [People API](https://developers.google.com... |

### `GoogleAppsDriveLabelsV2UserLimits`

Limits for Field.Type.USER.

| Property | Type | Description |
|----------|------|-------------|
| `listLimits` | `GoogleAppsDriveLabelsV2ListLimits` | Limits for list-variant of a field type. |

### `GoogleAppsDriveLabelsV2WriteControl`

Provides control over how write requests are executed. When not specified, the last write wins.

| Property | Type | Description |
|----------|------|-------------|
| `requiredRevisionId` | `string` | The revision ID of the label that the write request will be applied to. If this isn't the latest ... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleTypeColor`

Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most `1e-5`. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...

| Property | Type | Description |
|----------|------|-------------|
| `alpha` | `number` | The fraction of this color that should be applied to the pixel. That is, the final pixel color is... |
| `blue` | `number` | The amount of blue in the color as a value in the interval [0, 1]. |
| `green` | `number` | The amount of green in the color as a value in the interval [0, 1]. |
| `red` | `number` | The amount of red in the color as a value in the interval [0, 1]. |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

