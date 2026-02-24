# Android Management API - API Reference

**Version**: `v1` | **Methods**: 36 | **Schemas**: 173

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `androidmanagement.signupUrls.create` | POST | `v1/signupUrls` | Creates an enterprise signup URL. |
| `androidmanagement.enterprises.create` | POST | `v1/enterprises` | Creates an enterprise. This is the last step in the enterprise signup flow. See also: SigninDetail |
| `androidmanagement.enterprises.delete` | DELETE | `v1/{+name}` | Permanently deletes an enterprise and all accounts and data associated with it. Warning: this wil... |
| `androidmanagement.enterprises.get` | GET | `v1/{+name}` | Gets an enterprise. |
| `androidmanagement.enterprises.patch` | PATCH | `v1/{+name}` | Updates an enterprise. See also: SigninDetail |
| `androidmanagement.enterprises.list` | GET | `v1/enterprises` | Lists EMM-managed enterprises. Only BASIC fields are returned. |
| `androidmanagement.enterprises.generateEnterpriseUpgradeUrl` | POST | `v1/{+name}:generateEnterpriseUpgradeUrl` | Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterpris... |
| `androidmanagement.enterprises.enrollmentTokens.create` | POST | `v1/{+parent}/enrollmentTokens` | Creates an enrollment token for a given enterprise. It's up to the caller's responsibility to man... |
| `androidmanagement.enterprises.enrollmentTokens.delete` | DELETE | `v1/{+name}` | Deletes an enrollment token. This operation invalidates the token, preventing its future use. |
| `androidmanagement.enterprises.enrollmentTokens.get` | GET | `v1/{+name}` | Gets an active, unexpired enrollment token. A partial view of the enrollment token is returned. O... |
| `androidmanagement.enterprises.enrollmentTokens.list` | GET | `v1/{+parent}/enrollmentTokens` | Lists active, unexpired enrollment tokens for a given enterprise. The list items contain only a p... |
| `androidmanagement.enterprises.webTokens.create` | POST | `v1/{+parent}/webTokens` | Creates a web token to access an embeddable managed Google Play web UI for a given enterprise. |
| `androidmanagement.enterprises.devices.get` | GET | `v1/{+name}` | Gets a device. Deleted devices will respond with a 404 error. |
| `androidmanagement.enterprises.devices.list` | GET | `v1/{+parent}/devices` | Lists devices for a given enterprise. Deleted devices are not returned in the response. |
| `androidmanagement.enterprises.devices.patch` | PATCH | `v1/{+name}` | Updates a device. |
| `androidmanagement.enterprises.devices.delete` | DELETE | `v1/{+name}` | Deletes a device. This operation attempts to wipe the device but this is not guaranteed to succee... |
| `androidmanagement.enterprises.devices.issueCommand` | POST | `v1/{+name}:issueCommand` | Issues a command to a device. The Operation resource returned contains a Command in its metadata ... |
| `androidmanagement.enterprises.devices.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `androidmanagement.enterprises.devices.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `androidmanagement.enterprises.devices.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `androidmanagement.enterprises.policies.get` | GET | `v1/{+name}` | Gets a policy. |
| `androidmanagement.enterprises.policies.list` | GET | `v1/{+parent}/policies` | Lists policies for a given enterprise. |
| `androidmanagement.enterprises.policies.patch` | PATCH | `v1/{+name}` | Updates or creates a policy. |
| `androidmanagement.enterprises.policies.delete` | DELETE | `v1/{+name}` | Deletes a policy. This operation is only permitted if no devices are currently referencing the po... |
| `androidmanagement.enterprises.policies.modifyPolicyApplications` | POST | `v1/{+name}:modifyPolicyApplications` | Updates or creates applications in a policy. |
| `androidmanagement.enterprises.policies.removePolicyApplications` | POST | `v1/{+name}:removePolicyApplications` | Removes applications in a policy. |
| `androidmanagement.enterprises.applications.get` | GET | `v1/{+name}` | Gets info about an application. |
| `androidmanagement.enterprises.webApps.create` | POST | `v1/{+parent}/webApps` | Creates a web app. |
| `androidmanagement.enterprises.webApps.get` | GET | `v1/{+name}` | Gets a web app. |
| `androidmanagement.enterprises.webApps.list` | GET | `v1/{+parent}/webApps` | Lists web apps for a given enterprise. |
| `androidmanagement.enterprises.webApps.patch` | PATCH | `v1/{+name}` | Updates a web app. |
| `androidmanagement.enterprises.webApps.delete` | DELETE | `v1/{+name}` | Deletes a web app. |
| `androidmanagement.enterprises.migrationTokens.create` | POST | `v1/{+parent}/migrationTokens` | Creates a migration token, to migrate an existing device from being managed by the EMM's Device P... |
| `androidmanagement.enterprises.migrationTokens.get` | GET | `v1/{+name}` | Gets a migration token. |
| `androidmanagement.enterprises.migrationTokens.list` | GET | `v1/{+parent}/migrationTokens` | Lists migration tokens. |
| `androidmanagement.provisioningInfo.get` | GET | `v1/{+name}` | Get the device provisioning information by the identifier provided in the sign-in url. |

### `androidmanagement.signupUrls.create`

**POST** `v1/signupUrls`

Creates an enterprise signup URL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `adminEmail` | `string` | query | No | Optional. Email address used to prefill the admin field of the enterprise signup form. This value is a hint only and ... |
| `allowedDomains` | `string` | query | No | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an email address with a... |
| `callbackUrl` | `string` | query | No | The callback URL that the admin will be redirected to after successfully creating an enterprise. Before redirecting t... |
| `projectId` | `string` | query | No | The ID of the Google Cloud Platform project which will own the enterprise. |

**Response**: `SignupUrl`

```typescript
const res = await androidmanagement.signupUrls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.create`

**POST** `v1/enterprises`

Creates an enterprise. This is the last step in the enterprise signup flow. See also: SigninDetail

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `agreementAccepted` | `boolean` | query | No | Whether the enterprise admin has seen and agreed to the managed Google Play Agreement (https://www.android.com/enterp... |
| `enterpriseToken` | `string` | query | No | The enterprise token appended to the callback URL. Set this when creating a customer-managed enterprise (https://deve... |
| `projectId` | `string` | query | No | The ID of the Google Cloud Platform project which will own the enterprise. |
| `signupUrlName` | `string` | query | No | The name of the SignupUrl used to sign up for the enterprise. Set this when creating a customer-managed enterprise (h... |

**Request body**: `Enterprise`

**Response**: `Enterprise`

```typescript
const res = await androidmanagement.enterprises.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.delete`

**DELETE** `v1/{+name}`

Permanently deletes an enterprise and all accounts and data associated with it. Warning: this will result in a cascaded deletion of all AM API devices associated with the deleted enterprise. Only available for EMM-managed enterprises.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |

**Response**: `Empty`

```typescript
const res = await androidmanagement.enterprises.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.get`

**GET** `v1/{+name}`

Gets an enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |

**Response**: `Enterprise`

```typescript
const res = await androidmanagement.enterprises.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.patch`

**PATCH** `v1/{+name}`

Updates an enterprise. See also: SigninDetail

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |
| `updateMask` | `string` | query | No | The field mask indicating the fields to update. If not set, all modifiable fields will be modified. |

**Request body**: `Enterprise`

**Response**: `Enterprise`

```typescript
const res = await androidmanagement.enterprises.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.list`

**GET** `v1/enterprises`

Lists EMM-managed enterprises. Only BASIC fields are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The requested page size. The actual page size may be fixed to a min or max value. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |
| `projectId` | `string` | query | No | Required. The Cloud project ID of the EMM managing the enterprises. |
| `view` | `string` | query | No | Specifies which Enterprise fields to return. This method only supports BASIC. |

**Response**: `ListEnterprisesResponse`

```typescript
const res = await androidmanagement.enterprises.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.generateEnterpriseUpgradeUrl`

**POST** `v1/{+name}:generateEnterpriseUpgradeUrl`

Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain. See the guide (https://developers.google.com/android/management/upgrade-an-enterprise) for more details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the enterprise to be upgraded in the form enterprises/{enterpriseId}. |

**Request body**: `GenerateEnterpriseUpgradeUrlRequest`

**Response**: `GenerateEnterpriseUpgradeUrlResponse`

```typescript
const res = await androidmanagement.enterprises.generateEnterpriseUpgradeUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.enrollmentTokens.create`

**POST** `v1/{+parent}/enrollmentTokens`

Creates an enrollment token for a given enterprise. It's up to the caller's responsibility to manage the lifecycle of newly created tokens and deleting them when they're not intended to be used anymore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |

**Request body**: `EnrollmentToken`

**Response**: `EnrollmentToken`

```typescript
const res = await androidmanagement.enrollmentTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.enrollmentTokens.delete`

**DELETE** `v1/{+name}`

Deletes an enrollment token. This operation invalidates the token, preventing its future use.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the enrollment token in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}. |

**Response**: `Empty`

```typescript
const res = await androidmanagement.enrollmentTokens.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.enrollmentTokens.get`

**GET** `v1/{+name}`

Gets an active, unexpired enrollment token. A partial view of the enrollment token is returned. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it's recommended to delete active enrollment tokens as soon as they're not intended to be used anymore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the enrollment token in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}. |

**Response**: `EnrollmentToken`

```typescript
const res = await androidmanagement.enrollmentTokens.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.enrollmentTokens.list`

**GET** `v1/{+parent}/enrollmentTokens`

Lists active, unexpired enrollment tokens for a given enterprise. The list items contain only a partial view of EnrollmentToken object. Only the following fields are populated: name, expirationTimestamp, allowPersonalUsage, value, qrCode. This method is meant to help manage active enrollment tokens lifecycle. For security reasons, it's recommended to delete active enrollment tokens as soon as they're not intended to be used anymore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the enterprise in the form enterprises/{enterpriseId}. |
| `pageSize` | `integer` | query | No | The requested page size. The service may return fewer than this value. If unspecified, at most 10 items will be retur... |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListEnrollmentTokensResponse`

```typescript
const res = await androidmanagement.enrollmentTokens.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webTokens.create`

**POST** `v1/{+parent}/webTokens`

Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |

**Request body**: `WebToken`

**Response**: `WebToken`

```typescript
const res = await androidmanagement.webTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.get`

**GET** `v1/{+name}`

Gets a device. Deleted devices will respond with a 404 error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. |

**Response**: `Device`

```typescript
const res = await androidmanagement.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.list`

**GET** `v1/{+parent}/devices`

Lists devices for a given enterprise. Deleted devices are not returned in the response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |
| `pageSize` | `integer` | query | No | The requested page size. If unspecified, at most 10 devices will be returned. The maximum value is 100; values above ... |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListDevicesResponse`

```typescript
const res = await androidmanagement.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.patch`

**PATCH** `v1/{+name}`

Updates a device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. |
| `updateMask` | `string` | query | No | The field mask indicating the fields to update. If not set, all modifiable fields will be modified. |

**Request body**: `Device`

**Response**: `Device`

```typescript
const res = await androidmanagement.devices.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.delete`

**DELETE** `v1/{+name}`

Deletes a device. This operation attempts to wipe the device but this is not guaranteed to succeed if the device is offline for an extended period. Deleted devices do not show up in enterprises.devices.list calls and a 404 is returned from enterprises.devices.get.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. |
| `wipeDataFlags` | `string` | query | No | Optional flags that control the device wiping behavior. |
| `wipeReasonMessage` | `string` | query | No | Optional. A short message displayed to the user before wiping the work profile on personal devices. This has no effec... |

**Response**: `Empty`

```typescript
const res = await androidmanagement.devices.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.issueCommand`

**POST** `v1/{+name}:issueCommand`

Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. |

**Request body**: `Command`

**Response**: `Operation`

```typescript
const res = await androidmanagement.devices.issueCommand({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await androidmanagement.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await androidmanagement.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.devices.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await androidmanagement.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.get`

**GET** `v1/{+name}`

Gets a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}. |

**Response**: `Policy`

```typescript
const res = await androidmanagement.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.list`

**GET** `v1/{+parent}/policies`

Lists policies for a given enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |
| `pageSize` | `integer` | query | No | The requested page size. The actual page size may be fixed to a min or max value. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListPoliciesResponse`

```typescript
const res = await androidmanagement.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.patch`

**PATCH** `v1/{+name}`

Updates or creates a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}. |
| `updateMask` | `string` | query | No | The field mask indicating the fields to update. If not set, all modifiable fields will be modified. |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await androidmanagement.policies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.delete`

**DELETE** `v1/{+name}`

Deletes a policy. This operation is only permitted if no devices are currently referencing the policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}. |

**Response**: `Empty`

```typescript
const res = await androidmanagement.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.modifyPolicyApplications`

**POST** `v1/{+name}:modifyPolicyApplications`

Updates or creates applications in a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Policy containing the ApplicationPolicy objects to be updated, in the form enterprises/{ent... |

**Request body**: `ModifyPolicyApplicationsRequest`

**Response**: `ModifyPolicyApplicationsResponse`

```typescript
const res = await androidmanagement.policies.modifyPolicyApplications({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.policies.removePolicyApplications`

**POST** `v1/{+name}:removePolicyApplications`

Removes applications in a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the policy containing the ApplicationPolicy objects to be removed, in the form enterprises/{ent... |

**Request body**: `RemovePolicyApplicationsRequest`

**Response**: `RemovePolicyApplicationsResponse`

```typescript
const res = await androidmanagement.policies.removePolicyApplications({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.applications.get`

**GET** `v1/{+name}`

Gets info about an application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the application in the form enterprises/{enterpriseId}/applications/{package_name}. |
| `languageCode` | `string` | query | No | The preferred language for localized application info, as a BCP47 tag (e.g. "en-US", "de"). If not specified the defa... |

**Response**: `Application`

```typescript
const res = await androidmanagement.applications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webApps.create`

**POST** `v1/{+parent}/webApps`

Creates a web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |

**Request body**: `WebApp`

**Response**: `WebApp`

```typescript
const res = await androidmanagement.webApps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webApps.get`

**GET** `v1/{+name}`

Gets a web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the web app in the form enterprises/{enterpriseId}/webApps/{packageName}. |

**Response**: `WebApp`

```typescript
const res = await androidmanagement.webApps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webApps.list`

**GET** `v1/{+parent}/webApps`

Lists web apps for a given enterprise.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the enterprise in the form enterprises/{enterpriseId}. |
| `pageSize` | `integer` | query | No | The requested page size. This is a hint and the actual page size in the response may be different. |
| `pageToken` | `string` | query | No | A token identifying a page of results returned by the server. |

**Response**: `ListWebAppsResponse`

```typescript
const res = await androidmanagement.webApps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webApps.patch`

**PATCH** `v1/{+name}`

Updates a web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the web app in the form enterprises/{enterpriseId}/webApps/{packageName}. |
| `updateMask` | `string` | query | No | The field mask indicating the fields to update. If not set, all modifiable fields will be modified. |

**Request body**: `WebApp`

**Response**: `WebApp`

```typescript
const res = await androidmanagement.webApps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.webApps.delete`

**DELETE** `v1/{+name}`

Deletes a web app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the web app in the form enterprises/{enterpriseId}/webApps/{packageName}. |

**Response**: `Empty`

```typescript
const res = await androidmanagement.webApps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.migrationTokens.create`

**POST** `v1/{+parent}/migrationTokens`

Creates a migration token, to migrate an existing device from being managed by the EMM's Device Policy Controller (DPC) to being managed by the Android Management API. See the guide (https://developers.google.com/android/management/dpc-migration) for more details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The enterprise in which this migration token is created. This must be the same enterprise which already man... |

**Request body**: `MigrationToken`

**Response**: `MigrationToken`

```typescript
const res = await androidmanagement.migrationTokens.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.migrationTokens.get`

**GET** `v1/{+name}`

Gets a migration token.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the migration token to retrieve. Format: enterprises/{enterprise}/migrationTokens/{migration_to... |

**Response**: `MigrationToken`

```typescript
const res = await androidmanagement.migrationTokens.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.enterprises.migrationTokens.list`

**GET** `v1/{+parent}/migrationTokens`

Lists migration tokens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The enterprise which the migration tokens belong to. Format: enterprises/{enterprise} |
| `pageSize` | `integer` | query | No | The maximum number of migration tokens to return. Fewer migration tokens may be returned. If unspecified, at most 100... |
| `pageToken` | `string` | query | No | A page token, received from a previous ListMigrationTokens call. Provide this to retrieve the subsequent page.When pa... |

**Response**: `ListMigrationTokensResponse`

```typescript
const res = await androidmanagement.migrationTokens.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

### `androidmanagement.provisioningInfo.get`

**GET** `v1/{+name}`

Get the device provisioning information by the identifier provided in the sign-in url.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The identifier that Android Device Policy passes to the 3P sign-in page in the form of provisioningInfo/{pr... |

**Response**: `ProvisioningInfo`

```typescript
const res = await androidmanagement.provisioningInfo.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidmanagement`

---

## Schemas

### `AdbShellCommandEvent`

A shell command was issued over ADB via “adb shell command”.

| Property | Type | Description |
|----------|------|-------------|
| `shellCmd` | `string` | Shell command that was issued over ADB via "adb shell command". Redacted to empty string on organ... |

### `AdbShellInteractiveEvent`

An ADB interactive shell was opened via “adb shell”. Intentionally empty.

### `AddEsimParams`

Parameters associated with the ADD_ESIM command to add an eSIM profile to the device.

| Property | Type | Description |
|----------|------|-------------|
| `activationCode` | `string` | Required. The activation code for the eSIM profile. |
| `activationState` | `string` | Required. The activation state of the eSIM profile once it is downloaded. |

### `AdvancedSecurityOverrides`

Advanced security settings. In most cases, setting these is not needed.

| Property | Type | Description |
|----------|------|-------------|
| `commonCriteriaMode` | `string` | Controls Common Criteria Mode—security standards defined in the Common Criteria for Information T... |
| `contentProtectionPolicy` | `string` | Optional. Controls whether content protection, which scans for deceptive apps, is enabled. This i... |
| `developerSettings` | `string` | Controls access to developer settings: developer options and safe boot. Replaces safeBootDisabled... |
| `googlePlayProtectVerifyApps` | `string` | Whether Google Play Protect verification (https://support.google.com/accounts/answer/2812853) is ... |
| `mtePolicy` | `string` | Optional. Controls Memory Tagging Extension (MTE) (https://source.android.com/docs/security/test/... |
| `personalAppsThatCanReadWorkNotifications` | `array<string>` | Personal apps that can read work profile notifications using a NotificationListenerService (https... |
| `untrustedAppsPolicy` | `string` | The policy for untrusted apps (apps from unknown sources) enforced on the device. Replaces instal... |

### `AlwaysOnVpnPackage`

Configuration for an always-on VPN connection.

| Property | Type | Description |
|----------|------|-------------|
| `lockdownEnabled` | `boolean` | Disallows networking when the VPN is not connected. |
| `packageName` | `string` | The package name of the VPN app. |

### `ApiLevelCondition`

A compliance rule condition which is satisfied if the Android Framework API level on the device doesn't meet a minimum requirement. There can only be one rule with this type of condition per policy.

| Property | Type | Description |
|----------|------|-------------|
| `minApiLevel` | `integer` | The minimum desired Android Framework API level. If the device doesn't meet the minimum requireme... |

### `ApnPolicy`

Access Point Name (APN) policy. Configuration for Access Point Names (APNs) which may override any other APNs on the device. See OVERRIDE_APNS_ENABLED and overrideApns for details.

| Property | Type | Description |
|----------|------|-------------|
| `apnSettings` | `array<ApnSetting>` | Optional. APN settings for override APNs. There must not be any conflict between any of APN setti... |
| `overrideApns` | `string` | Optional. Whether override APNs are disabled or enabled. See DevicePolicyManager.setOverrideApnsE... |

### `ApnSetting`

An Access Point Name (APN) configuration for a carrier data connection. The APN provides configuration to connect a cellular network device to an IP data network. A carrier uses this setting to decide which IP address to assign, any security methods to apply, and how the device might be connected to private networks.

| Property | Type | Description |
|----------|------|-------------|
| `alwaysOnSetting` | `string` | Optional. Whether User Plane resources have to be activated during every transition from CM-IDLE ... |
| `apn` | `string` | Required. Name of the APN. Policy will be rejected if this field is empty. |
| `apnTypes` | `array<string>` | Required. Usage categories for the APN. Policy will be rejected if this field is empty or contain... |
| `authType` | `string` | Optional. Authentication type of the APN. |
| `carrierId` | `integer` | Optional. Carrier ID for the APN. A value of 0 (default) means not set and negative values are re... |
| `displayName` | `string` | Required. Human-readable name that describes the APN. Policy will be rejected if this field is em... |
| `mmsProxyAddress` | `string` | Optional. MMS (Multimedia Messaging Service) proxy address of the APN which can be an IP address ... |
| `mmsProxyPort` | `integer` | Optional. MMS (Multimedia Messaging Service) proxy port of the APN. A value of 0 (default) means ... |
| `mmsc` | `string` | Optional. MMSC (Multimedia Messaging Service Center) URI of the APN. |
| `mtuV4` | `integer` | Optional. The default MTU (Maximum Transmission Unit) size in bytes of the IPv4 routes brought up... |
| `mtuV6` | `integer` | Optional. The MTU (Maximum Transmission Unit) size of the IPv6 mobile interface to which the APN ... |
| `mvnoType` | `string` | Optional. MVNO match type for the APN. |
| `networkTypes` | `array<string>` | Optional. Radio technologies (network types) the APN may use. Policy will be rejected if this fie... |
| `numericOperatorId` | `string` | Optional. The numeric operator ID of the APN. Numeric operator ID is defined as MCC (Mobile Count... |
| `password` | `string` | Optional. APN password of the APN. |
| `protocol` | `string` | Optional. The protocol to use to connect to this APN. |
| `proxyAddress` | `string` | Optional. The proxy address of the APN. |
| `proxyPort` | `integer` | Optional. The proxy port of the APN. A value of 0 (default) means not set and negative values are... |
| `roamingProtocol` | `string` | Optional. The protocol to use to connect to this APN while the device is roaming. |
| `username` | `string` | Optional. APN username of the APN. |

### `AppProcessInfo`

Information about a process. It contains process name, start time, app Uid, app Pid, seinfo tag, hash of the base APK.

| Property | Type | Description |
|----------|------|-------------|
| `apkSha256Hash` | `string` | SHA-256 hash of the base APK, in hexadecimal format. |
| `packageNames` | `array<string>` | Package names of all packages that are associated with the particular user ID. In most cases, thi... |
| `pid` | `integer` | Process ID. |
| `processName` | `string` | Process name. |
| `seinfo` | `string` | SELinux policy info. |
| `startTime` | `string` | Process start time. |
| `uid` | `integer` | UID of the package. |

### `AppProcessStartEvent`

An app process was started. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `processInfo` | `AppProcessInfo` | Information about a process. |

### `AppTrackInfo`

Id to name association of a app track.

| Property | Type | Description |
|----------|------|-------------|
| `trackAlias` | `string` | The track name associated with the trackId, set in the Play Console. The name is modifiable from ... |
| `trackId` | `string` | The unmodifiable unique track identifier, taken from the releaseTrackId in the URL of the Play Co... |

### `AppVersion`

This represents a single version of the app.

| Property | Type | Description |
|----------|------|-------------|
| `production` | `boolean` | If the value is True, it indicates that this version is a production track. |
| `trackIds` | `array<string>` | Track identifiers that the app version is published in. This does not include the production trac... |
| `versionCode` | `integer` | Unique increasing identifier for the app version. |
| `versionString` | `string` | The string used in the Play store by the app developer to identify the version. The string is not... |

### `Application`

Information about an app.

| Property | Type | Description |
|----------|------|-------------|
| `appPricing` | `string` | Whether this app is free, free with in-app purchases, or paid. If the pricing is unspecified, thi... |
| `appTracks` | `array<AppTrackInfo>` | Application tracks visible to the enterprise. |
| `appVersions` | `array<AppVersion>` | Versions currently available for this app. |
| `author` | `string` | The name of the author of the apps (for example, the app developer). |
| `availableCountries` | `array<string>` | The countries which this app is available in as per ISO 3166-1 alpha-2. |
| `category` | `string` | The app category (e.g. RACING, SOCIAL, etc.) |
| `contentRating` | `string` | The content rating for this app. |
| `description` | `string` | The localized promotional description, if available. |
| `distributionChannel` | `string` | How and to whom the package is made available. |
| `features` | `array<string>` | Noteworthy features (if any) of this app. |
| `fullDescription` | `string` | Full app description, if available. |
| `iconUrl` | `string` | A link to an image that can be used as an icon for the app. This image is suitable for use up to ... |
| `managedProperties` | `array<ManagedProperty>` | The set of managed properties available to be pre-configured for the app. |
| `minAndroidSdkVersion` | `integer` | The minimum Android SDK necessary to run the app. |
| `name` | `string` | The name of the app in the form enterprises/{enterprise}/applications/{package_name}. |
| `permissions` | `array<ApplicationPermission>` | The permissions required by the app. |
| `playStoreUrl` | `string` | A link to the (consumer) Google Play details page for the app. |
| `recentChanges` | `string` | A localised description of the recent changes made to the app. |
| `screenshotUrls` | `array<string>` | A list of screenshot links representing the app. |
| `smallIconUrl` | `string` | A link to a smaller image that can be used as an icon for the app. This image is suitable for use... |
| `title` | `string` | The title of the app. Localized. |
| `updateTime` | `string` | Output only. The approximate time (within 7 days) the app was last published. |

### `ApplicationEvent`

An app-related event.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the event. |
| `eventType` | `string` | App event type. |

### `ApplicationPermission`

A permission required by the app.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A longer description of the permission, providing more detail on what it affects. Localized. |
| `name` | `string` | The name of the permission. Localized. |
| `permissionId` | `string` | An opaque string uniquely identifying the permission. Not localized. |

### `ApplicationPolicy`

Policy for an individual app. Note: Application availability on a given device cannot be changed using this policy if installAppsDisabled is enabled. The maximum number of applications that you can specify per policy is 3,000.

| Property | Type | Description |
|----------|------|-------------|
| `accessibleTrackIds` | `array<string>` | List of the app’s track IDs that a device belonging to the enterprise can access. If the list con... |
| `alwaysOnVpnLockdownExemption` | `string` | Specifies whether the app is allowed networking when the VPN is not connected and alwaysOnVpnPack... |
| `autoUpdateMode` | `string` | Controls the auto-update mode for the app. |
| `connectedWorkAndPersonalApp` | `string` | Controls whether the app can communicate with itself across a device’s work and personal profiles... |
| `credentialProviderPolicy` | `string` | Optional. Whether the app is allowed to act as a credential provider on Android 14 and above. |
| `customAppConfig` | `CustomAppConfig` | Optional. Configuration for this custom app.install_type must be set to CUSTOM for this to be set. |
| `defaultPermissionPolicy` | `string` | The default policy for all permissions requested by the app. If specified, this overrides the pol... |
| `delegatedScopes` | `array<string>` | The scopes delegated to the app from Android Device Policy. These provide additional privileges f... |
| `disabled` | `boolean` | Whether the app is disabled. When disabled, the app data is still preserved. |
| `extensionConfig` | `ExtensionConfig` | Configuration to enable this app as an extension app, with the capability of interacting with And... |
| `installConstraint` | `array<InstallConstraint>` | Optional. The constraints for installing the app. You can specify a maximum of one InstallConstra... |
| `installPriority` | `integer` | Optional. Amongst apps with installType set to: FORCE_INSTALLED PREINSTALLEDthis controls the rel... |
| `installType` | `string` | The type of installation to perform. |
| `lockTaskAllowed` | `boolean` | Whether the app is allowed to lock itself in full-screen mode. DEPRECATED. Use InstallType KIOSK ... |
| `managedConfiguration` | `object` | Managed configuration applied to the app. The format for the configuration is dictated by the Man... |
| `managedConfigurationTemplate` | `ManagedConfigurationTemplate` | The managed configurations template for the app, saved from the managed configurations iframe. Th... |
| `minimumVersionCode` | `integer` | The minimum version of the app that runs on the device. If set, the device attempts to update the... |
| `packageName` | `string` | The package name of the app. For example, com.google.android.youtube for the YouTube app. |
| `permissionGrants` | `array<PermissionGrant>` | Explicit permission grants or denials for the app. These values override the default_permission_p... |
| `preferentialNetworkId` | `string` | Optional. ID of the preferential network the application uses. There must be a configuration for ... |
| `roles` | `array<Role>` | Optional. Roles the app has.Apps having certain roles can be exempted from power and background e... |
| `signingKeyCerts` | `array<ApplicationSigningKeyCert>` | Optional. Signing key certificates of the app.This field is required in the following cases: The ... |
| `userControlSettings` | `string` | Optional. Specifies whether user control is permitted for the app. User control includes user act... |
| `workProfileWidgets` | `string` | Specifies whether the app installed in the work profile is allowed to add widgets to the home scr... |

### `ApplicationPolicyChange`

A change to be made to a single ApplicationPolicy object.

| Property | Type | Description |
|----------|------|-------------|
| `application` | `ApplicationPolicy` | If ApplicationPolicy.packageName matches an existing ApplicationPolicy object within the Policy b... |
| `updateMask` | `string` | The field mask indicating the fields to update. If omitted, all modifiable fields are updated. |

### `ApplicationReport`

Information reported about an installed app.

| Property | Type | Description |
|----------|------|-------------|
| `applicationSource` | `string` | The source of the package. |
| `displayName` | `string` | The display name of the app. |
| `events` | `array<ApplicationEvent>` | The list of app events which have occurred in the last 30 hours. |
| `installerPackageName` | `string` | The package name of the app that installed this app. |
| `keyedAppStates` | `array<KeyedAppState>` | List of keyed app states reported by the app. |
| `packageName` | `string` | Package name of the app. |
| `packageSha256Hash` | `string` | The SHA-256 hash of the app's APK file, which can be used to verify the app hasn't been modified.... |
| `signingKeyCertFingerprints` | `array<string>` | The SHA-1 hash of each android.content.pm.Signature (https://developer.android.com/reference/andr... |
| `state` | `string` | Application state. |
| `userFacingType` | `string` | Whether the app is user facing. |
| `versionCode` | `integer` | The app version code, which can be used to determine whether one version is more recent than anot... |
| `versionName` | `string` | The app version as displayed to the user. |

### `ApplicationReportingSettings`

Settings controlling the behavior of application reports.

| Property | Type | Description |
|----------|------|-------------|
| `includeRemovedApps` | `boolean` | Whether removed apps are included in application reports. |

### `ApplicationSigningKeyCert`

The application signing key certificate.

| Property | Type | Description |
|----------|------|-------------|
| `signingKeyCertFingerprintSha256` | `string` | Required. The SHA-256 hash value of the signing key certificate of the app. This must be a valid ... |

### `BackupServiceToggledEvent`

An admin has enabled or disabled backup service.

| Property | Type | Description |
|----------|------|-------------|
| `adminPackageName` | `string` | Package name of the admin app requesting the change. |
| `adminUserId` | `integer` | User ID of the admin app from the which the change was requested. |
| `backupServiceState` | `string` | Whether the backup service is enabled |

### `BatchUsageLogEvents`

Batched event logs of events from the device.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `string` | If present, the name of the device in the form ‘enterprises/{enterpriseId}/devices/{deviceId}’ |
| `retrievalTime` | `string` | The device timestamp when the batch of events were collected from the device. |
| `usageLogEvents` | `array<UsageLogEvent>` | The list of UsageLogEvent that were reported by the device, sorted chronologically by the event t... |
| `user` | `string` | If present, the resource name of the user that owns this device in the form ‘enterprises/{enterpr... |

### `BlockAction`

An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a device or work profile to displays a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.

| Property | Type | Description |
|----------|------|-------------|
| `blockAfterDays` | `integer` | Number of days the policy is non-compliant before the device or work profile is blocked. To block... |
| `blockScope` | `string` | Specifies the scope of this BlockAction. Only applicable to devices that are company-owned. |

### `CertAuthorityInstalledEvent`

A new root certificate was installed into the system's trusted credential storage. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `certificate` | `string` | Subject of the certificate. |
| `success` | `boolean` | Whether the installation event succeeded. |
| `userId` | `integer` | The user in which the certificate install event happened. Only available for devices running Andr... |

### `CertAuthorityRemovedEvent`

A root certificate was removed from the system's trusted credential storage. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `certificate` | `string` | Subject of the certificate. |
| `success` | `boolean` | Whether the removal succeeded. |
| `userId` | `integer` | The user in which the certificate removal event occurred. Only available for devices running Andr... |

### `CertValidationFailureEvent`

An X.509v3 certificate failed to validate, currently this validation is performed on the Wi-FI access point and failure may be due to a mismatch upon server certificate validation. However it may in the future include other validation events of an X.509v3 certificate.

| Property | Type | Description |
|----------|------|-------------|
| `failureReason` | `string` | The reason why certification validation failed. |

### `ChoosePrivateKeyRule`

Controls apps' access to private keys. The rule determines which private key, if any, Android Device Policy grants to the specified app. Access is granted either when the app calls KeyChain.choosePrivateKeyAlias (https://developer.android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String[],%20java.security.Principal[],%20java.lang.String,%20int,%20java.lang.String%29) (or any overloads) to request a private key alias for a given URL, or for rules that are not URL-specific (that is, if urlPattern is not set, or set to the empty string or .*) on Android 11 and above, directly so that the app can call KeyChain.getPrivateKey (https://developer.android.com/reference/android/security/KeyChain#getPrivateKey%28android.content.Context,%20java.lang.String%29), without first having to call KeyChain.choosePrivateKeyAlias.When an app calls KeyChain.choosePrivateKeyAlias if more than one choosePrivateKeyRules matches, the last matching rule defines which key alias to return.

| Property | Type | Description |
|----------|------|-------------|
| `packageNames` | `array<string>` | The package names to which this rule applies. The signing key certificate fingerprint of the app ... |
| `privateKeyAlias` | `string` | The alias of the private key to be used. |
| `urlPattern` | `string` | The URL pattern to match against the URL of the request. If not set or empty, it matches all URLs... |

### `ClearAppsDataParams`

Parameters associated with the CLEAR_APP_DATA command to clear the data of specified apps from the device.

| Property | Type | Description |
|----------|------|-------------|
| `packageNames` | `array<string>` | The package names of the apps whose data will be cleared when the command is executed. |

### `ClearAppsDataStatus`

Status of the CLEAR_APP_DATA command to clear the data of specified apps from the device.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `object` | The per-app results, a mapping from package names to the respective clearing result. |

### `Command`

A command.

| Property | Type | Description |
|----------|------|-------------|
| `addEsimParams` | `AddEsimParams` | Optional. Parameters for the ADD_ESIM command to add an eSIM profile to the device. If this is se... |
| `clearAppsDataParams` | `ClearAppsDataParams` | Parameters for the CLEAR_APP_DATA command to clear the data of specified apps from the device. Se... |
| `clearAppsDataStatus` | `ClearAppsDataStatus` | Output only. Status of the CLEAR_APP_DATA command to clear the data of specified apps from the de... |
| `createTime` | `string` | The timestamp at which the command was created. The timestamp is automatically generated by the s... |
| `duration` | `string` | The duration for which the command is valid. The command will expire if not executed by the devic... |
| `errorCode` | `string` | If the command failed, an error code explaining the failure. This is not set when the command is ... |
| `esimStatus` | `EsimCommandStatus` | Output only. Status of an ADD_ESIM or REMOVE_ESIM command. |
| `newPassword` | `string` | For commands of type RESET_PASSWORD, optionally specifies the new password. Note: The new passwor... |
| `removeEsimParams` | `RemoveEsimParams` | Optional. Parameters for the REMOVE_ESIM command to remove an eSIM profile from the device. If th... |
| `requestDeviceInfoParams` | `RequestDeviceInfoParams` | Optional. Parameters for the REQUEST_DEVICE_INFO command to get device related information. If th... |
| `requestDeviceInfoStatus` | `RequestDeviceInfoStatus` | Output only. Status of the REQUEST_DEVICE_INFO command. |
| `resetPasswordFlags` | `array<string>` | For commands of type RESET_PASSWORD, optionally specifies flags. |
| `startLostModeParams` | `StartLostModeParams` | Parameters for the START_LOST_MODE command to put the device into lost mode. See StartLostModePar... |
| `startLostModeStatus` | `StartLostModeStatus` | Output only. Status of the START_LOST_MODE command to put the device into lost mode. See StartLos... |
| `stopLostModeParams` | `StopLostModeParams` | Parameters for the STOP_LOST_MODE command to take the device out of lost mode. See StopLostModePa... |
| `stopLostModeStatus` | `StopLostModeStatus` | Output only. Status of the STOP_LOST_MODE command to take the device out of lost mode. See StopLo... |
| `type` | `string` | The type of the command. |
| `userName` | `string` | The resource name of the user that owns the device in the form enterprises/{enterpriseId}/users/{... |
| `wipeParams` | `WipeParams` | Optional. Parameters for the WIPE command to wipe the device. If this is set, then it is suggeste... |

### `CommonCriteriaModeInfo`

Information about Common Criteria Mode—security standards defined in the Common Criteria for Information Technology Security Evaluation (https://www.commoncriteriaportal.org/) (CC).This information is only available if statusReportingSettings.commonCriteriaModeEnabled is true in the device's policy.

| Property | Type | Description |
|----------|------|-------------|
| `commonCriteriaModeStatus` | `string` | Whether Common Criteria Mode is enabled. |
| `policySignatureVerificationStatus` | `string` | Output only. The status of policy signature verification. |

### `ComplianceRule`

A rule declaring which mitigating actions to take when a device is not compliant with its policy. For every rule, there is always an implicit mitigating action to set policy_compliant to false for the Device resource, and display a message on the device indicating that the device is not compliant with its policy. Other mitigating actions may optionally be taken as well, depending on the field values in the rule.

| Property | Type | Description |
|----------|------|-------------|
| `apiLevelCondition` | `ApiLevelCondition` | A condition which is satisfied if the Android Framework API level on the device doesn't meet a mi... |
| `disableApps` | `boolean` | If set to true, the rule includes a mitigating action to disable apps so that the device is effec... |
| `nonComplianceDetailCondition` | `NonComplianceDetailCondition` | A condition which is satisfied if there exists any matching NonComplianceDetail for the device. |
| `packageNamesToDisable` | `array<string>` | If set, the rule includes a mitigating action to disable apps specified in the list, but app data... |

### `ConnectEvent`

A TCP connect event was initiated through the standard network stack.

| Property | Type | Description |
|----------|------|-------------|
| `destinationIpAddress` | `string` | The destination IP address of the connect call. |
| `destinationPort` | `integer` | The destination port of the connect call. |
| `packageName` | `string` | The package name of the UID that performed the connect call. |

### `ContactInfo`

Contact details for managed Google Play enterprises.

| Property | Type | Description |
|----------|------|-------------|
| `contactEmail` | `string` | Email address for a point of contact, which will be used to send important announcements related ... |
| `dataProtectionOfficerEmail` | `string` | The email of the data protection officer. The email is validated but not verified. |
| `dataProtectionOfficerName` | `string` | The name of the data protection officer. |
| `dataProtectionOfficerPhone` | `string` | The phone number of the data protection officer The phone number is validated but not verified. |
| `euRepresentativeEmail` | `string` | The email of the EU representative. The email is validated but not verified. |
| `euRepresentativeName` | `string` | The name of the EU representative. |
| `euRepresentativePhone` | `string` | The phone number of the EU representative. The phone number is validated but not verified. |

### `ContentProviderEndpoint`

This feature is not generally available.

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | This feature is not generally available. |
| `signingCertsSha256` | `array<string>` | Required. This feature is not generally available. |
| `uri` | `string` | This feature is not generally available. |

### `CrossProfilePolicies`

Controls the data from the work profile that can be accessed from the personal profile and vice versa. A NonComplianceDetail with MANAGEMENT_MODE is reported if the device does not have a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `crossProfileAppFunctions` | `string` | Optional. Controls whether personal profile apps can invoke app functions exposed by apps in the ... |
| `crossProfileCopyPaste` | `string` | Whether text copied from one profile (personal or work) can be pasted in the other profile. |
| `crossProfileDataSharing` | `string` | Whether data from one profile (personal or work) can be shared with apps in the other profile. Sp... |
| `exemptionsToShowWorkContactsInPersonalProfile` | `PackageNameList` | List of apps which are excluded from the ShowWorkContactsInPersonalProfile setting. For this to b... |
| `showWorkContactsInPersonalProfile` | `string` | Whether personal apps can access contacts stored in the work profile.See also exemptions_to_show_... |
| `workProfileWidgetsDefault` | `string` | Specifies the default behaviour for work profile widgets. If the policy does not specify work_pro... |

### `CryptoSelfTestCompletedEvent`

Validates whether Android’s built-in cryptographic library (BoringSSL) is valid. Should always succeed on device boot, if it fails, the device should be considered untrusted.

| Property | Type | Description |
|----------|------|-------------|
| `success` | `boolean` | Whether the test succeeded. |

### `CustomAppConfig`

Configuration for a custom app.

| Property | Type | Description |
|----------|------|-------------|
| `userUninstallSettings` | `string` | Optional. User uninstall settings of the custom app. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: A full date, with non-zero year, month, and day values. A month and day, with a zero year (for example, an anniversary). A year on its own, with a zero month and a zero day. A year and month, with a zero day (for example, a credit card expiration date).Related types: google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DefaultApplication`

Information about the application to be set as the default.

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | Required. The package name that should be set as the default application. The policy is rejected ... |

### `DefaultApplicationContext`

Additional context for non-compliance related to default application settings.

| Property | Type | Description |
|----------|------|-------------|
| `defaultApplicationScope` | `string` | Output only. The scope of non-compliant default application setting. |

### `DefaultApplicationInfo`

The default application information for a specific DefaultApplicationType.

| Property | Type | Description |
|----------|------|-------------|
| `defaultApplicationSettingAttempts` | `array<DefaultApplicationSettingAttempt>` | Output only. Details on the default application setting attempts, in the same order as listed in ... |
| `defaultApplicationType` | `string` | Output only. The default application type. |
| `packageName` | `string` | Output only. The package name of the current default application. |

### `DefaultApplicationSetting`

The default application setting for a DefaultApplicationType.

| Property | Type | Description |
|----------|------|-------------|
| `defaultApplicationScopes` | `array<string>` | Required. The scopes to which the policy should be applied. This list must not be empty or contai... |
| `defaultApplicationType` | `string` | Required. The app type to set the default application. |
| `defaultApplications` | `array<DefaultApplication>` | Required. The list of applications that can be set as the default app for a given type. This list... |

### `DefaultApplicationSettingAttempt`

Details on a default application setting attempt.

| Property | Type | Description |
|----------|------|-------------|
| `attemptOutcome` | `string` | Output only. The outcome of setting the app as the default. |
| `packageName` | `string` | Output only. The package name of the attempted application. |

### `Device`

A device owned by an enterprise. Unless otherwise noted, all fields are read-only and can't be modified by enterprises.devices.patch.

| Property | Type | Description |
|----------|------|-------------|
| `apiLevel` | `integer` | The API level of the Android platform version running on the device. |
| `applicationReports` | `array<ApplicationReport>` | Reports for apps installed on the device. This information is only available when application_rep... |
| `appliedPasswordPolicies` | `array<PasswordRequirements>` | The password requirements currently applied to the device. This field exists because the applied ... |
| `appliedPolicyName` | `string` | The name of the policy currently applied to the device. |
| `appliedPolicyVersion` | `string` | The version of the policy currently applied to the device. |
| `appliedState` | `string` | The state currently applied to the device. |
| `commonCriteriaModeInfo` | `CommonCriteriaModeInfo` | Information about Common Criteria Mode—security standards defined in the Common Criteria for Info... |
| `defaultApplicationInfo` | `array<DefaultApplicationInfo>` | Output only. The default application information for the DefaultApplicationType. This information... |
| `deviceSettings` | `DeviceSettings` | Device settings information. This information is only available if deviceSettingsEnabled is true ... |
| `disabledReason` | `UserFacingMessage` | If the device state is DISABLED, an optional message that is displayed on the device indicating t... |
| `displays` | `array<Display>` | Detailed information about displays on the device. This information is only available if displayI... |
| `dpcMigrationInfo` | `DpcMigrationInfo` | Output only. Information related to whether this device was migrated from being managed by anothe... |
| `enrollmentTime` | `string` | The time of device enrollment. |
| `enrollmentTokenData` | `string` | If the device was enrolled with an enrollment token with additional data provided, this field con... |
| `enrollmentTokenName` | `string` | If the device was enrolled with an enrollment token, this field contains the name of the token. |
| `hardwareInfo` | `HardwareInfo` | Detailed information about the device hardware. |
| `hardwareStatusSamples` | `array<HardwareStatus>` | Hardware status samples in chronological order. This information is only available if hardwareSta... |
| `lastPolicyComplianceReportTime` | `string` | Deprecated. |
| `lastPolicySyncTime` | `string` | The last time the device fetched its policy. |
| `lastStatusReportTime` | `string` | The last time the device sent a status report. |
| `managementMode` | `string` | The type of management mode Android Device Policy takes on the device. This influences which poli... |
| `memoryEvents` | `array<MemoryEvent>` | Events related to memory and storage measurements in chronological order. This information is onl... |
| `memoryInfo` | `MemoryInfo` | Memory information: contains information about device memory and storage. |
| `name` | `string` | The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. |
| `networkInfo` | `NetworkInfo` | Device network information. This information is only available if networkInfoEnabled is true in t... |
| `nonComplianceDetails` | `array<NonComplianceDetail>` | Details about policy settings that the device is not compliant with. |
| `ownership` | `string` | Ownership of the managed device. |
| `policyCompliant` | `boolean` | Whether the device is compliant with its policy. |
| `policyName` | `string` | The name of the policy applied to the device, in the form enterprises/{enterpriseId}/policies/{po... |
| `powerManagementEvents` | `array<PowerManagementEvent>` | Power management events on the device in chronological order. This information is only available ... |
| `previousDeviceNames` | `array<string>` | If the same physical device has been enrolled multiple times, this field contains its previous de... |
| `securityPosture` | `SecurityPosture` | Device's security posture value that reflects how secure the device is. |
| `softwareInfo` | `SoftwareInfo` | Detailed information about the device software. This information is only available if softwareInf... |
| `state` | `string` | The state to be applied to the device. This field can be modified by a patch request. Note that w... |
| `systemProperties` | `object` | Map of selected system properties name and value related to the device. This information is only ... |
| `user` | `User` | The user who owns the device. |
| `userName` | `string` | The resource name of the user that owns this device in the form enterprises/{enterpriseId}/users/... |

### `DeviceConnectivityManagement`

Covers controls for device connectivity such as Wi-Fi, USB data access, keyboard/mouse connections, and more.

| Property | Type | Description |
|----------|------|-------------|
| `apnPolicy` | `ApnPolicy` | Optional. Access Point Name (APN) policy. Configuration for Access Point Names (APNs) which may o... |
| `bluetoothSharing` | `string` | Optional. Controls whether Bluetooth sharing is allowed. |
| `configureWifi` | `string` | Controls Wi-Fi configuring privileges. Based on the option set, user will have either full or lim... |
| `preferentialNetworkServiceSettings` | `PreferentialNetworkServiceSettings` | Optional. Preferential network service configuration. Setting this field will override preferenti... |
| `tetheringSettings` | `string` | Controls tethering settings. Based on the value set, the user is partially or fully disallowed fr... |
| `usbDataAccess` | `string` | Controls what files and/or data can be transferred via USB. Supported only on company-owned devices. |
| `wifiDirectSettings` | `string` | Controls configuring and using Wi-Fi direct settings. Supported on company-owned devices running ... |
| `wifiRoamingPolicy` | `WifiRoamingPolicy` | Optional. Wi-Fi roaming policy. |
| `wifiSsidPolicy` | `WifiSsidPolicy` | Restrictions on which Wi-Fi SSIDs the device can connect to. Note that this does not affect which... |

### `DeviceRadioState`

Controls for device radio settings.

| Property | Type | Description |
|----------|------|-------------|
| `airplaneModeState` | `string` | Controls whether airplane mode can be toggled by the user or not. |
| `cellularTwoGState` | `string` | Controls whether cellular 2G setting can be toggled by the user or not. |
| `minimumWifiSecurityLevel` | `string` | The minimum required security level of Wi-Fi networks that the device can connect to. |
| `ultraWidebandState` | `string` | Controls the state of the ultra wideband setting and whether the user can toggle it on or off. |
| `userInitiatedAddEsimSettings` | `string` | Optional. Controls whether the user is allowed to add eSIM profiles. |
| `wifiState` | `string` | Controls current state of Wi-Fi and if user can change its state. |

### `DeviceSettings`

Information about security related device settings on device.

| Property | Type | Description |
|----------|------|-------------|
| `adbEnabled` | `boolean` | Whether ADB (https://developer.android.com/studio/command-line/adb.html) is enabled on the device. |
| `developmentSettingsEnabled` | `boolean` | Whether developer mode is enabled on the device. |
| `encryptionStatus` | `string` | Encryption status from DevicePolicyManager. |
| `isDeviceSecure` | `boolean` | Whether the device is secured with PIN/password. |
| `isEncrypted` | `boolean` | Whether the storage encryption is enabled. |
| `unknownSourcesEnabled` | `boolean` | Whether installing apps from unknown sources is enabled. |
| `verifyAppsEnabled` | `boolean` | Whether Google Play Protect verification (https://support.google.com/accounts/answer/2812853) is ... |

### `Display`

Device display information.

| Property | Type | Description |
|----------|------|-------------|
| `density` | `integer` | Display density expressed as dots-per-inch. |
| `displayId` | `integer` | Unique display id. |
| `height` | `integer` | Display height in pixels. |
| `name` | `string` | Name of the display. |
| `refreshRate` | `integer` | Refresh rate of the display in frames per second. |
| `state` | `string` | State of the display. |
| `width` | `integer` | Display width in pixels. |

### `DisplaySettings`

Controls for the display settings.

| Property | Type | Description |
|----------|------|-------------|
| `screenBrightnessSettings` | `ScreenBrightnessSettings` | Optional. Controls the screen brightness settings. |
| `screenTimeoutSettings` | `ScreenTimeoutSettings` | Optional. Controls the screen timeout settings. |

### `DnsEvent`

A DNS lookup event was initiated through the standard network stack.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | The hostname that was looked up. |
| `ipAddresses` | `array<string>` | The (possibly truncated) list of the IP addresses returned for DNS lookup (max 10 IPv4 or IPv6 ad... |
| `packageName` | `string` | The package name of the UID that performed the DNS lookup. |
| `totalIpAddressesReturned` | `string` | The number of IP addresses returned from the DNS lookup event. May be higher than the amount of i... |

### `DpcMigrationInfo`

Information related to whether this device was migrated from being managed by another Device Policy Controller (DPC).

| Property | Type | Description |
|----------|------|-------------|
| `additionalData` | `string` | Output only. If this device was migrated from another DPC, the additionalData field of the migrat... |
| `previousDpc` | `string` | Output only. If this device was migrated from another DPC, this is its package name. Not populate... |

### `Eid`

EID information for each eUICC chip.

| Property | Type | Description |
|----------|------|-------------|
| `eid` | `string` | Output only. The EID |

### `EidInfo`

Information related to the EIDs of the device.

| Property | Type | Description |
|----------|------|-------------|
| `eids` | `array<Eid>` | Output only. EID information for each eUICC chip. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnrollmentCompleteEvent`

Represents that the device has completed enrollment. User should be in the launcher at this point, device at this point will be compliant and all setup steps have been completed. Intentionally empty.

### `EnrollmentToken`

An enrollment token.

| Property | Type | Description |
|----------|------|-------------|
| `additionalData` | `string` | Optional, arbitrary data associated with the enrollment token. This could contain, for example, t... |
| `allowPersonalUsage` | `string` | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For... |
| `duration` | `string` | The length of time the enrollment token is valid, ranging from 1 minute to Durations.MAX_VALUE (h... |
| `expirationTimestamp` | `string` | The expiration time of the token. This is a read-only field generated by the server. |
| `name` | `string` | The name of the enrollment token, which is generated by the server during creation, in the form e... |
| `oneTimeOnly` | `boolean` | Whether the enrollment token is for one time use only. If the flag is set to true, only one devic... |
| `policyName` | `string` | The name of the policy initially applied to the enrolled device, in the form enterprises/{enterpr... |
| `qrCode` | `string` | A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device wit... |
| `user` | `User` | This field is deprecated and the value is ignored. |
| `value` | `string` | The token value that's passed to the device and authorizes the device to enroll. This is a read-o... |

### `Enterprise`

The configuration applied to an enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `appAutoApprovalEnabled` | `boolean` | Deprecated and unused. |
| `contactInfo` | `ContactInfo` | The enterprise contact info of an EMM-managed enterprise. |
| `enabledNotificationTypes` | `array<string>` | The types of Google Pub/Sub notifications enabled for the enterprise. |
| `enterpriseDisplayName` | `string` | The name of the enterprise displayed to users. This field has a maximum length of 100 characters. |
| `enterpriseType` | `string` | Output only. The type of the enterprise. |
| `googleAuthenticationSettings` | `GoogleAuthenticationSettings` | Settings for Google-provided user authentication. |
| `logo` | `ExternalData` | An image displayed as a logo during device provisioning. Supported types are: image/bmp, image/gi... |
| `managedGoogleDomainType` | `string` | Output only. The type of managed Google domain. |
| `managedGooglePlayAccountsEnterpriseType` | `string` | Output only. The type of a managed Google Play Accounts enterprise. |
| `name` | `string` | The name of the enterprise which is generated by the server during creation, in the form enterpri... |
| `primaryColor` | `integer` | A color in RGB format that indicates the predominant color to display in the device management ap... |
| `pubsubTopic` | `string` | The topic which Pub/Sub notifications are published to, in the form projects/{project}/topics/{to... |
| `signinDetails` | `array<SigninDetail>` | Sign-in details of the enterprise. |
| `termsAndConditions` | `array<TermsAndConditions>` | Terms and conditions that must be accepted when provisioning a device for this enterprise. A page... |

### `EnterpriseUpgradeEvent`

An event sent for an enterprise upgrade. An enterprise upgrade is a process that upgrades a managed Google Play Accounts enterprise to a managed Google domain.

| Property | Type | Description |
|----------|------|-------------|
| `enterprise` | `string` | The name of upgraded enterprise in the format "enterprises/{enterprise}" |
| `upgradeState` | `string` | Output only. The upgrade state of the enterprise. |

### `EsimCommandStatus`

Status and error details (if present) of an ADD_ESIM or REMOVE_ESIM command.

| Property | Type | Description |
|----------|------|-------------|
| `esimInfo` | `EsimInfo` | Output only. Information about the eSIM added or removed. This is populated only when the eSIM op... |
| `internalErrorDetails` | `InternalErrorDetails` | Output only. Details of the error if the status is set to INTERNAL_ERROR. |
| `status` | `string` | Output only. Status of an ADD_ESIM or REMOVE_ESIM command. |

### `EsimInfo`

Details of the eSIM added or removed.

| Property | Type | Description |
|----------|------|-------------|
| `iccId` | `string` | Output only. ICC ID of the eSIM. |

### `EuiccChipInfo`

Information related to the eUICC chip.

| Property | Type | Description |
|----------|------|-------------|
| `eid` | `string` | Output only. The Embedded Identity Document (EID) that identifies the eUICC chip for each eUICC c... |

### `ExtensionConfig`

Configuration to enable an app as an extension app, with the capability of interacting with Android Device Policy offline. For Android versions 11 and above, extension apps are exempt from battery restrictions so will not be placed into the restricted App Standby Bucket (https://developer.android.com/topic/performance/appstandby#restricted-bucket). Extensions apps are also protected against users clearing their data or force-closing the application, although admins can continue to use the clear app data command on extension apps if needed for Android 11 and above.

| Property | Type | Description |
|----------|------|-------------|
| `notificationReceiver` | `string` | Fully qualified class name of the receiver service class for Android Device Policy to notify the ... |
| `signingKeyFingerprintsSha256` | `array<string>` | Hex-encoded SHA-256 hashes of the signing key certificates of the extension app. Only hexadecimal... |

### `ExternalData`

Data hosted at an external location. The data is to be downloaded by Android Device Policy and verified against the hash.

| Property | Type | Description |
|----------|------|-------------|
| `sha256Hash` | `string` | The base-64 encoded SHA-256 hash of the content hosted at url. If the content doesn't match this ... |
| `url` | `string` | The absolute URL to the data, which must use either the http or https scheme. Android Device Poli... |

### `FilePulledEvent`

A file was downloaded from the device.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | The path of the file being pulled. |

### `FilePushedEvent`

A file was uploaded onto the device.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | The path of the file being pushed. |

### `FreezePeriod`

A system freeze period. When a device’s clock is within the freeze period, all incoming system updates (including security patches) are blocked and won’t be installed.When the device is outside any set freeze periods, the normal policy behavior (automatic, windowed, or postponed) applies.Leap years are ignored in freeze period calculations, in particular: If Feb. 29th is set as the start or end date of a freeze period, the freeze period will start or end on Feb. 28th instead. When a device’s system clock reads Feb. 29th, it’s treated as Feb. 28th. When calculating the number of days in a freeze period or the time between two freeze periods, Feb. 29th is ignored and not counted as a day.Note: For Freeze Periods to take effect, SystemUpdateType cannot be specified as SYSTEM_UPDATE_TYPE_UNSPECIFIED, because freeze periods require a defined policy to be specified.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | The end date (inclusive) of the freeze period. Must be no later than 90 days from the start date.... |
| `startDate` | `Date` | The start date (inclusive) of the freeze period. Note: day and month must be set. year should not... |

### `GenerateEnterpriseUpgradeUrlRequest`

Request message for generating a URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain.Note: This feature is not generally available.

| Property | Type | Description |
|----------|------|-------------|
| `adminEmail` | `string` | Optional. Email address used to prefill the admin field of the enterprise signup form as part of ... |
| `allowedDomains` | `array<string>` | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an ... |

### `GenerateEnterpriseUpgradeUrlResponse`

Response message for generating a URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain.Note: This feature is not generally available.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | A URL for an enterprise admin to upgrade their enterprise. The page can't be rendered in an iframe. |

### `GoogleAuthenticationSettings`

Contains settings for Google-provided user authentication.

| Property | Type | Description |
|----------|------|-------------|
| `googleAuthenticationRequired` | `string` | Output only. Whether users need to be authenticated by Google during the enrollment process. IT a... |

### `HardwareInfo`

Information about device hardware. The fields related to temperature thresholds are only available if hardwareStatusEnabled is true in the device's policy.

| Property | Type | Description |
|----------|------|-------------|
| `batteryShutdownTemperatures` | `array<number>` | Battery shutdown temperature thresholds in Celsius for each battery on the device. |
| `batteryThrottlingTemperatures` | `array<number>` | Battery throttling temperature thresholds in Celsius for each battery on the device. |
| `brand` | `string` | Brand of the device. For example, Google. |
| `cpuShutdownTemperatures` | `array<number>` | CPU shutdown temperature thresholds in Celsius for each CPU on the device. |
| `cpuThrottlingTemperatures` | `array<number>` | CPU throttling temperature thresholds in Celsius for each CPU on the device. |
| `deviceBasebandVersion` | `string` | Baseband version. For example, MDM9625_104662.22.05.34p. |
| `enterpriseSpecificId` | `string` | Output only. ID that uniquely identifies a personally-owned device in a particular organization. ... |
| `euiccChipInfo` | `array<EuiccChipInfo>` | Output only. Information related to the eUICC chip. |
| `gpuShutdownTemperatures` | `array<number>` | GPU shutdown temperature thresholds in Celsius for each GPU on the device. |
| `gpuThrottlingTemperatures` | `array<number>` | GPU throttling temperature thresholds in Celsius for each GPU on the device. |
| `hardware` | `string` | Name of the hardware. For example, Angler. |
| `manufacturer` | `string` | Manufacturer. For example, Motorola. |
| `model` | `string` | The model of the device. For example, Asus Nexus 7. |
| `serialNumber` | `string` | The device serial number. However, for personally-owned devices running Android 12 and above, thi... |
| `skinShutdownTemperatures` | `array<number>` | Device skin shutdown temperature thresholds in Celsius. |
| `skinThrottlingTemperatures` | `array<number>` | Device skin throttling temperature thresholds in Celsius. |

### `HardwareStatus`

Hardware status. Temperatures may be compared to the temperature thresholds available in hardwareInfo to determine hardware health.

| Property | Type | Description |
|----------|------|-------------|
| `batteryTemperatures` | `array<number>` | Current battery temperatures in Celsius for each battery on the device. |
| `cpuTemperatures` | `array<number>` | Current CPU temperatures in Celsius for each CPU on the device. |
| `cpuUsages` | `array<number>` | CPU usages in percentage for each core available on the device. Usage is 0 for each unplugged cor... |
| `createTime` | `string` | The time the measurements were taken. |
| `fanSpeeds` | `array<number>` | Fan speeds in RPM for each fan on the device. Empty array means that there are no fans or fan spe... |
| `gpuTemperatures` | `array<number>` | Current GPU temperatures in Celsius for each GPU on the device. |
| `skinTemperatures` | `array<number>` | Current device skin temperatures in Celsius. |

### `InstallConstraint`

Amongst apps with InstallType set to: FORCE_INSTALLED PREINSTALLEDthis defines a set of restrictions for the app installation. At least one of the fields must be set. When multiple fields are set, then all the constraints need to be satisfied for the app to be installed.

| Property | Type | Description |
|----------|------|-------------|
| `chargingConstraint` | `string` | Optional. Charging constraint. |
| `deviceIdleConstraint` | `string` | Optional. Device idle constraint. |
| `networkTypeConstraint` | `string` | Optional. Network type constraint. |

### `InternalErrorDetails`

Internal error details if present for the ADD_ESIM or REMOVE_ESIM command.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Output only. Integer representation of the error code as specified here (https://developer.androi... |
| `errorCodeDetail` | `string` | Output only. The error code detail corresponding to the error_code. |
| `operationCode` | `string` | Output only. Integer representation of the operation code as specified here (https://developer.an... |
| `operationCodeDetail` | `string` | Output only. The operation code detail corresponding to the operation_code. |

### `IssueCommandResponse`

Response on issuing a command. This is currently empty as a placeholder.

### `KeyDestructionEvent`

A cryptographic key including user installed, admin installed and system maintained private key is removed from the device either by the user or management. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `applicationUid` | `integer` | UID of the application which owns the key. |
| `keyAlias` | `string` | Alias of the key. |
| `success` | `boolean` | Whether the operation was successful. |

### `KeyGeneratedEvent`

A cryptographic key including user installed, admin installed and system maintained private key is installed on the device either by the user or management.This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `applicationUid` | `integer` | UID of the application which generated the key. |
| `keyAlias` | `string` | Alias of the key. |
| `success` | `boolean` | Whether the operation was successful. |

### `KeyImportEvent`

A cryptographic key including user installed, admin installed and system maintained private key is imported on the device either by the user or management. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `applicationUid` | `integer` | UID of the application which imported the key |
| `keyAlias` | `string` | Alias of the key. |
| `success` | `boolean` | Whether the operation was successful. |

### `KeyIntegrityViolationEvent`

A cryptographic key including user installed, admin installed and system maintained private key is determined to be corrupted due to storage corruption, hardware failure or some OS issue. This is available device-wide on fully managed devices and within the work profile on organization-owned devices with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `applicationUid` | `integer` | UID of the application which owns the key |
| `keyAlias` | `string` | Alias of the key. |

### `KeyedAppState`

Keyed app state reported by the app.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time of the app state on the device. |
| `data` | `string` | Optionally, a machine-readable value to be read by the EMM. For example, setting values that the ... |
| `key` | `string` | The key for the app state. Acts as a point of reference for what the app is providing state for. ... |
| `lastUpdateTime` | `string` | The time the app state was most recently updated. |
| `message` | `string` | Optionally, a free-form message string to explain the app state. If the state was triggered by a ... |
| `severity` | `string` | The severity of the app state. |

### `KeyguardDismissAuthAttemptEvent`

An attempt was made to unlock the device.

| Property | Type | Description |
|----------|------|-------------|
| `strongAuthMethodUsed` | `boolean` | Whether a strong form of authentication (password, PIN, or pattern) was used to unlock device. |
| `success` | `boolean` | Whether the unlock attempt was successful. |

### `KeyguardDismissedEvent`

The keyguard was dismissed. Intentionally empty.

### `KeyguardSecuredEvent`

The device was locked either by user or timeout. Intentionally empty.

### `KioskCustomization`

Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.

| Property | Type | Description |
|----------|------|-------------|
| `deviceSettings` | `string` | Specifies whether the Settings app is allowed in kiosk mode. |
| `powerButtonActions` | `string` | Sets the behavior of a device in kiosk mode when a user presses and holds (long-presses) the Powe... |
| `statusBar` | `string` | Specifies whether system info and notifications are disabled in kiosk mode. |
| `systemErrorWarnings` | `string` | Specifies whether system error dialogs for crashed or unresponsive apps are blocked in kiosk mode... |
| `systemNavigation` | `string` | Specifies which navigation features are enabled (e.g. Home, Overview buttons) in kiosk mode. |

### `LaunchAppAction`

An action to launch an app.

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | Package name of app to be launched |

### `ListDevicesResponse`

Response to a request to list devices for a given enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<Device>` | The list of devices. |
| `nextPageToken` | `string` | If there are more results, a token to retrieve next page of results. |

### `ListEnrollmentTokensResponse`

Response to a request to list enrollment tokens for a given enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `enrollmentTokens` | `array<EnrollmentToken>` | The list of enrollment tokens. |
| `nextPageToken` | `string` | If there are more results, a token to retrieve next page of results. |

### `ListEnterprisesResponse`

Response to a request to list enterprises.

| Property | Type | Description |
|----------|------|-------------|
| `enterprises` | `array<Enterprise>` | The list of enterprises. |
| `nextPageToken` | `string` | If there are more results, a token to retrieve next page of results. |

### `ListMigrationTokensResponse`

Response to a request to list migration tokens for a given enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `migrationTokens` | `array<MigrationToken>` | The migration tokens from the specified enterprise. |
| `nextPageToken` | `string` | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, the... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `ListPoliciesResponse`

Response to a request to list policies for a given enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results, a token to retrieve next page of results. |
| `policies` | `array<Policy>` | The list of policies. |

### `ListWebAppsResponse`

Response to a request to list web apps for a given enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results, a token to retrieve next page of results. |
| `webApps` | `array<WebApp>` | The list of web apps. |

### `Location`

The device location containing the latitude and longitude.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude position of the location |
| `longitude` | `number` | The longitude position of the location |

### `LogBufferSizeCriticalEvent`

The usageLog buffer on the device has reached 90% of its capacity, therefore older events may be dropped. Intentionally empty.

### `LoggingStartedEvent`

usageLog policy has been enabled. Intentionally empty.

### `LoggingStoppedEvent`

usageLog policy has been disabled. Intentionally empty.

### `LostModeLocationEvent`

A lost mode event containing the device location and battery level as a percentage.

| Property | Type | Description |
|----------|------|-------------|
| `batteryLevel` | `integer` | The battery level as a number between 0 and 100 inclusive |
| `location` | `Location` | The device location |

### `LostModeOutgoingPhoneCallEvent`

An event indicating an outgoing phone call has been made when a device is in lost mode. Intentionally empty.

### `ManagedConfigurationTemplate`

The managed configurations template for the app, saved from the managed configurations iframe.

| Property | Type | Description |
|----------|------|-------------|
| `configurationVariables` | `object` | Optional, a map containing configuration variables defined for the configuration. |
| `templateId` | `string` | The ID of the managed configurations template. |

### `ManagedProperty`

Managed property.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `any` | The default value of the property. BUNDLE_ARRAY properties don't have a default value. |
| `description` | `string` | A longer description of the property, providing more detail of what it affects. Localized. |
| `entries` | `array<ManagedPropertyEntry>` | For CHOICE or MULTISELECT properties, the list of possible entries. |
| `key` | `string` | The unique key that the app uses to identify the property, e.g. "com.google.android.gm.fieldname". |
| `nestedProperties` | `array<ManagedProperty>` | For BUNDLE_ARRAY properties, the list of nested properties. A BUNDLE_ARRAY property is at most tw... |
| `title` | `string` | The name of the property. Localized. |
| `type` | `string` | The type of the property. |

### `ManagedPropertyEntry`

An entry of a managed property.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The human-readable name of the value. Localized. |
| `value` | `string` | The machine-readable value of the entry, which should be used in the configuration. Not localized. |

### `MediaMountEvent`

Removable media was mounted.

| Property | Type | Description |
|----------|------|-------------|
| `mountPoint` | `string` | Mount point. |
| `volumeLabel` | `string` | Volume label. Redacted to empty string on organization-owned managed profile devices. |

### `MediaUnmountEvent`

Removable media was unmounted.

| Property | Type | Description |
|----------|------|-------------|
| `mountPoint` | `string` | Mount point. |
| `volumeLabel` | `string` | Volume label. Redacted to empty string on organization-owned managed profile devices. |

### `MemoryEvent`

An event related to memory and storage measurements.To distinguish between new and old events, we recommend using the createTime field.

| Property | Type | Description |
|----------|------|-------------|
| `byteCount` | `string` | The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED, the total capacity in b... |
| `createTime` | `string` | The creation time of the event. |
| `eventType` | `string` | Event type. |

### `MemoryInfo`

Information about device memory and storage.

| Property | Type | Description |
|----------|------|-------------|
| `totalInternalStorage` | `string` | Total internal storage on device in bytes. |
| `totalRam` | `string` | Total RAM on device in bytes. |

### `MigrationToken`

A token to initiate the migration of a device from being managed by a third-party DPC to being managed by Android Management API. A migration token is valid only for a single device. See the guide (https://developers.google.com/android/management/dpc-migration) for more details.

| Property | Type | Description |
|----------|------|-------------|
| `additionalData` | `string` | Immutable. Optional EMM-specified additional data. Once the device is migrated this will be popul... |
| `createTime` | `string` | Output only. Time when this migration token was created. |
| `device` | `string` | Output only. Once this migration token is used to migrate a device, the name of the resulting Dev... |
| `deviceId` | `string` | Required. Immutable. The id of the device, as in the Play EMM API. This corresponds to the device... |
| `expireTime` | `string` | Immutable. The time when this migration token expires. This can be at most seven days from the ti... |
| `managementMode` | `string` | Required. Immutable. The management mode of the device or profile being migrated. |
| `name` | `string` | Output only. The name of the migration token, which is generated by the server during creation, i... |
| `policy` | `string` | Required. Immutable. The name of the policy initially applied to the enrolled device, in the form... |
| `ttl` | `string` | Input only. The time that this migration token is valid for. This is input-only, and for returnin... |
| `userId` | `string` | Required. Immutable. The user id of the Managed Google Play account on the device, as in the Play... |
| `value` | `string` | Output only. The value of the migration token. |

### `ModifyPolicyApplicationsRequest`

Request to update or create ApplicationPolicy objects in the given Policy.

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<ApplicationPolicyChange>` | Required. The changes to be made to the ApplicationPolicy objects. There must be at least one App... |

### `ModifyPolicyApplicationsResponse`

Response to a request to update or create ApplicationPolicy objects in the given policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | The updated policy. |

### `NetworkInfo`

Device network info.

| Property | Type | Description |
|----------|------|-------------|
| `imei` | `string` | IMEI number of the GSM device. For example, A1000031212. |
| `meid` | `string` | MEID number of the CDMA device. For example, A00000292788E1. |
| `networkOperatorName` | `string` | Alphabetic name of current registered operator. For example, Vodafone. |
| `telephonyInfos` | `array<TelephonyInfo>` | Provides telephony information associated with each SIM card on the device. Only supported on ful... |
| `wifiMacAddress` | `string` | Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11. |

### `NonComplianceDetail`

Provides detail about non-compliance with a policy setting.

| Property | Type | Description |
|----------|------|-------------|
| `currentValue` | `any` | If the policy setting could not be applied, the current value of the setting on the device. |
| `fieldPath` | `string` | For settings with nested fields, if a particular nested field is out of compliance, this specifie... |
| `installationFailureReason` | `string` | If package_name is set and the non-compliance reason is APP_NOT_INSTALLED or APP_NOT_UPDATED, the... |
| `nonComplianceReason` | `string` | The reason the device is not in compliance with the setting. |
| `packageName` | `string` | The package name indicating which app is out of compliance, if applicable. |
| `settingName` | `string` | The name of the policy setting. This is the JSON field name of a top-level Policy field. |
| `specificNonComplianceContext` | `SpecificNonComplianceContext` | Additional context for specific_non_compliance_reason. |
| `specificNonComplianceReason` | `string` | The policy-specific reason the device is not in compliance with the setting. |

### `NonComplianceDetailCondition`

A compliance rule condition which is satisfied if there exists any matching NonComplianceDetail for the device. A NonComplianceDetail matches a NonComplianceDetailCondition if all the fields which are set within the NonComplianceDetailCondition match the corresponding NonComplianceDetail fields.

| Property | Type | Description |
|----------|------|-------------|
| `nonComplianceReason` | `string` | The reason the device is not in compliance with the setting. If not set, then this condition matc... |
| `packageName` | `string` | The package name of the app that's out of compliance. If not set, then this condition matches any... |
| `settingName` | `string` | The name of the policy setting. This is the JSON field name of a top-level Policy field. If not s... |

### `OncCertificateProvider`

This feature is not generally available.

| Property | Type | Description |
|----------|------|-------------|
| `certificateReferences` | `array<string>` | This feature is not generally available. |
| `contentProviderEndpoint` | `ContentProviderEndpoint` | This feature is not generally available. |

### `OncWifiContext`

Additional context for non-compliance related to Wi-Fi configuration.

| Property | Type | Description |
|----------|------|-------------|
| `wifiGuid` | `string` | The GUID of non-compliant Wi-Fi configuration. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OsShutdownEvent`

Device was shutdown. Intentionally empty.

### `OsStartupEvent`

Device was started.

| Property | Type | Description |
|----------|------|-------------|
| `verifiedBootState` | `string` | Verified Boot state. |
| `verityMode` | `string` | dm-verity mode. |

### `PackageNameList`

A list of package names.

| Property | Type | Description |
|----------|------|-------------|
| `packageNames` | `array<string>` | A list of package names. |

### `PasswordPoliciesContext`

Additional context for non-compliance related to password policies.

| Property | Type | Description |
|----------|------|-------------|
| `passwordPolicyScope` | `string` | The scope of non-compliant password. |

### `PasswordRequirements`

Requirements for the password used to unlock a device.

| Property | Type | Description |
|----------|------|-------------|
| `maximumFailedPasswordsForWipe` | `integer` | Number of incorrect device-unlock passwords that can be entered before a device is wiped. A value... |
| `passwordExpirationTimeout` | `string` | Password expiration timeout. |
| `passwordHistoryLength` | `integer` | The length of the password history. After setting this field, the user won't be able to enter a n... |
| `passwordMinimumLength` | `integer` | The minimum allowed password length. A value of 0 means there is no restriction. Only enforced wh... |
| `passwordMinimumLetters` | `integer` | Minimum number of letters required in the password. Only enforced when password_quality is COMPLEX. |
| `passwordMinimumLowerCase` | `integer` | Minimum number of lower case letters required in the password. Only enforced when password_qualit... |
| `passwordMinimumNonLetter` | `integer` | Minimum number of non-letter characters (numerical digits or symbols) required in the password. O... |
| `passwordMinimumNumeric` | `integer` | Minimum number of numerical digits required in the password. Only enforced when password_quality ... |
| `passwordMinimumSymbols` | `integer` | Minimum number of symbols required in the password. Only enforced when password_quality is COMPLEX. |
| `passwordMinimumUpperCase` | `integer` | Minimum number of upper case letters required in the password. Only enforced when password_qualit... |
| `passwordQuality` | `string` | The required password quality. |
| `passwordScope` | `string` | The scope that the password requirement applies to. |
| `requirePasswordUnlock` | `string` | The length of time after a device or work profile is unlocked using a strong form of authenticati... |
| `unifiedLockSettings` | `string` | Controls whether a unified lock is allowed for the device and the work profile, on devices runnin... |

### `PerAppResult`

The result of an attempt to clear the data of a single app.

| Property | Type | Description |
|----------|------|-------------|
| `clearingResult` | `string` | The result of an attempt to clear the data of a single app. |

### `PermissionGrant`

Configuration for an Android permission and its grant state.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `string` | The Android permission or group, e.g. android.permission.READ_CALENDAR or android.permission_grou... |
| `policy` | `string` | The policy for granting the permission. |

### `PersistentPreferredActivity`

A default activity for handling intents that match a particular intent filter. Note: To set up a kiosk, use InstallType to KIOSK rather than use persistent preferred activities.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | The intent actions to match in the filter. If any actions are included in the filter, then an int... |
| `categories` | `array<string>` | The intent categories to match in the filter. An intent includes the categories that it requires,... |
| `receiverActivity` | `string` | The activity that should be the default intent handler. This should be an Android component name,... |

### `PersonalApplicationPolicy`

Policies for apps in the personal profile of a company-owned device with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `installType` | `string` | The type of installation to perform. |
| `packageName` | `string` | The package name of the application. |

### `PersonalUsagePolicies`

Policies controlling personal usage on a company-owned device with a work profile.

| Property | Type | Description |
|----------|------|-------------|
| `accountTypesWithManagementDisabled` | `array<string>` | Account types that can't be managed by the user. |
| `bluetoothSharing` | `string` | Optional. Whether bluetooth sharing is allowed. |
| `cameraDisabled` | `boolean` | If true, the camera is disabled on the personal profile. |
| `maxDaysWithWorkOff` | `integer` | Controls how long the work profile can stay off. The minimum duration must be at least 3 days. Ot... |
| `personalApplications` | `array<PersonalApplicationPolicy>` | Policy applied to applications in the personal profile. |
| `personalPlayStoreMode` | `string` | Used together with personalApplications to control how apps in the personal profile are allowed o... |
| `privateSpacePolicy` | `string` | Optional. Controls whether a private space is allowed on the device. |
| `screenCaptureDisabled` | `boolean` | If true, screen capture is disabled for all users. |

### `Policy`

A policy resource represents a group of settings that govern the behavior of a managed device and the apps installed on it.

| Property | Type | Description |
|----------|------|-------------|
| `accountTypesWithManagementDisabled` | `array<string>` | Account types that can't be managed by the user. |
| `addUserDisabled` | `boolean` | Whether adding new users and profiles is disabled. For devices where managementMode is DEVICE_OWN... |
| `adjustVolumeDisabled` | `boolean` | Whether adjusting the master volume is disabled. Also mutes the device. The setting has effect on... |
| `advancedSecurityOverrides` | `AdvancedSecurityOverrides` | Advanced security settings. In most cases, setting these is not needed. |
| `alwaysOnVpnPackage` | `AlwaysOnVpnPackage` | Configuration for an always-on VPN connection. Use with vpn_config_disabled to prevent modificati... |
| `androidDevicePolicyTracks` | `array<string>` | This setting is not supported. Any value is ignored. |
| `appAutoUpdatePolicy` | `string` | Recommended alternative: autoUpdateMode which is set per app, provides greater flexibility around... |
| `appFunctions` | `string` | Optional. Controls whether apps on the device for fully managed devices or in the work profile fo... |
| `applications` | `array<ApplicationPolicy>` | Policy applied to apps. This can have at most 3,000 elements. |
| `assistContentPolicy` | `string` | Optional. Controls whether AssistContent (https://developer.android.com/reference/android/app/ass... |
| `autoDateAndTimeZone` | `string` | Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, the... |
| `autoTimeRequired` | `boolean` | Whether auto time is required, which prevents the user from manually setting the date and time. I... |
| `blockApplicationsEnabled` | `boolean` | This field has no effect. |
| `bluetoothConfigDisabled` | `boolean` | Whether configuring bluetooth is disabled. |
| `bluetoothContactSharingDisabled` | `boolean` | Whether bluetooth contact sharing is disabled. |
| `bluetoothDisabled` | `boolean` | Whether bluetooth is disabled. Prefer this setting over bluetooth_config_disabled because bluetoo... |
| `cameraAccess` | `string` | Controls the use of the camera and whether the user has access to the camera access toggle. |
| `cameraDisabled` | `boolean` | If camera_access is set to any value other than CAMERA_ACCESS_UNSPECIFIED, this has no effect. Ot... |
| `cellBroadcastsConfigDisabled` | `boolean` | Whether configuring cell broadcast is disabled. |
| `choosePrivateKeyRules` | `array<ChoosePrivateKeyRule>` | Rules for determining apps' access to private keys. See ChoosePrivateKeyRule for details. This mu... |
| `complianceRules` | `array<ComplianceRule>` | Rules declaring which mitigating actions to take when a device is not compliant with its policy. ... |
| `createWindowsDisabled` | `boolean` | Whether creating windows besides app windows is disabled. |
| `credentialProviderPolicyDefault` | `string` | Controls which apps are allowed to act as credential providers on Android 14 and above. These app... |
| `credentialsConfigDisabled` | `boolean` | Whether configuring user credentials is disabled. |
| `crossProfilePolicies` | `CrossProfilePolicies` | Cross-profile policies applied on the device. |
| `dataRoamingDisabled` | `boolean` | Whether roaming data services are disabled. |
| `debuggingFeaturesAllowed` | `boolean` | Whether the user is allowed to enable debugging features. |
| `defaultApplicationSettings` | `array<DefaultApplicationSetting>` | Optional. The default application setting for supported types. If the default application is succ... |
| `defaultPermissionPolicy` | `string` | The default permission policy for runtime permission requests. |
| `deviceConnectivityManagement` | `DeviceConnectivityManagement` | Covers controls for device connectivity such as Wi-Fi, USB data access, keyboard/mouse connection... |
| `deviceOwnerLockScreenInfo` | `UserFacingMessage` | The device owner information to be shown on the lock screen. |
| `deviceRadioState` | `DeviceRadioState` | Covers controls for radio state such as Wi-Fi, bluetooth, and more. |
| `displaySettings` | `DisplaySettings` | Optional. Controls for the display settings. |
| `encryptionPolicy` | `string` | Whether encryption is enabled |
| `ensureVerifyAppsEnabled` | `boolean` | Whether app verification is force-enabled. |
| `enterpriseDisplayNameVisibility` | `string` | Optional. Controls whether the enterpriseDisplayName is visible on the device (e.g. lock screen m... |
| `factoryResetDisabled` | `boolean` | Whether factory resetting from settings is disabled. |
| `frpAdminEmails` | `array<string>` | Email addresses of device administrators for factory reset protection. When the device is factory... |
| `funDisabled` | `boolean` | Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disa... |
| `installAppsDisabled` | `boolean` | Whether user installation of apps is disabled. |
| `installUnknownSourcesAllowed` | `boolean` | This field has no effect. |
| `keyguardDisabled` | `boolean` | If true, this disables the Lock Screen (https://source.android.com/docs/core/display/multi_displa... |
| `keyguardDisabledFeatures` | `array<string>` | Disabled keyguard customizations, such as widgets. |
| `kioskCustomLauncherEnabled` | `boolean` | Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that ... |
| `kioskCustomization` | `KioskCustomization` | Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCusto... |
| `locationMode` | `string` | The degree of location detection enabled. |
| `longSupportMessage` | `UserFacingMessage` | A message displayed to the user in the device administators settings screen. |
| `maximumTimeToLock` | `string` | Maximum time in milliseconds for user activity until the device locks. A value of 0 means there i... |
| `microphoneAccess` | `string` | Controls the use of the microphone and whether the user has access to the microphone access toggl... |
| `minimumApiLevel` | `integer` | The minimum allowed Android API level. |
| `mobileNetworksConfigDisabled` | `boolean` | Whether configuring mobile networks is disabled. |
| `modifyAccountsDisabled` | `boolean` | Whether adding or removing accounts is disabled. |
| `mountPhysicalMediaDisabled` | `boolean` | Whether the user mounting physical external media is disabled. |
| `name` | `string` | The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}. |
| `networkEscapeHatchEnabled` | `boolean` | Whether the network escape hatch is enabled. If a network connection can't be made at boot time, ... |
| `networkResetDisabled` | `boolean` | Whether resetting network settings is disabled. |
| `oncCertificateProviders` | `array<OncCertificateProvider>` | This feature is not generally available. |
| `openNetworkConfiguration` | `object` | Network configuration for the device. See configure networks for more information. |
| `outgoingBeamDisabled` | `boolean` | Whether using NFC to beam data from apps is disabled. |
| `outgoingCallsDisabled` | `boolean` | Whether outgoing calls are disabled. |
| `passwordPolicies` | `array<PasswordRequirements>` | Password requirement policies. Different policies can be set for work profile or fully managed de... |
| `passwordRequirements` | `PasswordRequirements` | Password requirements. The field password_requirements.require_password_unlock must not be set. D... |
| `permissionGrants` | `array<PermissionGrant>` | Explicit permission or group grants or denials for all apps. These values override the default_pe... |
| `permittedAccessibilityServices` | `PackageNameList` | Specifies permitted accessibility services. If the field is not set, any accessibility service ca... |
| `permittedInputMethods` | `PackageNameList` | If present, only the input methods provided by packages in this list are permitted. If this field... |
| `persistentPreferredActivities` | `array<PersistentPreferredActivity>` | Default intent handler activities. |
| `personalUsagePolicies` | `PersonalUsagePolicies` | Policies managing personal usage on a company-owned device. |
| `playStoreMode` | `string` | This mode controls which apps are available to the user in the Play Store and the behavior on the... |
| `policyEnforcementRules` | `array<PolicyEnforcementRule>` | Rules that define the behavior when a particular policy can not be applied on device |
| `preferentialNetworkService` | `string` | Controls whether preferential network service is enabled on the work profile or on fully managed ... |
| `printingPolicy` | `string` | Optional. Controls whether printing is allowed. This is supported on devices running Android 9 an... |
| `privateKeySelectionEnabled` | `boolean` | Allows showing UI on a device for a user to choose a private key alias if there are no matching r... |
| `recommendedGlobalProxy` | `ProxyInfo` | The network-independent global HTTP proxy. Typically proxies should be configured per-network in ... |
| `removeUserDisabled` | `boolean` | Whether removing other users is disabled. |
| `safeBootDisabled` | `boolean` | Whether rebooting the device into safe boot is disabled. |
| `screenCaptureDisabled` | `boolean` | Whether screen capture is disabled. |
| `setUserIconDisabled` | `boolean` | Whether changing the user icon is disabled. This applies only on devices running Android 7 and ab... |
| `setWallpaperDisabled` | `boolean` | Whether changing the wallpaper is disabled. |
| `setupActions` | `array<SetupAction>` | Action to take during the setup process. At most one action may be specified. |
| `shareLocationDisabled` | `boolean` | Whether location sharing is disabled. |
| `shortSupportMessage` | `UserFacingMessage` | A message displayed to the user in the settings screen wherever functionality has been disabled b... |
| `skipFirstUseHintsEnabled` | `boolean` | Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for ap... |
| `smsDisabled` | `boolean` | Whether sending and receiving SMS messages is disabled. |
| `statusBarDisabled` | `boolean` | Whether the status bar is disabled. This disables notifications, quick settings, and other screen... |
| `statusReportingSettings` | `StatusReportingSettings` | Status reporting settings |
| `stayOnPluggedModes` | `array<string>` | The battery plugged in modes for which the device stays on. When using this setting, it is recomm... |
| `systemUpdate` | `SystemUpdate` | The system update policy, which controls how OS updates are applied. If the update type is WINDOW... |
| `tetheringConfigDisabled` | `boolean` | Whether configuring tethering and portable hotspots is disabled. If tetheringSettings is set to a... |
| `uninstallAppsDisabled` | `boolean` | Whether user uninstallation of applications is disabled. This prevents apps from being uninstalle... |
| `unmuteMicrophoneDisabled` | `boolean` | If microphone_access is set to any value other than MICROPHONE_ACCESS_UNSPECIFIED, this has no ef... |
| `usageLog` | `UsageLog` | Configuration of device activity logging. |
| `usbFileTransferDisabled` | `boolean` | Whether transferring files over USB is disabled. This is supported only on company-owned devices. |
| `usbMassStorageEnabled` | `boolean` | Whether USB storage is enabled. Deprecated. |
| `version` | `string` | The version of the policy. This is a read-only field. The version is incremented each time the po... |
| `vpnConfigDisabled` | `boolean` | Whether configuring VPN is disabled. |
| `wifiConfigDisabled` | `boolean` | Whether configuring Wi-Fi networks is disabled. Supported on fully managed devices and work profi... |
| `wifiConfigsLockdownEnabled` | `boolean` | This is deprecated. |
| `wipeDataFlags` | `array<string>` | Optional. Wipe flags to indicate what data is wiped when a device or profile wipe is triggered du... |
| `workAccountSetupConfig` | `WorkAccountSetupConfig` | Optional. Controls the work account setup configuration, such as details of whether a Google auth... |

### `PolicyEnforcementRule`

A rule that defines the actions to take if a device or work profile is not compliant with the policy specified in settingName. In the case of multiple matching or multiple triggered enforcement rules, a merge will occur with the most severe action being taken. However, all triggered rules are still kept track of: this includes initial trigger time and all associated non-compliance details. In the situation where the most severe enforcement rule is satisfied, the next most appropriate action is applied.

| Property | Type | Description |
|----------|------|-------------|
| `blockAction` | `BlockAction` | An action to block access to apps and data on a company owned device or in a work profile. This a... |
| `settingName` | `string` | The top-level policy to enforce. For example, applications or passwordPolicies. |
| `wipeAction` | `WipeAction` | An action to reset a company owned device or delete a work profile. Note: blockAction must also b... |

### `PostureDetail`

Additional details regarding the security posture of the device.

| Property | Type | Description |
|----------|------|-------------|
| `advice` | `array<UserFacingMessage>` | Corresponding admin-facing advice to mitigate this security risk and improve the security posture... |
| `securityRisk` | `string` | A specific security risk that negatively affects the security posture of the device. |

### `PowerManagementEvent`

A power management event.

| Property | Type | Description |
|----------|------|-------------|
| `batteryLevel` | `number` | For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage. |
| `createTime` | `string` | The creation time of the event. |
| `eventType` | `string` | Event type. |

### `PreferentialNetworkServiceConfig`

Individual preferential network service configuration.

| Property | Type | Description |
|----------|------|-------------|
| `fallbackToDefaultConnection` | `string` | Optional. Whether fallback to the device-wide default network is allowed. If this is set to FALLB... |
| `nonMatchingNetworks` | `string` | Optional. Whether apps this configuration applies to are blocked from using networks other than t... |
| `preferentialNetworkId` | `string` | Required. Preferential network identifier. This must not be set to NO_PREFERENTIAL_NETWORK or PRE... |

### `PreferentialNetworkServiceSettings`

Preferential network service settings.

| Property | Type | Description |
|----------|------|-------------|
| `defaultPreferentialNetworkId` | `string` | Required. Default preferential network ID for the applications that are not in applications or if... |
| `preferentialNetworkServiceConfigs` | `array<PreferentialNetworkServiceConfig>` | Required. Preferential network service configurations which enables having multiple enterprise sl... |

### `ProvisioningInfo`

Information about a device that is available during setup.

| Property | Type | Description |
|----------|------|-------------|
| `apiLevel` | `integer` | The API level of the Android platform version running on the device. |
| `authenticatedUserEmail` | `string` | The email address of the authenticated user (only present for Google Account provisioning method). |
| `brand` | `string` | The brand of the device. For example, Google. |
| `enterprise` | `string` | The name of the enterprise in the form enterprises/{enterprise}. |
| `imei` | `string` | For corporate-owned devices, IMEI number of the GSM device. For example, A1000031212. |
| `managementMode` | `string` | The management mode of the device or profile. |
| `meid` | `string` | For corporate-owned devices, MEID number of the CDMA device. For example, A00000292788E1. |
| `model` | `string` | The model of the device. For example, Asus Nexus 7. |
| `name` | `string` | The name of this resource in the form provisioningInfo/{provisioning_info}. |
| `ownership` | `string` | Ownership of the managed device. |
| `serialNumber` | `string` | For corporate-owned devices, The device serial number. |

### `ProxyInfo`

Configuration info for an HTTP proxy. For a direct proxy, set the host, port, and excluded_hosts fields. For a PAC script proxy, set the pac_uri field.

| Property | Type | Description |
|----------|------|-------------|
| `excludedHosts` | `array<string>` | For a direct proxy, the hosts for which the proxy is bypassed. The host names may contain wildcar... |
| `host` | `string` | The host of the direct proxy. |
| `pacUri` | `string` | The URI of the PAC script used to configure the proxy. |
| `port` | `integer` | The port of the direct proxy. |

### `RemoteLockEvent`

The device or profile has been remotely locked via the LOCK command.

| Property | Type | Description |
|----------|------|-------------|
| `adminPackageName` | `string` | Package name of the admin app requesting the change. |
| `adminUserId` | `integer` | User ID of the admin app from the which the change was requested. |
| `targetUserId` | `integer` | User ID in which the change was requested in. |

### `RemoveEsimParams`

Parameters associated with the REMOVE_ESIM command to remove an eSIM profile from the device.

| Property | Type | Description |
|----------|------|-------------|
| `iccId` | `string` | Required. ICC ID of the eSIM profile to be deleted. |

### `RemovePolicyApplicationsRequest`

Request to remove ApplicationPolicy objects in the given policy.

| Property | Type | Description |
|----------|------|-------------|
| `packageNames` | `array<string>` | Required. Package names to be removed. Entries that are not found are ignored. There must be at l... |

### `RemovePolicyApplicationsResponse`

Response to a request to remove ApplicationPolicy objects in the given policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | The updated policy after ApplicationPolicy objects have been removed. |

### `RequestDeviceInfoParams`

Parameters associated with the REQUEST_DEVICE_INFO command to get device related information.

| Property | Type | Description |
|----------|------|-------------|
| `deviceInfo` | `string` | Required. Type of device information to be requested. |

### `RequestDeviceInfoStatus`

Status of the REQUEST_DEVICE_INFO command.

| Property | Type | Description |
|----------|------|-------------|
| `eidInfo` | `EidInfo` | Information related to the EIDs of the device. |
| `status` | `string` | Output only. Status of a REQUEST_DEVICE_INFO command. |

### `Role`

Role an app can have.

| Property | Type | Description |
|----------|------|-------------|
| `roleType` | `string` | Required. The type of the role an app can have. |

### `ScreenBrightnessSettings`

Controls for the screen brightness settings.

| Property | Type | Description |
|----------|------|-------------|
| `screenBrightness` | `integer` | Optional. The screen brightness between 1 and 255 where 1 is the lowest and 255 is the highest br... |
| `screenBrightnessMode` | `string` | Optional. Controls the screen brightness mode. |

### `ScreenTimeoutSettings`

Controls the screen timeout settings.

| Property | Type | Description |
|----------|------|-------------|
| `screenTimeout` | `string` | Optional. Controls the screen timeout duration. The screen timeout duration must be greater than ... |
| `screenTimeoutMode` | `string` | Optional. Controls whether the user is allowed to configure the screen timeout. |

### `SecurityPosture`

The security posture of the device, as determined by the current device state and the policies applied.

| Property | Type | Description |
|----------|------|-------------|
| `devicePosture` | `string` | Device's security posture value. |
| `postureDetails` | `array<PostureDetail>` | Additional details regarding the security posture of the device. |

### `SetupAction`

An action executed during setup.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `UserFacingMessage` | Description of this action. |
| `launchApp` | `LaunchAppAction` | An action to launch an app. The app will be launched with an intent containing an extra with key ... |
| `title` | `UserFacingMessage` | Title of this action. |

### `SigninDetail`

A resource containing sign in details for an enterprise. Use enterprises to manage SigninDetails for a given enterprise.For an enterprise, we can have any number of SigninDetails that is uniquely identified by combination of the following three fields (signin_url, allow_personal_usage, token_tag). One cannot create two SigninDetails with the same (signin_url, allow_personal_usage, token_tag). (token_tag is an optional field).Patch: The operation updates the current list of SigninDetails with the new list of SigninDetails. If the stored SigninDetail configuration is passed, it returns the same signin_enrollment_token and qr_code. If we pass multiple identical SigninDetail configurations that are not stored, it will store the first one amongst those SigninDetail configurations. if the configuration already exists we cannot request it more than once in a particular patch API call, otherwise it will give a duplicate key error and the whole operation will fail. If we remove certain SigninDetail configuration from the request then it will get removed from the storage. We can then request another signin_enrollment_token and qr_code for the same SigninDetail configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allowPersonalUsage` | `string` | Controls whether personal usage is allowed on a device provisioned with this enrollment token.For... |
| `defaultStatus` | `string` | Optional. Whether the sign-in URL should be used by default for the enterprise. The SigninDetail ... |
| `qrCode` | `string` | A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device wit... |
| `signinEnrollmentToken` | `string` | An enterprise wide enrollment token used to trigger custom sign-in flow. This is a read-only fiel... |
| `signinUrl` | `string` | Sign-in URL for authentication when device is provisioned with a sign-in enrollment token. The si... |
| `tokenTag` | `string` | An EMM-specified metadata to distinguish between instances of SigninDetail. |

### `SignupUrl`

An enterprise signup URL.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the resource. Use this value in the signupUrl field when calling enterprises.create t... |
| `url` | `string` | A URL where an enterprise admin can register their enterprise. The page can't be rendered in an i... |

### `SoftwareInfo`

Information about device software.

| Property | Type | Description |
|----------|------|-------------|
| `androidBuildNumber` | `string` | Android build ID string meant for displaying to the user. For example, shamu-userdebug 6.0.1 MOB3... |
| `androidBuildTime` | `string` | Build time. |
| `androidDevicePolicyVersionCode` | `integer` | The Android Device Policy app version code. |
| `androidDevicePolicyVersionName` | `string` | The Android Device Policy app version as displayed to the user. |
| `androidVersion` | `string` | The user-visible Android version string. For example, 6.0.1. |
| `bootloaderVersion` | `string` | The system bootloader version number, e.g. 0.6.7. |
| `deviceBuildSignature` | `string` | SHA-256 hash of android.content.pm.Signature (https://developer.android.com/reference/android/con... |
| `deviceKernelVersion` | `string` | Kernel version, for example, 2.6.32.9-g103d848. |
| `primaryLanguageCode` | `string` | An IETF BCP 47 language code for the primary locale on the device. |
| `securityPatchLevel` | `string` | Security patch level, e.g. 2016-05-01. |
| `systemUpdateInfo` | `SystemUpdateInfo` | Information about a potential pending system update. |

### `SpecificNonComplianceContext`

Additional context for SpecificNonComplianceReason.

| Property | Type | Description |
|----------|------|-------------|
| `defaultApplicationContext` | `DefaultApplicationContext` | Output only. Additional context for non-compliance related to default application settings. See D... |
| `oncWifiContext` | `OncWifiContext` | Additional context for non-compliance related to Wi-Fi configuration. See ONC_WIFI_INVALID_VALUE ... |
| `passwordPoliciesContext` | `PasswordPoliciesContext` | Additional context for non-compliance related to password policies. See PASSWORD_POLICIES_PASSWOR... |

### `StartLostModeParams`

Parameters associated with the START_LOST_MODE command to put the device into lost mode. At least one of the parameters, not including the organization name, must be provided in order for the device to be put into lost mode.

| Property | Type | Description |
|----------|------|-------------|
| `lostEmailAddress` | `string` | The email address displayed to the user when the device is in lost mode. |
| `lostMessage` | `UserFacingMessage` | The message displayed to the user when the device is in lost mode. |
| `lostOrganization` | `UserFacingMessage` | The organization name displayed to the user when the device is in lost mode. |
| `lostPhoneNumber` | `UserFacingMessage` | The phone number that will be called when the device is in lost mode and the call owner button is... |
| `lostStreetAddress` | `UserFacingMessage` | The street address displayed to the user when the device is in lost mode. |

### `StartLostModeStatus`

Status of the START_LOST_MODE command to put the device into lost mode.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | The status. See StartLostModeStatus. |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusReportingSettings`

Settings controlling the behavior of status reports.

| Property | Type | Description |
|----------|------|-------------|
| `applicationReportingSettings` | `ApplicationReportingSettings` | Application reporting settings. Only applicable if application_reports_enabled is true. |
| `applicationReportsEnabled` | `boolean` | Whether app reports are enabled. |
| `commonCriteriaModeEnabled` | `boolean` | Whether Common Criteria Mode reporting is enabled. This is supported only on company-owned devices. |
| `defaultApplicationInfoReportingEnabled` | `boolean` | Optional. Whether defaultApplicationInfo reporting is enabled. |
| `deviceSettingsEnabled` | `boolean` | Whether device settings reporting is enabled. |
| `displayInfoEnabled` | `boolean` | Whether displays reporting is enabled. Report data is not available for personally owned devices ... |
| `hardwareStatusEnabled` | `boolean` | Whether hardware status reporting is enabled. Report data is not available for personally owned d... |
| `memoryInfoEnabled` | `boolean` | Whether memory event reporting is enabled. |
| `networkInfoEnabled` | `boolean` | Whether network info reporting is enabled. |
| `powerManagementEventsEnabled` | `boolean` | Whether power management event reporting is enabled. Report data is not available for personally ... |
| `softwareInfoEnabled` | `boolean` | Whether software info reporting is enabled. |
| `systemPropertiesEnabled` | `boolean` | Whether system properties reporting is enabled. |

### `StopLostModeParams`

Parameters associated with the STOP_LOST_MODE command to take the device out of lost mode.

### `StopLostModeStatus`

Status of the STOP_LOST_MODE command to take the device out of lost mode.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | The status. See StopLostModeStatus. |

### `StopLostModeUserAttemptEvent`

A lost mode event indicating the user has attempted to stop lost mode.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | The status of the attempt to stop lost mode. |

### `SystemUpdate`

Configuration for managing system updatesNote: Google Play system updates (https://source.android.com/docs/core/ota/modular-system) (also called Mainline updates) are automatically downloaded but require a device reboot to be installed. Refer to the mainline section in Manage system updates (https://developer.android.com/work/dpc/system-updates#mainline) for further details.

| Property | Type | Description |
|----------|------|-------------|
| `allowedDaysWithoutUpdate` | `integer` | If this is greater than zero, then this is the number of days after a pending update becoming ava... |
| `endMinutes` | `integer` | If the type is WINDOWED, the end of the maintenance window, measured as the number of minutes aft... |
| `freezePeriods` | `array<FreezePeriod>` | An annually repeating time period in which over-the-air (OTA) system updates are postponed to fre... |
| `startMinutes` | `integer` | If the type is WINDOWED, the start of the maintenance window, measured as the number of minutes a... |
| `type` | `string` | The type of system update to configure. |

### `SystemUpdateInfo`

Information about a potential pending system update.

| Property | Type | Description |
|----------|------|-------------|
| `updateReceivedTime` | `string` | The time when the update was first available. A zero value indicates that this field is not set. ... |
| `updateStatus` | `string` | The status of an update: whether an update exists and what type it is. |

### `TelephonyInfo`

Telephony information associated with a given SIM card on the device. This is supported for all SIM cards on fully managed devices on Android 6 and above. In addition, this is supported for admin-added eSIMs on all devices for Android 15 and above.

| Property | Type | Description |
|----------|------|-------------|
| `activationState` | `string` | Output only. Activation state of the SIM card on the device. This is applicable for eSIMs only. T... |
| `carrierName` | `string` | The carrier name associated with this SIM card. |
| `configMode` | `string` | Output only. The configuration mode of the SIM card on the device. This is applicable for eSIMs o... |
| `iccId` | `string` | Output only. The ICCID associated with this SIM card. |
| `phoneNumber` | `string` | The phone number associated with this SIM card. |

### `TermsAndConditions`

A terms and conditions page to be accepted during provisioning.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `UserFacingMessage` | A well-formatted HTML string. It will be parsed on the client with android.text.Html#fromHtml. |
| `header` | `UserFacingMessage` | A short header which appears above the HTML content. |

### `UsageLog`

Controls types of device activity logs collected from the device and reported via Pub/Sub notification (https://developers.google.com/android/management/notifications).

| Property | Type | Description |
|----------|------|-------------|
| `enabledLogTypes` | `array<string>` | Specifies which log types are enabled. Note that users will receive on-device messaging when usag... |
| `uploadOnCellularAllowed` | `array<string>` | Specifies which of the enabled log types can be uploaded over mobile data. By default logs are qu... |

### `UsageLogEvent`

An event logged on the device.

| Property | Type | Description |
|----------|------|-------------|
| `adbShellCommandEvent` | `AdbShellCommandEvent` | A shell command was issued over ADB via “adb shell command”. Part of SECURITY_LOGS. |
| `adbShellInteractiveEvent` | `AdbShellInteractiveEvent` | An ADB interactive shell was opened via “adb shell”. Part of SECURITY_LOGS. |
| `appProcessStartEvent` | `AppProcessStartEvent` | An app process was started. Part of SECURITY_LOGS. |
| `backupServiceToggledEvent` | `BackupServiceToggledEvent` | An admin has enabled or disabled backup service. Part of SECURITY_LOGS. |
| `certAuthorityInstalledEvent` | `CertAuthorityInstalledEvent` | A new root certificate was installed into the system's trusted credential storage. Part of SECURI... |
| `certAuthorityRemovedEvent` | `CertAuthorityRemovedEvent` | A root certificate was removed from the system's trusted credential storage. Part of SECURITY_LOGS. |
| `certValidationFailureEvent` | `CertValidationFailureEvent` | An X.509v3 certificate failed to validate, currently this validation is performed on the Wi-FI ac... |
| `connectEvent` | `ConnectEvent` | A TCP connect event was initiated through the standard network stack. Part of NETWORK_ACTIVITY_LOGS. |
| `cryptoSelfTestCompletedEvent` | `CryptoSelfTestCompletedEvent` | Validates whether Android’s built-in cryptographic library (BoringSSL) is valid. Should always su... |
| `dnsEvent` | `DnsEvent` | A DNS lookup event was initiated through the standard network stack. Part of NETWORK_ACTIVITY_LOGS. |
| `enrollmentCompleteEvent` | `EnrollmentCompleteEvent` | Device has completed enrollment. Part of AMAPI_LOGS. |
| `eventId` | `string` | Unique id of the event. |
| `eventTime` | `string` | Device timestamp when the event was logged. |
| `eventType` | `string` | The particular usage log event type that was reported on the device. Use this to determine which ... |
| `filePulledEvent` | `FilePulledEvent` | A file was downloaded from the device. Part of SECURITY_LOGS. |
| `filePushedEvent` | `FilePushedEvent` | A file was uploaded onto the device. Part of SECURITY_LOGS. |
| `keyDestructionEvent` | `KeyDestructionEvent` | A cryptographic key including user installed, admin installed and system maintained private key i... |
| `keyGeneratedEvent` | `KeyGeneratedEvent` | A cryptographic key including user installed, admin installed and system maintained private key i... |
| `keyImportEvent` | `KeyImportEvent` | A cryptographic key including user installed, admin installed and system maintained private key i... |
| `keyIntegrityViolationEvent` | `KeyIntegrityViolationEvent` | A cryptographic key including user installed, admin installed and system maintained private key i... |
| `keyguardDismissAuthAttemptEvent` | `KeyguardDismissAuthAttemptEvent` | An attempt was made to unlock the device. Part of SECURITY_LOGS. |
| `keyguardDismissedEvent` | `KeyguardDismissedEvent` | The keyguard was dismissed. Part of SECURITY_LOGS. |
| `keyguardSecuredEvent` | `KeyguardSecuredEvent` | The device was locked either by user or timeout. Part of SECURITY_LOGS. |
| `logBufferSizeCriticalEvent` | `LogBufferSizeCriticalEvent` | The audit log buffer has reached 90% of its capacity, therefore older events may be dropped. Part... |
| `loggingStartedEvent` | `LoggingStartedEvent` | usageLog policy has been enabled. Part of SECURITY_LOGS. |
| `loggingStoppedEvent` | `LoggingStoppedEvent` | usageLog policy has been disabled. Part of SECURITY_LOGS. |
| `lostModeLocationEvent` | `LostModeLocationEvent` | A lost mode location update when a device in lost mode. |
| `lostModeOutgoingPhoneCallEvent` | `LostModeOutgoingPhoneCallEvent` | An outgoing phone call has been made when a device in lost mode. |
| `mediaMountEvent` | `MediaMountEvent` | Removable media was mounted. Part of SECURITY_LOGS. |
| `mediaUnmountEvent` | `MediaUnmountEvent` | Removable media was unmounted. Part of SECURITY_LOGS. |
| `osShutdownEvent` | `OsShutdownEvent` | Device was shutdown. Part of SECURITY_LOGS. |
| `osStartupEvent` | `OsStartupEvent` | Device was started. Part of SECURITY_LOGS. |
| `remoteLockEvent` | `RemoteLockEvent` | The device or profile has been remotely locked via the LOCK command. Part of SECURITY_LOGS. |
| `stopLostModeUserAttemptEvent` | `StopLostModeUserAttemptEvent` | An attempt to take a device out of lost mode. |
| `wipeFailureEvent` | `WipeFailureEvent` | The work profile or company-owned device failed to wipe when requested. This could be user initia... |

### `User`

A user belonging to an enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `accountIdentifier` | `string` | A unique identifier you create for this user, such as user342 or asset#44418. This field must be ... |

### `UserFacingMessage`

Provides a user-facing message with locale info. The maximum message length is 4096 characters.

| Property | Type | Description |
|----------|------|-------------|
| `defaultMessage` | `string` | The default message displayed if no localized message is specified or the user's locale doesn't m... |
| `localizedMessages` | `object` | A map containing pairs, where locale is a well-formed BCP 47 language (https://www.w3.org/Interna... |

### `WebApp`

A web app.

| Property | Type | Description |
|----------|------|-------------|
| `displayMode` | `string` | The display mode of the web app. |
| `icons` | `array<WebAppIcon>` | A list of icons for the web app. Must have at least one element. |
| `name` | `string` | The name of the web app, which is generated by the server during creation in the form enterprises... |
| `startUrl` | `string` | The start URL, i.e. the URL that should load when the user opens the application. |
| `title` | `string` | The title of the web app as displayed to the user (e.g., amongst a list of other applications, or... |
| `versionCode` | `string` | The current version of the app.Note that the version can automatically increase during the lifeti... |

### `WebAppIcon`

An icon for a web app. Supported formats are: png, jpg and webp.

| Property | Type | Description |
|----------|------|-------------|
| `imageData` | `string` | The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 "Base 64 Enc... |

### `WebToken`

A web token used to access the managed Google Play iframe.

| Property | Type | Description |
|----------|------|-------------|
| `enabledFeatures` | `array<string>` | The features to enable. Use this if you want to control exactly which feature(s) will be activate... |
| `name` | `string` | The name of the web token, which is generated by the server during creation in the form enterpris... |
| `parentFrameUrl` | `string` | The URL of the parent frame hosting the iframe with the embedded UI. To prevent XSS, the iframe m... |
| `permissions` | `array<string>` | Permissions available to an admin in the embedded UI. An admin must have all of these permissions... |
| `value` | `string` | The token value which is used in the hosting page to generate the iframe with the embedded UI. Th... |

### `WifiRoamingPolicy`

Wi-Fi roaming policy.

| Property | Type | Description |
|----------|------|-------------|
| `wifiRoamingSettings` | `array<WifiRoamingSetting>` | Optional. Wi-Fi roaming settings. SSIDs provided in this list must be unique, the policy will be ... |

### `WifiRoamingSetting`

Wi-Fi roaming setting.

| Property | Type | Description |
|----------|------|-------------|
| `wifiRoamingMode` | `string` | Required. Wi-Fi roaming mode for the specified SSID. |
| `wifiSsid` | `string` | Required. SSID of the Wi-Fi network. |

### `WifiSsid`

Represents a Wi-Fi SSID.

| Property | Type | Description |
|----------|------|-------------|
| `wifiSsid` | `string` | Required. Wi-Fi SSID represented as a string. |

### `WifiSsidPolicy`

Restrictions on which Wi-Fi SSIDs the device can connect to. Note that this does not affect which networks can be configured on the device. Supported on company-owned devices running Android 13 and above.

| Property | Type | Description |
|----------|------|-------------|
| `wifiSsidPolicyType` | `string` | Type of the Wi-Fi SSID policy to be applied. |
| `wifiSsids` | `array<WifiSsid>` | Optional. List of Wi-Fi SSIDs that should be applied in the policy. This field must be non-empty ... |

### `WipeAction`

An action to reset a company owned device or delete a work profile. Note: blockAction must also be specified.

| Property | Type | Description |
|----------|------|-------------|
| `preserveFrp` | `boolean` | Whether the factory-reset protection data is preserved on the device. This setting doesn’t apply ... |
| `wipeAfterDays` | `integer` | Number of days the policy is non-compliant before the device or work profile is wiped. wipeAfterD... |

### `WipeFailureEvent`

The work profile or company-owned device failed to wipe when requested. This could be user initiated or admin initiated e.g. delete was received. Intentionally empty.

### `WipeParams`

Parameters associated with the WIPE command to wipe the device.

| Property | Type | Description |
|----------|------|-------------|
| `wipeDataFlags` | `array<string>` | Optional. Flags to determine what data to wipe. |
| `wipeReason` | `UserFacingMessage` | Optional. A short message displayed to the user before wiping the work profile on personal device... |

### `WorkAccountSetupConfig`

Controls the work account setup configuration, such as details of whether a Google authenticated account is required.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationType` | `string` | Optional. The authentication type of the user on the device. |
| `requiredAccountEmail` | `string` | Optional. The specific google work account email address to be added. This field is only relevant... |

