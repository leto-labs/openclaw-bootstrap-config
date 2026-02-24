# Chrome Web Store API - API Reference

**Version**: `v2` | **Methods**: 5 | **Schemas**: 12

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `chromewebstore.publishers.items.publish` | POST | `v2/{+name}:publish` | Submit the item to be published in the store. The item will be submitted for review unless `skip_... |
| `chromewebstore.publishers.items.fetchStatus` | GET | `v2/{+name}:fetchStatus` | Fetch the status of an item. |
| `chromewebstore.publishers.items.cancelSubmission` | POST | `v2/{+name}:cancelSubmission` | Cancel the current active submission of an item if present. This can be used to cancel the review... |
| `chromewebstore.publishers.items.setPublishedDeployPercentage` | POST | `v2/{+name}:setPublishedDeployPercentage` | Set a higher target deploy percentage for the item's published revision. This will be updated wit... |
| `chromewebstore.media.upload` | POST | `v2/{+name}:upload` | Upload a new package to an existing item. |

### `chromewebstore.publishers.items.publish`

**POST** `v2/{+name}:publish`

Submit the item to be published in the store. The item will be submitted for review unless `skip_review` is set to true, or the item is staged from a previous submission with `publish_type` set to `STAGED_PUBLISH`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the item in the form `publishers/{publisherId}/items/{itemId}` |

**Request body**: `PublishItemRequest`

**Response**: `PublishItemResponse`

```typescript
const res = await chromewebstore.items.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chromewebstore`

---

### `chromewebstore.publishers.items.fetchStatus`

**GET** `v2/{+name}:fetchStatus`

Fetch the status of an item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the item to retrieve the status of in the form `publishers/{publisherId}/items/{itemId}` |

**Response**: `FetchItemStatusResponse`

```typescript
const res = await chromewebstore.items.fetchStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chromewebstore`
- `https://www.googleapis.com/auth/chromewebstore.readonly`

---

### `chromewebstore.publishers.items.cancelSubmission`

**POST** `v2/{+name}:cancelSubmission`

Cancel the current active submission of an item if present. This can be used to cancel the review of a pending submission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the item to cancel the submission of in the form `publishers/{publisherId}/items/{itemId}` |

**Request body**: `CancelSubmissionRequest`

**Response**: `CancelSubmissionResponse`

```typescript
const res = await chromewebstore.items.cancelSubmission({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chromewebstore`

---

### `chromewebstore.publishers.items.setPublishedDeployPercentage`

**POST** `v2/{+name}:setPublishedDeployPercentage`

Set a higher target deploy percentage for the item's published revision. This will be updated without the item being submitted for review. This is only available to items with over 10,000 seven-day active users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the item to update the published revision of in the form `publishers/{publisherId}/items/{itemId}` |

**Request body**: `SetPublishedDeployPercentageRequest`

**Response**: `SetPublishedDeployPercentageResponse`

```typescript
const res = await chromewebstore.items.setPublishedDeployPercentage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chromewebstore`

---

### `chromewebstore.media.upload`

**POST** `v2/{+name}:upload`

Upload a new package to an existing item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the item to upload the new package to in the form `publishers/{publisherId}/items/{itemId}` |

**Request body**: `UploadItemPackageRequest`

**Response**: `UploadItemPackageResponse`

```typescript
const res = await chromewebstore.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chromewebstore`

---

## Schemas

### `CancelSubmissionRequest`

Request message for CancelSubmission.

### `CancelSubmissionResponse`

Response message for `CancelSubmission`.

### `DeployInfo`

Deployment information for a specific release channel. Used in requests to update deployment parameters.

| Property | Type | Description |
|----------|------|-------------|
| `deployPercentage` | `integer` | Required. The current deploy percentage for the release channel (nonnegative number between 0 and... |

### `DistributionChannel`

Deployment information for a specific release channel

| Property | Type | Description |
|----------|------|-------------|
| `crxVersion` | `string` | The extension version provided in the manifest of the uploaded package. |
| `deployPercentage` | `integer` | The current deploy percentage for the release channel (nonnegative number between 0 and 100). |

### `FetchItemStatusResponse`

Response message for `FetchItemStatus`.

| Property | Type | Description |
|----------|------|-------------|
| `itemId` | `string` | Output only. The ID of the item. |
| `lastAsyncUploadState` | `string` | Output only. The state of the last async upload for an item. Only set when there has been an asyn... |
| `name` | `string` | The name of the requested item. |
| `publicKey` | `string` | The public key of the item, which may be generated by the store. |
| `publishedItemRevisionStatus` | `ItemRevisionStatus` | Output only. Status of the current published revision of the item. Will be unset if the item is n... |
| `submittedItemRevisionStatus` | `ItemRevisionStatus` | Status of the item revision submitted to be published. Will be unset if the item has not been sub... |
| `takenDown` | `boolean` | If true, the item has been taken down for a policy violation. Check the developer dashboard for d... |
| `warned` | `boolean` | If true, the item has been warned for a policy violation and will be taken down if not resolved. ... |

### `ItemRevisionStatus`

Details on the status of an item revision.

| Property | Type | Description |
|----------|------|-------------|
| `distributionChannels` | `array<DistributionChannel>` | Details on the package of the item |
| `state` | `string` | Output only. Current state of the item |

### `PublishItemRequest`

Request message for PublishItem.

| Property | Type | Description |
|----------|------|-------------|
| `deployInfos` | `array<DeployInfo>` | Optional. Additional deploy information including the desired initial percentage rollout. Default... |
| `publishType` | `string` | Optional. Use this to control if the item is published immediately on approval or staged for publ... |
| `skipReview` | `boolean` | Optional. Whether to attempt to skip item review. The API will validate if the item qualifies and... |

### `PublishItemResponse`

Response message for `PublishItem`.

| Property | Type | Description |
|----------|------|-------------|
| `itemId` | `string` | Output only. The ID of the item. |
| `name` | `string` | The name of the item that was submitted |
| `state` | `string` | Output only. The current state of the submission. |

### `SetPublishedDeployPercentageRequest`

Request message for SetPublishedDeployPercentage.

| Property | Type | Description |
|----------|------|-------------|
| `deployPercentage` | `integer` | Required. Unscaled percentage value for the publised revision (nonnegative number between 0 and 1... |

### `SetPublishedDeployPercentageResponse`

Response message for `SetPublishedDeployPercentage`.

### `UploadItemPackageRequest`

Request message for UploadItemPackage.

### `UploadItemPackageResponse`

Response message for `UploadItemPackage`.

| Property | Type | Description |
|----------|------|-------------|
| `crxVersion` | `string` | The extension version provided in the manifest of the uploaded package. This will not be set if t... |
| `itemId` | `string` | Output only. The ID of the item the package was uploaded to. |
| `name` | `string` | The name of the item the package was uploaded to. |
| `uploadState` | `string` | Output only. The state of the upload. If `upload_state` is `UPLOAD_IN_PROGRESS`, you can poll for... |

