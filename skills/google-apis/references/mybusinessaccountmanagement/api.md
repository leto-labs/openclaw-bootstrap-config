# My Business Account Management API - API Reference

**Version**: `v1` | **Methods**: 16 | **Schemas**: 14

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinessaccountmanagement.locations.transfer` | POST | `v1/{+name}:transfer` | Moves a location from an account that the user owns to another account that the same user adminis... |
| `mybusinessaccountmanagement.locations.admins.list` | GET | `v1/{+parent}/admins` | Lists all of the admins for the specified location. |
| `mybusinessaccountmanagement.locations.admins.create` | POST | `v1/{+parent}/admins` | Invites the specified user to become an administrator for the specified location. The invitee mus... |
| `mybusinessaccountmanagement.locations.admins.delete` | DELETE | `v1/{+name}` | Removes the specified admin as a manager of the specified location. |
| `mybusinessaccountmanagement.locations.admins.patch` | PATCH | `v1/{+name}` | Updates the Admin for the specified location. Only the AdminRole of the Admin can be updated. |
| `mybusinessaccountmanagement.accounts.list` | GET | `v1/accounts` | Lists all of the accounts for the authenticated user. This includes all accounts that the user ow... |
| `mybusinessaccountmanagement.accounts.get` | GET | `v1/{+name}` | Gets the specified account. Returns `NOT_FOUND` if the account does not exist or if the caller do... |
| `mybusinessaccountmanagement.accounts.create` | POST | `v1/accounts` | Creates an account with the specified name and type under the given parent. - Personal accounts a... |
| `mybusinessaccountmanagement.accounts.patch` | PATCH | `v1/{+name}` | Updates the specified business account. Personal accounts cannot be updated using this method. |
| `mybusinessaccountmanagement.accounts.invitations.accept` | POST | `v1/{+name}:accept` | Accepts the specified invitation. |
| `mybusinessaccountmanagement.accounts.invitations.decline` | POST | `v1/{+name}:decline` | Declines the specified invitation. |
| `mybusinessaccountmanagement.accounts.invitations.list` | GET | `v1/{+parent}/invitations` | Lists pending invitations for the specified account. |
| `mybusinessaccountmanagement.accounts.admins.list` | GET | `v1/{+parent}/admins` | Lists the admins for the specified account. |
| `mybusinessaccountmanagement.accounts.admins.create` | POST | `v1/{+parent}/admins` | Invites the specified user to become an administrator for the specified account. The invitee must... |
| `mybusinessaccountmanagement.accounts.admins.delete` | DELETE | `v1/{+name}` | Removes the specified admin from the specified account. |
| `mybusinessaccountmanagement.accounts.admins.patch` | PATCH | `v1/{+name}` | Updates the Admin for the specified Account Admin. |

### `mybusinessaccountmanagement.locations.transfer`

**POST** `v1/{+name}:transfer`

Moves a location from an account that the user owns to another account that the same user administers. The user must be an owner of the account the location is currently associated with and must also be at least a manager of the destination account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the location to transfer. `locations/{location_id}`. |

**Request body**: `TransferLocationRequest`

**Response**: `Empty`

```typescript
const res = await mybusinessaccountmanagement.locations.transfer({
  // parameters
});
```

---

### `mybusinessaccountmanagement.locations.admins.list`

**GET** `v1/{+parent}/admins`

Lists all of the admins for the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the location to list admins of. `locations/{location_id}/admins`. |

**Response**: `ListLocationAdminsResponse`

```typescript
const res = await mybusinessaccountmanagement.admins.list({
  // parameters
});
```

---

### `mybusinessaccountmanagement.locations.admins.create`

**POST** `v1/{+parent}/admins`

Invites the specified user to become an administrator for the specified location. The invitee must accept the invitation in order to be granted access to the location. See AcceptInvitation to programmatically accept an invitation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location this admin is created for. `locations/{location_id}/admins`. |

**Request body**: `Admin`

**Response**: `Admin`

```typescript
const res = await mybusinessaccountmanagement.admins.create({
  // parameters
});
```

---

### `mybusinessaccountmanagement.locations.admins.delete`

**DELETE** `v1/{+name}`

Removes the specified admin as a manager of the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the admin to remove from the location. |

**Response**: `Empty`

```typescript
const res = await mybusinessaccountmanagement.admins.delete({
  // parameters
});
```

---

### `mybusinessaccountmanagement.locations.admins.patch`

**PATCH** `v1/{+name}`

Updates the Admin for the specified location. Only the AdminRole of the Admin can be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/admins/{admin_id}` For ... |
| `updateMask` | `string` | query | No | Required. The specific fields that should be updated. The only editable field is role. |

**Request body**: `Admin`

**Response**: `Admin`

```typescript
const res = await mybusinessaccountmanagement.admins.patch({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.list`

**GET** `v1/accounts`

Lists all of the accounts for the authenticated user. This includes all accounts that the user owns, as well as any accounts for which the user has management rights.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Optional. A filter constraining the accounts to return. The response includes only entries that match the filter. If ... |
| `pageSize` | `integer` | query | No | Optional. How many accounts to fetch per page. The default and maximum is 20. |
| `pageToken` | `string` | query | No | Optional. If specified, the next page of accounts is retrieved. The `pageToken` is returned when a call to `accounts.... |
| `parentAccount` | `string` | query | No | Optional. The resource name of the account for which the list of directly accessible accounts is to be retrieved. Thi... |

**Response**: `ListAccountsResponse`

```typescript
const res = await mybusinessaccountmanagement.accounts.list({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.get`

**GET** `v1/{+name}`

Gets the specified account. Returns `NOT_FOUND` if the account does not exist or if the caller does not have access rights to it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the account to fetch. |

**Response**: `Account`

```typescript
const res = await mybusinessaccountmanagement.accounts.get({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.create`

**POST** `v1/accounts`

Creates an account with the specified name and type under the given parent. - Personal accounts and Organizations cannot be created. - User Groups cannot be created with a Personal account as primary owner. - Location Groups cannot be created with a primary owner of a Personal account if the Personal account is in an Organization. - Location Groups cannot own Location Groups.

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await mybusinessaccountmanagement.accounts.create({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.patch`

**PATCH** `v1/{+name}`

Updates the specified business account. Personal accounts cannot be updated using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name, in the format `accounts/{account_id}`. |
| `updateMask` | `string` | query | No | Required. The specific fields that should be updated. The only editable field is `accountName`. |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated without actually updating the account. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await mybusinessaccountmanagement.accounts.patch({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.invitations.accept`

**POST** `v1/{+name}:accept`

Accepts the specified invitation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the invitation that is being accepted. `accounts/{account_id}/invitations/{invitation_id}` |

**Request body**: `AcceptInvitationRequest`

**Response**: `Empty`

```typescript
const res = await mybusinessaccountmanagement.invitations.accept({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.invitations.decline`

**POST** `v1/{+name}:decline`

Declines the specified invitation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the account invitation that is being declined. `accounts/{account_id}/invitations/{invitation_id}` |

**Request body**: `DeclineInvitationRequest`

**Response**: `Empty`

```typescript
const res = await mybusinessaccountmanagement.invitations.decline({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.invitations.list`

**GET** `v1/{+parent}/invitations`

Lists pending invitations for the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the account from which the list of invitations is being retrieved. `accounts/{account_id}/invit... |
| `filter` | `string` | query | No | Optional. Filtering the response is supported via the Invitation.target_type field. |

**Response**: `ListInvitationsResponse`

```typescript
const res = await mybusinessaccountmanagement.invitations.list({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.admins.list`

**GET** `v1/{+parent}/admins`

Lists the admins for the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the account from which to retrieve a list of admins. `accounts/{account_id}/admins`. |

**Response**: `ListAccountAdminsResponse`

```typescript
const res = await mybusinessaccountmanagement.admins.list({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.admins.create`

**POST** `v1/{+parent}/admins`

Invites the specified user to become an administrator for the specified account. The invitee must accept the invitation in order to be granted access to the account. See AcceptInvitation to programmatically accept an invitation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the account this admin is created for. `accounts/{account_id}`. |

**Request body**: `Admin`

**Response**: `Admin`

```typescript
const res = await mybusinessaccountmanagement.admins.create({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.admins.delete`

**DELETE** `v1/{+name}`

Removes the specified admin from the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the admin to remove from the account. `accounts/{account_id}/admins/{admin_id}`. |

**Response**: `Empty`

```typescript
const res = await mybusinessaccountmanagement.admins.delete({
  // parameters
});
```

---

### `mybusinessaccountmanagement.accounts.admins.patch`

**PATCH** `v1/{+name}`

Updates the Admin for the specified Account Admin.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/admins/{admin_id}` For ... |
| `updateMask` | `string` | query | No | Required. The specific fields that should be updated. The only editable field is role. |

**Request body**: `Admin`

**Response**: `Admin`

```typescript
const res = await mybusinessaccountmanagement.admins.patch({
  // parameters
});
```

---

## Schemas

### `AcceptInvitationRequest`

Request message for AccessControl.AcceptInvitation.

### `Account`

An account is a container for your location. If you are the only user who manages locations for your business, you can use your personal Google Account. To share management of locations with multiple users, [create a business account] (https://support.google.com/business/answer/6085339?ref_topic=6085325).

| Property | Type | Description |
|----------|------|-------------|
| `accountName` | `string` | Required. The name of the account. For an account of type `PERSONAL`, this is the first and last ... |
| `accountNumber` | `string` | Output only. Account reference number if provisioned. |
| `name` | `string` | Immutable. The resource name, in the format `accounts/{account_id}`. |
| `organizationInfo` | `OrganizationInfo` | Output only. Additional info for an organization. This is populated only for an organization acco... |
| `permissionLevel` | `string` | Output only. Specifies the permission level the user has for this account. |
| `primaryOwner` | `string` | Required. Input only. The resource name of the account which will be the primary owner of the acc... |
| `role` | `string` | Output only. Specifies the AccountRole of this account. |
| `type` | `string` | Required. Contains the type of account. Accounts of type PERSONAL and ORGANIZATION cannot be crea... |
| `verificationState` | `string` | Output only. If verified, future locations that are created are automatically connected to Google... |
| `vettedState` | `string` | Output only. Indicates whether the account is vetted by Google. A vetted account is able to verif... |

### `Admin`

An administrator of an Account or a location.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `string` | Immutable. The name of the Account resource that this Admin refers to. Used when calling location... |
| `admin` | `string` | Optional. The name of the admin. When making the initial invitation, this is the invitee's email ... |
| `name` | `string` | Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/adm... |
| `pendingInvitation` | `boolean` | Output only. Indicates whether this admin has a pending invitation for the specified resource. |
| `role` | `string` | Required. Specifies the role that this admin uses with the specified Account or Location. |

### `DeclineInvitationRequest`

Request message for AccessControl.DeclineInvitation.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Invitation`

Represents a pending invitation.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The resource name for the invitation. `accounts/{account_id}/invitations/{invitation_id}`. |
| `role` | `string` | Output only. The invited role on the account. |
| `targetAccount` | `Account` | The sparsely populated account this invitation is for. |
| `targetLocation` | `TargetLocation` | The target location this invitation is for. |
| `targetType` | `string` | Output only. Specifies which target types should appear in the response. |

### `ListAccountAdminsResponse`

Response message for AccessControl.ListAccountAdmins.

| Property | Type | Description |
|----------|------|-------------|
| `accountAdmins` | `array<Admin>` | A collection of Admin instances. |

### `ListAccountsResponse`

Response message for Accounts.ListAccounts.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | A collection of accounts to which the user has access. The personal account of the user doing the... |
| `nextPageToken` | `string` | If the number of accounts exceeds the requested page size, this field is populated with a token t... |

### `ListInvitationsResponse`

Response message for AccessControl.ListInvitations.

| Property | Type | Description |
|----------|------|-------------|
| `invitations` | `array<Invitation>` | A collection of invitations that are pending for the account. The number of invitations listed he... |

### `ListLocationAdminsResponse`

Response message for AccessControl.ListLocationAdmins.

| Property | Type | Description |
|----------|------|-------------|
| `admins` | `array<Admin>` | A collection of Admins. |

### `OrganizationInfo`

Additional information stored for an organization.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `PostalAddress` | Output only. The postal address for the account. |
| `phoneNumber` | `string` | Output only. The contact number for the organization. |
| `registeredDomain` | `string` | Output only. The registered domain for the account. |

### `PostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `TargetLocation`

Represents a target location for a pending invitation.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address of the location to which the user is invited. |
| `locationName` | `string` | The name of the location to which the user is invited. |

### `TransferLocationRequest`

Request message for AccessControl.TransferLocation.

| Property | Type | Description |
|----------|------|-------------|
| `destinationAccount` | `string` | Required. Name of the account resource to transfer the location to (for example, "accounts/{accou... |

