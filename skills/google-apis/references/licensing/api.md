# Enterprise License Manager API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `licensing.licenseAssignments.patch` | PATCH | `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}` | Reassign a user's product SKU with a different SKU in the same product. This method supports patc... |
| `licensing.licenseAssignments.get` | GET | `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}` | Get a specific user's license by product SKU. |
| `licensing.licenseAssignments.listForProduct` | GET | `apps/licensing/v1/product/{productId}/users` | List all users assigned licenses for a specific product SKU. |
| `licensing.licenseAssignments.delete` | DELETE | `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}` | Revoke a license. |
| `licensing.licenseAssignments.update` | PUT | `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}` | Reassign a user's product SKU with a different SKU in the same product. |
| `licensing.licenseAssignments.listForProductAndSku` | GET | `apps/licensing/v1/product/{productId}/sku/{skuId}/users` | List all users assigned licenses for a specific product SKU. |
| `licensing.licenseAssignments.insert` | POST | `apps/licensing/v1/product/{productId}/sku/{skuId}/user` | Assign a license. |

### `licensing.licenseAssignments.patch`

**PATCH** `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Reassign a user's product SKU with a different SKU in the same product. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |
| `userId` | `string` | path | Yes | The user's current primary email address. If the user's email address changes, use the new email address in your API ... |

**Request body**: `LicenseAssignment`

**Response**: `LicenseAssignment`

```typescript
const res = await licensing.licenseAssignments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.get`

**GET** `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Get a specific user's license by product SKU.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |
| `userId` | `string` | path | Yes | The user's current primary email address. If the user's email address changes, use the new email address in your API ... |

**Response**: `LicenseAssignment`

```typescript
const res = await licensing.licenseAssignments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.listForProduct`

**GET** `apps/licensing/v1/product/{productId}/users`

List all users assigned licenses for a specific product SKU.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `customerId` | `string` | query | Yes | The customer's unique ID as defined in the Admin console, such as `C00000000`. If the customer is suspended, the serv... |
| `maxResults` | `integer` | query | No | The `maxResults` query string determines how many entries are returned on each page of a large response. This is an o... |
| `pageToken` | `string` | query | No | Token to fetch the next page of data. The `maxResults` query string is related to the `pageToken` since `maxResults` ... |

**Response**: `LicenseAssignmentList`

```typescript
const res = await licensing.licenseAssignments.listForProduct({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.delete`

**DELETE** `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Revoke a license.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |
| `userId` | `string` | path | Yes | The user's current primary email address. If the user's email address changes, use the new email address in your API ... |

**Response**: `Empty`

```typescript
const res = await licensing.licenseAssignments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.update`

**PUT** `apps/licensing/v1/product/{productId}/sku/{skuId}/user/{userId}`

Reassign a user's product SKU with a different SKU in the same product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |
| `userId` | `string` | path | Yes | The user's current primary email address. If the user's email address changes, use the new email address in your API ... |

**Request body**: `LicenseAssignment`

**Response**: `LicenseAssignment`

```typescript
const res = await licensing.licenseAssignments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.listForProductAndSku`

**GET** `apps/licensing/v1/product/{productId}/sku/{skuId}/users`

List all users assigned licenses for a specific product SKU.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |
| `customerId` | `string` | query | Yes | The customer's unique ID as defined in the Admin console, such as `C00000000`. If the customer is suspended, the serv... |
| `maxResults` | `integer` | query | No | The `maxResults` query string determines how many entries are returned on each page of a large response. This is an o... |
| `pageToken` | `string` | query | No | Token to fetch the next page of data. The `maxResults` query string is related to the `pageToken` since `maxResults` ... |

**Response**: `LicenseAssignmentList`

```typescript
const res = await licensing.licenseAssignments.listForProductAndSku({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

### `licensing.licenseAssignments.insert`

**POST** `apps/licensing/v1/product/{productId}/sku/{skuId}/user`

Assign a license.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productId` | `string` | path | Yes | A product's unique identifier. For more information about products in this version of the API, see Products and SKUs. |
| `skuId` | `string` | path | Yes | A product SKU's unique identifier. For more information about available SKUs in this version of the API, see Products... |

**Request body**: `LicenseAssignmentInsert`

**Response**: `LicenseAssignment`

```typescript
const res = await licensing.licenseAssignments.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.licensing`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `LicenseAssignment`

Representation of a license assignment.

| Property | Type | Description |
|----------|------|-------------|
| `etags` | `string` | ETag of the resource. |
| `kind` | `string` | Identifies the resource as a LicenseAssignment, which is `licensing#licenseAssignment`. |
| `productId` | `string` | A product's unique identifier. For more information about products in this version of the API, se... |
| `productName` | `string` | Display Name of the product. |
| `selfLink` | `string` | Link to this page. |
| `skuId` | `string` | A product SKU's unique identifier. For more information about available SKUs in this version of t... |
| `skuName` | `string` | Display Name of the sku of the product. |
| `userId` | `string` | The user's current primary email address. If the user's email address changes, use the new email ... |

### `LicenseAssignmentInsert`

Representation of a license assignment.

| Property | Type | Description |
|----------|------|-------------|
| `userId` | `string` | Email id of the user |

### `LicenseAssignmentList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | ETag of the resource. |
| `items` | `array<LicenseAssignment>` | The LicenseAssignments in this page of results. |
| `kind` | `string` | Identifies the resource as a collection of LicenseAssignments. |
| `nextPageToken` | `string` | The token that you must submit in a subsequent request to retrieve additional license results mat... |

