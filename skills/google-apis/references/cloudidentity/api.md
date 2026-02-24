# Cloud Identity API - API Reference

**Version**: `v1` | **Methods**: 63 | **Schemas**: 117

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudidentity.inboundSsoAssignments.get` | GET | `v1/{+name}` | Gets an InboundSsoAssignment. |
| `cloudidentity.inboundSsoAssignments.patch` | PATCH | `v1/{+name}` | Updates an InboundSsoAssignment. The body of this request is the `inbound_sso_assignment` field a... |
| `cloudidentity.inboundSsoAssignments.delete` | DELETE | `v1/{+name}` | Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an assignment that has `sso_m... |
| `cloudidentity.inboundSsoAssignments.list` | GET | `v1/inboundSsoAssignments` | Lists the InboundSsoAssignments for a `Customer`. |
| `cloudidentity.inboundSsoAssignments.create` | POST | `v1/inboundSsoAssignments` | Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `O... |
| `cloudidentity.policies.get` | GET | `v1/{+name}` | Get a policy. |
| `cloudidentity.policies.list` | GET | `v1/policies` | List policies. |
| `cloudidentity.inboundSamlSsoProfiles.patch` | PATCH | `v1/{+name}` | Updates an InboundSamlSsoProfile. When the target customer has enabled [Multi-party approval for ... |
| `cloudidentity.inboundSamlSsoProfiles.delete` | DELETE | `v1/{+name}` | Deletes an InboundSamlSsoProfile. |
| `cloudidentity.inboundSamlSsoProfiles.get` | GET | `v1/{+name}` | Gets an InboundSamlSsoProfile. |
| `cloudidentity.inboundSamlSsoProfiles.create` | POST | `v1/inboundSamlSsoProfiles` | Creates an InboundSamlSsoProfile for a customer. When the target customer has enabled [Multi-part... |
| `cloudidentity.inboundSamlSsoProfiles.list` | GET | `v1/inboundSamlSsoProfiles` | Lists InboundSamlSsoProfiles for a customer. |
| `cloudidentity.inboundSamlSsoProfiles.idpCredentials.delete` | DELETE | `v1/{+name}` | Deletes an IdpCredential. |
| `cloudidentity.inboundSamlSsoProfiles.idpCredentials.get` | GET | `v1/{+name}` | Gets an IdpCredential. |
| `cloudidentity.inboundSamlSsoProfiles.idpCredentials.add` | POST | `v1/{+parent}/idpCredentials:add` | Adds an IdpCredential. Up to 2 credentials are allowed. When the target customer has enabled [Mul... |
| `cloudidentity.inboundSamlSsoProfiles.idpCredentials.list` | GET | `v1/{+parent}/idpCredentials` | Returns a list of IdpCredentials in an InboundSamlSsoProfile. |
| `cloudidentity.devices.delete` | DELETE | `v1/{+name}` | Deletes the specified device. |
| `cloudidentity.devices.cancelWipe` | POST | `v1/{+name}:cancelWipe` | Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap be... |
| `cloudidentity.devices.create` | POST | `v1/devices` | Creates a device. Only company-owned device may be created. **Note**: This method is available on... |
| `cloudidentity.devices.get` | GET | `v1/{+name}` | Retrieves the specified device. |
| `cloudidentity.devices.list` | GET | `v1/devices` | Lists/Searches devices. |
| `cloudidentity.devices.wipe` | POST | `v1/{+name}:wipe` | Wipes all data on the specified device. |
| `cloudidentity.devices.deviceUsers.approve` | POST | `v1/{+name}:approve` | Approves device to access user data. |
| `cloudidentity.devices.deviceUsers.block` | POST | `v1/{+name}:block` | Blocks device from accessing user data |
| `cloudidentity.devices.deviceUsers.cancelWipe` | POST | `v1/{+name}:cancelWipe` | Cancels an unfinished user account wipe. This operation can be used to cancel device wipe in the ... |
| `cloudidentity.devices.deviceUsers.lookup` | GET | `v1/{+parent}:lookup` | Looks up resource names of the DeviceUsers associated with the caller's credentials, as well as t... |
| `cloudidentity.devices.deviceUsers.list` | GET | `v1/{+parent}/deviceUsers` | Lists/Searches DeviceUsers. |
| `cloudidentity.devices.deviceUsers.delete` | DELETE | `v1/{+name}` | Deletes the specified DeviceUser. This also revokes the user's access to device data. |
| `cloudidentity.devices.deviceUsers.wipe` | POST | `v1/{+name}:wipe` | Wipes the user's account on a device. Other data on the device that is not associated with the us... |
| `cloudidentity.devices.deviceUsers.get` | GET | `v1/{+name}` | Retrieves the specified DeviceUser |
| `cloudidentity.devices.deviceUsers.clientStates.list` | GET | `v1/{+parent}/clientStates` | Lists the client states for the given search query. |
| `cloudidentity.devices.deviceUsers.clientStates.patch` | PATCH | `v1/{+name}` | Updates the client state for the device user **Note**: This method is available only to customers... |
| `cloudidentity.devices.deviceUsers.clientStates.get` | GET | `v1/{+name}` | Gets the client state for the device user |
| `cloudidentity.inboundOidcSsoProfiles.patch` | PATCH | `v1/{+name}` | Updates an InboundOidcSsoProfile. When the target customer has enabled [Multi-party approval for ... |
| `cloudidentity.inboundOidcSsoProfiles.get` | GET | `v1/{+name}` | Gets an InboundOidcSsoProfile. |
| `cloudidentity.inboundOidcSsoProfiles.delete` | DELETE | `v1/{+name}` | Deletes an InboundOidcSsoProfile. |
| `cloudidentity.inboundOidcSsoProfiles.create` | POST | `v1/inboundOidcSsoProfiles` | Creates an InboundOidcSsoProfile for a customer. When the target customer has enabled [Multi-part... |
| `cloudidentity.inboundOidcSsoProfiles.list` | GET | `v1/inboundOidcSsoProfiles` | Lists InboundOidcSsoProfile objects for a Google enterprise customer. |
| `cloudidentity.customers.userinvitations.cancel` | POST | `v1/{+name}:cancel` | Cancels a UserInvitation that was already sent. |
| `cloudidentity.customers.userinvitations.send` | POST | `v1/{+name}:send` | Sends a UserInvitation to email. If the `UserInvitation` does not exist for this request and it i... |
| `cloudidentity.customers.userinvitations.list` | GET | `v1/{+parent}/userinvitations` | Retrieves a list of UserInvitation resources. **Note:** New consumer accounts with the customer's... |
| `cloudidentity.customers.userinvitations.isInvitableUser` | GET | `v1/{+name}:isInvitableUser` | Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account)... |
| `cloudidentity.customers.userinvitations.get` | GET | `v1/{+name}` | Retrieves a UserInvitation resource. **Note:** New consumer accounts with the customer's verified... |
| `cloudidentity.groups.delete` | DELETE | `v1/{+name}` | Deletes a `Group`. |
| `cloudidentity.groups.lookup` | GET | `v1/groups:lookup` | Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Group` by... |
| `cloudidentity.groups.create` | POST | `v1/groups` | Creates a Group. |
| `cloudidentity.groups.search` | GET | `v1/groups:search` | Searches for `Group` resources matching a specified query. |
| `cloudidentity.groups.get` | GET | `v1/{+name}` | Retrieves a `Group`. |
| `cloudidentity.groups.patch` | PATCH | `v1/{+name}` | Updates a `Group`. |
| `cloudidentity.groups.getSecuritySettings` | GET | `v1/{+name}` | Get Security Settings |
| `cloudidentity.groups.list` | GET | `v1/groups` | Lists the `Group` resources under a customer or namespace. |
| `cloudidentity.groups.updateSecuritySettings` | PATCH | `v1/{+name}` | Update Security Settings |
| `cloudidentity.groups.memberships.lookup` | GET | `v1/{+parent}/memberships:lookup` | Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Membershi... |
| `cloudidentity.groups.memberships.list` | GET | `v1/{+parent}/memberships` | Lists the `Membership`s within a `Group`. |
| `cloudidentity.groups.memberships.delete` | DELETE | `v1/{+name}` | Deletes a `Membership`. |
| `cloudidentity.groups.memberships.modifyMembershipRoles` | POST | `v1/{+name}:modifyMembershipRoles` | Modifies the `MembershipRole`s of a `Membership`. |
| `cloudidentity.groups.memberships.checkTransitiveMembership` | GET | `v1/{+parent}/memberships:checkTransitiveMembership` | Check a potential member for membership in a group. **Note:** This feature is only available to G... |
| `cloudidentity.groups.memberships.searchTransitiveMemberships` | GET | `v1/{+parent}/memberships:searchTransitiveMemberships` | Search transitive memberships of a group. **Note:** This feature is only available to Google Work... |
| `cloudidentity.groups.memberships.searchTransitiveGroups` | GET | `v1/{+parent}/memberships:searchTransitiveGroups` | Search transitive groups of a member. **Note:** This feature is only available to Google Workspac... |
| `cloudidentity.groups.memberships.searchDirectGroups` | GET | `v1/{+parent}/memberships:searchDirectGroups` | Searches direct groups of a member. |
| `cloudidentity.groups.memberships.getMembershipGraph` | GET | `v1/{+parent}/memberships:getMembershipGraph` | Get a membership graph of just a member or both a member and a group. **Note:** This feature is o... |
| `cloudidentity.groups.memberships.create` | POST | `v1/{+parent}/memberships` | Creates a `Membership`. |
| `cloudidentity.groups.memberships.get` | GET | `v1/{+name}` | Retrieves a `Membership`. |

### `cloudidentity.inboundSsoAssignments.get`

**GET** `v1/{+name}`

Gets an InboundSsoAssignment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundSsoAssignment to fet... |

**Response**: `InboundSsoAssignment`

```typescript
const res = await cloudidentity.inboundSsoAssignments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSsoAssignments.patch`

**PATCH** `v1/{+name}`

Updates an InboundSsoAssignment. The body of this request is the `inbound_sso_assignment` field and the `update_mask` is relative to that. For example: a PATCH to `/v1/inboundSsoAssignments/0abcdefg1234567&update_mask=rank` with a body of `{ "rank": 1 }` moves that (presumably group-targeted) SSO assignment to the highest priority and shifts any other group-targeted assignments down in priority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment. |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `InboundSsoAssignment`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSsoAssignments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSsoAssignments.delete`

**DELETE** `v1/{+name}`

Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an assignment that has `sso_mode` == `SSO_OFF`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundSsoAssignment to del... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSsoAssignments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSsoAssignments.list`

**GET** `v1/inboundSsoAssignments`

Lists the InboundSsoAssignments for a `Customer`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | A CEL expression to filter the results. The only supported filter is filtering by customer. For example: `customer==c... |
| `pageSize` | `integer` | query | No | The maximum number of assignments to return. The service may return fewer than this value. If omitted (or defaulted t... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListInboundSsoAssignments` call. Provide this to retrieve the subsequent page... |

**Response**: `ListInboundSsoAssignmentsResponse`

```typescript
const res = await cloudidentity.inboundSsoAssignments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSsoAssignments.create`

**POST** `v1/inboundSsoAssignments`

Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `OrgUnit`.

**Request body**: `InboundSsoAssignment`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSsoAssignments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.policies.get`

**GET** `v1/{+name}`

Get a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the policy to retrieve. Format: `policies/{policy}`. |

**Response**: `Policy`

```typescript
const res = await cloudidentity.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.policies`
- `https://www.googleapis.com/auth/cloud-identity.policies.readonly`

---

### `cloudidentity.policies.list`

**GET** `v1/policies`

List policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. A CEL expression for filtering the results. Policies can be filtered by application with this expression: s... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. The service can return fewer than this number. If omitted or set t... |
| `pageToken` | `string` | query | No | Optional. The pagination token received from a prior call to PoliciesService.ListPolicies to retrieve the next page o... |

**Response**: `ListPoliciesResponse`

```typescript
const res = await cloudidentity.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.policies`
- `https://www.googleapis.com/auth/cloud-identity.policies.readonly`

---

### `cloudidentity.inboundSamlSsoProfiles.patch`

**PATCH** `v1/{+name}`

Updates an InboundSamlSsoProfile. When the target customer has enabled [Multi-party approval for sensitive actions](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `"done": false`, it will not have a response, and the metadata will have `"state": "awaiting-multi-party-approval"`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile. |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `InboundSamlSsoProfile`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSamlSsoProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.delete`

**DELETE** `v1/{+name}`

Deletes an InboundSamlSsoProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundSamlSsoProfile to de... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSamlSsoProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.get`

**GET** `v1/{+name}`

Gets an InboundSamlSsoProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundSamlSsoProfile to ge... |

**Response**: `InboundSamlSsoProfile`

```typescript
const res = await cloudidentity.inboundSamlSsoProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.create`

**POST** `v1/inboundSamlSsoProfiles`

Creates an InboundSamlSsoProfile for a customer. When the target customer has enabled [Multi-party approval for sensitive actions](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `"done": false`, it will not have a response, and the metadata will have `"state": "awaiting-multi-party-approval"`.

**Request body**: `InboundSamlSsoProfile`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundSamlSsoProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.list`

**GET** `v1/inboundSamlSsoProfiles`

Lists InboundSamlSsoProfiles for a customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | A [Common Expression Language](https://github.com/google/cel-spec) expression to filter the results. The only support... |
| `pageSize` | `integer` | query | No | The maximum number of InboundSamlSsoProfiles to return. The service may return fewer than this value. If omitted (or ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListInboundSamlSsoProfiles` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListInboundSamlSsoProfilesResponse`

```typescript
const res = await cloudidentity.inboundSamlSsoProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.idpCredentials.delete`

**DELETE** `v1/{+name}`

Deletes an IdpCredential.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the IdpCredential to delete. Fo... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.idpCredentials.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.idpCredentials.get`

**GET** `v1/{+name}`

Gets an IdpCredential.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the IdpCredential to retrieve. ... |

**Response**: `IdpCredential`

```typescript
const res = await cloudidentity.idpCredentials.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.idpCredentials.add`

**POST** `v1/{+parent}/idpCredentials:add`

Adds an IdpCredential. Up to 2 credentials are allowed. When the target customer has enabled [Multi-party approval for sensitive actions](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `"done": false`, it will not have a response, and the metadata will have `"state": "awaiting-multi-party-approval"`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The InboundSamlSsoProfile that owns the IdpCredential. Format: `inboundSamlSsoProfiles/{sso_profile_id}` |

**Request body**: `AddIdpCredentialRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.idpCredentials.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundSamlSsoProfiles.idpCredentials.list`

**GET** `v1/{+parent}/idpCredentials`

Returns a list of IdpCredentials in an InboundSamlSsoProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of `IdpCredential`s. Format: `inboundSamlSsoProfiles/{sso_profile_id}` |
| `pageSize` | `integer` | query | No | The maximum number of `IdpCredential`s to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIdpCredentials` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListIdpCredentialsResponse`

```typescript
const res = await cloudidentity.idpCredentials.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.devices.delete`

**DELETE** `v1/{+name}`

Deletes the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.devices.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.cancelWipe`

**POST** `v1/{+name}:cancelWipe`

Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped. This operation is possible when the device is in a "pending wipe" state. The device enters the "pending wipe" state when a wipe device command is issued, but has not yet been sent to the device. The cancel wipe will fail if the wipe command has already been issued to the device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.devices.cancelWipe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.create`

**POST** `v1/devices`

Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |

**Request body**: `GoogleAppsCloudidentityDevicesV1Device`

**Response**: `Operation`

```typescript
const res = await cloudidentity.devices.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.get`

**GET** `v1/{+name}`

Retrieves the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in the format: `devices/... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Customer in the format: `custom... |

**Response**: `GoogleAppsCloudidentityDevicesV1Device`

```typescript
const res = await cloudidentity.devices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.devices.list`

**GET** `v1/devices`

Lists/Searches devices.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer in the format: `custom... |
| `filter` | `string` | query | No | Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to [Mobile device... |
| `orderBy` | `string` | query | No | Optional. Order specification for devices in the response. Only one of the following field names may be used to speci... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Devices to return. If unspecified, at most 20 Devices will be returned. The maximum v... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDevices` call. Provide this to retrieve the subsequent page. Wh... |
| `view` | `string` | query | No | Optional. The view to use for the List request. |

**Response**: `GoogleAppsCloudidentityDevicesV1ListDevicesResponse`

```typescript
const res = await cloudidentity.devices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.devices.wipe`

**POST** `v1/{+name}:wipe`

Wipes all data on the specified device.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1WipeDeviceRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.devices.wipe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.approve`

**POST** `v1/{+name}:approve`

Approves device to access user data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.deviceUsers.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.block`

**POST** `v1/{+name}:block`

Blocks device from accessing user data

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.deviceUsers.block({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.cancelWipe`

**POST** `v1/{+name}:cancelWipe`

Cancels an unfinished user account wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.deviceUsers.cancelWipe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.lookup`

**GET** `v1/{+parent}:lookup`

Looks up resource names of the DeviceUsers associated with the caller's credentials, as well as the properties provided in the request. This method must be called with end-user credentials with the scope: https://www.googleapis.com/auth/cloud-identity.devices.lookup If multiple properties are provided, only DeviceUsers having all of these properties are considered as matches - i.e. the query behaves like an AND. Different platforms require different amounts of information from the caller to ensure that the DeviceUser is uniquely identified. - iOS: If either the `partner` or `ios_device_id` field is provided, then both fields are required. - Android: Specifying the `android_id` field is required. - Desktop: Specifying the `raw_resource_id` field is required.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Must be set to "devices/-/deviceUsers" to search across all DeviceUser belonging to the user. |
| `androidId` | `string` | query | No | Android Id returned by [Settings.Secure#ANDROID_ID](https://developer.android.com/reference/android/provider/Settings... |
| `iosDeviceId` | `string` | query | No | Optional. The partner-specified device identifier assigned to the iOS device that initiated the Lookup API call. This... |
| `pageSize` | `integer` | query | No | The maximum number of DeviceUsers to return. If unspecified, at most 20 DeviceUsers will be returned. The maximum val... |
| `pageToken` | `string` | query | No | A page token, received from a previous `LookupDeviceUsers` call. Provide this to retrieve the subsequent page. When p... |
| `partner` | `string` | query | No | Optional. The partner ID of the calling iOS app. This string must match the value of the partner key within the app c... |
| `rawResourceId` | `string` | query | No | Raw Resource Id used by Google Endpoint Verification. If the user is enrolled into Google Endpoint Verification, this... |
| `userId` | `string` | query | No | The user whose DeviceUser's resource name will be fetched. Must be set to 'me' to fetch the DeviceUser's resource nam... |

**Response**: `GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse`

```typescript
const res = await cloudidentity.deviceUsers.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices.lookup`

---

### `cloudidentity.devices.deviceUsers.list`

**GET** `v1/{+parent}/deviceUsers`

Lists/Searches DeviceUsers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. To list all DeviceUsers, set this to "devices/-". To list all DeviceUsers owned by a device, set this to th... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |
| `filter` | `string` | query | No | Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to [Mobile device... |
| `orderBy` | `string` | query | No | Optional. Order specification for devices in the response. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of DeviceUsers to return. If unspecified, at most 5 DeviceUsers will be returned. The ma... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDeviceUsers` call. Provide this to retrieve the subsequent page... |

**Response**: `GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse`

```typescript
const res = await cloudidentity.deviceUsers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.devices.deviceUsers.delete`

**DELETE** `v1/{+name}`

Deletes the specified DeviceUser. This also revokes the user's access to device data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.deviceUsers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.wipe`

**POST** `v1/{+name}:wipe`

Wipes the user's account on a device. Other data on the device that is not associated with the user's work account is not affected. For example, if a Gmail app is installed on a device that is used for personal and work purposes, and the user is logged in to the Gmail app with their personal account as well as their work account, wiping the "deviceUser" by their work administrator will not affect their personal account within Gmail or other apps such as Photos.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |

**Request body**: `GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.deviceUsers.wipe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.get`

**GET** `v1/{+name}`

Retrieves the specified DeviceUser

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{dev... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |

**Response**: `GoogleAppsCloudidentityDevicesV1DeviceUser`

```typescript
const res = await cloudidentity.deviceUsers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.devices.deviceUsers.clientStates.list`

**GET** `v1/{+parent}/clientStates`

Lists the client states for the given search query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. To list all ClientStates, set this to "devices/-/deviceUsers/-". To list all ClientStates owned by a Device... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |
| `filter` | `string` | query | No | Optional. Additional restrictions when fetching list of client states. |
| `orderBy` | `string` | query | No | Optional. Order specification for client states in the response. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListClientStates` call. Provide this to retrieve the subsequent pag... |

**Response**: `GoogleAppsCloudidentityDevicesV1ListClientStatesResponse`

```typescript
const res = await cloudidentity.clientStates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.devices.deviceUsers.clientStates.patch`

**PATCH** `v1/{+name}`

Updates the client state for the device user **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devi... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |
| `updateMask` | `string` | query | No | Optional. Comma-separated list of fully qualified names of fields to be updated. If not specified, all updatable fiel... |

**Request body**: `GoogleAppsCloudidentityDevicesV1ClientState`

**Response**: `Operation`

```typescript
const res = await cloudidentity.clientStates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`

---

### `cloudidentity.devices.deviceUsers.clientStates.get`

**GET** `v1/{+name}`

Gets the client state for the device user

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientState in format: `devices... |
| `customer` | `string` | query | No | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this ... |

**Response**: `GoogleAppsCloudidentityDevicesV1ClientState`

```typescript
const res = await cloudidentity.clientStates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.devices`
- `https://www.googleapis.com/auth/cloud-identity.devices.readonly`

---

### `cloudidentity.inboundOidcSsoProfiles.patch`

**PATCH** `v1/{+name}`

Updates an InboundOidcSsoProfile. When the target customer has enabled [Multi-party approval for sensitive actions](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `"done": false`, it will not have a response, and the metadata will have `"state": "awaiting-multi-party-approval"`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the OIDC SSO profile. |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `InboundOidcSsoProfile`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundOidcSsoProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundOidcSsoProfiles.get`

**GET** `v1/{+name}`

Gets an InboundOidcSsoProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundOidcSsoProfile to ge... |

**Response**: `InboundOidcSsoProfile`

```typescript
const res = await cloudidentity.inboundOidcSsoProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundOidcSsoProfiles.delete`

**DELETE** `v1/{+name}`

Deletes an InboundOidcSsoProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the InboundOidcSsoProfile to de... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundOidcSsoProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundOidcSsoProfiles.create`

**POST** `v1/inboundOidcSsoProfiles`

Creates an InboundOidcSsoProfile for a customer. When the target customer has enabled [Multi-party approval for sensitive actions](https://support.google.com/a/answer/13790448), the `Operation` in the response will have `"done": false`, it will not have a response, and the metadata will have `"state": "awaiting-multi-party-approval"`.

**Request body**: `InboundOidcSsoProfile`

**Response**: `Operation`

```typescript
const res = await cloudidentity.inboundOidcSsoProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.inboundOidcSsoProfiles.list`

**GET** `v1/inboundOidcSsoProfiles`

Lists InboundOidcSsoProfile objects for a Google enterprise customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | A [Common Expression Language](https://github.com/google/cel-spec) expression to filter the results. The only support... |
| `pageSize` | `integer` | query | No | The maximum number of InboundOidcSsoProfiles to return. The service may return fewer than this value. If omitted (or ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListInboundOidcSsoProfiles` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListInboundOidcSsoProfilesResponse`

```typescript
const res = await cloudidentity.inboundOidcSsoProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.inboundsso`
- `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.customers.userinvitations.cancel`

**POST** `v1/{+name}:cancel`

Cancels a UserInvitation that was already sent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}` |

**Request body**: `CancelUserInvitationRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.userinvitations.cancel({
  // parameters
});
```

---

### `cloudidentity.customers.userinvitations.send`

**POST** `v1/{+name}:send`

Sends a UserInvitation to email. If the `UserInvitation` does not exist for this request and it is a valid request, the request creates a `UserInvitation`. **Note:** The `get` and `list` methods have a 48-hour delay where newly-created consumer accounts will not appear in the results. You can still send a `UserInvitation` to those accounts if you know the unmanaged email address and IsInvitableUser==True.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}` |

**Request body**: `SendUserInvitationRequest`

**Response**: `Operation`

```typescript
const res = await cloudidentity.userinvitations.send({
  // parameters
});
```

---

### `cloudidentity.customers.userinvitations.list`

**GET** `v1/{+parent}/userinvitations`

Retrieves a list of UserInvitation resources. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer ID of the Google Workspace or Cloud Identity account the UserInvitation resources are associat... |
| `filter` | `string` | query | No | Optional. A query string for filtering `UserInvitation` results by their current state, in the format: `"state=='invi... |
| `orderBy` | `string` | query | No | Optional. The sort order of the list results. You can sort the results in descending order based on either email or l... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of UserInvitation resources to return. If unspecified, at most 100 resources will be ret... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserInvitations` call. Provide this to retrieve the subsequent ... |

**Response**: `ListUserInvitationsResponse`

```typescript
const res = await cloudidentity.userinvitations.list({
  // parameters
});
```

---

### `cloudidentity.customers.userinvitations.isInvitableUser`

**GET** `v1/{+name}:isInvitableUser`

Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account). Eligibility is based on the following criteria: * the email address is a consumer account and it's the primary email address of the account, and * the domain of the email address matches an existing verified Google Workspace or Cloud Identity domain If both conditions are met, the user is eligible. **Note:** This method is not supported for Workspace Essentials customers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}` |

**Response**: `IsInvitableUserResponse`

```typescript
const res = await cloudidentity.userinvitations.isInvitableUser({
  // parameters
});
```

---

### `cloudidentity.customers.userinvitations.get`

**GET** `v1/{+name}`

Retrieves a UserInvitation resource. **Note:** New consumer accounts with the customer's verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `UserInvitation` name in the format `customers/{customer}/userinvitations/{user_email_address}` |

**Response**: `UserInvitation`

```typescript
const res = await cloudidentity.userinvitations.get({
  // parameters
});
```

---

### `cloudidentity.groups.delete`

**DELETE** `v1/{+name}`

Deletes a `Group`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must b... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.lookup`

**GET** `v1/groups:lookup`

Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Group` by its `EntityKey`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupKey.id` | `string` | query | No | The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user.... |
| `groupKey.namespace` | `string` | query | No | The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such a... |

**Response**: `LookupGroupNameResponse`

```typescript
const res = await cloudidentity.groups.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.create`

**POST** `v1/groups`

Creates a Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `initialGroupConfig` | `string` | query | No | Optional. The initial configuration option for the `Group`. |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await cloudidentity.groups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.search`

**GET** `v1/groups:search`

Searches for `Group` resources matching a specified query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of results to return. Note that the number of results returned may be less than this value even if... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous search request, if any. |
| `query` | `string` | query | No | Required. The search query. * Must be specified in [Common Expression Language](https://opensource.google/projects/ce... |
| `view` | `string` | query | No | The level of detail to be returned. If unspecified, defaults to `View.BASIC`. |

**Response**: `SearchGroupsResponse`

```typescript
const res = await cloudidentity.groups.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.get`

**GET** `v1/{+name}`

Retrieves a `Group`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group` to retrieve. Must b... |

**Response**: `Group`

```typescript
const res = await cloudidentity.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.patch`

**PATCH** `v1/{+name}`

Updates a `Group`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the... |
| `updateMask` | `string` | query | No | Required. The names of fields to update. May only contain the following field names: `display_name`, `description`, `... |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await cloudidentity.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.getSecuritySettings`

**GET** `v1/{+name}`

Get Security Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The security settings to retrieve. Format: `groups/{group_id}/securitySettings` |
| `readMask` | `string` | query | No | Field-level read mask of which fields to return. "*" returns all fields. If not specified, all fields will be returne... |

**Response**: `SecuritySettings`

```typescript
const res = await cloudidentity.groups.getSecuritySettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.list`

**GET** `v1/groups`

Lists the `Group` resources under a customer or namespace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of results to return. Note that the number of results returned may be less than this value even if... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous list request, if any. |
| `parent` | `string` | query | No | Required. The parent resource under which to list all `Group` resources. Must be of the form `identitysources/{identi... |
| `view` | `string` | query | No | The level of detail to be returned. If unspecified, defaults to `View.BASIC`. |

**Response**: `ListGroupsResponse`

```typescript
const res = await cloudidentity.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.updateSecuritySettings`

**PATCH** `v1/{+name}`

Update Security Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the security settings. Shall be of the form `groups/{group_id}/securitySettings`. |
| `updateMask` | `string` | query | No | Required. The fully-qualified names of fields to update. May only contain the following field: `member_restriction.qu... |

**Request body**: `SecuritySettings`

**Response**: `Operation`

```typescript
const res = await cloudidentity.groups.updateSecuritySettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.lookup`

**GET** `v1/{+parent}/memberships:lookup`

Looks up the [resource name](https://cloud.google.com/apis/design/resource_names) of a `Membership` by its `EntityKey`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/{group}`. |
| `memberKey.id` | `string` | query | No | The ID of the entity. For Google-managed entities, the `id` should be the email address of an existing group or user.... |
| `memberKey.namespace` | `string` | query | No | The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such a... |

**Response**: `LookupMembershipNameResponse`

```typescript
const res = await cloudidentity.memberships.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.list`

**GET** `v1/{+parent}/memberships`

Lists the `Membership`s within a `Group`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent `Group` resource under which to lookup the `Membership` name. Must be of the form `groups/{group}`. |
| `pageSize` | `integer` | query | No | The maximum number of results to return. Note that the number of results returned may be less than this value even if... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous search request, if any. |
| `view` | `string` | query | No | The level of detail to be returned. If unspecified, defaults to `View.BASIC`. |

**Response**: `ListMembershipsResponse`

```typescript
const res = await cloudidentity.memberships.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.delete`

**DELETE** `v1/{+name}`

Deletes a `Membership`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` to delete. Mus... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.memberships.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.modifyMembershipRoles`

**POST** `v1/{+name}:modifyMembershipRoles`

Modifies the `MembershipRole`s of a `Membership`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` whose roles ar... |

**Request body**: `ModifyMembershipRolesRequest`

**Response**: `ModifyMembershipRolesResponse`

```typescript
const res = await cloudidentity.memberships.modifyMembershipRoles({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.checkTransitiveMembership`

**GET** `v1/{+parent}/memberships:checkTransitiveMembership`

Check a potential member for membership in a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has membership to a group as long as there is a single viewable transitive membership between the group and the member. The actor must have view permissions to at least one transitive membership between the member and group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to check the transitive membership ... |
| `query` | `string` | query | No | Required. A CEL expression that MUST include member specification. This is a `required` field. Certain groups are uni... |

**Response**: `CheckTransitiveMembershipResponse`

```typescript
const res = await cloudidentity.memberships.checkTransitiveMembership({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.searchTransitiveMemberships`

**GET** `v1/{+parent}/memberships:searchTransitiveMemberships`

Search transitive memberships of a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive membership is any direct or indirect membership of a group. Actor must have view permissions to all transitive memberships.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in... |
| `pageSize` | `integer` | query | No | The default page size is 200 (max 1000). |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous list request, if any. |

**Response**: `SearchTransitiveMembershipsResponse`

```typescript
const res = await cloudidentity.memberships.searchTransitiveMemberships({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.searchTransitiveGroups`

**GET** `v1/{+parent}/memberships:searchTransitiveGroups`

Search transitive groups of a member. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive group is any group that has a direct or indirect membership to the member. Actor must have view permissions all transitive groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in... |
| `pageSize` | `integer` | query | No | The default page size is 200 (max 1000). |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous list request, if any. |
| `query` | `string` | query | No | Required. A CEL expression that MUST include member specification AND label(s). This is a `required` field. Users can... |

**Response**: `SearchTransitiveGroupsResponse`

```typescript
const res = await cloudidentity.memberships.searchTransitiveGroups({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.searchDirectGroups`

**GET** `v1/{+parent}/memberships:searchDirectGroups`

Searches direct groups of a member.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memberships in... |
| `orderBy` | `string` | query | No | The ordering of membership relation for the display name or email in the response. The syntax for this field can be f... |
| `pageSize` | `integer` | query | No | The default page size is 200 (max 1000). |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous list request, if any |
| `query` | `string` | query | No | Required. A CEL expression that MUST include member specification AND label(s). Users can search on label attributes ... |

**Response**: `SearchDirectGroupsResponse`

```typescript
const res = await cloudidentity.memberships.searchDirectGroups({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.getMembershipGraph`

**GET** `v1/{+parent}/memberships:getMembershipGraph`

Get a membership graph of just a member or both a member and a group. **Note:** This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given a member, the response will contain all membership paths from the member. Given both a group and a member, the response will contain all membership paths between the group and the member.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. [Resource name](https://cloud.google.com/apis/design/resource_names) of the group to search transitive memb... |
| `query` | `string` | query | No | Required. A CEL expression that MUST include member specification AND label(s). Certain groups are uniquely identifie... |

**Response**: `Operation`

```typescript
const res = await cloudidentity.memberships.getMembershipGraph({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.create`

**POST** `v1/{+parent}/memberships`

Creates a `Membership`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent `Group` resource under which to create the `Membership`. Must be of the form `groups/{group}`. |

**Request body**: `Membership`

**Response**: `Operation`

```typescript
const res = await cloudidentity.memberships.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudidentity.groups.memberships.get`

**GET** `v1/{+name}`

Retrieves a `Membership`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership` to retrieve. M... |

**Response**: `Membership`

```typescript
const res = await cloudidentity.memberships.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-identity.groups`
- `https://www.googleapis.com/auth/cloud-identity.groups.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddIdpCredentialOperationMetadata`

LRO response metadata for InboundSamlSsoProfilesService.AddIdpCredential.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | State of this Operation Will be "awaiting-multi-party-approval" when the operation is deferred du... |

### `AddIdpCredentialRequest`

The request for creating an IdpCredential with its associated payload. An InboundSamlSsoProfile can own up to 2 credentials.

| Property | Type | Description |
|----------|------|-------------|
| `pemData` | `string` | PEM encoded x509 certificate containing the public key for verifying IdP signatures. |

### `CancelUserInvitationRequest`

Request to cancel sent invitation for target email in UserInvitation.

### `CheckTransitiveMembershipResponse`

The response message for MembershipsService.CheckTransitiveMembership.

| Property | Type | Description |
|----------|------|-------------|
| `hasMembership` | `boolean` | Response does not include the possible roles of a member since the behavior of this rpc is not al... |

### `CreateGroupMetadata`

Metadata for CreateGroup LRO.

### `CreateInboundOidcSsoProfileOperationMetadata`

LRO response metadata for InboundOidcSsoProfilesService.CreateInboundOidcSsoProfile.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | State of this Operation Will be "awaiting-multi-party-approval" when the operation is deferred du... |

### `CreateInboundSamlSsoProfileOperationMetadata`

LRO response metadata for InboundSamlSsoProfilesService.CreateInboundSamlSsoProfile.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | State of this Operation Will be "awaiting-multi-party-approval" when the operation is deferred du... |

### `CreateInboundSsoAssignmentOperationMetadata`

LRO response metadata for InboundSsoAssignmentsService.CreateInboundSsoAssignment.

### `CreateMembershipMetadata`

Metadata for CreateMembership LRO.

### `DeleteGroupMetadata`

Metadata for DeleteGroup LRO.

### `DeleteIdpCredentialOperationMetadata`

LRO response metadata for InboundSamlSsoProfilesService.DeleteIdpCredential.

### `DeleteInboundOidcSsoProfileOperationMetadata`

LRO response metadata for InboundOidcSsoProfilesService.DeleteInboundOidcSsoProfile.

### `DeleteInboundSamlSsoProfileOperationMetadata`

LRO response metadata for InboundSamlSsoProfilesService.DeleteInboundSamlSsoProfile.

### `DeleteInboundSsoAssignmentOperationMetadata`

LRO response metadata for InboundSsoAssignmentsService.DeleteInboundSsoAssignment.

### `DeleteMembershipMetadata`

Metadata for DeleteMembership LRO.

### `DsaPublicKeyInfo`

Information of a DSA public key.

| Property | Type | Description |
|----------|------|-------------|
| `keySize` | `integer` | Key size in bits (size of parameter P). |

### `DynamicGroupMetadata`

Dynamic group metadata like queries and status.

| Property | Type | Description |
|----------|------|-------------|
| `queries` | `array<DynamicGroupQuery>` | Memberships will be the union of all queries. Only one entry with USER resource is currently supp... |
| `status` | `DynamicGroupStatus` | Output only. Status of the dynamic group. |

### `DynamicGroupQuery`

Defines a query on a resource.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | Query that determines the memberships of the dynamic group. Examples: All users with at least one... |
| `resourceType` | `string` | Resource type for the Dynamic Group Query |

### `DynamicGroupStatus`

The current status of a dynamic group along with timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | Status of the dynamic group. |
| `statusTime` | `string` | The latest time at which the dynamic group is guaranteed to be in the given status. If status is ... |

### `EntityKey`

A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The ID of the entity. For Google-managed entities, the `id` should be the email address of an exi... |
| `namespace` | `string` | The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-m... |

### `ExpiryDetail`

The `MembershipRole` expiry details.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The time at which the `MembershipRole` will expire. |

### `GetMembershipGraphMetadata`

Metadata of GetMembershipGraphResponse LRO. This is currently empty to permit future extensibility.

### `GetMembershipGraphResponse`

The response message for MembershipsService.GetMembershipGraph.

| Property | Type | Description |
|----------|------|-------------|
| `adjacencyList` | `array<MembershipAdjacencyList>` | The membership graph's path information represented as an adjacency list. |
| `groups` | `array<Group>` | The resources representing each group in the adjacency list. Each group in this list can be corre... |

### `GoogleAppsCloudidentityDevicesV1AndroidAttributes`

Resource representing the Android specific attributes of a Device.

| Property | Type | Description |
|----------|------|-------------|
| `ctsProfileMatch` | `boolean` | Whether the device passes Android CTS compliance. |
| `enabledUnknownSources` | `boolean` | Whether applications from unknown sources can be installed on device. |
| `hasPotentiallyHarmfulApps` | `boolean` | Whether any potentially harmful apps were detected on the device. |
| `ownerProfileAccount` | `boolean` | Whether this account is on an owner/primary profile. For phones, only true for owner profiles. An... |
| `ownershipPrivilege` | `string` | Ownership privileges on device. |
| `supportsWorkProfile` | `boolean` | Whether device supports Android work profiles. If false, this service will not block access to co... |
| `verifiedBoot` | `boolean` | Whether Android verified boot status is GREEN. |
| `verifyAppsEnabled` | `boolean` | Whether Google Play Protect Verify Apps is enabled. |

### `GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata`

Metadata for ApproveDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest`

Request message for approving the device to access user data.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |

### `GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse`

Response message for approving the device to access user data.

| Property | Type | Description |
|----------|------|-------------|
| `deviceUser` | `GoogleAppsCloudidentityDevicesV1DeviceUser` | Resultant DeviceUser object for the action. |

### `GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata`

Metadata for BlockDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest`

Request message for blocking account on device.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |

### `GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse`

Response message for blocking the device from accessing user data.

| Property | Type | Description |
|----------|------|-------------|
| `deviceUser` | `GoogleAppsCloudidentityDevicesV1DeviceUser` | Resultant DeviceUser object for the action. |

### `GoogleAppsCloudidentityDevicesV1BrowserAttributes`

Contains information about browser profiles reported by the [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).

| Property | Type | Description |
|----------|------|-------------|
| `chromeBrowserInfo` | `GoogleAppsCloudidentityDevicesV1BrowserInfo` | Represents the current state of the [Chrome browser attributes](https://cloud.google.com/access-c... |
| `chromeProfileId` | `string` | Chrome profile ID that is exposed by the Chrome API. It is unique for each device. |
| `lastProfileSyncTime` | `string` | Timestamp in milliseconds since the Unix epoch when the profile/gcm id was last synced. |

### `GoogleAppsCloudidentityDevicesV1BrowserInfo`

Browser-specific fields reported by the [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).

| Property | Type | Description |
|----------|------|-------------|
| `browserManagementState` | `string` | Output only. Browser's management state. |
| `browserVersion` | `string` | Version of the request initiating browser. E.g. `91.0.4442.4`. |
| `isBuiltInDnsClientEnabled` | `boolean` | Current state of [built-in DNS client](https://chromeenterprise.google/policies/#BuiltInDnsClient... |
| `isBulkDataEntryAnalysisEnabled` | `boolean` | Current state of [bulk data analysis](https://chromeenterprise.google/policies/#OnBulkDataEntryEn... |
| `isChromeCleanupEnabled` | `boolean` | Deprecated: This field is not used for Chrome version 118 and later. Current state of [Chrome Cle... |
| `isChromeRemoteDesktopAppBlocked` | `boolean` | Current state of [Chrome Remote Desktop app](https://chromeenterprise.google/policies/#URLBlockli... |
| `isFileDownloadAnalysisEnabled` | `boolean` | Current state of [file download analysis](https://chromeenterprise.google/policies/#OnFileDownloa... |
| `isFileUploadAnalysisEnabled` | `boolean` | Current state of [file upload analysis](https://chromeenterprise.google/policies/#OnFileAttachedE... |
| `isRealtimeUrlCheckEnabled` | `boolean` | Current state of [real-time URL check](https://chromeenterprise.google/policies/#EnterpriseRealTi... |
| `isSecurityEventAnalysisEnabled` | `boolean` | Current state of [security event analysis](https://chromeenterprise.google/policies/#OnSecurityEv... |
| `isSiteIsolationEnabled` | `boolean` | Current state of [site isolation](https://chromeenterprise.google/policies/?policy=IsolateOrigins). |
| `isThirdPartyBlockingEnabled` | `boolean` | Current state of [third-party blocking](https://chromeenterprise.google/policies/#ThirdPartyBlock... |
| `passwordProtectionWarningTrigger` | `string` | Current state of [password protection trigger](https://chromeenterprise.google/policies/#Password... |
| `safeBrowsingProtectionLevel` | `string` | Current state of [Safe Browsing protection level](https://chromeenterprise.google/policies/#SafeB... |

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata`

Metadata for CancelWipeDevice LRO.

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest`

Request message for cancelling an unfinished device wipe.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse`

Response message for cancelling an unfinished device wipe.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `GoogleAppsCloudidentityDevicesV1Device` | Resultant Device object for the action. Note that asset tags will not be returned in the device o... |

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata`

Metadata for CancelWipeDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest`

Request message for cancelling an unfinished user account wipe.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |

### `GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse`

Response message for cancelling an unfinished user account wipe.

| Property | Type | Description |
|----------|------|-------------|
| `deviceUser` | `GoogleAppsCloudidentityDevicesV1DeviceUser` | Resultant DeviceUser object for the action. |

### `GoogleAppsCloudidentityDevicesV1CertificateAttributes`

Stores information about a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `certificateTemplate` | `GoogleAppsCloudidentityDevicesV1CertificateTemplate` | The X.509 extension for CertificateTemplate. |
| `fingerprint` | `string` | The encoded certificate fingerprint. |
| `issuer` | `string` | The name of the issuer of this certificate. |
| `serialNumber` | `string` | Serial number of the certificate, Example: "123456789". |
| `subject` | `string` | The subject name of this certificate. |
| `thumbprint` | `string` | The certificate thumbprint. |
| `validationState` | `string` | Output only. Validation state of this certificate. |
| `validityExpirationTime` | `string` | Certificate not valid at or after this timestamp. |
| `validityStartTime` | `string` | Certificate not valid before this timestamp. |

### `GoogleAppsCloudidentityDevicesV1CertificateTemplate`

CertificateTemplate (v3 Extension in X.509).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The template id of the template. Example: "1.3.6.1.4.1.311.21.8.15608621.11768144.5720724.1606841... |
| `majorVersion` | `integer` | The Major version of the template. Example: 100. |
| `minorVersion` | `integer` | The minor version of the template. Example: 12. |

### `GoogleAppsCloudidentityDevicesV1ClientState`

Represents the state associated with an API client calling the Devices API. Resource representing ClientState and supports updates from API users

| Property | Type | Description |
|----------|------|-------------|
| `assetTags` | `array<string>` | The caller can specify asset tags for this resource |
| `complianceState` | `string` | The compliance state of the resource as specified by the API client. |
| `createTime` | `string` | Output only. The time the client state data was created. |
| `customId` | `string` | This field may be used to store a unique identifier for the API resource within which these Custo... |
| `etag` | `string` | The token that needs to be passed back for concurrency control in updates. Token needs to be pass... |
| `healthScore` | `string` | The Health score of the resource. The Health score is the callers specification of the condition ... |
| `keyValuePairs` | `object` | The map of key-value attributes stored by callers specific to a device. The total serialized leng... |
| `lastUpdateTime` | `string` | Output only. The time the client state data was last updated. |
| `managed` | `string` | The management state of the resource as specified by the API client. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the ClientSt... |
| `ownerType` | `string` | Output only. The owner of the ClientState |
| `scoreReason` | `string` | A descriptive cause of the health score. |

### `GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata`

Metadata for CreateDevice LRO.

### `GoogleAppsCloudidentityDevicesV1CustomAttributeValue`

Additional custom attribute values may be one of these types

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Represents a boolean value. |
| `numberValue` | `number` | Represents a double value. |
| `stringValue` | `string` | Represents a string value. |

### `GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata`

Metadata for DeleteDevice LRO.

### `GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata`

Metadata for DeleteDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1Device`

A Device within the Cloud Identity Devices API. Represents a Device known to Google Cloud, independent of the device ownership, type, and whether it is assigned or in use by a user.

| Property | Type | Description |
|----------|------|-------------|
| `androidSpecificAttributes` | `GoogleAppsCloudidentityDevicesV1AndroidAttributes` | Output only. Attributes specific to Android devices. |
| `assetTag` | `string` | Asset tag of the device. |
| `basebandVersion` | `string` | Output only. Baseband version of the device. |
| `bootloaderVersion` | `string` | Output only. Device bootloader version. Example: 0.6.7. |
| `brand` | `string` | Output only. Device brand. Example: Samsung. |
| `buildNumber` | `string` | Output only. Build number of the device. |
| `compromisedState` | `string` | Output only. Represents whether the Device is compromised. |
| `createTime` | `string` | Output only. When the Company-Owned device was imported. This field is empty for BYOD devices. |
| `deviceId` | `string` | Unique identifier for the device. |
| `deviceType` | `string` | Output only. Type of device. |
| `enabledDeveloperOptions` | `boolean` | Output only. Whether developer options is enabled on device. |
| `enabledUsbDebugging` | `boolean` | Output only. Whether USB debugging is enabled on device. |
| `encryptionState` | `string` | Output only. Device encryption state. |
| `endpointVerificationSpecificAttributes` | `GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes` | Output only. Attributes specific to [Endpoint Verification](https://cloud.google.com/endpoint-ver... |
| `hostname` | `string` | Host name of the device. |
| `imei` | `string` | Output only. IMEI number of device if GSM device; empty otherwise. |
| `kernelVersion` | `string` | Output only. Kernel version of the device. |
| `lastSyncTime` | `string` | Most recent time when device synced with this service. |
| `managementState` | `string` | Output only. Management state of the device |
| `manufacturer` | `string` | Output only. Device manufacturer. Example: Motorola. |
| `meid` | `string` | Output only. MEID number of device if CDMA device; empty otherwise. |
| `model` | `string` | Output only. Model name of device. Example: Pixel 3. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device i... |
| `networkOperator` | `string` | Output only. Mobile or network operator of device, if available. |
| `osVersion` | `string` | Output only. OS version of the device. Example: Android 8.1.0. |
| `otherAccounts` | `array<string>` | Output only. Domain name for Google accounts on device. Type for other accounts on device. On And... |
| `ownerType` | `string` | Output only. Whether the device is owned by the company or an individual |
| `releaseVersion` | `string` | Output only. OS release version. Example: 6.0. |
| `securityPatchTime` | `string` | Output only. OS security patch update time on device. |
| `serialNumber` | `string` | Serial Number of device. Example: HT82V1A01076. |
| `unifiedDeviceId` | `string` | Output only. Unified device id of the device. |
| `wifiMacAddresses` | `array<string>` | WiFi MAC addresses of device. |

### `GoogleAppsCloudidentityDevicesV1DeviceUser`

Represents a user's use of a Device in the Cloud Identity Devices API. A DeviceUser is a resource representing a user's use of a Device

| Property | Type | Description |
|----------|------|-------------|
| `compromisedState` | `string` | Compromised State of the DeviceUser object |
| `createTime` | `string` | When the user first signed in to the device |
| `firstSyncTime` | `string` | Output only. Most recent time when user registered with this service. |
| `languageCode` | `string` | Output only. Default locale used on device, in IETF BCP-47 format. |
| `lastSyncTime` | `string` | Output only. Last time when user synced with policies. |
| `managementState` | `string` | Output only. Management state of the user on the device. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the DeviceUs... |
| `passwordState` | `string` | Password state of the DeviceUser object |
| `userAgent` | `string` | Output only. User agent on the device for this specific user |
| `userEmail` | `string` | Email address of the user registered on the device. |

### `GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes`

Resource representing the [Endpoint Verification-specific attributes](https://cloud.google.com/endpoint-verification/docs/device-information) of a device.

| Property | Type | Description |
|----------|------|-------------|
| `additionalSignals` | `object` | [Additional signals](https://cloud.google.com/endpoint-verification/docs/device-information) repo... |
| `browserAttributes` | `array<GoogleAppsCloudidentityDevicesV1BrowserAttributes>` | Details of browser profiles reported by Endpoint Verification. |
| `certificateAttributes` | `array<GoogleAppsCloudidentityDevicesV1CertificateAttributes>` | Details of certificates. |

### `GoogleAppsCloudidentityDevicesV1ListClientStatesResponse`

Response message that is returned in ListClientStates.

| Property | Type | Description |
|----------|------|-------------|
| `clientStates` | `array<GoogleAppsCloudidentityDevicesV1ClientState>` | Client states meeting the list restrictions. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. Empty if there are no more results. |

### `GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse`

Response message that is returned from the ListDeviceUsers method.

| Property | Type | Description |
|----------|------|-------------|
| `deviceUsers` | `array<GoogleAppsCloudidentityDevicesV1DeviceUser>` | Devices meeting the list restrictions. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. Empty if there are no more results. |

### `GoogleAppsCloudidentityDevicesV1ListDevicesResponse`

Response message that is returned from the ListDevices method.

| Property | Type | Description |
|----------|------|-------------|
| `devices` | `array<GoogleAppsCloudidentityDevicesV1Device>` | Devices meeting the list restrictions. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. Empty if there are no more results. |

### `GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata`

Metadata for ListEndpointApps LRO.

### `GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse`

Response containing resource names of the DeviceUsers associated with the caller's credentials.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | The customer resource name that may be passed back to other Devices API methods such as List, Get... |
| `names` | `array<string>` | [Resource names](https://cloud.google.com/apis/design/resource_names) of the DeviceUsers in the f... |
| `nextPageToken` | `string` | Token to retrieve the next page of results. Empty if there are no more results. |

### `GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata`

Metadata for SignoutDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata`

Metadata for UpdateClientState LRO.

### `GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata`

Metadata for UpdateDevice LRO.

### `GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata`

Metadata for WipeDevice LRO.

### `GoogleAppsCloudidentityDevicesV1WipeDeviceRequest`

Request message for wiping all data on the device.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |
| `removeResetLock` | `boolean` | Optional. Specifies if a user is able to factory reset a device after a Device Wipe. On iOS, this... |

### `GoogleAppsCloudidentityDevicesV1WipeDeviceResponse`

Response message for wiping all data on the device.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `GoogleAppsCloudidentityDevicesV1Device` | Resultant Device object for the action. Note that asset tags will not be returned in the device o... |

### `GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata`

Metadata for WipeDeviceUser LRO.

### `GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest`

Request message for starting an account wipe on device.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. I... |

### `GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse`

Response message for wiping the user's account from the device.

| Property | Type | Description |
|----------|------|-------------|
| `deviceUser` | `GoogleAppsCloudidentityDevicesV1DeviceUser` | Resultant DeviceUser object for the action. |

### `Group`

A group within the Cloud Identity Groups API. A `Group` is a collection of entities, where each entity is either a user, another group, or a service account.

| Property | Type | Description |
|----------|------|-------------|
| `additionalGroupKeys` | `array<EntityKey>` | Output only. Additional group keys associated with the Group. |
| `createTime` | `string` | Output only. The time when the `Group` was created. |
| `description` | `string` | An extended description to help users determine the purpose of a `Group`. Must not be longer than... |
| `displayName` | `string` | The display name of the `Group`. |
| `dynamicGroupMetadata` | `DynamicGroupMetadata` | Optional. Dynamic group metadata like queries and status. |
| `groupKey` | `EntityKey` | Required. The `EntityKey` of the `Group`. |
| `labels` | `object` | Required. One or more label entries that apply to the Group. Labels contain a key with an empty v... |
| `name` | `string` | Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Gro... |
| `parent` | `string` | Required. Immutable. The resource name of the entity under which this `Group` resides in the Clou... |
| `updateTime` | `string` | Output only. The time when the `Group` was last updated. |

### `GroupRelation`

Message representing a transitive group of a user or a group.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name for this group. |
| `group` | `string` | Resource name for this group. |
| `groupKey` | `EntityKey` | Entity key has an id and a namespace. In case of discussion forums, the id will be an email addre... |
| `labels` | `object` | Labels for Group resource. |
| `relationType` | `string` | The relation between the member and the transitive group. |
| `roles` | `array<TransitiveMembershipRole>` | Membership roles of the member for the group. |

### `IdpCredential`

Credential for verifying signatures produced by the Identity Provider.

| Property | Type | Description |
|----------|------|-------------|
| `dsaKeyInfo` | `DsaPublicKeyInfo` | Output only. Information of a DSA public key. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the credential. |
| `rsaKeyInfo` | `RsaPublicKeyInfo` | Output only. Information of a RSA public key. |
| `updateTime` | `string` | Output only. Time when the `IdpCredential` was last updated. |

### `InboundOidcSsoProfile`

An [OIDC](https://openid.net/developers/how-connect-works/) federation between a Google enterprise customer and an OIDC identity provider.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Immutable. The customer. For example: `customers/C0123abc`. |
| `displayName` | `string` | Human-readable name of the OIDC SSO profile. |
| `idpConfig` | `OidcIdpConfig` | OIDC identity provider configuration. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the OIDC SSO... |
| `rpConfig` | `OidcRpConfig` | OIDC relying party (RP) configuration for this OIDC SSO profile. These are the RP details provide... |

### `InboundSamlSsoProfile`

A [SAML 2.0](https://www.oasis-open.org/standards#samlv2.0) federation between a Google enterprise customer and a SAML identity provider.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Immutable. The customer. For example: `customers/C0123abc`. |
| `displayName` | `string` | Human-readable name of the SAML SSO profile. |
| `idpConfig` | `SamlIdpConfig` | SAML identity provider configuration. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO... |
| `spConfig` | `SamlSpConfig` | SAML service provider configuration for this SAML SSO profile. These are the service provider det... |

### `InboundSsoAssignment`

Targets with "set" SSO assignments and their respective assignments.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Immutable. The customer. For example: `customers/C0123abc`. |
| `name` | `string` | Output only. [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound ... |
| `oidcSsoInfo` | `OidcSsoInfo` | OpenID Connect SSO details. Must be set if and only if `sso_mode` is set to `OIDC_SSO`. |
| `rank` | `integer` | Must be zero (which is the default value so it can be omitted) for assignments with `target_org_u... |
| `samlSsoInfo` | `SamlSsoInfo` | SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`. |
| `signInBehavior` | `SignInBehavior` | Assertions about users assigned to an IdP will always be accepted from that IdP. This controls wh... |
| `ssoMode` | `string` | Inbound SSO behavior. |
| `targetGroup` | `string` | Immutable. Must be of the form `groups/{group}`. |
| `targetOrgUnit` | `string` | Immutable. Must be of the form `orgUnits/{org_unit}`. |

### `IsInvitableUserResponse`

Response for IsInvitableUser RPC.

| Property | Type | Description |
|----------|------|-------------|
| `isInvitableUser` | `boolean` | Returns true if the email address is invitable. |

### `ListGroupsResponse`

Response message for ListGroups operation.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<Group>` | Groups returned in response to list request. The results are not sorted. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results available for l... |

### `ListIdpCredentialsResponse`

Response of the InboundSamlSsoProfilesService.ListIdpCredentials method.

| Property | Type | Description |
|----------|------|-------------|
| `idpCredentials` | `array<IdpCredential>` | The IdpCredentials from the specified InboundSamlSsoProfile. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListInboundOidcSsoProfilesResponse`

Response of the InboundOidcSsoProfilesService.ListInboundOidcSsoProfiles method.

| Property | Type | Description |
|----------|------|-------------|
| `inboundOidcSsoProfiles` | `array<InboundOidcSsoProfile>` | List of InboundOidcSsoProfiles. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListInboundSamlSsoProfilesResponse`

Response of the InboundSamlSsoProfilesService.ListInboundSamlSsoProfiles method.

| Property | Type | Description |
|----------|------|-------------|
| `inboundSamlSsoProfiles` | `array<InboundSamlSsoProfile>` | List of InboundSamlSsoProfiles. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListInboundSsoAssignmentsResponse`

Response of the InboundSsoAssignmentsService.ListInboundSsoAssignments method.

| Property | Type | Description |
|----------|------|-------------|
| `inboundSsoAssignments` | `array<InboundSsoAssignment>` | The assignments. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListMembershipsResponse`

The response message for MembershipsService.ListMemberships.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<Membership>` | The `Membership`s under the specified `parent`. |
| `nextPageToken` | `string` | A continuation token to retrieve the next page of results, or empty if there are no more results ... |

### `ListPoliciesResponse`

The response message for PoliciesService.ListPolicies.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If this field is empty, there are no s... |
| `policies` | `array<Policy>` | The results |

### `ListUserInvitationsResponse`

Response message for UserInvitation listing request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the next page. If not empty, indicates that there may be more `UserInvitation` reso... |
| `userInvitations` | `array<UserInvitation>` | The list of UserInvitation resources. |

### `LookupGroupNameResponse`

The response message for GroupsService.LookupGroupName.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The [resource name](https://cloud.google.com/apis/design/resource_names) of the looked-up `Group`. |

### `LookupMembershipNameResponse`

The response message for MembershipsService.LookupMembershipName.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The [resource name](https://cloud.google.com/apis/design/resource_names) of the looked-up `Member... |

### `MemberRelation`

Message representing a transitive membership of a group.

| Property | Type | Description |
|----------|------|-------------|
| `member` | `string` | Resource name for this member. |
| `preferredMemberKey` | `array<EntityKey>` | Entity key has an id and a namespace. In case of discussion forums, the id will be an email addre... |
| `relationType` | `string` | The relation between the group and the transitive member. |
| `roles` | `array<TransitiveMembershipRole>` | The membership role details (i.e name of role and expiry time). |

### `MemberRestriction`

The definition of MemberRestriction

| Property | Type | Description |
|----------|------|-------------|
| `evaluation` | `RestrictionEvaluation` | The evaluated state of this restriction on a group. |
| `query` | `string` | Member Restriction as defined by CEL expression. Supported restrictions are: `member.customer_id`... |

### `Membership`

A membership within the Cloud Identity Groups API. A `Membership` defines a relationship between a `Group` and an entity belonging to that `Group`, referred to as a "member".

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the `Membership` was created. |
| `deliverySetting` | `string` | Output only. Delivery setting associated with the membership. |
| `name` | `string` | Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Mem... |
| `preferredMemberKey` | `EntityKey` | Required. Immutable. The `EntityKey` of the member. |
| `roles` | `array<MembershipRole>` | The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `Membe... |
| `type` | `string` | Output only. The type of the membership. |
| `updateTime` | `string` | Output only. The time when the `Membership` was last updated. |

### `MembershipAdjacencyList`

Membership graph's path information as an adjacency list.

| Property | Type | Description |
|----------|------|-------------|
| `edges` | `array<Membership>` | Each edge contains information about the member that belongs to this group. Note: Fields returned... |
| `group` | `string` | Resource name of the group that the members belong to. |

### `MembershipRelation`

Message containing membership relation.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | An extended description to help users determine the purpose of a `Group`. |
| `displayName` | `string` | The display name of the `Group`. |
| `group` | `string` | The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be... |
| `groupKey` | `EntityKey` | The `EntityKey` of the `Group`. |
| `labels` | `object` | One or more label entries that apply to the Group. Currently supported labels contain a key with ... |
| `membership` | `string` | The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Sha... |
| `roles` | `array<MembershipRole>` | The `MembershipRole`s that apply to the `Membership`. |

### `MembershipRole`

A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.

| Property | Type | Description |
|----------|------|-------------|
| `expiryDetail` | `ExpiryDetail` | The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `Membe... |
| `name` | `string` | The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`. |
| `restrictionEvaluations` | `RestrictionEvaluations` | Evaluations of restrictions applied to parent group on this membership. |

### `MembershipRoleRestrictionEvaluation`

The evaluated state of this restriction.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The current state of the restriction |

### `ModifyMembershipRolesRequest`

The request message for MembershipsService.ModifyMembershipRoles.

| Property | Type | Description |
|----------|------|-------------|
| `addRoles` | `array<MembershipRole>` | The `MembershipRole`s to be added. Adding or removing roles in the same request as updating roles... |
| `removeRoles` | `array<string>` | The `name`s of the `MembershipRole`s to be removed. Adding or removing roles in the same request ... |
| `updateRolesParams` | `array<UpdateMembershipRolesParams>` | The `MembershipRole`s to be updated. Updating roles in the same request as adding or removing rol... |

### `ModifyMembershipRolesResponse`

The response message for MembershipsService.ModifyMembershipRoles.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `Membership` | The `Membership` resource after modifying its `MembershipRole`s. |

### `OidcIdpConfig`

OIDC IDP (identity provider) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `changePasswordUri` | `string` | The **Change Password URL** of the identity provider. Users will be sent to this URL when changin... |
| `issuerUri` | `string` | Required. The Issuer identifier for the IdP. Must be a URL. The discovery URL will be derived fro... |

### `OidcRpConfig`

OIDC RP (relying party) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | OAuth2 client ID for OIDC. |
| `clientSecret` | `string` | Input only. OAuth2 client secret for OIDC. |
| `redirectUris` | `array<string>` | Output only. The URL(s) that this client may use in authentication requests. |

### `OidcSsoInfo`

Details that are applicable when `sso_mode` is set to `OIDC_SSO`.

| Property | Type | Description |
|----------|------|-------------|
| `inboundOidcSsoProfile` | `string` | Required. Name of the `InboundOidcSsoProfile` to use. Must be of the form `inboundOidcSsoProfiles... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Policy`

A Policy resource binds an instance of a single Setting with the scope of a PolicyQuery. The Setting instance will be applied to all entities that satisfy the query.

| Property | Type | Description |
|----------|------|-------------|
| `customer` | `string` | Immutable. Customer that the Policy belongs to. The value is in the format 'customers/{customerId... |
| `name` | `string` | Output only. Identifier. The [resource name](https://cloud.google.com/apis/design/resource_names)... |
| `policyQuery` | `PolicyQuery` | Required. The PolicyQuery the Setting applies to. |
| `setting` | `Setting` | Required. The Setting configured by this Policy. |
| `type` | `string` | Output only. The type of the policy. |

### `PolicyQuery`

PolicyQuery

| Property | Type | Description |
|----------|------|-------------|
| `group` | `string` | Immutable. The group that the query applies to. This field is only set if there is a single value... |
| `orgUnit` | `string` | Required. Immutable. Non-empty default. The OrgUnit the query applies to. This field is only set ... |
| `query` | `string` | Immutable. The CEL query that defines which entities the Policy applies to (ex. a User entity). F... |
| `sortOrder` | `number` | Output only. The decimal sort order of this PolicyQuery. The value is relative to all other polic... |

### `RestrictionEvaluation`

The evaluated state of this restriction.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The current state of the restriction |

### `RestrictionEvaluations`

Evaluations of restrictions applied to parent group on this membership.

| Property | Type | Description |
|----------|------|-------------|
| `memberRestrictionEvaluation` | `MembershipRoleRestrictionEvaluation` | Evaluation of the member restriction applied to this membership. Empty if the user lacks permissi... |

### `RsaPublicKeyInfo`

Information of a RSA public key.

| Property | Type | Description |
|----------|------|-------------|
| `keySize` | `integer` | Key size in bits (size of the modulus). |

### `SamlIdpConfig`

SAML IDP (identity provider) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `changePasswordUri` | `string` | The **Change Password URL** of the identity provider. Users will be sent to this URL when changin... |
| `entityId` | `string` | Required. The SAML **Entity ID** of the identity provider. |
| `logoutRedirectUri` | `string` | The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user clicks the ... |
| `singleSignOnServiceUri` | `string` | Required. The `SingleSignOnService` endpoint location (sign-in page URL) of the identity provider... |

### `SamlSpConfig`

SAML SP (service provider) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `assertionConsumerServiceUri` | `string` | Output only. The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated l... |
| `entityId` | `string` | Output only. The SAML **Entity ID** for this service provider. |

### `SamlSsoInfo`

Details that are applicable when `sso_mode` == `SAML_SSO`.

| Property | Type | Description |
|----------|------|-------------|
| `inboundSamlSsoProfile` | `string` | Required. Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles... |

### `SearchDirectGroupsResponse`

The response message for MembershipsService.SearchDirectGroups.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<MembershipRelation>` | List of direct groups satisfying the query. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results available for l... |

### `SearchGroupsResponse`

The response message for GroupsService.SearchGroups.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<Group>` | The `Group` resources that match the search query. |
| `nextPageToken` | `string` | A continuation token to retrieve the next page of results, or empty if there are no more results ... |

### `SearchTransitiveGroupsResponse`

The response message for MembershipsService.SearchTransitiveGroups.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<GroupRelation>` | List of transitive groups satisfying the query. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results available for l... |

### `SearchTransitiveMembershipsResponse`

The response message for MembershipsService.SearchTransitiveMemberships.

| Property | Type | Description |
|----------|------|-------------|
| `memberships` | `array<MemberRelation>` | List of transitive members satisfying the query. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results. |

### `SecuritySettings`

The definition of security settings.

| Property | Type | Description |
|----------|------|-------------|
| `memberRestriction` | `MemberRestriction` | The Member Restriction value |
| `name` | `string` | Output only. The resource name of the security settings. Shall be of the form `groups/{group_id}/... |

### `SendUserInvitationRequest`

A request to send email for inviting target user corresponding to the UserInvitation.

### `Setting`

Setting

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. Immutable. The type of the Setting. . |
| `value` | `object` | Required. The value of the Setting. |

### `SignInBehavior`

Controls sign-in behavior.

| Property | Type | Description |
|----------|------|-------------|
| `redirectCondition` | `string` | When to redirect sign-ins to the IdP. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TransitiveMembershipRole`

Message representing the role of a TransitiveMembership.

| Property | Type | Description |
|----------|------|-------------|
| `role` | `string` | TransitiveMembershipRole in string format. Currently supported TransitiveMembershipRoles: `"MEMBE... |

### `UpdateGroupMetadata`

Metadata for UpdateGroup LRO.

### `UpdateInboundOidcSsoProfileOperationMetadata`

LRO response metadata for InboundOidcSsoProfilesService.UpdateInboundOidcSsoProfile.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | State of this Operation Will be "awaiting-multi-party-approval" when the operation is deferred du... |

### `UpdateInboundSamlSsoProfileOperationMetadata`

LRO response metadata for InboundSamlSsoProfilesService.UpdateInboundSamlSsoProfile.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | State of this Operation Will be "awaiting-multi-party-approval" when the operation is deferred du... |

### `UpdateInboundSsoAssignmentOperationMetadata`

LRO response metadata for InboundSsoAssignmentsService.UpdateInboundSsoAssignment.

### `UpdateMembershipMetadata`

Metadata for UpdateMembership LRO.

### `UpdateMembershipRolesParams`

The details of an update to a `MembershipRole`.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | The fully-qualified names of fields to update. May only contain the field `expiry_detail.expire_t... |
| `membershipRole` | `MembershipRole` | The `MembershipRole`s to be updated. Only `MEMBER` `MembershipRole` can currently be updated. |

### `UserInvitation`

The `UserInvitation` resource represents an email that can be sent to an unmanaged user account inviting them to join the customer's Google Workspace or Cloud Identity account. An unmanaged account shares an email address domain with the Google Workspace or Cloud Identity account but is not managed by it yet. If the user accepts the `UserInvitation`, the user account will become managed.

| Property | Type | Description |
|----------|------|-------------|
| `mailsSentCount` | `string` | Number of invitation emails sent to the user. |
| `name` | `string` | Shall be of the form `customers/{customer}/userinvitations/{user_email_address}`. |
| `state` | `string` | State of the `UserInvitation`. |
| `updateTime` | `string` | Time when the `UserInvitation` was last updated. |

