# IAM Service Account Credentials API - API Reference

**Version**: `v1` | **Methods**: 7 | **Schemas**: 11

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `iamcredentials.projects.serviceAccounts.generateAccessToken` | POST | `v1/{+name}:generateAccessToken` | Generates an OAuth 2.0 access token for a service account. |
| `iamcredentials.projects.serviceAccounts.signBlob` | POST | `v1/{+name}:signBlob` | Signs a blob using a service account's system-managed private key. |
| `iamcredentials.projects.serviceAccounts.generateIdToken` | POST | `v1/{+name}:generateIdToken` | Generates an OpenID Connect ID token for a service account. |
| `iamcredentials.projects.serviceAccounts.signJwt` | POST | `v1/{+name}:signJwt` | Signs a JWT using a service account's system-managed private key. |
| `iamcredentials.projects.serviceAccounts.getAllowedLocations` | GET | `v1/{+name}/allowedLocations` | Returns the trust boundary info for a given service account. |
| `iamcredentials.projects.locations.workloadIdentityPools.getAllowedLocations` | GET | `v1/{+name}/allowedLocations` | Returns the trust boundary info for a given workload identity pool. |
| `iamcredentials.locations.workforcePools.getAllowedLocations` | GET | `v1/{+name}/allowedLocations` | Returns the trust boundary info for a given workforce pool. |

### `iamcredentials.projects.serviceAccounts.generateAccessToken`

**POST** `v1/{+name}:generateAccessToken`

Generates an OAuth 2.0 access token for a service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the service account for which the credentials are requested, in the following format: ... |

**Request body**: `GenerateAccessTokenRequest`

**Response**: `GenerateAccessTokenResponse`

```typescript
const res = await iamcredentials.serviceAccounts.generateAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iamcredentials.projects.serviceAccounts.signBlob`

**POST** `v1/{+name}:signBlob`

Signs a blob using a service account's system-managed private key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the service account for which the credentials are requested, in the following format: ... |

**Request body**: `SignBlobRequest`

**Response**: `SignBlobResponse`

```typescript
const res = await iamcredentials.serviceAccounts.signBlob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iamcredentials.projects.serviceAccounts.generateIdToken`

**POST** `v1/{+name}:generateIdToken`

Generates an OpenID Connect ID token for a service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the service account for which the credentials are requested, in the following format: ... |

**Request body**: `GenerateIdTokenRequest`

**Response**: `GenerateIdTokenResponse`

```typescript
const res = await iamcredentials.serviceAccounts.generateIdToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iamcredentials.projects.serviceAccounts.signJwt`

**POST** `v1/{+name}:signJwt`

Signs a JWT using a service account's system-managed private key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the service account for which the credentials are requested, in the following format: ... |

**Request body**: `SignJwtRequest`

**Response**: `SignJwtResponse`

```typescript
const res = await iamcredentials.serviceAccounts.signJwt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iamcredentials.projects.serviceAccounts.getAllowedLocations`

**GET** `v1/{+name}/allowedLocations`

Returns the trust boundary info for a given service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of service account. |

**Response**: `ServiceAccountAllowedLocations`

```typescript
const res = await iamcredentials.serviceAccounts.getAllowedLocations({
  // parameters
});
```

---

### `iamcredentials.projects.locations.workloadIdentityPools.getAllowedLocations`

**GET** `v1/{+name}/allowedLocations`

Returns the trust boundary info for a given workload identity pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of workload identity pool. |

**Response**: `WorkloadIdentityPoolAllowedLocations`

```typescript
const res = await iamcredentials.workloadIdentityPools.getAllowedLocations({
  // parameters
});
```

---

### `iamcredentials.locations.workforcePools.getAllowedLocations`

**GET** `v1/{+name}/allowedLocations`

Returns the trust boundary info for a given workforce pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of workforce pool. |

**Response**: `WorkforcePoolAllowedLocations`

```typescript
const res = await iamcredentials.workforcePools.getAllowedLocations({
  // parameters
});
```

---

## Schemas

### `GenerateAccessTokenRequest`

| Property | Type | Description |
|----------|------|-------------|
| `delegates` | `array<string>` | The sequence of service accounts in a delegation chain. This field is required for [delegated req... |
| `lifetime` | `string` | The desired lifetime duration of the access token in seconds. By default, the maximum allowed val... |
| `scope` | `array<string>` | Required. Code to identify the scopes to be included in the OAuth 2.0 access token. See https://d... |

### `GenerateAccessTokenResponse`

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The OAuth 2.0 access token. |
| `expireTime` | `string` | Token expiration time. The expiration time is always set. |

### `GenerateIdTokenRequest`

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Required. The audience for the token, such as the API or account that this token grants access to. |
| `delegates` | `array<string>` | The sequence of service accounts in a delegation chain. Each service account must be granted the ... |
| `includeEmail` | `boolean` | Include the service account email in the token. If set to `true`, the token will contain `email` ... |
| `organizationNumberIncluded` | `boolean` | Include the organization number of the service account in the token. If set to `true`, the token ... |

### `GenerateIdTokenResponse`

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | The OpenId Connect ID token. The token is a JSON Web Token (JWT) that contains a payload with cla... |

### `ServiceAccountAllowedLocations`

Represents a list of allowed locations for given service account.

| Property | Type | Description |
|----------|------|-------------|
| `encodedLocations` | `string` | Output only. The hex encoded bitmap of the trust boundary locations |
| `locations` | `array<string>` | Output only. The human readable trust boundary locations. For example, ["us-central1", "europe-we... |

### `SignBlobRequest`

| Property | Type | Description |
|----------|------|-------------|
| `delegates` | `array<string>` | The sequence of service accounts in a delegation chain. Each service account must be granted the ... |
| `payload` | `string` | Required. The bytes to sign. |

### `SignBlobResponse`

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | The ID of the key used to sign the blob. The key used for signing will remain valid for at least ... |
| `signedBlob` | `string` | The signature for the blob. Does not include the original blob. After the key pair referenced by ... |

### `SignJwtRequest`

| Property | Type | Description |
|----------|------|-------------|
| `delegates` | `array<string>` | The sequence of service accounts in a delegation chain. Each service account must be granted the ... |
| `payload` | `string` | Required. The JWT payload to sign. Must be a serialized JSON object that contains a JWT Claims Se... |

### `SignJwtResponse`

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | The ID of the key used to sign the JWT. The key used for signing will remain valid for at least 1... |
| `signedJwt` | `string` | The signed JWT. Contains the automatically generated header; the client-supplied payload; and the... |

### `WorkforcePoolAllowedLocations`

Represents a list of allowed locations for given workforce pool.

| Property | Type | Description |
|----------|------|-------------|
| `encodedLocations` | `string` | Output only. The hex encoded bitmap of the trust boundary locations |
| `locations` | `array<string>` | Output only. The human readable trust boundary locations. For example, ["us-central1", "europe-we... |

### `WorkloadIdentityPoolAllowedLocations`

Represents a list of allowed locations for given workload identity pool.

| Property | Type | Description |
|----------|------|-------------|
| `encodedLocations` | `string` | Output only. The hex encoded bitmap of the trust boundary locations |
| `locations` | `array<string>` | Output only. The human readable trust boundary locations. For example, ["us-central1", "europe-we... |

