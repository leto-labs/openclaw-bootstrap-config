# Data Manager API - API Reference

**Version**: `v1` | **Methods**: 22 | **Schemas**: 80

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datamanager.accountTypes.accounts.userLists.create` | POST | `v1/{+parent}/userLists` | Creates a UserList. Authorization Headers: This method supports the following optional headers to... |
| `datamanager.accountTypes.accounts.userLists.get` | GET | `v1/{+name}` | Gets a UserList. Authorization Headers: This method supports the following optional headers to de... |
| `datamanager.accountTypes.accounts.userLists.list` | GET | `v1/{+parent}/userLists` | Lists UserLists. Authorization Headers: This method supports the following optional headers to de... |
| `datamanager.accountTypes.accounts.userLists.delete` | DELETE | `v1/{+name}` | Deletes a UserList. Authorization Headers: This method supports the following optional headers to... |
| `datamanager.accountTypes.accounts.userLists.patch` | PATCH | `v1/{+name}` | Updates a UserList. Authorization Headers: This method supports the following optional headers to... |
| `datamanager.accountTypes.accounts.partnerLinks.search` | GET | `v1/{+parent}/partnerLinks:search` | Searches for all partner links to and from a given account. Authorization Headers: This method su... |
| `datamanager.accountTypes.accounts.partnerLinks.delete` | DELETE | `v1/{+name}` | Deletes a partner link for the given account. Authorization Headers: This method supports the fol... |
| `datamanager.accountTypes.accounts.partnerLinks.create` | POST | `v1/{+parent}/partnerLinks` | Creates a partner link for the given account. Authorization Headers: This method supports the fol... |
| `datamanager.accountTypes.accounts.userListDirectLicenses.list` | GET | `v1/{+parent}/userListDirectLicenses` | Lists all user list direct licenses owned by the parent account. This feature is only available t... |
| `datamanager.accountTypes.accounts.userListDirectLicenses.create` | POST | `v1/{+parent}/userListDirectLicenses` | Creates a user list direct license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListDirectLicenses.get` | GET | `v1/{+name}` | Retrieves a user list direct license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListDirectLicenses.patch` | PATCH | `v1/{+name}` | Updates a user list direct license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListGlobalLicenses.list` | GET | `v1/{+parent}/userListGlobalLicenses` | Lists all user list global licenses owned by the parent account. This feature is only available t... |
| `datamanager.accountTypes.accounts.userListGlobalLicenses.patch` | PATCH | `v1/{+name}` | Updates a user list global license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListGlobalLicenses.get` | GET | `v1/{+name}` | Retrieves a user list global license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListGlobalLicenses.create` | POST | `v1/{+parent}/userListGlobalLicenses` | Creates a user list global license. This feature is only available to data partners. |
| `datamanager.accountTypes.accounts.userListGlobalLicenses.userListGlobalLicenseCustomerInfos.list` | GET | `v1/{+parent}/userListGlobalLicenseCustomerInfos` | Lists all customer info for a user list global license. This feature is only available to data pa... |
| `datamanager.accountTypes.accounts.insights.retrieve` | POST | `v1/{+parent}/insights:retrieve` | Retrieves marketing data insights for a given user list. This feature is only available to data p... |
| `datamanager.requestStatus.retrieve` | GET | `v1/requestStatus:retrieve` | Gets the status of a request given request id. |
| `datamanager.audienceMembers.ingest` | POST | `v1/audienceMembers:ingest` | Uploads a list of AudienceMember resources to the provided Destination. |
| `datamanager.audienceMembers.remove` | POST | `v1/audienceMembers:remove` | Removes a list of AudienceMember resources from the provided Destination. |
| `datamanager.events.ingest` | POST | `v1/events:ingest` | Uploads a list of Event resources from the provided Destination. |

### `datamanager.accountTypes.accounts.userLists.create`

**POST** `v1/{+parent}/userLists`

Creates a UserList. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account where this user list will be created. Format: accountTypes/{account_type}/accounts/{acco... |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated but not executed. |

**Request body**: `UserList`

**Response**: `UserList`

```typescript
const res = await datamanager.userLists.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userLists.get`

**GET** `v1/{+name}`

Gets a UserList. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the UserList to retrieve. Format: accountTypes/{account_type}/accounts/{account}/userL... |

**Response**: `UserList`

```typescript
const res = await datamanager.userLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userLists.list`

**GET** `v1/{+parent}/userLists`

Lists UserLists. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account which owns this collection of user lists. Format: accountTypes/{account_type}/accounts/{... |
| `filter` | `string` | query | No | Optional. A [filter string](//google.aip.dev/160). All fields need to be on the left hand side of each condition (for... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of user lists to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserLists` call. Provide this to retrieve the subsequent page. ... |

**Response**: `ListUserListsResponse`

```typescript
const res = await datamanager.userLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userLists.delete`

**DELETE** `v1/{+name}`

Deletes a UserList. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the user list to delete. Format: accountTypes/{account_type}/accounts/{account}/userLists/{user... |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated but not executed. |

**Response**: `Empty`

```typescript
const res = await datamanager.userLists.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userLists.patch`

**PATCH** `v1/{+name}`

Updates a UserList. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the user list. Format: accountTypes/{account_type}/accounts/{account}/userLists/{use... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |
| `validateOnly` | `boolean` | query | No | Optional. If true, the request is validated but not executed. |

**Request body**: `UserList`

**Response**: `UserList`

```typescript
const res = await datamanager.userLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.partnerLinks.search`

**GET** `v1/{+parent}/partnerLinks:search`

Searches for all partner links to and from a given account. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Account to search for partner links. If no `filter` is specified, all partner links where this account is e... |
| `filter` | `string` | query | No | Optional. A [filter string](//google.aip.dev/160). All fields need to be on the left hand side of each condition (for... |
| `pageSize` | `integer` | query | No | The maximum number of partner links to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `SearchPartnerLinks` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `SearchPartnerLinksResponse`

```typescript
const res = await datamanager.partnerLinks.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.partnerLinks.delete`

**DELETE** `v1/{+name}`

Deletes a partner link for the given account. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the partner link to delete. Format: accountTypes/{account_type}/accounts/{account}/par... |

**Response**: `Empty`

```typescript
const res = await datamanager.partnerLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.partnerLinks.create`

**POST** `v1/{+parent}/partnerLinks`

Creates a partner link for the given account. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of partner links. Format: accountTypes/{account_type}/accounts/{acco... |

**Request body**: `PartnerLink`

**Response**: `PartnerLink`

```typescript
const res = await datamanager.partnerLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListDirectLicenses.list`

**GET** `v1/{+parent}/userListDirectLicenses`

Lists all user list direct licenses owned by the parent account. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account whose licenses are being queried. Should be in the format accountTypes/{ACCOUNT_TYPE}/accounts/... |
| `filter` | `string` | query | No | Optional. Filters to apply to the list request. All fields need to be on the left hand side of each condition (for ex... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of licenses to return per page. The service may return fewer than this value. If unspeci... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserListDirectLicense` call. Provide this to retrieve the subse... |

**Response**: `ListUserListDirectLicensesResponse`

```typescript
const res = await datamanager.userListDirectLicenses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListDirectLicenses.create`

**POST** `v1/{+parent}/userListDirectLicenses`

Creates a user list direct license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account that owns the user list being licensed. Should be in the format accountTypes/{ACCOUNT_TYPE}/acc... |

**Request body**: `UserListDirectLicense`

**Response**: `UserListDirectLicense`

```typescript
const res = await datamanager.userListDirectLicenses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListDirectLicenses.get`

**GET** `v1/{+name}`

Retrieves a user list direct license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the user list direct license. |

**Response**: `UserListDirectLicense`

```typescript
const res = await datamanager.userListDirectLicenses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListDirectLicenses.patch`

**PATCH** `v1/{+name}`

Updates a user list direct license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the user list direct license. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. The special character `*` is not supported and an `INVALID_UPDATE_MASK` error... |

**Request body**: `UserListDirectLicense`

**Response**: `UserListDirectLicense`

```typescript
const res = await datamanager.userListDirectLicenses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListGlobalLicenses.list`

**GET** `v1/{+parent}/userListGlobalLicenses`

Lists all user list global licenses owned by the parent account. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account whose licenses are being queried. Should be in the format accountTypes/{ACCOUNT_TYPE}/accounts/... |
| `filter` | `string` | query | No | Optional. Filters to apply to the list request. All fields need to be on the left hand side of each condition (for ex... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of licenses to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserListGlobalLicense` call. Provide this to retrieve the subse... |

**Response**: `ListUserListGlobalLicensesResponse`

```typescript
const res = await datamanager.userListGlobalLicenses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListGlobalLicenses.patch`

**PATCH** `v1/{+name}`

Updates a user list global license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the user list global license. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. The special character `*` is not supported and an `INVALID_UPDATE_MASK` error... |

**Request body**: `UserListGlobalLicense`

**Response**: `UserListGlobalLicense`

```typescript
const res = await datamanager.userListGlobalLicenses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListGlobalLicenses.get`

**GET** `v1/{+name}`

Retrieves a user list global license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the user list global license. |

**Response**: `UserListGlobalLicense`

```typescript
const res = await datamanager.userListGlobalLicenses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListGlobalLicenses.create`

**POST** `v1/{+parent}/userListGlobalLicenses`

Creates a user list global license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account that owns the user list being licensed. Should be in the format accountTypes/{ACCOUNT_TYPE}/acc... |

**Request body**: `UserListGlobalLicense`

**Response**: `UserListGlobalLicense`

```typescript
const res = await datamanager.userListGlobalLicenses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.userListGlobalLicenses.userListGlobalLicenseCustomerInfos.list`

**GET** `v1/{+parent}/userListGlobalLicenseCustomerInfos`

Lists all customer info for a user list global license. This feature is only available to data partners.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The global license whose customer info are being queried. Should be in the format `accountTypes/{ACCOUNT_TY... |
| `filter` | `string` | query | No | Optional. Filters to apply to the list request. All fields need to be on the left hand side of each condition (for ex... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of licenses to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserListDirectLicense` call. Provide this to retrieve the subse... |

**Response**: `ListUserListGlobalLicenseCustomerInfosResponse`

```typescript
const res = await datamanager.userListGlobalLicenseCustomerInfos.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.accountTypes.accounts.insights.retrieve`

**POST** `v1/{+parent}/insights:retrieve`

Retrieves marketing data insights for a given user list. This feature is only available to data partners. Authorization Headers: This method supports the following optional headers to define how the API authorizes access for the request: * `login-account`: (Optional) The resource name of the account where the Google Account of the credentials is a user. If not set, defaults to the account of the request. Format: `accountTypes/{loginAccountType}/accounts/{loginAccountId}` * `linked-account`: (Optional) The resource name of the account with an established product link to the `login-account`. Format: `accountTypes/{linkedAccountType}/accounts/{linkedAccountId}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account that owns the user list. Format: `accountTypes/{account_type}/accounts/{account}` |

**Request body**: `RetrieveInsightsRequest`

**Response**: `RetrieveInsightsResponse`

```typescript
const res = await datamanager.insights.retrieve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.requestStatus.retrieve`

**GET** `v1/requestStatus:retrieve`

Gets the status of a request given request id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `requestId` | `string` | query | No | Required. Required. The request ID of the Data Manager API request. |

**Response**: `RetrieveRequestStatusResponse`

```typescript
const res = await datamanager.requestStatus.retrieve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.audienceMembers.ingest`

**POST** `v1/audienceMembers:ingest`

Uploads a list of AudienceMember resources to the provided Destination.

**Request body**: `IngestAudienceMembersRequest`

**Response**: `IngestAudienceMembersResponse`

```typescript
const res = await datamanager.audienceMembers.ingest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.audienceMembers.remove`

**POST** `v1/audienceMembers:remove`

Removes a list of AudienceMember resources from the provided Destination.

**Request body**: `RemoveAudienceMembersRequest`

**Response**: `RemoveAudienceMembersResponse`

```typescript
const res = await datamanager.audienceMembers.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

### `datamanager.events.ingest`

**POST** `v1/events:ingest`

Uploads a list of Event resources from the provided Destination.

**Request body**: `IngestEventsRequest`

**Response**: `IngestEventsResponse`

```typescript
const res = await datamanager.events.ingest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/datamanager`

---

## Schemas

### `AdIdentifiers`

Identifiers and other information used to match the conversion event with other online activity (such as ad clicks).

| Property | Type | Description |
|----------|------|-------------|
| `gbraid` | `string` | Optional. The click identifier for clicks associated with app events and originating from iOS dev... |
| `gclid` | `string` | Optional. The Google click ID (gclid) associated with this event. |
| `landingPageDeviceInfo` | `DeviceInfo` | Optional. Information gathered about the device being used (if any) at the time of landing onto t... |
| `sessionAttributes` | `string` | Optional. Session attributes for event attribution and modeling. |
| `wbraid` | `string` | Optional. The click identifier for clicks associated with web events and originating from iOS dev... |

### `AddressInfo`

Address information for the user.

| Property | Type | Description |
|----------|------|-------------|
| `familyName` | `string` | Required. Family (last) name of the user, all lowercase, with no punctuation, no leading or trail... |
| `givenName` | `string` | Required. Given (first) name of the user, all lowercase, with no punctuation, no leading or trail... |
| `postalCode` | `string` | Required. The postal code of the user's address. |
| `regionCode` | `string` | Required. The 2-letter region code in ISO-3166-1 alpha-2 of the user's address. |

### `AudienceMember`

The audience member to be operated on.

| Property | Type | Description |
|----------|------|-------------|
| `consent` | `Consent` | Optional. The consent setting for the user. |
| `destinationReferences` | `array<string>` | Optional. Defines which Destination to send the audience member to. |
| `mobileData` | `MobileData` | Data identifying the user's mobile devices. |
| `pairData` | `PairData` | [Publisher Advertiser Identity Reconciliation (PAIR) IDs](//support.google.com/admanager/answer/1... |
| `ppidData` | `PpidData` | Data related to publisher provided identifiers. This feature is only available to data partners. |
| `userData` | `UserData` | User-provided data that identifies the user. |
| `userIdData` | `UserIdData` | Data related to unique identifiers for a user, as defined by the advertiser. |

### `AwsWrappedKeyInfo`

A data encryption key wrapped by an AWS KMS key.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedDek` | `string` | Required. The base64 encoded encrypted data encryption key. |
| `kekUri` | `string` | Required. The URI of the AWS KMS key used to decrypt the DEK. Should be in the format of `arn:{pa... |
| `keyType` | `string` | Required. The type of algorithm used to encrypt the data. |
| `roleArn` | `string` | Required. The Amazon Resource Name of the IAM Role to assume for KMS decryption access. Should be... |

### `Baseline`

Baseline criteria against which insights are compared.

| Property | Type | Description |
|----------|------|-------------|
| `baselineLocation` | `Location` | The baseline location of the request. Baseline location is an OR-list of the requested regions. |
| `locationAutoDetectionEnabled` | `boolean` | If set to true, the service will try to automatically detect the baseline location for insights. |

### `CartData`

The cart data associated with the event.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Item>` | Optional. The list of items associated with the event. |
| `merchantFeedLabel` | `string` | Optional. The Merchant Center feed label associated with the feed of the items. |
| `merchantFeedLanguageCode` | `string` | Optional. The language code in ISO 639-1 associated with the Merchant Center feed of the items.wh... |
| `merchantId` | `string` | Optional. The Merchant Center ID associated with the items. |
| `transactionDiscount` | `number` | Optional. The sum of all discounts associated with the transaction. |

### `Consent`

[Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en) consent settings for the user.

| Property | Type | Description |
|----------|------|-------------|
| `adPersonalization` | `string` | Optional. Represents if the user consents to ad personalization. |
| `adUserData` | `string` | Optional. Represents if the user consents to ad user data. |

### `ContactIdInfo`

Additional information when `CONTACT_ID` is one of the `upload_key_types`.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceType` | `string` | Optional. Immutable. Source of the upload data |
| `matchRatePercentage` | `integer` | Output only. Match rate for customer match user lists. |

### `CustomVariable`

Custom variable for ads conversions.

| Property | Type | Description |
|----------|------|-------------|
| `destinationReferences` | `array<string>` | Optional. Reference string used to determine which of the Event.destination_references the custom... |
| `value` | `string` | Optional. The value to store for the custom variable. |
| `variable` | `string` | Optional. The name of the custom variable to set. If the variable is not found for the given dest... |

### `Destination`

The Google product you're sending data to. For example, a Google Ads account.

| Property | Type | Description |
|----------|------|-------------|
| `linkedAccount` | `ProductAccount` | Optional. An account that the calling user's `login_account` has access to, through an establishe... |
| `loginAccount` | `ProductAccount` | Optional. The account used to make this API call. To add or remove data from the `operating_accou... |
| `operatingAccount` | `ProductAccount` | Required. The account to send the data to or remove the data from. |
| `productDestinationId` | `string` | Required. The object within the product account to ingest into. For example, a Google Ads audienc... |
| `reference` | `string` | Optional. ID for this `Destination` resource, unique within the request. Use to reference this `D... |

### `DeviceInfo`

Information about the device being used (if any) when the event happened.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | Optional. The IP address of the device for the given context. **Note:** Google Ads does not suppo... |
| `userAgent` | `string` | Optional. The user-agent string of the device for the given context. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionInfo`

Encryption information for the data being ingested.

| Property | Type | Description |
|----------|------|-------------|
| `awsWrappedKeyInfo` | `AwsWrappedKeyInfo` | Amazon Web Services wrapped key information. |
| `gcpWrappedKeyInfo` | `GcpWrappedKeyInfo` | Google Cloud Platform wrapped key information. |

### `ErrorCount`

The error count for a given error reason.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The error reason of the failed records. |
| `recordCount` | `string` | The count of records that failed to upload for a given reason. |

### `ErrorInfo`

Error counts for each type of error.

| Property | Type | Description |
|----------|------|-------------|
| `errorCounts` | `array<ErrorCount>` | A list of errors and counts per error reason. May not be populated in all cases. |

### `Event`

An event representing a user interaction with an advertiser's website or app.

| Property | Type | Description |
|----------|------|-------------|
| `adIdentifiers` | `AdIdentifiers` | Optional. Identifiers and other information used to match the conversion event with other online ... |
| `additionalEventParameters` | `array<EventParameter>` | Optional. A bucket of any [event parameters](https://developers.google.com/analytics/devguides/co... |
| `cartData` | `CartData` | Optional. Information about the transaction and items associated with the event. |
| `clientId` | `string` | Optional. A unique identifier for the user instance of a web client for this GA4 web stream. |
| `consent` | `Consent` | Optional. Information about whether the associated user has provided different types of consent. |
| `conversionValue` | `number` | Optional. The conversion value associated with the event, for value-based conversions. |
| `currency` | `string` | Optional. The currency code associated with all monetary values within this event. |
| `customVariables` | `array<CustomVariable>` | Optional. Additional key/value pair information to send to the conversion containers (conversion ... |
| `destinationReferences` | `array<string>` | Optional. Reference string used to determine the destination. If empty, the event will be sent to... |
| `eventDeviceInfo` | `DeviceInfo` | Optional. Information gathered about the device being used (if any) when the event happened. |
| `eventName` | `string` | Optional. The name of the event. Required for GA4 events. |
| `eventSource` | `string` | Optional. Signal for where the event happened (web, app, in-store, etc.). |
| `eventTimestamp` | `string` | Required. The time the event occurred. |
| `experimentalFields` | `array<ExperimentalField>` | Optional. A list of key/value pairs for experimental fields that may eventually be promoted to be... |
| `lastUpdatedTimestamp` | `string` | Optional. The last time the event was updated. |
| `transactionId` | `string` | Optional. The unique identifier for this event. Required for conversions using multiple data sour... |
| `userData` | `UserData` | Optional. Pieces of user provided data, representing the user the event is associated with. |
| `userId` | `string` | Optional. A unique identifier for a user, as defined by the advertiser. |
| `userProperties` | `UserProperties` | Optional. Advertiser-assessed information about the user at the time that the event happened. |

### `EventParameter`

Event parameter for GA4 events.

| Property | Type | Description |
|----------|------|-------------|
| `parameterName` | `string` | Required. The name of the parameter to use. |
| `value` | `string` | Required. The string representation of the value of the parameter to set. |

### `ExperimentalField`

Experimental field representing unofficial fields.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | Optional. The name of the field to use. |
| `value` | `string` | Optional. The value the field to set. |

### `GcpWrappedKeyInfo`

Information about the Google Cloud Platform wrapped key.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedDek` | `string` | Required. The base64 encoded encrypted data encryption key. |
| `kekUri` | `string` | Required. Google Cloud Platform [Cloud Key Management Service resource ID](//cloud.google.com/kms... |
| `keyType` | `string` | Required. The type of algorithm used to encrypt the data. |
| `wipProvider` | `string` | Required. The [Workload Identity](//cloud.google.com/iam/docs/workload-identity-federation) pool ... |

### `IngestAudienceMembersRequest`

Request to upload audience members to the provided destinations. Returns an IngestAudienceMembersResponse.

| Property | Type | Description |
|----------|------|-------------|
| `audienceMembers` | `array<AudienceMember>` | Required. The list of users to send to the specified destinations. At most 10000 AudienceMember r... |
| `consent` | `Consent` | Optional. Request-level consent to apply to all users in the request. User-level consent override... |
| `destinations` | `array<Destination>` | Required. The list of destinations to send the audience members to. |
| `encoding` | `string` | Optional. Required for UserData uploads. The encoding type of the user identifiers. For hashed us... |
| `encryptionInfo` | `EncryptionInfo` | Optional. Encryption information for UserData uploads. If not set, it's assumed that uploaded ide... |
| `termsOfService` | `TermsOfService` | Optional. The terms of service that the user has accepted/rejected. |
| `validateOnly` | `boolean` | Optional. For testing purposes. If `true`, the request is validated but not executed. Only errors... |

### `IngestAudienceMembersResponse`

Response from the IngestAudienceMembersRequest.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | The auto-generated ID of the request. |

### `IngestAudienceMembersStatus`

The status of the ingest audience members request.

| Property | Type | Description |
|----------|------|-------------|
| `mobileDataIngestionStatus` | `IngestMobileDataStatus` | The status of the mobile data ingestion to the destination. |
| `pairDataIngestionStatus` | `IngestPairDataStatus` | The status of the pair data ingestion to the destination. |
| `ppidDataIngestionStatus` | `IngestPpidDataStatus` | The status of the ppid data ingestion to the destination. |
| `userDataIngestionStatus` | `IngestUserDataStatus` | The status of the user data ingestion to the destination. |
| `userIdDataIngestionStatus` | `IngestUserIdDataStatus` | The status of the user id data ingestion to the destination. |

### `IngestEventsRequest`

Request to upload audience members to the provided destinations. Returns an IngestEventsResponse.

| Property | Type | Description |
|----------|------|-------------|
| `consent` | `Consent` | Optional. Request-level consent to apply to all users in the request. User-level consent override... |
| `destinations` | `array<Destination>` | Required. The list of destinations to send the events to. |
| `encoding` | `string` | Optional. Required for UserData uploads. The encoding type of the user identifiers. For hashed us... |
| `encryptionInfo` | `EncryptionInfo` | Optional. Encryption information for UserData uploads. If not set, it's assumed that uploaded ide... |
| `events` | `array<Event>` | Required. The list of events to send to the specified destinations. At most 2000 Event resources ... |
| `validateOnly` | `boolean` | Optional. For testing purposes. If `true`, the request is validated but not executed. Only errors... |

### `IngestEventsResponse`

Response from the IngestEventsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | The auto-generated ID of the request. |

### `IngestEventsStatus`

The status of the events ingestion to the destination.

| Property | Type | Description |
|----------|------|-------------|
| `recordCount` | `string` | The total count of events sent in the upload request. Includes all events in the request, regardl... |

### `IngestMobileDataStatus`

The status of the mobile data ingestion to the destination containing stats related to the ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `mobileIdCount` | `string` | The total count of mobile ids sent in the upload request for the destination. Includes all mobile... |
| `recordCount` | `string` | The total count of audience members sent in the upload request for the destination. Includes all ... |

### `IngestPairDataStatus`

The status of the pair data ingestion to the destination containing stats related to the ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `pairIdCount` | `string` | The total count of pair ids sent in the upload request for the destination. Includes all pair ids... |
| `recordCount` | `string` | The total count of audience members sent in the upload request for the destination. Includes all ... |

### `IngestPpidDataStatus`

The status of the ppid data ingestion to the destination containing stats related to the ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `ppidCount` | `string` | The total count of ppids sent in the upload request for the destination. Includes all ppids in th... |
| `recordCount` | `string` | The total count of audience members sent in the upload request for the destination. Includes all ... |

### `IngestUserDataStatus`

The status of the user data ingestion to the destination containing stats related to the ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `recordCount` | `string` | The total count of audience members sent in the upload request for the destination. Includes all ... |
| `uploadMatchRateRange` | `string` | The match rate range of the upload. |
| `userIdentifierCount` | `string` | The total count of user identifiers sent in the upload request for the destination. Includes all ... |

### `IngestUserIdDataStatus`

The status of the user id data ingestion to the destination containing stats related to the ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `recordCount` | `string` | The total count of audience members sent in the upload request for the destination. Includes all ... |
| `userIdCount` | `string` | The total count of user ids sent in the upload request for the destination. Includes all user ids... |

### `IngestedUserListInfo`

Represents a user list that is populated by user provided data.

| Property | Type | Description |
|----------|------|-------------|
| `contactIdInfo` | `ContactIdInfo` | Optional. Additional information when `CONTACT_ID` is one of the `upload_key_types`. |
| `mobileIdInfo` | `MobileIdInfo` | Optional. Additional information when `MOBILE_ID` is one of the `upload_key_types`. |
| `pairIdInfo` | `PairIdInfo` | Optional. Additional information when `PAIR_ID` is one of the `upload_key_types`. This feature is... |
| `partnerAudienceInfo` | `PartnerAudienceInfo` | Optional. Additional information for partner audiences. This feature is only available to data pa... |
| `pseudonymousIdInfo` | `PseudonymousIdInfo` | Optional. Additional information for `PSEUDONYMOUS_ID` is one of the `upload_key_types`. |
| `uploadKeyTypes` | `array<string>` | Required. Immutable. Upload key types of this user list. |
| `userIdInfo` | `UserIdInfo` | Optional. Additional information when `USER_ID` is one of the `upload_key_types`. |

### `Item`

Represents an item in the cart associated with the event.

| Property | Type | Description |
|----------|------|-------------|
| `additionalItemParameters` | `array<ItemParameter>` | Optional. A bucket of any [event parameters related to an item](https://developers.google.com/ana... |
| `itemId` | `string` | Optional. A unique identifier to reference the item. |
| `merchantProductId` | `string` | Optional. The product ID within the Merchant Center account. |
| `quantity` | `string` | Optional. The number of this item associated with the event. |
| `unitPrice` | `number` | Optional. The unit price excluding tax, shipping, and any transaction level discounts. |

### `ItemParameter`

A bucket of any [event parameters related to an item](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events) to be included within the event that were not already specified using other structured fields.

| Property | Type | Description |
|----------|------|-------------|
| `parameterName` | `string` | Required. The name of the parameter to use. |
| `value` | `string` | Required. The string representation of the value of the parameter to set. |

### `ListUserListDirectLicensesResponse`

Response from the ListUserListDirectLicensesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `userListDirectLicenses` | `array<UserListDirectLicense>` | The licenses for the given user list in the request. |

### `ListUserListGlobalLicenseCustomerInfosResponse`

Response from the ListUserListGlobalLicensesCustomerInfoRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `userListGlobalLicenseCustomerInfos` | `array<UserListGlobalLicenseCustomerInfo>` | The customer information for the given license in the request. |

### `ListUserListGlobalLicensesResponse`

Response from the ListUserListGlobalLicensesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `userListGlobalLicenses` | `array<UserListGlobalLicense>` | The licenses for the given user list in the request. |

### `ListUserListsResponse`

Response message for ListUserLists.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `userLists` | `array<UserList>` | The user lists from the specified account. |

### `Location`

The baseline location of the request. Baseline location is on OR-list of ISO 3166-1 alpha-2 region codes of the requested regions.

| Property | Type | Description |
|----------|------|-------------|
| `regionCodes` | `array<string>` | List of ISO 3166-1 alpha-2 region codes. |

### `MarketingDataInsight`

Insights for marketing data. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<MarketingDataInsightsAttribute>` | Insights for values of a given dimension. |
| `dimension` | `string` | The dimension to which the insight belongs. |

### `MarketingDataInsightsAttribute`

Insights for a collection of related attributes of the same dimension.

| Property | Type | Description |
|----------|------|-------------|
| `ageRange` | `string` | Age range of the audience for which the lift is provided. |
| `gender` | `string` | Gender of the audience for which the lift is provided. |
| `lift` | `number` | Measure of lift that the audience has for the attribute value as compared to the baseline. Range ... |
| `userInterestId` | `string` | The user interest ID. |

### `MobileData`

Mobile IDs for the audience. At least one mobile ID is required.

| Property | Type | Description |
|----------|------|-------------|
| `mobileIds` | `array<string>` | Required. The list of mobile device IDs (advertising ID/IDFA). At most 10 `mobileIds` can be prov... |

### `MobileIdInfo`

Additional information when `MOBILE_ID` is one of the `upload_key_types`.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Required. Immutable. A string that uniquely identifies a mobile application from which the data w... |
| `dataSourceType` | `string` | Optional. Immutable. Source of the upload data. |
| `keySpace` | `string` | Required. Immutable. The key space of mobile IDs. |

### `PairData`

[PAIR](//support.google.com/admanager/answer/15067908) IDs for the audience. At least one PAIR ID is required. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `pairIds` | `array<string>` | Required. Cleanroom-provided PII data, hashed with SHA256, and encrypted with an EC commutative c... |

### `PairIdInfo`

Additional information when `PAIR_ID` is one of the `upload_key_types`. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserIdentifierCount` | `string` | Output only. The count of the advertiser's first party data records that have been uploaded to a ... |
| `cleanRoomIdentifier` | `string` | Required. Immutable. Identifies a unique advertiser to publisher relationship with one clean room... |
| `matchRatePercentage` | `integer` | Output only. This field denotes the percentage of membership match of this user list with the cor... |
| `publisherId` | `string` | Required. Immutable. Identifies the publisher that the Publisher Advertiser Identity Reconciliati... |
| `publisherName` | `string` | Optional. Descriptive name of the publisher to be displayed in the UI for a better targeting expe... |

### `PartnerAudienceInfo`

Additional information for partner audiences. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `commercePartner` | `string` | Optional. The commerce partner name. Only allowed if `partner_audience_source` is `COMMERCE_AUDIE... |
| `partnerAudienceSource` | `string` | Required. Immutable. The source of the partner audience. |

### `PartnerLink`

A partner link between an owning account and a partner account.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the partner link. Format: accountTypes/{account_type}/accounts/{account}/... |
| `owningAccount` | `ProductAccount` | Required. The owning account granting access to the partner account. |
| `partnerAccount` | `ProductAccount` | Required. The partner account granted access by the owning account. |
| `partnerLinkId` | `string` | Output only. The partner link ID. |

### `PpidData`

Publisher provided identifiers data holding the ppids. At least one ppid is required. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `ppids` | `array<string>` | Required. The list of publisher provided identifiers for a user. |

### `ProductAccount`

Represents a specific account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Required. The ID of the account. For example, your Google Ads account ID. |
| `accountType` | `string` | Optional. The type of the account. For example, `GOOGLE_ADS`. Either `account_type` or the deprec... |
| `product` | `string` | Deprecated. Use `account_type` instead. |

### `PseudonymousIdInfo`

Additional information when `PSEUDONYMOUS_ID` is one of the `upload_key_types`.

| Property | Type | Description |
|----------|------|-------------|
| `billableRecordCount` | `string` | Optional. Immutable. The number of billable records (e.g. uploaded or matched). |
| `syncStatus` | `string` | Output only. Sync status of the user list. |

### `RemoveAudienceMembersRequest`

Request to remove users from an audience in the provided destinations. Returns a RemoveAudienceMembersResponse.

| Property | Type | Description |
|----------|------|-------------|
| `audienceMembers` | `array<AudienceMember>` | Required. The list of users to remove. |
| `destinations` | `array<Destination>` | Required. The list of destinations to remove the users from. |
| `encoding` | `string` | Optional. Required for UserData uploads. The encoding type of the user identifiers. Applies to on... |
| `encryptionInfo` | `EncryptionInfo` | Optional. Encryption information for UserData uploads. If not set, it's assumed that uploaded ide... |
| `validateOnly` | `boolean` | Optional. For testing purposes. If `true`, the request is validated but not executed. Only errors... |

### `RemoveAudienceMembersResponse`

Response from the RemoveAudienceMembersRequest.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | The auto-generated ID of the request. |

### `RemoveAudienceMembersStatus`

The status of the remove audience members request.

| Property | Type | Description |
|----------|------|-------------|
| `mobileDataRemovalStatus` | `RemoveMobileDataStatus` | The status of the mobile data removal from the destination. |
| `pairDataRemovalStatus` | `RemovePairDataStatus` | The status of the pair data removal from the destination. |
| `ppidDataRemovalStatus` | `RemovePpidDataStatus` | The status of the ppid data removal from the destination. |
| `userDataRemovalStatus` | `RemoveUserDataStatus` | The status of the user data removal from the destination. |
| `userIdDataRemovalStatus` | `RemoveUserIdDataStatus` | The status of the user id data removal from the destination. |

### `RemoveMobileDataStatus`

The status of the mobile data removal from the destination.

| Property | Type | Description |
|----------|------|-------------|
| `mobileIdCount` | `string` | The total count of mobile Ids sent in the removal request. Includes all mobile ids in the request... |
| `recordCount` | `string` | The total count of audience members sent in the removal request. Includes all audience members in... |

### `RemovePairDataStatus`

The status of the pair data removal from the destination.

| Property | Type | Description |
|----------|------|-------------|
| `pairIdCount` | `string` | The total count of pair ids sent in the removal request. Includes all pair ids in the request, re... |
| `recordCount` | `string` | The total count of audience members sent in the removal request. Includes all audience members in... |

### `RemovePpidDataStatus`

The status of the ppid data removal from the destination.

| Property | Type | Description |
|----------|------|-------------|
| `ppidCount` | `string` | The total count of ppids sent in the removal request. Includes all ppids in the request, regardle... |
| `recordCount` | `string` | The total count of audience members sent in the removal request. Includes all audience members in... |

### `RemoveUserDataStatus`

The status of the user data removal from the destination.

| Property | Type | Description |
|----------|------|-------------|
| `recordCount` | `string` | The total count of audience members sent in the removal request. Includes all audience members in... |
| `userIdentifierCount` | `string` | The total count of user identifiers sent in the removal request. Includes all user identifiers in... |

### `RemoveUserIdDataStatus`

The status of the user id data removal from the destination.

| Property | Type | Description |
|----------|------|-------------|
| `recordCount` | `string` | The total count of audience members sent in the removal request. Includes all audience members in... |
| `userIdCount` | `string` | The total count of user ids sent in the removal request. Includes all user ids in the request, re... |

### `RequestStatusPerDestination`

A request status per destination.

| Property | Type | Description |
|----------|------|-------------|
| `audienceMembersIngestionStatus` | `IngestAudienceMembersStatus` | The status of the ingest audience members request. |
| `audienceMembersRemovalStatus` | `RemoveAudienceMembersStatus` | The status of the remove audience members request. |
| `destination` | `Destination` | A destination within a DM API request. |
| `errorInfo` | `ErrorInfo` | An error info error containing the error reason and error counts related to the upload. |
| `eventsIngestionStatus` | `IngestEventsStatus` | The status of the ingest events request. |
| `requestStatus` | `string` | The request status of the destination. |
| `warningInfo` | `WarningInfo` | A warning info containing the warning reason and warning counts related to the upload. |

### `RetrieveInsightsRequest`

Request message for DM API MarketingDataInsightsService.RetrieveInsights

| Property | Type | Description |
|----------|------|-------------|
| `baseline` | `Baseline` | Required. Baseline for the insights requested. |
| `userListId` | `string` | Required. The user list ID for which insights are requested. |

### `RetrieveInsightsResponse`

Response message for DM API MarketingDataInsightsService.RetrieveInsights

| Property | Type | Description |
|----------|------|-------------|
| `marketingDataInsights` | `array<MarketingDataInsight>` | Contains the insights for the marketing data. |

### `RetrieveRequestStatusResponse`

Response from the RetrieveRequestStatusRequest.

| Property | Type | Description |
|----------|------|-------------|
| `requestStatusPerDestination` | `array<RequestStatusPerDestination>` | A list of request statuses per destination. The order of the statuses matches the order of the de... |

### `SearchPartnerLinksResponse`

Response from the SearchPartnerLinksRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `partnerLinks` | `array<PartnerLink>` | The partner links for the given account. |

### `SizeInfo`

Estimated number of members in this user list in different target networks.

| Property | Type | Description |
|----------|------|-------------|
| `displayNetworkMembersCount` | `string` | Output only. Estimated number of members in this user list, on the Google Display Network. |
| `searchNetworkMembersCount` | `string` | Output only. Estimated number of members in this user list in the google.com domain. These are th... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TargetNetworkInfo`

Eligibility information for different target networks.

| Property | Type | Description |
|----------|------|-------------|
| `eligibleForDisplay` | `boolean` | Output only. Indicates this user list is eligible for Google Display Network. |
| `eligibleForSearch` | `boolean` | Optional. Indicates if this user list is eligible for Google Search Network. |

### `TermsOfService`

The terms of service that the user has accepted/rejected.

| Property | Type | Description |
|----------|------|-------------|
| `customerMatchTermsOfServiceStatus` | `string` | Optional. The Customer Match terms of service: https://support.google.com/adspolicy/answer/629971... |

### `UserData`

Data that identifies the user. At least one identifier is required.

| Property | Type | Description |
|----------|------|-------------|
| `userIdentifiers` | `array<UserIdentifier>` | Required. The identifiers for the user. It's possible to provide multiple instances of the same t... |

### `UserIdData`

User id data holding the user id.

| Property | Type | Description |
|----------|------|-------------|
| `userId` | `string` | Required. A unique identifier for a user, as defined by the advertiser. |

### `UserIdInfo`

Additional information when `USER_ID` is one of the `upload_key_types`.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceType` | `string` | Optional. Immutable. Source of the upload data. |

### `UserIdentifier`

A single identifier for the user.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `AddressInfo` | The known components of a user's address. Holds a grouping of identifiers that are matched all at... |
| `emailAddress` | `string` | Hashed email address using SHA-256 hash function after normalization. |
| `phoneNumber` | `string` | Hashed phone number using SHA-256 hash function after normalization (E164 standard). |

### `UserList`

A user list resource.

| Property | Type | Description |
|----------|------|-------------|
| `accessReason` | `string` | Output only. The reason this account has been granted access to the list. |
| `accountAccessStatus` | `string` | Optional. Indicates if this share is still enabled. When a user list is shared with the account t... |
| `closingReason` | `string` | Output only. The reason why this user list membership status is closed. |
| `description` | `string` | Optional. A description of the user list. |
| `displayName` | `string` | Required. The display name of the user list. |
| `id` | `string` | Output only. The unique ID of the user list. |
| `ingestedUserListInfo` | `IngestedUserListInfo` | Optional. Represents a user list that is populated by user ingested data. |
| `integrationCode` | `string` | Optional. An ID from external system. It is used by user list sellers to correlate IDs on their s... |
| `membershipDuration` | `string` | Optional. The duration a user remains in the user list. Valid durations are exact multiples of 24... |
| `membershipStatus` | `string` | Optional. Membership status of this user list. |
| `name` | `string` | Identifier. The resource name of the user list. Format: accountTypes/{account_type}/accounts/{acc... |
| `readOnly` | `boolean` | Output only. An option that indicates if a user may edit a list. |
| `sizeInfo` | `SizeInfo` | Output only. Estimated number of members in this user list in different target networks. |
| `targetNetworkInfo` | `TargetNetworkInfo` | Optional. Eligibility information for different target networks. |

### `UserListDirectLicense`

A user list direct license. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `clientAccountDisplayName` | `string` | Output only. Name of client customer which the user list is being licensed to. This field is read... |
| `clientAccountId` | `string` | Immutable. ID of client customer which the user list is being licensed to. |
| `clientAccountType` | `string` | Immutable. Account type of client customer which the user list is being licensed to. |
| `historicalPricings` | `array<UserListLicensePricing>` | Output only. Pricing history of this user list license. This field is read-only. |
| `metrics` | `UserListLicenseMetrics` | Output only. Metrics related to this license This field is read-only and only populated if the st... |
| `name` | `string` | Identifier. The resource name of the user list direct license. |
| `pricing` | `UserListLicensePricing` | Optional. UserListDirectLicense pricing. |
| `status` | `string` | Optional. Status of UserListDirectLicense - ENABLED or DISABLED. |
| `userListDisplayName` | `string` | Output only. Name of the user list being licensed. This field is read-only. |
| `userListId` | `string` | Immutable. ID of the user list being licensed. |

### `UserListGlobalLicense`

A user list global license. This feature is only available to data partners.

| Property | Type | Description |
|----------|------|-------------|
| `historicalPricings` | `array<UserListLicensePricing>` | Output only. Pricing history of this user list license. This field is read-only. |
| `licenseType` | `string` | Immutable. Product type of client customer which the user list is being licensed to. |
| `metrics` | `UserListLicenseMetrics` | Output only. Metrics related to this license This field is read-only and only populated if the st... |
| `name` | `string` | Identifier. The resource name of the user list global license. |
| `pricing` | `UserListLicensePricing` | Optional. UserListGlobalLicense pricing. |
| `status` | `string` | Optional. Status of UserListGlobalLicense - ENABLED or DISABLED. |
| `userListDisplayName` | `string` | Output only. Name of the user list being licensed. This field is read-only. |
| `userListId` | `string` | Immutable. ID of the user list being licensed. |

### `UserListGlobalLicenseCustomerInfo`

Information about a customer of a user list global license. This will automatically be created by the system when a customer purchases a global license.

| Property | Type | Description |
|----------|------|-------------|
| `clientAccountDisplayName` | `string` | Output only. Name of client customer which the user list is being licensed to. |
| `clientAccountId` | `string` | Output only. ID of client customer which the user list is being licensed to. |
| `clientAccountType` | `string` | Output only. Product type of client customer which the user list is being licensed to. |
| `historicalPricings` | `array<UserListLicensePricing>` | Output only. Pricing history of this user list license. |
| `licenseType` | `string` | Output only. Product type of client customer which the user list is being licensed to. |
| `metrics` | `UserListLicenseMetrics` | Output only. Metrics related to this license This field is only populated if the start and end da... |
| `name` | `string` | Identifier. The resource name of the user list global license customer. |
| `pricing` | `UserListLicensePricing` | Output only. UserListDirectLicense pricing. |
| `status` | `string` | Output only. Status of UserListDirectLicense - ENABLED or DISABLED. |
| `userListDisplayName` | `string` | Output only. Name of the user list being licensed. |
| `userListId` | `string` | Output only. ID of the user list being licensed. |

### `UserListLicenseMetrics`

Metrics related to a user list license.

| Property | Type | Description |
|----------|------|-------------|
| `clickCount` | `string` | Output only. The number of clicks for the user list license. |
| `endDate` | `string` | Output only. The end date (inclusive) of the metrics in the format YYYYMMDD. For example, 2026010... |
| `impressionCount` | `string` | Output only. The number of impressions for the user list license. |
| `revenueUsdMicros` | `string` | Output only. The revenue for the user list license in USD micros. |
| `startDate` | `string` | Output only. The start date (inclusive) of the metrics in the format YYYYMMDD. For example, 20260... |

### `UserListLicensePricing`

A user list license pricing.

| Property | Type | Description |
|----------|------|-------------|
| `buyerApprovalState` | `string` | Output only. The buyer approval state of this pricing. This field is read-only. |
| `costMicros` | `string` | Optional. The cost associated with the model, in micro units (10^-6), in the currency specified b... |
| `costType` | `string` | Immutable. The cost type of this pricing. Can be set only in the `create` operation. Can't be upd... |
| `currencyCode` | `string` | Optional. The currency in which cost and max_cost is specified. Must be a three-letter currency c... |
| `endTime` | `string` | Optional. End time of the pricing. |
| `maxCostMicros` | `string` | Optional. The maximum CPM a commerce audience can be charged when the MEDIA_SHARE cost type is us... |
| `pricingActive` | `boolean` | Output only. Whether this pricing is active. |
| `pricingId` | `string` | Output only. The ID of this pricing. |
| `startTime` | `string` | Output only. Start time of the pricing. |

### `UserProperties`

Advertiser-assessed information about the user at the time that the event happened. See https://support.google.com/google-ads/answer/14007601 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `additionalUserProperties` | `array<UserProperty>` | Optional. A bucket of any additional [user properties](https://developers.google.com/analytics/de... |
| `customerType` | `string` | Optional. Type of the customer associated with the event. |
| `customerValueBucket` | `string` | Optional. The advertiser-assessed value of the customer. |

### `UserProperty`

A bucket of any additional [user properties](https://developers.google.com/analytics/devguides/collection/protocol/ga4/user-properties) for the user associated with this event.

| Property | Type | Description |
|----------|------|-------------|
| `propertyName` | `string` | Required. The name of the user property to use. |
| `value` | `string` | Required. The string representation of the value of the user property to use. |

### `WarningCount`

The warning count for a given warning reason.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The warning reason. |
| `recordCount` | `string` | The count of records that have a warning. |

### `WarningInfo`

Warning counts for each type of warning.

| Property | Type | Description |
|----------|------|-------------|
| `warningCounts` | `array<WarningCount>` | A list of warnings and counts per warning reason. |

