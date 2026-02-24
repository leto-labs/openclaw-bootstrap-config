# Cloud OS Login API - API Reference

**Version**: `v1` | **Methods**: 9 | **Schemas**: 8

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `oslogin.users.importSshPublicKey` | POST | `v1/{+parent}:importSshPublicKey` | Adds an SSH public key and returns the profile information. Default POSIX account information is ... |
| `oslogin.users.getLoginProfile` | GET | `v1/{+name}/loginProfile` | Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine. |
| `oslogin.users.projects.delete` | DELETE | `v1/{+name}` | Deletes a POSIX account. |
| `oslogin.users.projects.provisionPosixAccount` | POST | `v1/{+name}` | Adds a POSIX account and returns the profile information. Default POSIX account information is se... |
| `oslogin.users.sshPublicKeys.create` | POST | `v1/{+parent}/sshPublicKeys` | Create an SSH public key |
| `oslogin.users.sshPublicKeys.patch` | PATCH | `v1/{+name}` | Updates an SSH public key and returns the profile information. This method supports patch semantics. |
| `oslogin.users.sshPublicKeys.delete` | DELETE | `v1/{+name}` | Deletes an SSH public key. |
| `oslogin.users.sshPublicKeys.get` | GET | `v1/{+name}` | Retrieves an SSH public key. |
| `oslogin.projects.locations.signSshPublicKey` | POST | `v1/{+parent}:signSshPublicKey` | Signs an SSH public key for a user to authenticate to a virtual machine on Google Compute Engine. |

### `oslogin.users.importSshPublicKey`

**POST** `v1/{+parent}:importSshPublicKey`

Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique ID for the user in format `users/{user}`. |
| `projectId` | `string` | query | No | The project ID of the Google Cloud Platform project. |
| `regions` | `string` | query | No | Optional. The regions to which to assert that the key was written. If unspecified, defaults to all regions. Regions a... |

**Request body**: `SshPublicKey`

**Response**: `ImportSshPublicKeyResponse`

```typescript
const res = await oslogin.users.importSshPublicKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.getLoginProfile`

**GET** `v1/{+name}/loginProfile`

Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique ID for the user in format `users/{user}`. |
| `projectId` | `string` | query | No | Required. The project ID of the Google Cloud Platform project. |
| `systemId` | `string` | query | No | Optional. A system ID for filtering the results of the request. |

**Response**: `LoginProfile`

```typescript
const res = await oslogin.users.getLoginProfile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/compute`
- `https://www.googleapis.com/auth/compute.readonly`

---

### `oslogin.users.projects.delete`

**DELETE** `v1/{+name}`

Deletes a POSIX account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A reference to the POSIX account to update. POSIX accounts are identified by the project ID they are associ... |

**Response**: `Empty`

```typescript
const res = await oslogin.projects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.projects.provisionPosixAccount`

**POST** `v1/{+name}`

Adds a POSIX account and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique ID for the user in format `users/{user}/projects/{project}`. |

**Request body**: `ProvisionPosixAccountRequest`

**Response**: `PosixAccount`

```typescript
const res = await oslogin.projects.provisionPosixAccount({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.sshPublicKeys.create`

**POST** `v1/{+parent}/sshPublicKeys`

Create an SSH public key

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique ID for the user in format `users/{user}`. |

**Request body**: `SshPublicKey`

**Response**: `SshPublicKey`

```typescript
const res = await oslogin.sshPublicKeys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.sshPublicKeys.patch`

**PATCH** `v1/{+name}`

Updates an SSH public key and returns the profile information. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The f... |
| `updateMask` | `string` | query | No | Optional. Mask to control which fields get updated. Updates all if not present. |

**Request body**: `SshPublicKey`

**Response**: `SshPublicKey`

```typescript
const res = await oslogin.sshPublicKeys.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.sshPublicKeys.delete`

**DELETE** `v1/{+name}`

Deletes an SSH public key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The f... |

**Response**: `Empty`

```typescript
const res = await oslogin.sshPublicKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.users.sshPublicKeys.get`

**GET** `v1/{+name}`

Retrieves an SSH public key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The... |

**Response**: `SshPublicKey`

```typescript
const res = await oslogin.sshPublicKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `oslogin.projects.locations.signSshPublicKey`

**POST** `v1/{+parent}:signSshPublicKey`

Signs an SSH public key for a user to authenticate to a virtual machine on Google Compute Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent for the signing request. Format: projects/{project}/locations/{location} |

**Request body**: `SignSshPublicKeyRequest`

**Response**: `SignSshPublicKeyResponse`

```typescript
const res = await oslogin.locations.signSshPublicKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ImportSshPublicKeyResponse`

A response message for importing an SSH public key.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Detailed information about import results. |
| `loginProfile` | `LoginProfile` | The login profile information for the user. |

### `LoginProfile`

The user profile information used for logging in to a virtual machine on Google Compute Engine.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. A unique user ID. |
| `posixAccounts` | `array<PosixAccount>` | The list of POSIX accounts associated with the user. |
| `sshPublicKeys` | `object` | A map from SSH public key fingerprint to the associated key object. |

### `PosixAccount`

The POSIX account information associated with a Google account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Output only. A POSIX account identifier. |
| `gecos` | `string` | The GECOS (user information) entry for this account. |
| `gid` | `string` | The default group ID. |
| `homeDirectory` | `string` | The path to the home directory for this account. |
| `name` | `string` | Output only. The canonical resource name. |
| `operatingSystemType` | `string` | The operating system type where this account applies. |
| `primary` | `boolean` | Only one POSIX account can be marked as primary. |
| `shell` | `string` | The path to the logic shell for this account. |
| `systemId` | `string` | System identifier for which account the username or uid applies to. By default, the empty value i... |
| `uid` | `string` | The user ID. |
| `username` | `string` | The username of the POSIX account. |

### `ProvisionPosixAccountRequest`

A request message for creating a POSIX account entry.

| Property | Type | Description |
|----------|------|-------------|
| `regions` | `array<string>` | Optional. The regions to wait for a POSIX account to be written to before returning a response. I... |

### `SignSshPublicKeyRequest`

A request message for signing an SSH public key.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineInstance` | `string` | The App Engine instance to sign the SSH public key for. Expected format: apps/{app}/services/{ser... |
| `computeInstance` | `string` | The Compute instance to sign the SSH public key for. Expected format: projects/{project}/zones/{z... |
| `serviceAccount` | `string` | Optional. The service account for the instance. If the instance in question does not have a servi... |
| `sshPublicKey` | `string` | Required. The SSH public key to sign. |

### `SignSshPublicKeyResponse`

The response message for signing an SSH public key.

| Property | Type | Description |
|----------|------|-------------|
| `signedSshPublicKey` | `string` | The signed SSH public key to use in the SSH handshake. |

### `SshPublicKey`

The SSH public key information associated with a Google account.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTimeUsec` | `string` | An expiration time in microseconds since epoch. |
| `fingerprint` | `string` | Output only. The SHA-256 fingerprint of the SSH public key. |
| `key` | `string` | Required. Public key text in SSH format, defined by [RFC4253](https://www.ietf.org/rfc/rfc4253.tx... |
| `name` | `string` | Output only. The canonical resource name. |

