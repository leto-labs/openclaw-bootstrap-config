# Firebase App Distribution API - API Reference

**Version**: `v1` | **Methods**: 26 | **Schemas**: 40

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebaseappdistribution.projects.apps.getAabInfo` | GET | `v1/{+name}` | Gets Android App Bundle (AAB) information for a Firebase app. |
| `firebaseappdistribution.projects.apps.releases.get` | GET | `v1/{+name}` | Gets a release. |
| `firebaseappdistribution.projects.apps.releases.list` | GET | `v1/{+parent}/releases` | Lists releases. By default, sorts by `createTime` in descending order. |
| `firebaseappdistribution.projects.apps.releases.patch` | PATCH | `v1/{+name}` | Updates a release. |
| `firebaseappdistribution.projects.apps.releases.distribute` | POST | `v1/{+name}:distribute` | Distributes a release to testers. This call does the following: 1. Creates testers for the specif... |
| `firebaseappdistribution.projects.apps.releases.batchDelete` | POST | `v1/{+parent}/releases:batchDelete` | Deletes releases. A maximum of 100 releases can be deleted per request. |
| `firebaseappdistribution.projects.apps.releases.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `firebaseappdistribution.projects.apps.releases.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `firebaseappdistribution.projects.apps.releases.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `firebaseappdistribution.projects.apps.releases.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `firebaseappdistribution.projects.apps.releases.operations.wait` | POST | `v1/{+name}:wait` | Waits until the specified long-running operation is done or reaches at most a specified timeout, ... |
| `firebaseappdistribution.projects.apps.releases.feedbackReports.get` | GET | `v1/{+name}` | Gets a feedback report. |
| `firebaseappdistribution.projects.apps.releases.feedbackReports.list` | GET | `v1/{+parent}/feedbackReports` | Lists feedback reports. By default, sorts by `createTime` in descending order. |
| `firebaseappdistribution.projects.apps.releases.feedbackReports.delete` | DELETE | `v1/{+name}` | Deletes a feedback report. |
| `firebaseappdistribution.projects.testers.batchAdd` | POST | `v1/{+project}/testers:batchAdd` | Batch adds testers. This call adds testers for the specified emails if they don't already exist. ... |
| `firebaseappdistribution.projects.testers.batchRemove` | POST | `v1/{+project}/testers:batchRemove` | Batch removes testers. If found, this call deletes testers for the specified emails. Returns all ... |
| `firebaseappdistribution.projects.testers.list` | GET | `v1/{+parent}/testers` | Lists testers and their resource ids. |
| `firebaseappdistribution.projects.testers.patch` | PATCH | `v1/{+name}` | Update a tester. If the testers joins a group they gain access to all releases that the group has... |
| `firebaseappdistribution.projects.groups.get` | GET | `v1/{+name}` | Get a group. |
| `firebaseappdistribution.projects.groups.list` | GET | `v1/{+parent}/groups` | List groups. |
| `firebaseappdistribution.projects.groups.create` | POST | `v1/{+parent}/groups` | Create a group. |
| `firebaseappdistribution.projects.groups.patch` | PATCH | `v1/{+name}` | Update a group. |
| `firebaseappdistribution.projects.groups.delete` | DELETE | `v1/{+name}` | Delete a group. |
| `firebaseappdistribution.projects.groups.batchJoin` | POST | `v1/{+group}:batchJoin` | Batch adds members to a group. The testers will gain access to all releases that the groups have ... |
| `firebaseappdistribution.projects.groups.batchLeave` | POST | `v1/{+group}:batchLeave` | Batch removed members from a group. The testers will lose access to all releases that the groups ... |
| `firebaseappdistribution.media.upload` | POST | `v1/{+app}/releases:upload` | Uploads a binary. Uploading a binary can result in a new release being created, an update to an e... |

### `firebaseappdistribution.projects.apps.getAabInfo`

**GET** `v1/{+name}`

Gets Android App Bundle (AAB) information for a Firebase app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `AabInfo` resource to retrieve. Format: `projects/{project_number}/apps/{app}/aabInfo` |

**Response**: `GoogleFirebaseAppdistroV1AabInfo`

```typescript
const res = await firebaseappdistribution.apps.getAabInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.get`

**GET** `v1/{+name}`

Gets a release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the release resource to retrieve. Format: projects/{project_number}/apps/{app}/releases/{release} |

**Response**: `GoogleFirebaseAppdistroV1Release`

```typescript
const res = await firebaseappdistribution.releases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.list`

**GET** `v1/{+parent}/releases`

Lists releases. By default, sorts by `createTime` in descending order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the app resource, which is the parent of the release resources. Format: `projects/{project_numb... |
| `filter` | `string` | query | No | Optional. The expression to filter releases listed in the response. To learn more about filtering, refer to [Google's... |
| `orderBy` | `string` | query | No | Optional. The fields used to order releases. Supported fields: - `createTime` To specify descending order for a field... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of releases to return. The service may return fewer than this value. The valid range is ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListReleases` call. Provide this to retrieve the subsequent page. W... |

**Response**: `GoogleFirebaseAppdistroV1ListReleasesResponse`

```typescript
const res = await firebaseappdistribution.releases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.patch`

**PATCH** `v1/{+name}`

Updates a release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the release resource. Format: `projects/{project_number}/apps/{app}/releases/{release}` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleFirebaseAppdistroV1Release`

**Response**: `GoogleFirebaseAppdistroV1Release`

```typescript
const res = await firebaseappdistribution.releases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.distribute`

**POST** `v1/{+name}:distribute`

Distributes a release to testers. This call does the following: 1. Creates testers for the specified emails, if none exist. 2. Adds the testers and groups to the release. 3. Sends new testers an invitation email. 4. Sends existing testers a new release email. The request will fail with a `INVALID_ARGUMENT` if it contains a group that doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the release resource to distribute. Format: `projects/{project_number}/apps/{app}/releases/{rel... |

**Request body**: `GoogleFirebaseAppdistroV1DistributeReleaseRequest`

**Response**: `GoogleFirebaseAppdistroV1DistributeReleaseResponse`

```typescript
const res = await firebaseappdistribution.releases.distribute({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.batchDelete`

**POST** `v1/{+parent}/releases:batchDelete`

Deletes releases. A maximum of 100 releases can be deleted per request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the app resource, which is the parent of the release resources. Format: `projects/{project_numb... |

**Request body**: `GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.releases.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await firebaseappdistribution.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firebaseappdistribution.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.operations.wait`

**POST** `v1/{+name}:wait`

Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to wait on. |

**Request body**: `GoogleLongrunningWaitOperationRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firebaseappdistribution.operations.wait({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.feedbackReports.get`

**GET** `v1/{+name}`

Gets a feedback report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback report to retrieve. Format: projects/{project_number}/apps/{app}/releases/{release... |

**Response**: `GoogleFirebaseAppdistroV1FeedbackReport`

```typescript
const res = await firebaseappdistribution.feedbackReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.feedbackReports.list`

**GET** `v1/{+parent}/feedbackReports`

Lists feedback reports. By default, sorts by `createTime` in descending order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the release resource, which is the parent of the feedback report resources. Format: `projects/{... |
| `pageSize` | `integer` | query | No | Output only. The maximum number of feedback reports to return. The service may return fewer than this value. The vali... |
| `pageToken` | `string` | query | No | Output only. A page token, received from a previous `ListFeedbackReports` call. Provide this to retrieve the subseque... |

**Response**: `GoogleFirebaseAppdistroV1ListFeedbackReportsResponse`

```typescript
const res = await firebaseappdistribution.feedbackReports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.apps.releases.feedbackReports.delete`

**DELETE** `v1/{+name}`

Deletes a feedback report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback report to delete. Format: projects/{project_number}/apps/{app}/releases/{release}/... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.feedbackReports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.testers.batchAdd`

**POST** `v1/{+project}/testers:batchAdd`

Batch adds testers. This call adds testers for the specified emails if they don't already exist. Returns all testers specified in the request, including newly created and previously existing testers. This action is idempotent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project resource. Format: `projects/{project_number}` |

**Request body**: `GoogleFirebaseAppdistroV1BatchAddTestersRequest`

**Response**: `GoogleFirebaseAppdistroV1BatchAddTestersResponse`

```typescript
const res = await firebaseappdistribution.testers.batchAdd({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.testers.batchRemove`

**POST** `v1/{+project}/testers:batchRemove`

Batch removes testers. If found, this call deletes testers for the specified emails. Returns all deleted testers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project resource. Format: `projects/{project_number}` |

**Request body**: `GoogleFirebaseAppdistroV1BatchRemoveTestersRequest`

**Response**: `GoogleFirebaseAppdistroV1BatchRemoveTestersResponse`

```typescript
const res = await firebaseappdistribution.testers.batchRemove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.testers.list`

**GET** `v1/{+parent}/testers`

Lists testers and their resource ids.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project resource, which is the parent of the tester resources. Format: `projects/{project_n... |
| `filter` | `string` | query | No | Optional. The expression to filter testers listed in the response. To learn more about filtering, refer to [Google's ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of testers to return. The service may return fewer than this value. The valid range is [... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListTesters` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `GoogleFirebaseAppdistroV1ListTestersResponse`

```typescript
const res = await firebaseappdistribution.testers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.testers.patch`

**PATCH** `v1/{+name}`

Update a tester. If the testers joins a group they gain access to all releases that the group has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the tester resource. Format: `projects/{project_number}/testers/{email_address}` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleFirebaseAppdistroV1Tester`

**Response**: `GoogleFirebaseAppdistroV1Tester`

```typescript
const res = await firebaseappdistribution.testers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.get`

**GET** `v1/{+name}`

Get a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the group resource to retrieve. Format: `projects/{project_number}/groups/{group_alias}` |

**Response**: `GoogleFirebaseAppdistroV1Group`

```typescript
const res = await firebaseappdistribution.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.list`

**GET** `v1/{+parent}/groups`

List groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project resource, which is the parent of the group resources. Format: `projects/{project_nu... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of groups to return. The service may return fewer than this value. The valid range is [1... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListGroups` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleFirebaseAppdistroV1ListGroupsResponse`

```typescript
const res = await firebaseappdistribution.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.create`

**POST** `v1/{+parent}/groups`

Create a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project resource, which is the parent of the group resource. Format: `projects/{project_num... |
| `groupId` | `string` | query | No | Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This ... |

**Request body**: `GoogleFirebaseAppdistroV1Group`

**Response**: `GoogleFirebaseAppdistroV1Group`

```typescript
const res = await firebaseappdistribution.groups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.patch`

**PATCH** `v1/{+name}`

Update a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleFirebaseAppdistroV1Group`

**Response**: `GoogleFirebaseAppdistroV1Group`

```typescript
const res = await firebaseappdistribution.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.delete`

**DELETE** `v1/{+name}`

Delete a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}` |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.batchJoin`

**POST** `v1/{+group}:batchJoin`

Batch adds members to a group. The testers will gain access to all releases that the groups have access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. The name of the group resource to which testers are added. Format: `projects/{project_number}/groups/{group... |

**Request body**: `GoogleFirebaseAppdistroV1BatchJoinGroupRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.groups.batchJoin({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.projects.groups.batchLeave`

**POST** `v1/{+group}:batchLeave`

Batch removed members from a group. The testers will lose access to all releases that the groups have access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. The name of the group resource from which testers are removed. Format: `projects/{project_number}/groups/{g... |

**Request body**: `GoogleFirebaseAppdistroV1BatchLeaveGroupRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await firebaseappdistribution.groups.batchLeave({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseappdistribution.media.upload`

**POST** `v1/{+app}/releases:upload`

Uploads a binary. Uploading a binary can result in a new release being created, an update to an existing release, or a no-op if a release with the same binary already exists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `app` | `string` | path | Yes | Required. The name of the app resource. Format: `projects/{project_number}/apps/{app}` |

**Request body**: `GoogleFirebaseAppdistroV1UploadReleaseRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firebaseappdistribution.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GdataBlobstore2Info`

Information to read/write to blobstore2.

| Property | Type | Description |
|----------|------|-------------|
| `blobGeneration` | `string` | The blob generation id. |
| `blobId` | `string` | The blob id, e.g., /blobstore/prod/playground/scotty |
| `downloadExternalReadToken` | `string` | A serialized External Read Token passed from Bigstore -> Scotty for a GCS download. This field mu... |
| `downloadReadHandle` | `string` | Read handle passed from Bigstore -> Scotty for a GCS download. This is a signed, serialized blobs... |
| `readToken` | `string` | The blob read token. Needed to read blobs that have not been replicated. Might not be available u... |
| `uploadFragmentListCreationInfo` | `string` | A serialized Object Fragment List Creation Info passed from Bigstore -> Scotty for a GCS upload. ... |
| `uploadMetadataContainer` | `string` | Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a signed, serialized blobs... |

### `GdataCompositeMedia`

A sequence of media data references representing composite data. Introduced to support Bigstore composite objects. For details, visit http://go/bigstore-composites.

| Property | Type | Description |
|----------|------|-------------|
| `blobRef` | `string` | Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be the byte representa... |
| `blobstore2Info` | `GdataBlobstore2Info` | Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to a v2 blob. |
| `cosmoBinaryReference` | `string` | A binary data reference for a media download. Serves as a technology-agnostic binary reference in... |
| `crc32cHash` | `integer` | crc32.c hash for the payload. |
| `inline` | `string` | Media data, set if reference_type is INLINE |
| `length` | `string` | Size of the data, in bytes |
| `md5Hash` | `string` | MD5 hash for the payload. |
| `objectId` | `GdataObjectId` | Reference to a TI Blob, set if reference_type is BIGSTORE_REF. |
| `path` | `string` | Path to the data, set if reference_type is PATH |
| `referenceType` | `string` | Describes what the field reference contains. |
| `sha1Hash` | `string` | SHA-1 hash for the payload. |

### `GdataContentTypeInfo`

Detailed Content-Type information from Scotty. The Content-Type of the media will typically be filled in by the header or Scotty's best_guess, but this extended information provides the backend with more information so that it can make a better decision if needed. This is only used on media upload requests from Scotty.

| Property | Type | Description |
|----------|------|-------------|
| `bestGuess` | `string` | Scotty's best guess of what the content type of the file is. |
| `fromBytes` | `string` | The content type of the file derived by looking at specific bytes (i.e. "magic bytes") of the act... |
| `fromFileName` | `string` | The content type of the file derived from the file extension of the original file name used by th... |
| `fromHeader` | `string` | The content type of the file as specified in the request headers, multipart headers, or RUPIO sta... |
| `fromUrlPath` | `string` | The content type of the file derived from the file extension of the URL path. The URL path is ass... |

### `GdataDiffChecksumsResponse`

Backend response for a Diff get checksums response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `checksumsLocation` | `GdataCompositeMedia` | Exactly one of these fields must be populated. If checksums_location is filled, the server will r... |
| `chunkSizeBytes` | `string` | The chunk size of checksums. Must be a multiple of 256KB. |
| `objectLocation` | `GdataCompositeMedia` | If set, calculate the checksums based on the contents and return them to the caller. |
| `objectSizeBytes` | `string` | The total size of the server object. |
| `objectVersion` | `string` | The object version of the object the checksums are being returned for. |

### `GdataDiffDownloadResponse`

Backend response for a Diff download response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectLocation` | `GdataCompositeMedia` | The original object location. |

### `GdataDiffUploadRequest`

A Diff upload request. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `checksumsInfo` | `GdataCompositeMedia` | The location of the checksums for the new object. Agents must clone the object located here, as t... |
| `objectInfo` | `GdataCompositeMedia` | The location of the new object. Agents must clone the object located here, as the upload server w... |
| `objectVersion` | `string` | The object version of the object that is the base version the incoming diff script will be applie... |

### `GdataDiffUploadResponse`

Backend response for a Diff upload request. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectVersion` | `string` | The object version of the object at the server. Must be included in the end notification response... |
| `originalObject` | `GdataCompositeMedia` | The location of the original file for a diff upload request. Must be filled in if responding to a... |

### `GdataDiffVersionResponse`

Backend response for a Diff get version response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

| Property | Type | Description |
|----------|------|-------------|
| `objectSizeBytes` | `string` | The total size of the server object. |
| `objectVersion` | `string` | The version of the object stored at the server. |

### `GdataDownloadParameters`

Parameters specific to media downloads.

| Property | Type | Description |
|----------|------|-------------|
| `allowGzipCompression` | `boolean` | A boolean to be returned in the response to Scotty. Allows/disallows gzip encoding of the payload... |
| `ignoreRange` | `boolean` | Determining whether or not Apiary should skip the inclusion of any Content-Range header on its re... |

### `GdataMedia`

A reference to data stored on the filesystem, on GFS or in blobstore.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | Deprecated, use one of explicit hash type fields instead. Algorithm used for calculating the hash... |
| `bigstoreObjectRef` | `string` | Use object_id instead. |
| `blobRef` | `string` | Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be the byte representa... |
| `blobstore2Info` | `GdataBlobstore2Info` | Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to a v2 blob. |
| `compositeMedia` | `array<GdataCompositeMedia>` | A composite media composed of one or more media objects, set if reference_type is COMPOSITE_MEDIA... |
| `contentType` | `string` | MIME type of the data |
| `contentTypeInfo` | `GdataContentTypeInfo` | Extended content type information provided for Scotty uploads. |
| `cosmoBinaryReference` | `string` | A binary data reference for a media download. Serves as a technology-agnostic binary reference in... |
| `crc32cHash` | `integer` | For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (WARNING: DO NOT USE... |
| `diffChecksumsResponse` | `GdataDiffChecksumsResponse` | Set if reference_type is DIFF_CHECKSUMS_RESPONSE. |
| `diffDownloadResponse` | `GdataDiffDownloadResponse` | Set if reference_type is DIFF_DOWNLOAD_RESPONSE. |
| `diffUploadRequest` | `GdataDiffUploadRequest` | Set if reference_type is DIFF_UPLOAD_REQUEST. |
| `diffUploadResponse` | `GdataDiffUploadResponse` | Set if reference_type is DIFF_UPLOAD_RESPONSE. |
| `diffVersionResponse` | `GdataDiffVersionResponse` | Set if reference_type is DIFF_VERSION_RESPONSE. |
| `downloadParameters` | `GdataDownloadParameters` | Parameters for a media download. |
| `filename` | `string` | Original file name |
| `hash` | `string` | Deprecated, use one of explicit hash type fields instead. These two hash related fields will only... |
| `hashVerified` | `boolean` | For Scotty uploads only. If a user sends a hash code and the backend has requested that Scotty ve... |
| `inline` | `string` | Media data, set if reference_type is INLINE |
| `isPotentialRetry` | `boolean` | |is_potential_retry| is set false only when Scotty is certain that it has not sent the request be... |
| `length` | `string` | Size of the data, in bytes |
| `md5Hash` | `string` | Scotty-provided MD5 hash for an upload. |
| `mediaId` | `string` | Media id to forward to the operation GetMedia. Can be set if reference_type is GET_MEDIA. |
| `objectId` | `GdataObjectId` | Reference to a TI Blob, set if reference_type is BIGSTORE_REF. |
| `path` | `string` | Path to the data, set if reference_type is PATH |
| `referenceType` | `string` | Describes what the field reference contains. |
| `sha1Hash` | `string` | Scotty-provided SHA1 hash for an upload. |
| `sha256Hash` | `string` | Scotty-provided SHA256 hash for an upload. |
| `timestamp` | `string` | Time at which the media data was last updated, in milliseconds since UNIX epoch |
| `token` | `string` | A unique fingerprint/version id for the media data |

### `GdataObjectId`

This is a copy of the tech.blob.ObjectId proto, which could not be used directly here due to transitive closure issues with JavaScript support; see http://b/8801763.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | The name of the bucket to which this object belongs. |
| `generation` | `string` | Generation of the object. Generations are monotonically increasing across writes, allowing them t... |
| `objectName` | `string` | The name of the object. |

### `GoogleFirebaseAppdistroV1AabInfo`

Android App Bundle (AAB) information for a Firebase app.

| Property | Type | Description |
|----------|------|-------------|
| `integrationState` | `string` | App bundle integration state. Only valid for android apps. |
| `name` | `string` | The name of the `AabInfo` resource. Format: `projects/{project_number}/apps/{app}/aabInfo` |
| `testCertificate` | `GoogleFirebaseAppdistroV1TestCertificate` | App bundle test certificate generated for the app. Set after the first app bundle is uploaded for... |

### `GoogleFirebaseAppdistroV1BatchAddTestersRequest`

The Request message for batch adding testers

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | Required. The email addresses of the tester resources to create. A maximum of 999 and a minimum o... |

### `GoogleFirebaseAppdistroV1BatchAddTestersResponse`

The Response message for `BatchAddTesters`.

| Property | Type | Description |
|----------|------|-------------|
| `testers` | `array<GoogleFirebaseAppdistroV1Tester>` | The testers which are created and/or already exist |

### `GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest`

The request message for `BatchDeleteReleases`.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. The names of the release resources to delete. Format: `projects/{project_number}/apps/{... |

### `GoogleFirebaseAppdistroV1BatchJoinGroupRequest`

The request message for `BatchJoinGroup`

| Property | Type | Description |
|----------|------|-------------|
| `createMissingTesters` | `boolean` | Indicates whether to create tester resources based on `emails` if they don't exist yet. |
| `emails` | `array<string>` | Required. The emails of the testers to be added to the group. A maximum of 999 and a minimum of 1... |

### `GoogleFirebaseAppdistroV1BatchLeaveGroupRequest`

Request message for `BatchLeaveGroup`

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | Required. The email addresses of the testers to be removed from the group. A maximum of 999 and a... |

### `GoogleFirebaseAppdistroV1BatchRemoveTestersRequest`

The request message for `BatchRemoveTesters`.

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | Required. The email addresses of the tester resources to removed. A maximum of 999 and a minimum ... |

### `GoogleFirebaseAppdistroV1BatchRemoveTestersResponse`

The response message for `BatchRemoveTesters`

| Property | Type | Description |
|----------|------|-------------|
| `emails` | `array<string>` | List of deleted tester emails |

### `GoogleFirebaseAppdistroV1DistributeReleaseRequest`

The request message for `DistributeRelease`.

| Property | Type | Description |
|----------|------|-------------|
| `groupAliases` | `array<string>` | Optional. A list of group aliases (IDs) to be given access to this release. A combined maximum of... |
| `testerEmails` | `array<string>` | Optional. A list of tester email addresses to be given access to this release. A combined maximum... |

### `GoogleFirebaseAppdistroV1DistributeReleaseResponse`

The response message for `DistributeRelease`.

### `GoogleFirebaseAppdistroV1FeedbackReport`

A feedback report submitted by a tester for a release.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the feedback report was created. |
| `firebaseConsoleUri` | `string` | Output only. A link to the Firebase console displaying the feedback report. |
| `name` | `string` | The name of the feedback report resource. Format: `projects/{project_number}/apps/{app}/releases/... |
| `screenshotUri` | `string` | Output only. A signed link (which expires in one hour) that lets you directly download the screen... |
| `tester` | `string` | Output only. The resource name of the tester who submitted the feedback report. |
| `text` | `string` | Output only. The text of the feedback report. |

### `GoogleFirebaseAppdistroV1Group`

A group which can contain testers. A group can be invited to test apps in a Firebase project.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display name of the group. |
| `inviteLinkCount` | `integer` | Output only. The number of invite links for this group. |
| `name` | `string` | The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}` |
| `releaseCount` | `integer` | Output only. The number of releases this group is permitted to access. |
| `testerCount` | `integer` | Output only. The number of testers who are members of this group. |

### `GoogleFirebaseAppdistroV1ListFeedbackReportsResponse`

The response message for `ListFeedbackReports`.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackReports` | `array<GoogleFirebaseAppdistroV1FeedbackReport>` | The feedback reports |
| `nextPageToken` | `string` | A short-lived token, which can be sent as `pageToken` to retrieve the next page. If this field is... |

### `GoogleFirebaseAppdistroV1ListGroupsResponse`

The response message for `ListGroups`.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<GoogleFirebaseAppdistroV1Group>` | The groups listed. |
| `nextPageToken` | `string` | A short-lived token, which can be sent as `pageToken` to retrieve the next page. If this field is... |

### `GoogleFirebaseAppdistroV1ListReleasesResponse`

The response message for `ListReleases`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A short-lived token, which can be sent as `pageToken` to retrieve the next page. If this field is... |
| `releases` | `array<GoogleFirebaseAppdistroV1Release>` | The releases |

### `GoogleFirebaseAppdistroV1ListTestersResponse`

The response message for `ListTesters`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A short-lived token, which can be sent as `pageToken` to retrieve the next page. If this field is... |
| `testers` | `array<GoogleFirebaseAppdistroV1Tester>` | The testers listed. |

### `GoogleFirebaseAppdistroV1Release`

A release of a Firebase app.

| Property | Type | Description |
|----------|------|-------------|
| `binaryDownloadUri` | `string` | Output only. A signed link (which expires in one hour) to directly download the app binary (IPA/A... |
| `buildVersion` | `string` | Output only. Build version of the release. For an Android release, the build version is the `vers... |
| `createTime` | `string` | Output only. The time the release was created. |
| `displayVersion` | `string` | Output only. Display version of the release. For an Android release, the display version is the `... |
| `expireTime` | `string` | Output only. The time the release will expire. |
| `firebaseConsoleUri` | `string` | Output only. A link to the Firebase console displaying a single release. |
| `name` | `string` | The name of the release resource. Format: `projects/{project_number}/apps/{app}/releases/{release}` |
| `releaseNotes` | `GoogleFirebaseAppdistroV1ReleaseNotes` | Notes of the release. |
| `testingUri` | `string` | Output only. A link to the release in the tester web clip or Android app that lets testers (which... |
| `updateTime` | `string` | Output only. The time the release was last updated. |

### `GoogleFirebaseAppdistroV1ReleaseNotes`

Notes that belong to a release.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | The text of the release notes. |

### `GoogleFirebaseAppdistroV1TestCertificate`

App bundle test certificate

| Property | Type | Description |
|----------|------|-------------|
| `hashMd5` | `string` | Hex string of MD5 hash of the test certificate used to resign the AAB |
| `hashSha1` | `string` | Hex string of SHA1 hash of the test certificate used to resign the AAB |
| `hashSha256` | `string` | Hex string of SHA256 hash of the test certificate used to resign the AAB |

### `GoogleFirebaseAppdistroV1Tester`

A person that can be invited to test apps in a Firebase project.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name of the tester associated with the Google account used to accept the tester invitation. |
| `groups` | `array<string>` | The resource names of the groups this tester belongs to. |
| `lastActivityTime` | `string` | Output only. The time the tester was last active. This is the most recent time the tester install... |
| `name` | `string` | The name of the tester resource. Format: `projects/{project_number}/testers/{email_address}` |

### `GoogleFirebaseAppdistroV1UploadReleaseMetadata`

Operation metadata for `UploadRelease`.

### `GoogleFirebaseAppdistroV1UploadReleaseRequest`

Request message for `UploadRelease`.

| Property | Type | Description |
|----------|------|-------------|
| `blob` | `GdataMedia` | Binary to upload |

### `GoogleFirebaseAppdistroV1UploadReleaseResponse`

Response message for `UploadRelease`.

| Property | Type | Description |
|----------|------|-------------|
| `release` | `GoogleFirebaseAppdistroV1Release` | Release associated with the uploaded binary. |
| `result` | `string` | Result of upload release. |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleLongrunningWaitOperationRequest`

The request message for Operations.WaitOperation.

| Property | Type | Description |
|----------|------|-------------|
| `timeout` | `string` | The maximum duration to wait before timing out. If left blank, the wait will be at most the time ... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

