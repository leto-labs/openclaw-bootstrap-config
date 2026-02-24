# Google Workspace Marketplace API - API Reference

**Version**: `v2` | **Methods**: 2 | **Schemas**: 3

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `appsmarket.customerLicense.get` | GET | `appsmarket/v2/customerLicense/{applicationId}/{customerId}` | Gets the customer's licensing status to determine if they have access to a given app. For more in... |
| `appsmarket.userLicense.get` | GET | `appsmarket/v2/userLicense/{applicationId}/{userId}` | Gets the user's licensing status to determine if they have permission to use a given app. For mor... |

### `appsmarket.customerLicense.get`

**GET** `appsmarket/v2/customerLicense/{applicationId}/{customerId}`

Gets the customer's licensing status to determine if they have access to a given app. For more information, see [Getting app installation and licensing details](https://developers.google.com/workspace/marketplace/example-calls-marketplace-api).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The ID of the application. |
| `customerId` | `string` | path | Yes | The ID of the customer. |

**Response**: `CustomerLicense`

```typescript
const res = await appsmarket.customerLicense.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appsmarketplace.license`

---

### `appsmarket.userLicense.get`

**GET** `appsmarket/v2/userLicense/{applicationId}/{userId}`

Gets the user's licensing status to determine if they have permission to use a given app. For more information, see [Getting app installation and licensing details](https://developers.google.com/workspace/marketplace/example-calls-marketplace-api).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `applicationId` | `string` | path | Yes | The ID of the application. |
| `userId` | `string` | path | Yes | The ID of the user. |

**Response**: `UserLicense`

```typescript
const res = await appsmarket.userLicense.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/appsmarketplace.license`

---

## Schemas

### `CustomerLicense`

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` | The ID of the application corresponding to this license query. |
| `customerId` | `string` | The domain name of the customer. |
| `editions` | `array<Editions>` | (Deprecated) |
| `id` | `string` | The ID of the customer license. |
| `kind` | `string` | The type of API resource. This is always `appsmarket#customerLicense`. |
| `state` | `string` | The customer's license status. One of: - `ACTIVE`: The customer has a valid license. - `UNLICENSE... |

### `Editions`

| Property | Type | Description |
|----------|------|-------------|
| `assignedSeats` | `integer` | (Deprecated) |
| `editionId` | `string` | (Deprecated) |
| `seatCount` | `integer` | (Deprecated) |

### `UserLicense`

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` | The ID of the application corresponding to the license query. |
| `customerId` | `string` | The domain name of the user. |
| `editionId` | `string` | (Deprecated) |
| `enabled` | `boolean` | The domain administrator has activated the application for this domain. |
| `id` | `string` | The ID of the user license. |
| `kind` | `string` | The type of API resource. This is always `appsmarket#userLicense`. |
| `state` | `string` | The user's licensing status. One of: - `ACTIVE`: The user has a valid license and should be permi... |
| `userId` | `string` | The email address of the user. |

