# Cloud Storage JSON API - API Reference

**Version**: `v1` | **Methods**: 82 | **Schemas**: 34

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `storage.anywhereCaches.insert` | POST | `b/{bucket}/anywhereCaches` | Creates an Anywhere Cache instance. |
| `storage.anywhereCaches.update` | PATCH | `b/{bucket}/anywhereCaches/{anywhereCacheId}` | Updates the config(ttl and admissionPolicy) of an Anywhere Cache instance. |
| `storage.anywhereCaches.get` | GET | `b/{bucket}/anywhereCaches/{anywhereCacheId}` | Returns the metadata of an Anywhere Cache instance. |
| `storage.anywhereCaches.list` | GET | `b/{bucket}/anywhereCaches` | Returns a list of Anywhere Cache instances of the bucket matching the criteria. |
| `storage.anywhereCaches.pause` | POST | `b/{bucket}/anywhereCaches/{anywhereCacheId}/pause` | Pauses an Anywhere Cache instance. |
| `storage.anywhereCaches.resume` | POST | `b/{bucket}/anywhereCaches/{anywhereCacheId}/resume` | Resumes a paused or disabled Anywhere Cache instance. |
| `storage.anywhereCaches.disable` | POST | `b/{bucket}/anywhereCaches/{anywhereCacheId}/disable` | Disables an Anywhere Cache instance. |
| `storage.bucketAccessControls.delete` | DELETE | `b/{bucket}/acl/{entity}` | Permanently deletes the ACL entry for the specified entity on the specified bucket. |
| `storage.bucketAccessControls.get` | GET | `b/{bucket}/acl/{entity}` | Returns the ACL entry for the specified entity on the specified bucket. |
| `storage.bucketAccessControls.insert` | POST | `b/{bucket}/acl` | Creates a new ACL entry on the specified bucket. |
| `storage.bucketAccessControls.list` | GET | `b/{bucket}/acl` | Retrieves ACL entries on the specified bucket. |
| `storage.bucketAccessControls.patch` | PATCH | `b/{bucket}/acl/{entity}` | Patches an ACL entry on the specified bucket. |
| `storage.bucketAccessControls.update` | PUT | `b/{bucket}/acl/{entity}` | Updates an ACL entry on the specified bucket. |
| `storage.buckets.delete` | DELETE | `b/{bucket}` | Deletes an empty bucket. Deletions are permanent unless soft delete is enabled on the bucket. |
| `storage.buckets.restore` | POST | `b/{bucket}/restore` | Restores a soft-deleted bucket. |
| `storage.buckets.relocate` | POST | `b/{bucket}/relocate` | Initiates a long-running Relocate Bucket operation on the specified bucket. |
| `storage.buckets.get` | GET | `b/{bucket}` | Returns metadata for the specified bucket. |
| `storage.buckets.getIamPolicy` | GET | `b/{bucket}/iam` | Returns an IAM policy for the specified bucket. |
| `storage.buckets.getStorageLayout` | GET | `b/{bucket}/storageLayout` | Returns the storage layout configuration for the specified bucket. Note that this operation requi... |
| `storage.buckets.insert` | POST | `b` | Creates a new bucket. |
| `storage.buckets.list` | GET | `b` | Retrieves a list of buckets for a given project. |
| `storage.buckets.lockRetentionPolicy` | POST | `b/{bucket}/lockRetentionPolicy` | Locks retention policy on a bucket. |
| `storage.buckets.patch` | PATCH | `b/{bucket}` | Patches a bucket. Changes to the bucket will be readable immediately after writing, but configura... |
| `storage.buckets.setIamPolicy` | PUT | `b/{bucket}/iam` | Updates an IAM policy for the specified bucket. |
| `storage.buckets.testIamPermissions` | GET | `b/{bucket}/iam/testPermissions` | Tests a set of permissions on the given bucket to see which, if any, are held by the caller. |
| `storage.buckets.update` | PUT | `b/{bucket}` | Updates a bucket. Changes to the bucket will be readable immediately after writing, but configura... |
| `storage.buckets.operations.cancel` | POST | `b/{bucket}/operations/{operationId}/cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `storage.buckets.operations.get` | GET | `b/{bucket}/operations/{operationId}` | Gets the latest state of a long-running operation. |
| `storage.buckets.operations.advanceRelocateBucket` | POST | `b/{bucket}/operations/{operationId}/advanceRelocateBucket` | Starts asynchronous advancement of the relocate bucket operation in the case of required write do... |
| `storage.buckets.operations.list` | GET | `b/{bucket}/operations` | Lists operations that match the specified filter in the request. |
| `storage.channels.stop` | POST | `channels/stop` | Stop watching resources through this channel |
| `storage.defaultObjectAccessControls.delete` | DELETE | `b/{bucket}/defaultObjectAcl/{entity}` | Permanently deletes the default object ACL entry for the specified entity on the specified bucket. |
| `storage.defaultObjectAccessControls.get` | GET | `b/{bucket}/defaultObjectAcl/{entity}` | Returns the default object ACL entry for the specified entity on the specified bucket. |
| `storage.defaultObjectAccessControls.insert` | POST | `b/{bucket}/defaultObjectAcl` | Creates a new default object ACL entry on the specified bucket. |
| `storage.defaultObjectAccessControls.list` | GET | `b/{bucket}/defaultObjectAcl` | Retrieves default object ACL entries on the specified bucket. |
| `storage.defaultObjectAccessControls.patch` | PATCH | `b/{bucket}/defaultObjectAcl/{entity}` | Patches a default object ACL entry on the specified bucket. |
| `storage.defaultObjectAccessControls.update` | PUT | `b/{bucket}/defaultObjectAcl/{entity}` | Updates a default object ACL entry on the specified bucket. |
| `storage.folders.delete` | DELETE | `b/{bucket}/folders/{folder}` | Permanently deletes a folder. Only applicable to buckets with hierarchical namespace enabled. |
| `storage.folders.deleteRecursive` | POST | `b/{bucket}/folders/{folder}/deleteRecursive` | Deletes a folder recursively. Only applicable to buckets with hierarchical namespace enabled. |
| `storage.folders.get` | GET | `b/{bucket}/folders/{folder}` | Returns metadata for the specified folder. Only applicable to buckets with hierarchical namespace... |
| `storage.folders.insert` | POST | `b/{bucket}/folders` | Creates a new folder. Only applicable to buckets with hierarchical namespace enabled. |
| `storage.folders.list` | GET | `b/{bucket}/folders` | Retrieves a list of folders matching the criteria. Only applicable to buckets with hierarchical n... |
| `storage.folders.rename` | POST | `b/{bucket}/folders/{sourceFolder}/renameTo/folders/{destinationFolder}` | Renames a source folder to a destination folder. Only applicable to buckets with hierarchical nam... |
| `storage.managedFolders.delete` | DELETE | `b/{bucket}/managedFolders/{managedFolder}` | Permanently deletes a managed folder. |
| `storage.managedFolders.get` | GET | `b/{bucket}/managedFolders/{managedFolder}` | Returns metadata of the specified managed folder. |
| `storage.managedFolders.getIamPolicy` | GET | `b/{bucket}/managedFolders/{managedFolder}/iam` | Returns an IAM policy for the specified managed folder. |
| `storage.managedFolders.insert` | POST | `b/{bucket}/managedFolders` | Creates a new managed folder. |
| `storage.managedFolders.list` | GET | `b/{bucket}/managedFolders` | Lists managed folders in the given bucket. |
| `storage.managedFolders.setIamPolicy` | PUT | `b/{bucket}/managedFolders/{managedFolder}/iam` | Updates an IAM policy for the specified managed folder. |
| `storage.managedFolders.testIamPermissions` | GET | `b/{bucket}/managedFolders/{managedFolder}/iam/testPermissions` | Tests a set of permissions on the given managed folder to see which, if any, are held by the caller. |
| `storage.notifications.delete` | DELETE | `b/{bucket}/notificationConfigs/{notification}` | Permanently deletes a notification subscription. |
| `storage.notifications.get` | GET | `b/{bucket}/notificationConfigs/{notification}` | View a notification configuration. |
| `storage.notifications.insert` | POST | `b/{bucket}/notificationConfigs` | Creates a notification subscription for a given bucket. |
| `storage.notifications.list` | GET | `b/{bucket}/notificationConfigs` | Retrieves a list of notification subscriptions for a given bucket. |
| `storage.objectAccessControls.delete` | DELETE | `b/{bucket}/o/{object}/acl/{entity}` | Permanently deletes the ACL entry for the specified entity on the specified object. |
| `storage.objectAccessControls.get` | GET | `b/{bucket}/o/{object}/acl/{entity}` | Returns the ACL entry for the specified entity on the specified object. |
| `storage.objectAccessControls.insert` | POST | `b/{bucket}/o/{object}/acl` | Creates a new ACL entry on the specified object. |
| `storage.objectAccessControls.list` | GET | `b/{bucket}/o/{object}/acl` | Retrieves ACL entries on the specified object. |
| `storage.objectAccessControls.patch` | PATCH | `b/{bucket}/o/{object}/acl/{entity}` | Patches an ACL entry on the specified object. |
| `storage.objectAccessControls.update` | PUT | `b/{bucket}/o/{object}/acl/{entity}` | Updates an ACL entry on the specified object. |
| `storage.objects.compose` | POST | `b/{destinationBucket}/o/{destinationObject}/compose` | Concatenates a list of existing objects into a new object in the same bucket. |
| `storage.objects.copy` | POST | `b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}` | Copies a source object to a destination object. Optionally overrides metadata. |
| `storage.objects.delete` | DELETE | `b/{bucket}/o/{object}` | Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the ... |
| `storage.objects.get` | GET | `b/{bucket}/o/{object}` | Retrieves an object or its metadata. |
| `storage.objects.getIamPolicy` | GET | `b/{bucket}/o/{object}/iam` | Returns an IAM policy for the specified object. |
| `storage.objects.insert` | POST | `b/{bucket}/o` | Stores a new object and metadata. |
| `storage.objects.list` | GET | `b/{bucket}/o` | Retrieves a list of objects matching the criteria. |
| `storage.objects.patch` | PATCH | `b/{bucket}/o/{object}` | Patches an object's metadata. |
| `storage.objects.rewrite` | POST | `b/{sourceBucket}/o/{sourceObject}/rewriteTo/b/{destinationBucket}/o/{destinationObject}` | Rewrites a source object to a destination object. Optionally overrides metadata. |
| `storage.objects.move` | POST | `b/{bucket}/o/{sourceObject}/moveTo/o/{destinationObject}` | Moves the source object to the destination object in the same bucket. |
| `storage.objects.setIamPolicy` | PUT | `b/{bucket}/o/{object}/iam` | Updates an IAM policy for the specified object. |
| `storage.objects.testIamPermissions` | GET | `b/{bucket}/o/{object}/iam/testPermissions` | Tests a set of permissions on the given object to see which, if any, are held by the caller. |
| `storage.objects.update` | PUT | `b/{bucket}/o/{object}` | Updates an object's metadata. |
| `storage.objects.watchAll` | POST | `b/{bucket}/o/watch` | Watch for changes on all objects in a bucket. |
| `storage.objects.restore` | POST | `b/{bucket}/o/{object}/restore` | Restores a soft-deleted object. |
| `storage.objects.bulkRestore` | POST | `b/{bucket}/o/bulkRestore` | Initiates a long-running bulk restore operation on the specified bucket. |
| `storage.projects.hmacKeys.create` | POST | `projects/{projectId}/hmacKeys` | Creates a new HMAC key for the specified service account. |
| `storage.projects.hmacKeys.delete` | DELETE | `projects/{projectId}/hmacKeys/{accessId}` | Deletes an HMAC key. |
| `storage.projects.hmacKeys.get` | GET | `projects/{projectId}/hmacKeys/{accessId}` | Retrieves an HMAC key's metadata |
| `storage.projects.hmacKeys.list` | GET | `projects/{projectId}/hmacKeys` | Retrieves a list of HMAC keys matching the criteria. |
| `storage.projects.hmacKeys.update` | PUT | `projects/{projectId}/hmacKeys/{accessId}` | Updates the state of an HMAC key. See the [HMAC Key resource descriptor](https://cloud.google.com... |
| `storage.projects.serviceAccount.get` | GET | `projects/{projectId}/serviceAccount` | Get the email address of this project's Google Cloud Storage service account. |

### `storage.anywhereCaches.insert`

**POST** `b/{bucket}/anywhereCaches`

Creates an Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |

**Request body**: `AnywhereCache`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.anywhereCaches.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.update`

**PATCH** `b/{bucket}/anywhereCaches/{anywhereCacheId}`

Updates the config(ttl and admissionPolicy) of an Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `anywhereCacheId` | `string` | path | Yes | The ID of requested Anywhere Cache instance. |

**Request body**: `AnywhereCache`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.anywhereCaches.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.get`

**GET** `b/{bucket}/anywhereCaches/{anywhereCacheId}`

Returns the metadata of an Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `anywhereCacheId` | `string` | path | Yes | The ID of requested Anywhere Cache instance. |

**Response**: `AnywhereCache`

```typescript
const res = await storage.anywhereCaches.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.list`

**GET** `b/{bucket}/anywhereCaches`

Returns a list of Anywhere Cache instances of the bucket matching the criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `pageSize` | `integer` | query | No | Maximum number of items to return in a single page of responses. Maximum 1000. |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |

**Response**: `AnywhereCaches`

```typescript
const res = await storage.anywhereCaches.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.pause`

**POST** `b/{bucket}/anywhereCaches/{anywhereCacheId}/pause`

Pauses an Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `anywhereCacheId` | `string` | path | Yes | The ID of requested Anywhere Cache instance. |

**Response**: `AnywhereCache`

```typescript
const res = await storage.anywhereCaches.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.resume`

**POST** `b/{bucket}/anywhereCaches/{anywhereCacheId}/resume`

Resumes a paused or disabled Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `anywhereCacheId` | `string` | path | Yes | The ID of requested Anywhere Cache instance. |

**Response**: `AnywhereCache`

```typescript
const res = await storage.anywhereCaches.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.anywhereCaches.disable`

**POST** `b/{bucket}/anywhereCaches/{anywhereCacheId}/disable`

Disables an Anywhere Cache instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the parent bucket. |
| `anywhereCacheId` | `string` | path | Yes | The ID of requested Anywhere Cache instance. |

**Response**: `AnywhereCache`

```typescript
const res = await storage.anywhereCaches.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.bucketAccessControls.delete`

**DELETE** `b/{bucket}/acl/{entity}`

Permanently deletes the ACL entry for the specified entity on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.bucketAccessControls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.bucketAccessControls.get`

**GET** `b/{bucket}/acl/{entity}`

Returns the ACL entry for the specified entity on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `BucketAccessControl`

```typescript
const res = await storage.bucketAccessControls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.bucketAccessControls.insert`

**POST** `b/{bucket}/acl`

Creates a new ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `BucketAccessControl`

**Response**: `BucketAccessControl`

```typescript
const res = await storage.bucketAccessControls.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.bucketAccessControls.list`

**GET** `b/{bucket}/acl`

Retrieves ACL entries on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `BucketAccessControls`

```typescript
const res = await storage.bucketAccessControls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.bucketAccessControls.patch`

**PATCH** `b/{bucket}/acl/{entity}`

Patches an ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `BucketAccessControl`

**Response**: `BucketAccessControl`

```typescript
const res = await storage.bucketAccessControls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.bucketAccessControls.update`

**PUT** `b/{bucket}/acl/{entity}`

Updates an ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `BucketAccessControl`

**Response**: `BucketAccessControl`

```typescript
const res = await storage.bucketAccessControls.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.buckets.delete`

**DELETE** `b/{bucket}`

Deletes an empty bucket. Deletions are permanent unless soft delete is enabled on the bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `ifMetagenerationMatch` | `string` | query | No | If set, only deletes the bucket if its metageneration matches this value. |
| `ifMetagenerationNotMatch` | `string` | query | No | If set, only deletes the bucket if its metageneration does not match this value. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.restore`

**POST** `b/{bucket}/restore`

Restores a soft-deleted bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `generation` | `string` | query | Yes | Generation of a bucket. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Bucket`

```typescript
const res = await storage.buckets.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.relocate`

**POST** `b/{bucket}/relocate`

Initiates a long-running Relocate Bucket operation on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket to be moved. |

**Request body**: `RelocateBucketRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.buckets.relocate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.get`

**GET** `b/{bucket}`

Returns metadata for the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `generation` | `string` | query | No | If present, specifies the generation of the bucket. This is required if softDeleted is true. |
| `ifMetagenerationMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given ... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the... |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `softDeleted` | `boolean` | query | No | If true, return the soft-deleted version of this bucket. The default is false. For more information, see [Soft Delete... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Bucket`

```typescript
const res = await storage.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.getIamPolicy`

**GET** `b/{bucket}/iam`

Returns an IAM policy for the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `optionsRequestedPolicyVersion` | `integer` | query | No | The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Policy`

```typescript
const res = await storage.buckets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.buckets.getStorageLayout`

**GET** `b/{bucket}/storageLayout`

Returns the storage layout configuration for the specified bucket. Note that this operation requires storage.objects.list permission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `prefix` | `string` | query | No | An optional prefix used for permission check. It is useful when the caller only has storage.objects.list permission u... |

**Response**: `BucketStorageLayout`

```typescript
const res = await storage.buckets.getStorageLayout({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.insert`

**POST** `b`

Creates a new bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | query | Yes | A valid API project identifier. |
| `enableObjectRetention` | `boolean` | query | No | When set to true, object retention is enabled for this bucket. |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this bucket. |
| `predefinedDefaultObjectAcl` | `string` | query | No | Apply a predefined set of default object access controls to this bucket. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properti... |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Request body**: `Bucket`

**Response**: `Bucket`

```typescript
const res = await storage.buckets.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.list`

**GET** `b`

Retrieves a list of buckets for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | query | Yes | A valid API project identifier. |
| `maxResults` | `integer` | query | No | Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichev... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `prefix` | `string` | query | No | Filter results to buckets whose names begin with this prefix. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `returnPartialSuccess` | `boolean` | query | No | If true, return a list of bucket resource names for buckets that are in unreachable locations. |
| `softDeleted` | `boolean` | query | No | If true, only soft-deleted bucket versions will be returned. The default is false. For more information, see [Soft De... |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Response**: `Buckets`

```typescript
const res = await storage.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.lockRetentionPolicy`

**POST** `b/{bucket}/lockRetentionPolicy`

Locks retention policy on a bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `ifMetagenerationMatch` | `string` | query | Yes | Makes the operation conditional on whether bucket's current metageneration matches the given value. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Bucket`

```typescript
const res = await storage.buckets.lockRetentionPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.patch`

**PATCH** `b/{bucket}`

Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `ifMetagenerationMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given ... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the... |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this bucket. |
| `predefinedDefaultObjectAcl` | `string` | query | No | Apply a predefined set of default object access controls to this bucket. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Bucket`

**Response**: `Bucket`

```typescript
const res = await storage.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.buckets.setIamPolicy`

**PUT** `b/{bucket}/iam`

Updates an IAM policy for the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await storage.buckets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.buckets.testIamPermissions`

**GET** `b/{bucket}/iam/testPermissions`

Tests a set of permissions on the given bucket to see which, if any, are held by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `permissions` | `string` | query | Yes | Permissions to test. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await storage.buckets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.update`

**PUT** `b/{bucket}`

Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `ifMetagenerationMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given ... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the... |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this bucket. |
| `predefinedDefaultObjectAcl` | `string` | query | No | Apply a predefined set of default object access controls to this bucket. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Bucket`

**Response**: `Bucket`

```typescript
const res = await storage.buckets.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.buckets.operations.cancel`

**POST** `b/{bucket}/operations/{operationId}/cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | The parent bucket of the operation resource. |
| `operationId` | `string` | path | Yes | The ID of the operation resource. |

```typescript
const res = await storage.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.operations.get`

**GET** `b/{bucket}/operations/{operationId}`

Gets the latest state of a long-running operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | The parent bucket of the operation resource. |
| `operationId` | `string` | path | Yes | The ID of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.operations.advanceRelocateBucket`

**POST** `b/{bucket}/operations/{operationId}/advanceRelocateBucket`

Starts asynchronous advancement of the relocate bucket operation in the case of required write downtime, to allow it to lock the bucket at the source location, and proceed with the bucket location swap. The server makes a best effort to advance the relocate bucket operation, but success is not guaranteed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket to advance the relocate for. |
| `operationId` | `string` | path | Yes | ID of the operation resource. |

**Request body**: `AdvanceRelocateBucketOperationRequest`

```typescript
const res = await storage.operations.advanceRelocateBucket({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.buckets.operations.list`

**GET** `b/{bucket}/operations`

Lists operations that match the specified filter in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which to look for operations. |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language is documented in more detail in [AIP-16... |
| `pageSize` | `integer` | query | No | Maximum number of items to return in a single page of responses. Fewer total results may be returned than requested. ... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await storage.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.channels.stop`

**POST** `channels/stop`

Stop watching resources through this channel

**Request body**: `Channel`

```typescript
const res = await storage.channels.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.defaultObjectAccessControls.delete`

**DELETE** `b/{bucket}/defaultObjectAcl/{entity}`

Permanently deletes the default object ACL entry for the specified entity on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.defaultObjectAccessControls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.defaultObjectAccessControls.get`

**GET** `b/{bucket}/defaultObjectAcl/{entity}`

Returns the default object ACL entry for the specified entity on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.defaultObjectAccessControls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.defaultObjectAccessControls.insert`

**POST** `b/{bucket}/defaultObjectAcl`

Creates a new default object ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.defaultObjectAccessControls.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.defaultObjectAccessControls.list`

**GET** `b/{bucket}/defaultObjectAcl`

Retrieves default object ACL entries on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `ifMetagenerationMatch` | `string` | query | No | If present, only return default ACL listing if the bucket's current metageneration matches this value. |
| `ifMetagenerationNotMatch` | `string` | query | No | If present, only return default ACL listing if the bucket's current metageneration does not match the given value. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `ObjectAccessControls`

```typescript
const res = await storage.defaultObjectAccessControls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.defaultObjectAccessControls.patch`

**PATCH** `b/{bucket}/defaultObjectAcl/{entity}`

Patches a default object ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.defaultObjectAccessControls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.defaultObjectAccessControls.update`

**PUT** `b/{bucket}/defaultObjectAcl/{entity}`

Updates a default object ACL entry on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.defaultObjectAccessControls.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.folders.delete`

**DELETE** `b/{bucket}/folders/{folder}`

Permanently deletes a folder. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the folder resides. |
| `folder` | `string` | path | Yes | Name of a folder. |
| `ifMetagenerationMatch` | `string` | query | No | If set, only deletes the folder if its metageneration matches this value. |
| `ifMetagenerationNotMatch` | `string` | query | No | If set, only deletes the folder if its metageneration does not match this value. |

```typescript
const res = await storage.folders.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.folders.deleteRecursive`

**POST** `b/{bucket}/folders/{folder}/deleteRecursive`

Deletes a folder recursively. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the folder resides. |
| `folder` | `string` | path | Yes | Name of a folder. |
| `ifMetagenerationMatch` | `string` | query | No | If set, only deletes the folder if its metageneration matches this value. |
| `ifMetagenerationNotMatch` | `string` | query | No | If set, only deletes the folder if its metageneration does not match this value. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.folders.deleteRecursive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.folders.get`

**GET** `b/{bucket}/folders/{folder}`

Returns metadata for the specified folder. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the folder resides. |
| `folder` | `string` | path | Yes | Name of a folder. |
| `ifMetagenerationMatch` | `string` | query | No | Makes the return of the folder metadata conditional on whether the folder's current metageneration matches the given ... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the return of the folder metadata conditional on whether the folder's current metageneration does not match the... |

**Response**: `Folder`

```typescript
const res = await storage.folders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.folders.insert`

**POST** `b/{bucket}/folders`

Creates a new folder. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the folder resides. |
| `recursive` | `boolean` | query | No | If true, any parent folder which doesn't exist will be created automatically. |

**Request body**: `Folder`

**Response**: `Folder`

```typescript
const res = await storage.folders.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.folders.list`

**GET** `b/{bucket}/folders`

Retrieves a list of folders matching the criteria. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which to look for folders. |
| `delimiter` | `string` | query | No | Returns results in a directory-like mode. The only supported value is '/'. If set, items will only contain folders th... |
| `endOffset` | `string` | query | No | Filter results to folders whose names are lexicographically before endOffset. If startOffset is also set, the folders... |
| `pageSize` | `integer` | query | No | Maximum number of items to return in a single page of responses. |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `prefix` | `string` | query | No | Filter results to folders whose paths begin with this prefix. If set, the value must either be an empty string or end... |
| `startOffset` | `string` | query | No | Filter results to folders whose names are lexicographically equal to or after startOffset. If endOffset is also set, ... |

**Response**: `Folders`

```typescript
const res = await storage.folders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.folders.rename`

**POST** `b/{bucket}/folders/{sourceFolder}/renameTo/folders/{destinationFolder}`

Renames a source folder to a destination folder. Only applicable to buckets with hierarchical namespace enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the folders are in. |
| `sourceFolder` | `string` | path | Yes | Name of the source folder. |
| `destinationFolder` | `string` | path | Yes | Name of the destination folder. |
| `ifSourceMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration matches the given value. |
| `ifSourceMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration does not match the given value. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.folders.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.delete`

**DELETE** `b/{bucket}/managedFolders/{managedFolder}`

Permanently deletes a managed folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `managedFolder` | `string` | path | Yes | The managed folder name/path. |
| `allowNonEmpty` | `boolean` | query | No | Allows the deletion of a managed folder even if it is not empty. A managed folder is empty if there are no objects or... |
| `ifMetagenerationMatch` | `string` | query | No | If set, only deletes the managed folder if its metageneration matches this value. |
| `ifMetagenerationNotMatch` | `string` | query | No | If set, only deletes the managed folder if its metageneration does not match this value. |

```typescript
const res = await storage.managedFolders.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.get`

**GET** `b/{bucket}/managedFolders/{managedFolder}`

Returns metadata of the specified managed folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `managedFolder` | `string` | path | Yes | The managed folder name/path. |
| `ifMetagenerationMatch` | `string` | query | No | Makes the return of the managed folder metadata conditional on whether the managed folder's current metageneration ma... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the return of the managed folder metadata conditional on whether the managed folder's current metageneration do... |

**Response**: `ManagedFolder`

```typescript
const res = await storage.managedFolders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.getIamPolicy`

**GET** `b/{bucket}/managedFolders/{managedFolder}/iam`

Returns an IAM policy for the specified managed folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `managedFolder` | `string` | path | Yes | The managed folder name/path. |
| `optionsRequestedPolicyVersion` | `integer` | query | No | The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Policy`

```typescript
const res = await storage.managedFolders.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.insert`

**POST** `b/{bucket}/managedFolders`

Creates a new managed folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |

**Request body**: `ManagedFolder`

**Response**: `ManagedFolder`

```typescript
const res = await storage.managedFolders.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.list`

**GET** `b/{bucket}/managedFolders`

Lists managed folders in the given bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `pageSize` | `integer` | query | No | Maximum number of items to return in a single page of responses. |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `prefix` | `string` | query | No | The managed folder name/path prefix to filter the output list of results. |

**Response**: `ManagedFolders`

```typescript
const res = await storage.managedFolders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.managedFolders.setIamPolicy`

**PUT** `b/{bucket}/managedFolders/{managedFolder}/iam`

Updates an IAM policy for the specified managed folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `managedFolder` | `string` | path | Yes | The managed folder name/path. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await storage.managedFolders.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.managedFolders.testIamPermissions`

**GET** `b/{bucket}/managedFolders/{managedFolder}/iam/testPermissions`

Tests a set of permissions on the given managed folder to see which, if any, are held by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket containing the managed folder. |
| `managedFolder` | `string` | path | Yes | The managed folder name/path. |
| `permissions` | `string` | query | Yes | Permissions to test. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await storage.managedFolders.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.notifications.delete`

**DELETE** `b/{bucket}/notificationConfigs/{notification}`

Permanently deletes a notification subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | The parent bucket of the notification. |
| `notification` | `string` | path | Yes | ID of the notification to delete. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.notifications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.notifications.get`

**GET** `b/{bucket}/notificationConfigs/{notification}`

View a notification configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | The parent bucket of the notification. |
| `notification` | `string` | path | Yes | Notification ID |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Notification`

```typescript
const res = await storage.notifications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.notifications.insert`

**POST** `b/{bucket}/notificationConfigs`

Creates a notification subscription for a given bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | The parent bucket of the notification. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Notification`

**Response**: `Notification`

```typescript
const res = await storage.notifications.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.notifications.list`

**GET** `b/{bucket}/notificationConfigs`

Retrieves a list of notification subscriptions for a given bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a Google Cloud Storage bucket. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Notifications`

```typescript
const res = await storage.notifications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objectAccessControls.delete`

**DELETE** `b/{bucket}/o/{object}/acl/{entity}`

Permanently deletes the ACL entry for the specified entity on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.objectAccessControls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objectAccessControls.get`

**GET** `b/{bucket}/o/{object}/acl/{entity}`

Returns the ACL entry for the specified entity on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.objectAccessControls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objectAccessControls.insert`

**POST** `b/{bucket}/o/{object}/acl`

Creates a new ACL entry on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.objectAccessControls.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objectAccessControls.list`

**GET** `b/{bucket}/o/{object}/acl`

Retrieves ACL entries on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `ObjectAccessControls`

```typescript
const res = await storage.objectAccessControls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objectAccessControls.patch`

**PATCH** `b/{bucket}/o/{object}/acl/{entity}`

Patches an ACL entry on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.objectAccessControls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objectAccessControls.update`

**PUT** `b/{bucket}/o/{object}/acl/{entity}`

Updates an ACL entry on the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of a bucket. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `entity` | `string` | path | Yes | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ObjectAccessControl`

**Response**: `ObjectAccessControl`

```typescript
const res = await storage.objectAccessControls.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objects.compose`

**POST** `b/{destinationBucket}/o/{destinationObject}/compose`

Concatenates a list of existing objects into a new object in the same bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `destinationBucket` | `string` | path | Yes | Name of the bucket containing the source objects. The destination object is stored in this bucket. |
| `destinationObject` | `string` | path | Yes | Name of the new object. For information about how to URL encode object names to be path safe, see [Encoding URI Path ... |
| `destinationPredefinedAcl` | `string` | query | No | Apply a predefined set of access controls to the destination object. |
| `dropContextGroups` | `string` | query | No | Specifies which groups of Object Contexts from the source object(s) should be dropped from the destination object. |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `kmsKeyName` | `string` | query | No | Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `ComposeRequest`

**Response**: `Object`

```typescript
const res = await storage.objects.compose({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.copy`

**POST** `b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}`

Copies a source object to a destination object. Optionally overrides metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sourceBucket` | `string` | path | Yes | Name of the bucket in which to find the source object. |
| `sourceObject` | `string` | path | Yes | Name of the source object. For information about how to URL encode object names to be path safe, see [Encoding URI Pa... |
| `destinationBucket` | `string` | path | Yes | Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.Fo... |
| `destinationObject` | `string` | path | Yes | Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's ... |
| `destinationKmsKeyName` | `string` | query | No | Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key... |
| `destinationPredefinedAcl` | `string` | query | No | Apply a predefined set of access controls to the destination object. |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current generation matches the given value. Setti... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current generation does not match the given value... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration does not match the given v... |
| `ifSourceGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation matches the given value. |
| `ifSourceGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation does not match the given value. |
| `ifSourceMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration matches the given value. |
| `ifSourceMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration does not match the given value. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaul... |
| `sourceGeneration` | `string` | query | No | If present, selects a specific revision of the source object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Object`

**Response**: `Object`

```typescript
const res = await storage.objects.copy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.delete`

**DELETE** `b/{bucket}/o/{object}`

Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, permanently deletes a specific revision of this object (as opposed to the latest version, the default). |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration does not match the given value. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

```typescript
const res = await storage.objects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.get`

**GET** `b/{bucket}/o/{object}`

Retrieves an object or its metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration does not match the given value. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `restoreToken` | `string` | query | No | Restore token used to differentiate soft-deleted objects with the same name and generation. Only applicable for hiera... |
| `softDeleted` | `boolean` | query | No | If true, only soft-deleted object versions will be listed. The default is false. For more information, see [Soft Dele... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Object`

```typescript
const res = await storage.objects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.getIamPolicy`

**GET** `b/{bucket}/o/{object}/iam`

Returns an IAM policy for the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Policy`

```typescript
const res = await storage.objects.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.insert`

**POST** `b/{bucket}/o`

Stores a new object and metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any. |
| `contentEncoding` | `string` | query | No | If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to ... |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration does not match the given value. |
| `kmsKeyName` | `string` | query | No | Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key... |
| `name` | `string` | query | No | Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name... |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this object. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaul... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Object`

**Response**: `Object`

```typescript
const res = await storage.objects.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.list`

**GET** `b/{bucket}/o`

Retrieves a list of objects matching the criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which to look for objects. |
| `delimiter` | `string` | query | No | Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not ... |
| `endOffset` | `string` | query | No | Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects... |
| `filter` | `string` | query | No | Filter the returned objects. Currently only supported for the contexts field. If delimiter is set, the returned prefi... |
| `includeFoldersAsPrefixes` | `boolean` | query | No | Only applicable if delimiter is set to '/'. If true, will also include folders and managed folders (besides objects) ... |
| `includeTrailingDelimiter` | `boolean` | query | No | If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition... |
| `matchGlob` | `string` | query | No | Filter results to objects and prefixes that match this glob pattern. |
| `maxResults` | `integer` | query | No | Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, few... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `prefix` | `string` | query | No | Filter results to objects whose names begin with this prefix. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `softDeleted` | `boolean` | query | No | If true, only soft-deleted object versions will be listed. The default is false. For more information, see [Soft Dele... |
| `startOffset` | `string` | query | No | Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, ... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |
| `versions` | `boolean` | query | No | If true, lists all versions of an object as distinct results. The default is false. For more information, see [Object... |

**Response**: `Objects`

```typescript
const res = await storage.objects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.patch`

**PATCH** `b/{bucket}/o/{object}`

Patches an object's metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration does not match the given value. |
| `overrideUnlockedRetention` | `boolean` | query | No | Must be true to remove the retention configuration, reduce its unlocked retention period, or change its mode from unl... |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this object. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `userProject` | `string` | query | No | The project to be billed for this request, for Requester Pays buckets. |

**Request body**: `Object`

**Response**: `Object`

```typescript
const res = await storage.objects.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objects.rewrite`

**POST** `b/{sourceBucket}/o/{sourceObject}/rewriteTo/b/{destinationBucket}/o/{destinationObject}`

Rewrites a source object to a destination object. Optionally overrides metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sourceBucket` | `string` | path | Yes | Name of the bucket in which to find the source object. |
| `sourceObject` | `string` | path | Yes | Name of the source object. For information about how to URL encode object names to be path safe, see [Encoding URI Pa... |
| `destinationBucket` | `string` | path | Yes | Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any. |
| `destinationObject` | `string` | path | Yes | Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's ... |
| `destinationKmsKeyName` | `string` | query | No | Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key... |
| `destinationPredefinedAcl` | `string` | query | No | Apply a predefined set of access controls to the destination object. |
| `dropContextGroups` | `string` | query | No | Specifies which groups of Object Contexts from the source object should be dropped from the destination object. |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration does not match the given v... |
| `ifSourceGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation matches the given value. |
| `ifSourceGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation does not match the given value. |
| `ifSourceMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration matches the given value. |
| `ifSourceMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration does not match the given value. |
| `maxBytesRewrittenPerCall` | `string` | query | No | The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn't need to specify this p... |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaul... |
| `rewriteToken` | `string` | query | No | Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrit... |
| `sourceGeneration` | `string` | query | No | If present, selects a specific revision of the source object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Object`

**Response**: `RewriteResponse`

```typescript
const res = await storage.objects.rewrite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.move`

**POST** `b/{bucket}/o/{sourceObject}/moveTo/o/{destinationObject}`

Moves the source object to the destination object in the same bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `sourceObject` | `string` | path | Yes | Name of the source object. For information about how to URL encode object names to be path safe, see [Encoding URI Pa... |
| `destinationObject` | `string` | path | Yes | Name of the destination object. For information about how to URL encode object names to be path safe, see [Encoding U... |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current generation matches the given value. Setti... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current generation does not match the given value... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration matches the given value. `... |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the destination object's current metageneration does not match the given v... |
| `ifSourceGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation matches the given value. `ifSourceG... |
| `ifSourceGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current generation does not match the given value. `if... |
| `ifSourceMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration matches the given value. `ifSou... |
| `ifSourceMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the source object's current metageneration does not match the given value.... |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Object`

```typescript
const res = await storage.objects.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.setIamPolicy`

**PUT** `b/{bucket}/o/{object}/iam`

Updates an IAM policy for the specified object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await storage.objects.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.testIamPermissions`

**GET** `b/{bucket}/o/{object}/iam/testPermissions`

Tests a set of permissions on the given object to see which, if any, are held by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `permissions` | `string` | query | Yes | Permissions to test. |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await storage.objects.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.update`

**PUT** `b/{bucket}/o/{object}`

Updates an object's metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | No | If present, selects a specific revision of this object (as opposed to the latest version, the default). |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 make... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current generation does not match the given value. If no live... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether the object's current metageneration does not match the given value. |
| `overrideUnlockedRetention` | `boolean` | query | No | Must be true to remove the retention configuration, reduce its unlocked retention period, or change its mode from unl... |
| `predefinedAcl` | `string` | query | No | Apply a predefined set of access controls to this object. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Request body**: `Object`

**Response**: `Object`

```typescript
const res = await storage.objects.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objects.watchAll`

**POST** `b/{bucket}/o/watch`

Watch for changes on all objects in a bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which to look for objects. |
| `delimiter` | `string` | query | No | Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not ... |
| `endOffset` | `string` | query | No | Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects... |
| `includeTrailingDelimiter` | `boolean` | query | No | If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition... |
| `maxResults` | `integer` | query | No | Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, few... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `prefix` | `string` | query | No | Filter results to objects whose names begin with this prefix. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to noAcl. |
| `startOffset` | `string` | query | No | Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, ... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |
| `versions` | `boolean` | query | No | If true, lists all versions of an object as distinct results. The default is false. For more information, see [Object... |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await storage.objects.watchAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.objects.restore`

**POST** `b/{bucket}/o/{object}/restore`

Restores a soft-deleted object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |
| `object` | `string` | path | Yes | Name of the object. For information about how to URL encode object names to be path safe, see [Encoding URI Path Part... |
| `generation` | `string` | query | Yes | Selects a specific revision of this object. |
| `copySourceAcl` | `boolean` | query | No | If true, copies the source object's ACL; otherwise, uses the bucket's default object ACL. The default is false. |
| `ifGenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's one live generation matches the given value. Setting to 0 mak... |
| `ifGenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether none of the object's live generations match the given value. If no live ob... |
| `ifMetagenerationMatch` | `string` | query | No | Makes the operation conditional on whether the object's one live metageneration matches the given value. |
| `ifMetagenerationNotMatch` | `string` | query | No | Makes the operation conditional on whether none of the object's live metagenerations match the given value. |
| `projection` | `string` | query | No | Set of properties to return. Defaults to full. |
| `restoreToken` | `string` | query | No | Restore token used to differentiate sof-deleted objects with the same name and generation. Only applicable for hierar... |
| `userProject` | `string` | query | No | The project to be billed for this request. Required for Requester Pays buckets. |

**Response**: `Object`

```typescript
const res = await storage.objects.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.objects.bulkRestore`

**POST** `b/{bucket}/o/bulkRestore`

Initiates a long-running bulk restore operation on the specified bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Name of the bucket in which the object resides. |

**Request body**: `BulkRestoreObjectsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await storage.objects.bulkRestore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.projects.hmacKeys.create`

**POST** `projects/{projectId}/hmacKeys`

Creates a new HMAC key for the specified service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID owning the service account. |
| `serviceAccountEmail` | `string` | query | Yes | Email address of the service account. |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Response**: `HmacKey`

```typescript
const res = await storage.hmacKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.projects.hmacKeys.delete`

**DELETE** `projects/{projectId}/hmacKeys/{accessId}`

Deletes an HMAC key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID owning the requested key |
| `accessId` | `string` | path | Yes | Name of the HMAC key to be deleted. |
| `userProject` | `string` | query | No | The project to be billed for this request. |

```typescript
const res = await storage.hmacKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

### `storage.projects.hmacKeys.get`

**GET** `projects/{projectId}/hmacKeys/{accessId}`

Retrieves an HMAC key's metadata

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID owning the service account of the requested key. |
| `accessId` | `string` | path | Yes | Name of the HMAC key. |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Response**: `HmacKeyMetadata`

```typescript
const res = await storage.hmacKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`

---

### `storage.projects.hmacKeys.list`

**GET** `projects/{projectId}/hmacKeys`

Retrieves a list of HMAC keys matching the criteria.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Name of the project in which to look for HMAC keys. |
| `maxResults` | `integer` | query | No | Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whiche... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |
| `serviceAccountEmail` | `string` | query | No | If present, only keys for the given service account are returned. |
| `showDeletedKeys` | `boolean` | query | No | Whether or not to show keys in the DELETED state. |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Response**: `HmacKeysMetadata`

```typescript
const res = await storage.hmacKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`

---

### `storage.projects.hmacKeys.update`

**PUT** `projects/{projectId}/hmacKeys/{accessId}`

Updates the state of an HMAC key. See the [HMAC Key resource descriptor](https://cloud.google.com/storage/docs/json_api/v1/projects/hmacKeys/update#request-body) for valid states.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID owning the service account of the updated key. |
| `accessId` | `string` | path | Yes | Name of the HMAC key being updated. |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Request body**: `HmacKeyMetadata`

**Response**: `HmacKeyMetadata`

```typescript
const res = await storage.hmacKeys.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/devstorage.full_control`

---

### `storage.projects.serviceAccount.get`

**GET** `projects/{projectId}/serviceAccount`

Get the email address of this project's Google Cloud Storage service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID |
| `userProject` | `string` | query | No | The project to be billed for this request. |

**Response**: `ServiceAccount`

```typescript
const res = await storage.serviceAccount.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/devstorage.full_control`
- `https://www.googleapis.com/auth/devstorage.read_only`
- `https://www.googleapis.com/auth/devstorage.read_write`

---

## Schemas

### `AdvanceRelocateBucketOperationRequest`

An AdvanceRelocateBucketOperation request.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Specifies the time when the relocation will revert to the sync stage if the relocation hasn't suc... |
| `ttl` | `string` | Specifies the duration after which the relocation will revert to the sync stage if the relocation... |

### `AnywhereCache`

An Anywhere Cache instance.

| Property | Type | Description |
|----------|------|-------------|
| `admissionPolicy` | `string` | The cache-level entry admission policy. |
| `anywhereCacheId` | `string` | The ID of the Anywhere cache instance. |
| `bucket` | `string` | The name of the bucket containing this cache instance. |
| `createTime` | `string` | The creation time of the cache instance in RFC 3339 format. |
| `id` | `string` | The ID of the resource, including the project number, bucket name and anywhere cache ID. |
| `kind` | `string` | The kind of item this is. For Anywhere Cache, this is always storage#anywhereCache. |
| `pendingUpdate` | `boolean` | True if the cache instance has an active Update long-running operation. |
| `selfLink` | `string` | The link to this cache instance. |
| `state` | `string` | The current state of the cache instance. |
| `ttl` | `string` | The TTL of all cache entries in whole seconds. e.g., "7200s". |
| `updateTime` | `string` | The modification time of the cache instance metadata in RFC 3339 format. |
| `zone` | `string` | The zone in which the cache instance is running. For example, us-central1-a. |

### `AnywhereCaches`

A list of Anywhere Caches.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<AnywhereCache>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of Anywhere Caches, this is always storage#anywhereCaches. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `Bucket`

A bucket.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `array<BucketAccessControl>` | Access controls on the bucket. |
| `autoclass` | `object` | The bucket's Autoclass configuration. |
| `billing` | `object` | The bucket's billing configuration. |
| `cors` | `array<object>` | The bucket's Cross-Origin Resource Sharing (CORS) configuration. |
| `customPlacementConfig` | `object` | The bucket's custom placement configuration for Custom Dual Regions. |
| `defaultEventBasedHold` | `boolean` | The default value for event-based hold on newly created objects in this bucket. Event-based hold ... |
| `defaultObjectAcl` | `array<ObjectAccessControl>` | Default access controls to apply to new objects when no ACL is provided. |
| `encryption` | `object` | Encryption configuration for a bucket. |
| `etag` | `string` | HTTP 1.1 Entity tag for the bucket. |
| `generation` | `string` | The generation of this bucket. |
| `hardDeleteTime` | `string` | The hard delete time of the bucket in RFC 3339 format. |
| `hierarchicalNamespace` | `object` | The bucket's hierarchical namespace configuration. |
| `iamConfiguration` | `object` | The bucket's IAM configuration. |
| `id` | `string` | The ID of the bucket. For buckets, the id and name properties are the same. |
| `ipFilter` | `object` | The bucket's IP filter configuration. Specifies the network sources that are allowed to access th... |
| `kind` | `string` | The kind of item this is. For buckets, this is always storage#bucket. |
| `labels` | `object` | User-provided labels, in key/value pairs. |
| `lifecycle` | `object` | The bucket's lifecycle configuration. See [Lifecycle Management](https://cloud.google.com/storage... |
| `location` | `string` | The location of the bucket. Object data for objects in the bucket resides in physical storage wit... |
| `locationType` | `string` | The type of the bucket location. |
| `logging` | `object` | The bucket's logging configuration, which defines the destination bucket and optional name prefix... |
| `metageneration` | `string` | The metadata generation of this bucket. |
| `name` | `string` | The name of the bucket. |
| `objectRetention` | `object` | The bucket's object retention config. |
| `owner` | `object` | The owner of the bucket. This is always the project team's owner group. |
| `projectNumber` | `string` | The project number of the project the bucket belongs to. |
| `retentionPolicy` | `object` | The bucket's retention policy. The retention policy enforces a minimum retention time for all obj... |
| `rpo` | `string` | The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replicatio... |
| `satisfiesPZI` | `boolean` | Reserved for future use. |
| `satisfiesPZS` | `boolean` | Reserved for future use. |
| `selfLink` | `string` | The URI of this bucket. |
| `softDeletePolicy` | `object` | The bucket's soft delete policy, which defines the period of time that soft-deleted objects will ... |
| `softDeleteTime` | `string` | The soft delete time of the bucket in RFC 3339 format. |
| `storageClass` | `string` | The bucket's default storage class, used whenever no storageClass is specified for a newly-create... |
| `timeCreated` | `string` | The creation time of the bucket in RFC 3339 format. |
| `updated` | `string` | The modification time of the bucket in RFC 3339 format. |
| `versioning` | `object` | The bucket's versioning configuration. |
| `website` | `object` | The bucket's website configuration, controlling how the service behaves when accessing bucket con... |

### `BucketAccessControl`

An access-control entry.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the bucket. |
| `domain` | `string` | The domain associated with the entity, if any. |
| `email` | `string` | The email address associated with the entity, if any. |
| `entity` | `string` | The entity holding the permission, in one of the following forms:  - user-userId  - user-email  -... |
| `entityId` | `string` | The ID for the entity, if any. |
| `etag` | `string` | HTTP 1.1 Entity tag for the access-control entry. |
| `id` | `string` | The ID of the access-control entry. |
| `kind` | `string` | The kind of item this is. For bucket access control entries, this is always storage#bucketAccessC... |
| `projectTeam` | `object` | The project team associated with the entity, if any. |
| `role` | `string` | The access permission for the entity. |
| `selfLink` | `string` | The link to this access-control entry. |

### `BucketAccessControls`

An access-control list.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<BucketAccessControl>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of bucket access control entries, this is always storage#buck... |

### `BucketStorageLayout`

The storage layout configuration of a bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the bucket. |
| `customPlacementConfig` | `object` | The bucket's custom placement configuration for Custom Dual Regions. |
| `hierarchicalNamespace` | `object` | The bucket's hierarchical namespace configuration. |
| `kind` | `string` | The kind of item this is. For storage layout, this is always storage#storageLayout. |
| `location` | `string` | The location of the bucket. |
| `locationType` | `string` | The type of the bucket location. |

### `Buckets`

A list of buckets.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Bucket>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of buckets, this is always storage#buckets. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |
| `unreachable` | `array<string>` | The list of bucket resource names that could not be reached during the listing operation. |

### `BulkRestoreObjectsRequest`

A bulk restore objects request.

| Property | Type | Description |
|----------|------|-------------|
| `allowOverwrite` | `boolean` | If false (default), the restore will not overwrite live objects with the same name at the destina... |
| `copySourceAcl` | `boolean` | If true, copies the source object's ACL; otherwise, uses the bucket's default object ACL. The def... |
| `createdAfterTime` | `string` | Restores only the objects that were created after this time. |
| `createdBeforeTime` | `string` | Restores only the objects that were created before this time. |
| `matchGlobs` | `array<string>` | Restores only the objects matching any of the specified glob(s). If this parameter is not specifi... |
| `softDeletedAfterTime` | `string` | Restores only the objects that were soft-deleted after this time. |
| `softDeletedBeforeTime` | `string` | Restores only the objects that were soft-deleted before this time. |

### `Channel`

An notification channel used to watch for resource changes.

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
| `type` | `string` | The type of delivery mechanism used for this channel. |

### `ComposeRequest`

A Compose request.

| Property | Type | Description |
|----------|------|-------------|
| `deleteSourceObjects` | `boolean` | If true, the source objects will be deleted. |
| `destination` | `Object` | Properties of the resulting object. |
| `kind` | `string` | The kind of item this is. |
| `sourceObjects` | `array<object>` | The list of source objects that will be concatenated into a single object. |

### `Expr`

Represents an expression text. Example: title: "User account presence" description: "Determines whether the request has a user account" expression: "size(request.user) > 0"

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | An optional description of the expression. This is a longer text which describes the expression, ... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. The application con... |
| `location` | `string` | An optional string indicating the location of the expression for error reporting, e.g. a file nam... |
| `title` | `string` | An optional title for the expression, i.e. a short string describing its purpose. This can be use... |

### `Folder`

A folder. Only available in buckets with hierarchical namespace enabled.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the bucket containing this folder. |
| `createTime` | `string` | The creation time of the folder in RFC 3339 format. |
| `id` | `string` | The ID of the folder, including the bucket name, folder name. |
| `kind` | `string` | The kind of item this is. For folders, this is always storage#folder. |
| `metageneration` | `string` | The version of the metadata for this folder. Used for preconditions and for detecting changes in ... |
| `name` | `string` | The name of the folder. Required if not specified by URL parameter. |
| `pendingRenameInfo` | `object` | Only present if the folder is part of an ongoing rename folder operation. Contains information wh... |
| `selfLink` | `string` | The link to this folder. |
| `updateTime` | `string` | The modification time of the folder metadata in RFC 3339 format. |

### `Folders`

A list of folders.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Folder>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of folders, this is always storage#folders. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `GoogleLongrunningListOperationsResponse`

The response message for storage.buckets.operations.list.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of item this is. For lists of operations, this is always storage#operations. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is "false", it means the operation is still in progress. If "true", the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `kind` | `string` | The kind of item this is. For operations, this is always storage#operation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal response of the operation in case of success. If the original method returns no data o... |
| `selfLink` | `string` | The link to this long running operation. |

### `GoogleRpcStatus`

The "Status" type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each "Status" message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. |

### `HmacKey`

JSON template to produce a JSON-style HMAC Key resource for Create responses.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of item this is. For HMAC keys, this is always storage#hmacKey. |
| `metadata` | `HmacKeyMetadata` | Key metadata. |
| `secret` | `string` | HMAC secret key material. |

### `HmacKeyMetadata`

JSON template to produce a JSON-style HMAC Key metadata resource.

| Property | Type | Description |
|----------|------|-------------|
| `accessId` | `string` | The ID of the HMAC Key. |
| `etag` | `string` | HTTP 1.1 Entity tag for the HMAC key. |
| `id` | `string` | The ID of the HMAC key, including the Project ID and the Access ID. |
| `kind` | `string` | The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata. |
| `projectId` | `string` | Project ID owning the service account to which the key authenticates. |
| `selfLink` | `string` | The link to this resource. |
| `serviceAccountEmail` | `string` | The email address of the key's associated service account. |
| `state` | `string` | The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED. |
| `timeCreated` | `string` | The creation time of the HMAC key in RFC 3339 format. |
| `updated` | `string` | The last modification time of the HMAC key metadata in RFC 3339 format. |

### `HmacKeysMetadata`

A list of hmacKeys.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<HmacKeyMetadata>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of hmacKeys, this is always storage#hmacKeysMetadata. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `ManagedFolder`

A managed folder.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the bucket containing this managed folder. |
| `createTime` | `string` | The creation time of the managed folder in RFC 3339 format. |
| `id` | `string` | The ID of the managed folder, including the bucket name and managed folder name. |
| `kind` | `string` | The kind of item this is. For managed folders, this is always storage#managedFolder. |
| `metageneration` | `string` | The version of the metadata for this managed folder. Used for preconditions and for detecting cha... |
| `name` | `string` | The name of the managed folder. Required if not specified by URL parameter. |
| `selfLink` | `string` | The link to this managed folder. |
| `updateTime` | `string` | The last update time of the managed folder metadata in RFC 3339 format. |

### `ManagedFolders`

A list of managed folders.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<ManagedFolder>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of managed folders, this is always storage#managedFolders. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `Notification`

A subscription to receive Google PubSub notifications.

| Property | Type | Description |
|----------|------|-------------|
| `custom_attributes` | `object` | An optional list of additional attributes to attach to each Cloud PubSub message published for th... |
| `etag` | `string` | HTTP 1.1 Entity tag for this subscription notification. |
| `event_types` | `array<string>` | If present, only send notifications about listed event types. If empty, sent notifications for al... |
| `id` | `string` | The ID of the notification. |
| `kind` | `string` | The kind of item this is. For notifications, this is always storage#notification. |
| `object_name_prefix` | `string` | If present, only apply this notification configuration to object names that begin with this prefix. |
| `payload_format` | `string` | The desired content of the Payload. |
| `selfLink` | `string` | The canonical URL of this notification. |
| `topic` | `string` | The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.c... |

### `Notifications`

A list of notification subscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Notification>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of notifications, this is always storage#notifications. |

### `Object`

An object.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `array<ObjectAccessControl>` | Access controls on the object. |
| `bucket` | `string` | The name of the bucket containing this object. |
| `cacheControl` | `string` | Cache-Control directive for the object data. If omitted, and the object is accessible to all anon... |
| `componentCount` | `integer` | Number of underlying components that make up this object. Components are accumulated by compose o... |
| `contentDisposition` | `string` | Content-Disposition of the object data. |
| `contentEncoding` | `string` | Content-Encoding of the object data. |
| `contentLanguage` | `string` | Content-Language of the object data. |
| `contentType` | `string` | Content-Type of the object data. If an object is stored without a Content-Type, it is served as a... |
| `contexts` | `object` | User-defined or system-defined object contexts. Each object context is a key-payload pair, where ... |
| `crc32c` | `string` | CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte or... |
| `customTime` | `string` | A timestamp in RFC 3339 format specified by the user for an object. |
| `customerEncryption` | `object` | Metadata of customer-supplied encryption key, if the object is encrypted by such a key. |
| `etag` | `string` | HTTP 1.1 Entity tag for the object. |
| `eventBasedHold` | `boolean` | Whether an object is under event-based hold. Event-based hold is a way to retain objects until an... |
| `generation` | `string` | The content generation of this object. Used for object versioning. |
| `hardDeleteTime` | `string` | This is the time (in the future) when the soft-deleted object will no longer be restorable. It is... |
| `id` | `string` | The ID of the object, including the bucket name, object name, and generation number. |
| `kind` | `string` | The kind of item this is. For objects, this is always storage#object. |
| `kmsKeyName` | `string` | Not currently supported. Specifying the parameter causes the request to fail with status code 400... |
| `md5Hash` | `string` | MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see [D... |
| `mediaLink` | `string` | Media download link. |
| `metadata` | `object` | User-provided metadata, in key/value pairs. |
| `metageneration` | `string` | The version of the metadata for this object at this generation. Used for preconditions and for de... |
| `name` | `string` | The name of the object. Required if not specified by URL parameter. |
| `owner` | `object` | The owner of the object. This will always be the uploader of the object. |
| `restoreToken` | `string` | Restore token used to differentiate deleted objects with the same name and generation. This field... |
| `retention` | `object` | A collection of object level retention parameters. |
| `retentionExpirationTime` | `string` | A server-determined value that specifies the earliest time that the object's retention period exp... |
| `selfLink` | `string` | The link to this object. |
| `size` | `string` | Content-Length of the data in bytes. |
| `softDeleteTime` | `string` | The time at which the object became soft-deleted in RFC 3339 format. |
| `storageClass` | `string` | Storage class of the object. |
| `temporaryHold` | `boolean` | Whether an object is under temporary hold. While this flag is set to true, the object is protecte... |
| `timeCreated` | `string` | The creation time of the object in RFC 3339 format. |
| `timeDeleted` | `string` | The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only i... |
| `timeFinalized` | `string` | The time when the object was finalized. |
| `timeStorageClassUpdated` | `string` | The time at which the object's storage class was last changed. When the object is initially creat... |
| `updated` | `string` | The modification time of the object metadata in RFC 3339 format. Set initially to object creation... |

### `ObjectAccessControl`

An access-control entry.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the bucket. |
| `domain` | `string` | The domain associated with the entity, if any. |
| `email` | `string` | The email address associated with the entity, if any. |
| `entity` | `string` | The entity holding the permission, in one of the following forms:  - user-userId  - user-email  -... |
| `entityId` | `string` | The ID for the entity, if any. |
| `etag` | `string` | HTTP 1.1 Entity tag for the access-control entry. |
| `generation` | `string` | The content generation of the object, if applied to an object. |
| `id` | `string` | The ID of the access-control entry. |
| `kind` | `string` | The kind of item this is. For object access control entries, this is always storage#objectAccessC... |
| `object` | `string` | The name of the object, if applied to an object. |
| `projectTeam` | `object` | The project team associated with the entity, if any. |
| `role` | `string` | The access permission for the entity. |
| `selfLink` | `string` | The link to this access-control entry. |

### `ObjectAccessControls`

An access-control list.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<ObjectAccessControl>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of object access control entries, this is always storage#obje... |

### `ObjectCustomContextPayload`

The payload of a single user-defined object context.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time at which the object context was created in RFC 3339 format. |
| `updateTime` | `string` | The time at which the object context was last updated in RFC 3339 format. |
| `value` | `string` | The value of the object context. |

### `Objects`

A list of objects.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Object>` | The list of items. |
| `kind` | `string` | The kind of item this is. For lists of objects, this is always storage#objects. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |
| `prefixes` | `array<string>` | The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter. |

### `Policy`

A bucket/object/managedFolder IAM policy.

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<object>` | An association between a role, which comes with a set of permissions, and members who may assume ... |
| `etag` | `string` | HTTP 1.1  Entity tag for the policy. |
| `kind` | `string` | The kind of item this is. For policies, this is always storage#policy. This field is ignored on i... |
| `resourceId` | `string` | The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucke... |
| `version` | `integer` | The IAM policy format version. |

### `RelocateBucketRequest`

A Relocate Bucket request.

| Property | Type | Description |
|----------|------|-------------|
| `destinationCustomPlacementConfig` | `object` | The bucket's new custom placement configuration if relocating to a Custom Dual Region. |
| `destinationKmsKeyName` | `string` | Resource name of a Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr... |
| `destinationLocation` | `string` | The new location the bucket will be relocated to. |
| `validateOnly` | `boolean` | If true, validate the operation, but do not actually relocate the bucket. |

### `RewriteResponse`

A rewrite response.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | true if the copy is finished; otherwise, false if the copy is in progress. This property is alway... |
| `kind` | `string` | The kind of item this is. |
| `objectSize` | `string` | The total size of the object being copied in bytes. This property is always present in the response. |
| `resource` | `Object` | A resource containing the metadata for the copied-to object. This property is present in the resp... |
| `rewriteToken` | `string` | A token to use in subsequent requests to continue copying data. This token is present in the resp... |
| `totalBytesRewritten` | `string` | The total bytes written so far, which can be used to provide a waiting user with a progress indic... |

### `ServiceAccount`

A subscription to receive Google PubSub notifications.

| Property | Type | Description |
|----------|------|-------------|
| `email_address` | `string` | The ID of the notification. |
| `kind` | `string` | The kind of item this is. For notifications, this is always storage#notification. |

### `TestIamPermissionsResponse`

A storage.(buckets|objects|managedFolders).testIamPermissions response.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of item this is. |
| `permissions` | `array<string>` | The permissions held by the caller. Permissions are always of the format storage.resource.capabil... |

