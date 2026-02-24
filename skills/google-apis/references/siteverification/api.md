# Google Site Verification API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `siteVerification.webResource.delete` | DELETE | `webResource/{id}` | Relinquish ownership of a website or domain. |
| `siteVerification.webResource.get` | GET | `webResource/{id}` | Get the most current data for a website or domain. |
| `siteVerification.webResource.getToken` | POST | `token` | Get a verification token for placing on a website or domain. |
| `siteVerification.webResource.insert` | POST | `webResource` | Attempt verification of a website or domain. |
| `siteVerification.webResource.list` | GET | `webResource` | Get the list of your verified websites and domains. |
| `siteVerification.webResource.patch` | PATCH | `webResource/{id}` | Modify the list of owners for your website or domain. This method supports patch semantics. |
| `siteVerification.webResource.update` | PUT | `webResource/{id}` | Modify the list of owners for your website or domain. |

### `siteVerification.webResource.delete`

**DELETE** `webResource/{id}`

Relinquish ownership of a website or domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | The id of a verified site or domain. |

```typescript
const res = await siteVerification.webResource.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`

---

### `siteVerification.webResource.get`

**GET** `webResource/{id}`

Get the most current data for a website or domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | The id of a verified site or domain. |

**Response**: `SiteVerificationWebResourceResource`

```typescript
const res = await siteVerification.webResource.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`

---

### `siteVerification.webResource.getToken`

**POST** `token`

Get a verification token for placing on a website or domain.

**Request body**: `SiteVerificationWebResourceGettokenRequest`

**Response**: `SiteVerificationWebResourceGettokenResponse`

```typescript
const res = await siteVerification.webResource.getToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`
- `https://www.googleapis.com/auth/siteverification.verify_only`

---

### `siteVerification.webResource.insert`

**POST** `webResource`

Attempt verification of a website or domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `verificationMethod` | `string` | query | Yes | The method to use for verifying a site or domain. |

**Request body**: `SiteVerificationWebResourceResource`

**Response**: `SiteVerificationWebResourceResource`

```typescript
const res = await siteVerification.webResource.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`
- `https://www.googleapis.com/auth/siteverification.verify_only`

---

### `siteVerification.webResource.list`

**GET** `webResource`

Get the list of your verified websites and domains.

**Response**: `SiteVerificationWebResourceListResponse`

```typescript
const res = await siteVerification.webResource.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`

---

### `siteVerification.webResource.patch`

**PATCH** `webResource/{id}`

Modify the list of owners for your website or domain. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | The id of a verified site or domain. |

**Request body**: `SiteVerificationWebResourceResource`

**Response**: `SiteVerificationWebResourceResource`

```typescript
const res = await siteVerification.webResource.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`

---

### `siteVerification.webResource.update`

**PUT** `webResource/{id}`

Modify the list of owners for your website or domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | The id of a verified site or domain. |

**Request body**: `SiteVerificationWebResourceResource`

**Response**: `SiteVerificationWebResourceResource`

```typescript
const res = await siteVerification.webResource.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/siteverification`

---

## Schemas

### `SiteVerificationWebResourceGettokenRequest`

| Property | Type | Description |
|----------|------|-------------|
| `site` | `object` | The site for which a verification token will be generated. |
| `verificationMethod` | `string` | The verification method that will be used to verify this site. For sites, 'FILE' or 'META' method... |

### `SiteVerificationWebResourceGettokenResponse`

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | The verification method to use in conjunction with this token. For FILE, the token should be plac... |
| `token` | `string` | The verification token. The token must be placed appropriately in order for verification to succeed. |

### `SiteVerificationWebResourceListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<SiteVerificationWebResourceResource>` | The list of sites that are owned by the authenticated user. |

### `SiteVerificationWebResourceResource`

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The string used to identify this site. This value should be used in the "id" portion of the REST ... |
| `owners` | `array<string>` | The email addresses of all verified owners. |
| `site` | `object` | The address and type of a site that is verified or will be verified. |

