# Cloud Storage for Firebase API - API Reference

**Version**: `v1beta` | **Methods**: 7 | **Schemas**: 6

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebasestorage.projects.getDefaultBucket` | GET | `v1beta/{+name}` | Gets the default bucket. |
| `firebasestorage.projects.deleteDefaultBucket` | DELETE | `v1beta/{+name}` | Unlinks and deletes the default bucket. |
| `firebasestorage.projects.buckets.get` | GET | `v1beta/{+name}` | Gets a single linked storage bucket. |
| `firebasestorage.projects.buckets.list` | GET | `v1beta/{+parent}/buckets` | Lists the linked storage buckets for a project. |
| `firebasestorage.projects.buckets.addFirebase` | POST | `v1beta/{+bucket}:addFirebase` | Links a Google Cloud Storage bucket to a Firebase project. |
| `firebasestorage.projects.buckets.removeFirebase` | POST | `v1beta/{+bucket}:removeFirebase` | Unlinks a linked Google Cloud Storage bucket from a Firebase project. |
| `firebasestorage.projects.defaultBucket.create` | POST | `v1beta/{+parent}/defaultBucket` | Creates a Spark tier-eligible Cloud Storage bucket and links it to your Firebase project. If the ... |

### `firebasestorage.projects.getDefaultBucket`

**GET** `v1beta/{+name}`

Gets the default bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the default bucket to retrieve, `projects/{project_id_or_number}/defaultBucket`. |

**Response**: `DefaultBucket`

```typescript
const res = await firebasestorage.projects.getDefaultBucket({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.deleteDefaultBucket`

**DELETE** `v1beta/{+name}`

Unlinks and deletes the default bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the default bucket to delete, `projects/{project_id_or_number}/defaultBucket`. |

**Response**: `Empty`

```typescript
const res = await firebasestorage.projects.deleteDefaultBucket({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.buckets.get`

**GET** `v1beta/{+name}`

Gets a single linked storage bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{proje... |

**Response**: `Bucket`

```typescript
const res = await firebasestorage.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.buckets.list`

**GET** `v1beta/{+parent}/buckets`

Lists the linked storage buckets for a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the parent Firebase project, `projects/{project_id_or_number}`. |
| `pageSize` | `integer` | query | No | The maximum number of buckets to return. If not set, the server will use a reasonable default. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBuckets` call. Provide this to retrieve the subsequent page. When paginat... |

**Response**: `ListBucketsResponse`

```typescript
const res = await firebasestorage.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.buckets.addFirebase`

**POST** `v1beta/{+bucket}:addFirebase`

Links a Google Cloud Storage bucket to a Firebase project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{proje... |

**Request body**: `AddFirebaseRequest`

**Response**: `Bucket`

```typescript
const res = await firebasestorage.buckets.addFirebase({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.buckets.removeFirebase`

**POST** `v1beta/{+bucket}:removeFirebase`

Unlinks a linked Google Cloud Storage bucket from a Firebase project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `bucket` | `string` | path | Yes | Required. Resource name of the bucket, mirrors the ID of the underlying Google Cloud Storage bucket, `projects/{proje... |

**Request body**: `RemoveFirebaseRequest`

**Response**: `Empty`

```typescript
const res = await firebasestorage.buckets.removeFirebase({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasestorage.projects.defaultBucket.create`

**POST** `v1beta/{+parent}/defaultBucket`

Creates a Spark tier-eligible Cloud Storage bucket and links it to your Firebase project. If the default bucket already exists, this method will re-link it to your Firebase project. See https://firebase.google.com/pricing for pricing details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where the default bucket will be created, `projects/{project_id_or_number}`. |

**Request body**: `DefaultBucket`

**Response**: `DefaultBucket`

```typescript
const res = await firebasestorage.defaultBucket.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

## Schemas

### `AddFirebaseRequest`

The request used to link a Google Cloud Storage bucket to a Firebase project.

### `Bucket`

A storage bucket and its relation to a parent Firebase project.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name of the bucket. |

### `DefaultBucket`

Spark tier-eligible Cloud Storage bucket. One per project. This resource exists if the underlying Cloud Storage bucket exists and it is linked to your Firebase project. See https://firebase.google.com/pricing for pricing details.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `Bucket` | Output only. Underlying bucket resource. |
| `location` | `string` | Immutable. Location of the default bucket. |
| `name` | `string` | Identifier. Resource name of the default bucket. |
| `storageClass` | `string` | Immutable. Storage class of the default bucket. Supported values are available at https://cloud.g... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListBucketsResponse`

The response returned by `ListBuckets`.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<Bucket>` | The list of linked buckets. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `RemoveFirebaseRequest`

The request used to unlink a Google Cloud Storage bucket from a Firebase project.

