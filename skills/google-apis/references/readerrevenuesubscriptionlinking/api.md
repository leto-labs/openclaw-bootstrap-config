# Reader Revenue Subscription Linking API - API Reference

**Version**: `v1` | **Methods**: 4 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `readerrevenuesubscriptionlinking.publications.readers.get` | GET | `v1/{+name}` | Gets a reader of a publication. Returns NOT_FOUND if the reader does not exist. |
| `readerrevenuesubscriptionlinking.publications.readers.delete` | DELETE | `v1/{+name}` | Removes a publication reader, effectively severing the association with a Google user. If `force`... |
| `readerrevenuesubscriptionlinking.publications.readers.getEntitlements` | GET | `v1/{+name}` | Gets the reader entitlements for a publication reader. - Returns PERMISSION_DENIED if the caller ... |
| `readerrevenuesubscriptionlinking.publications.readers.updateEntitlements` | PATCH | `v1/{+name}` | Updates the reader entitlements for a publication reader. The entire reader entitlements will be ... |

### `readerrevenuesubscriptionlinking.publications.readers.get`

**GET** `v1/{+name}`

Gets a reader of a publication. Returns NOT_FOUND if the reader does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the reader. Format: publications/{publication_id}/readers/{ppid} |

**Response**: `Reader`

```typescript
const res = await readerrevenuesubscriptionlinking.readers.get({
  // parameters
});
```

---

### `readerrevenuesubscriptionlinking.publications.readers.delete`

**DELETE** `v1/{+name}`

Removes a publication reader, effectively severing the association with a Google user. If `force` is set to true, any entitlements for this reader will also be deleted. (Otherwise, the request will only work if the reader has no entitlements.) - If the reader does not exist, return NOT_FOUND. - Return FAILED_PRECONDITION if the force field is false (or unset) and entitlements are present.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the reader. Format: publications/{publication_id}/readers/{ppid} |
| `force` | `boolean` | query | No | If set to true, any entitlements under the reader will also be purged. |

**Response**: `DeleteReaderResponse`

```typescript
const res = await readerrevenuesubscriptionlinking.readers.delete({
  // parameters
});
```

---

### `readerrevenuesubscriptionlinking.publications.readers.getEntitlements`

**GET** `v1/{+name}`

Gets the reader entitlements for a publication reader. - Returns PERMISSION_DENIED if the caller does not have access. - Returns NOT_FOUND if the reader does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the reader entitlements to retrieve. Format: publications/{publication_id}/readers/{reader_id}/... |

**Response**: `ReaderEntitlements`

```typescript
const res = await readerrevenuesubscriptionlinking.readers.getEntitlements({
  // parameters
});
```

---

### `readerrevenuesubscriptionlinking.publications.readers.updateEntitlements`

**PATCH** `v1/{+name}`

Updates the reader entitlements for a publication reader. The entire reader entitlements will be overwritten by the new reader entitlements in the payload, like a PUT. - Returns PERMISSION_DENIED if the caller does not have access. - Returns NOT_FOUND if the reader does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the singleton. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Defaults to all fields. |

**Request body**: `ReaderEntitlements`

**Response**: `ReaderEntitlements`

```typescript
const res = await readerrevenuesubscriptionlinking.readers.updateEntitlements({
  // parameters
});
```

---

## Schemas

### `DeleteReaderResponse`

Response to deleting a reader of a publication.

### `Entitlement`

A single entitlement for a publication reader

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | The detail field can carry a description of the SKU that corresponds to what the user has been gr... |
| `expireTime` | `string` | Required. Expiration time of the entitlement. Entitlements that have expired over 30 days will be... |
| `productId` | `string` | Required. The publication's product ID that the user has access to. This is the same product ID a... |
| `subscriptionToken` | `string` | A source-specific subscription token. This is an opaque string that the publisher provides to Goo... |

### `Reader`

A reader of a publication.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the publication reader was created and associated with a Google user. |
| `name` | `string` | Output only. The resource name of the reader. The last part of ppid in the resource name is the p... |
| `originatingPublicationId` | `string` | Output only. The SwG publication id that the reader's subscription linking was originating from. |
| `ppid` | `string` | Output only. The publisher provided id of the reader. |
| `publicationId` | `string` | Output only. The SwG publication id that the reader has linked their subscription to. |

### `ReaderEntitlements`

A singleton containing all of a reader's entitlements for a publication.

| Property | Type | Description |
|----------|------|-------------|
| `entitlements` | `array<Entitlement>` | All of the entitlements for a publication reader. |
| `name` | `string` | Output only. The resource name of the singleton. |

