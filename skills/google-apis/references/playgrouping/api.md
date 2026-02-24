# Google Play Grouping API - API Reference

**Version**: `v1alpha1` | **Methods**: 2 | **Schemas**: 5

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `playgrouping.apps.tokens.verify` | POST | `v1alpha1/{+appPackage}/{+token}:verify` | Verify an API token by asserting the app and persona it belongs to. The verification is a protect... |
| `playgrouping.apps.tokens.tags.createOrUpdate` | POST | `v1alpha1/{+appPackage}/{+token}/tags:createOrUpdate` | Create or update tags for the user and app that are represented by the given token. |

### `playgrouping.apps.tokens.verify`

**POST** `v1alpha1/{+appPackage}/{+token}:verify`

Verify an API token by asserting the app and persona it belongs to. The verification is a protection against client-side attacks and will fail if the contents of the token don't match the provided values. A token must be verified before it can be used to manipulate user tags.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appPackage` | `string` | path | Yes | Required. App the token belongs to. Format: apps/{package_name} |
| `token` | `string` | path | Yes | Required. The token to be verified. Format: tokens/{token} |

**Request body**: `VerifyTokenRequest`

**Response**: `VerifyTokenResponse`

```typescript
const res = await playgrouping.tokens.verify({
  // parameters
});
```

---

### `playgrouping.apps.tokens.tags.createOrUpdate`

**POST** `v1alpha1/{+appPackage}/{+token}/tags:createOrUpdate`

Create or update tags for the user and app that are represented by the given token.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appPackage` | `string` | path | Yes | Required. App whose tags are being manipulated. Format: apps/{package_name} |
| `token` | `string` | path | Yes | Required. Token for which the tags are being inserted or updated. Format: tokens/{token} |

**Request body**: `CreateOrUpdateTagsRequest`

**Response**: `CreateOrUpdateTagsResponse`

```typescript
const res = await playgrouping.tags.createOrUpdate({
  // parameters
});
```

---

## Schemas

### `CreateOrUpdateTagsRequest`

Request message for CreateOrUpdateTags. VerifyToken.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<Tag>` | Tags to be inserted or updated. |

### `CreateOrUpdateTagsResponse`

Response message for CreateOrUpdateTags.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<Tag>` | All requested tags are returned, including pre-existing ones. |

### `Tag`

A tag is associated with exactly one package name and user.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` | A boolean value of the tag. |
| `int64Value` | `string` | A signed 64-bit integer value of the tag. |
| `key` | `string` | Required. Key for the tag. |
| `stringValue` | `string` | A string value of the tag. |
| `timeValue` | `string` | A time value of the tag. |

### `VerifyTokenRequest`

Request message for VerifyToken.

| Property | Type | Description |
|----------|------|-------------|
| `persona` | `string` | Required. Persona represented by the token. Format: personas/{persona} |

### `VerifyTokenResponse`

Response message for VerifyToken.

