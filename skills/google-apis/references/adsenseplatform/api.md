# AdSense Platform API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 13

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `adsenseplatform.platforms.accounts.get` | GET | `v1/{+name}` | Gets information about the selected sub-account. |
| `adsenseplatform.platforms.accounts.lookup` | GET | `v1/{+parent}/accounts:lookup` | Looks up information about a sub-account for a specified creation_request_id. If no account exist... |
| `adsenseplatform.platforms.accounts.list` | GET | `v1/{+parent}/accounts` | Lists a partial view of sub-accounts for a specific parent account. |
| `adsenseplatform.platforms.accounts.create` | POST | `v1/{+parent}/accounts` | Creates a sub-account. |
| `adsenseplatform.platforms.accounts.close` | POST | `v1/{+name}:close` | Closes a sub-account. |
| `adsenseplatform.platforms.accounts.events.create` | POST | `v1/{+parent}/events` | Creates an account event. |
| `adsenseplatform.platforms.accounts.sites.get` | GET | `v1/{+name}` | Gets a site from a specified sub-account. |
| `adsenseplatform.platforms.accounts.sites.list` | GET | `v1/{+parent}/sites` | Lists sites for a specific account. |
| `adsenseplatform.platforms.accounts.sites.create` | POST | `v1/{+parent}/sites` | Creates a site for a specified account. |
| `adsenseplatform.platforms.accounts.sites.requestReview` | POST | `v1/{+name}:requestReview` | Requests the review of a site. The site should be in REQUIRES_REVIEW or NEEDS_ATTENTION state. No... |
| `adsenseplatform.platforms.accounts.sites.delete` | DELETE | `v1/{+name}` | Deletes a site from a specified account. |

### `adsenseplatform.platforms.accounts.get`

**GET** `v1/{+name}`

Gets information about the selected sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account to get information about. Format: platforms/{platform}/accounts/{account_id} |

**Response**: `Account`

```typescript
const res = await adsenseplatform.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsenseplatform.platforms.accounts.lookup`

**GET** `v1/{+parent}/accounts:lookup`

Looks up information about a sub-account for a specified creation_request_id. If no account exists for the given creation_request_id, returns 404.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Platform who parents the account. Format: platforms/{platform} |
| `creationRequestId` | `string` | query | No | Optional. The creation_request_id provided when calling createAccount. |

**Response**: `LookupAccountResponse`

```typescript
const res = await adsenseplatform.accounts.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsenseplatform.platforms.accounts.list`

**GET** `v1/{+parent}/accounts`

Lists a partial view of sub-accounts for a specific parent account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Platform who parents the accounts. Format: platforms/{platform} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of accounts to include in the response, used for paging. If unspecified, at most 10000 a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAccounts` call. Provide this to retrieve the subsequent page. |

**Response**: `ListAccountsResponse`

```typescript
const res = await adsenseplatform.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsenseplatform.platforms.accounts.create`

**POST** `v1/{+parent}/accounts`

Creates a sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Platform to create an account for. Format: platforms/{platform} |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await adsenseplatform.accounts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsenseplatform.platforms.accounts.close`

**POST** `v1/{+name}:close`

Closes a sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account to close. Format: platforms/{platform}/accounts/{account_id} |

**Request body**: `CloseAccountRequest`

**Response**: `CloseAccountResponse`

```typescript
const res = await adsenseplatform.accounts.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsenseplatform.platforms.accounts.events.create`

**POST** `v1/{+parent}/events`

Creates an account event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Account to log events about. Format: platforms/{platform}/accounts/{account} |

**Request body**: `Event`

**Response**: `Event`

```typescript
const res = await adsenseplatform.events.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsenseplatform.platforms.accounts.sites.get`

**GET** `v1/{+name}`

Gets a site from a specified sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the site to retrieve. Format: platforms/{platform}/accounts/{account}/sites/{site} |

**Response**: `Site`

```typescript
const res = await adsenseplatform.sites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsenseplatform.platforms.accounts.sites.list`

**GET** `v1/{+parent}/sites`

Lists sites for a specific account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the sites. Format: platforms/{platform}/accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of sites to include in the response, used for paging. If unspecified, at most 10000 sites will be ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSites` call. Provide this to retrieve the subsequent page. When paginatin... |

**Response**: `ListSitesResponse`

```typescript
const res = await adsenseplatform.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsenseplatform.platforms.accounts.sites.create`

**POST** `v1/{+parent}/sites`

Creates a site for a specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Account to create site. Format: platforms/{platform}/accounts/{account_id} |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await adsenseplatform.sites.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsenseplatform.platforms.accounts.sites.requestReview`

**POST** `v1/{+name}:requestReview`

Requests the review of a site. The site should be in REQUIRES_REVIEW or NEEDS_ATTENTION state. Note: Make sure you place an [ad tag](https://developers.google.com/adsense/platforms/direct/ad-tags) on your site before requesting a review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the site to submit for review. Format: platforms/{platform}/accounts/{account}/sites/{site} |

**Response**: `RequestSiteReviewResponse`

```typescript
const res = await adsenseplatform.sites.requestReview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsenseplatform.platforms.accounts.sites.delete`

**DELETE** `v1/{+name}`

Deletes a site from a specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the site to delete. Format: platforms/{platform}/accounts/{account}/sites/{site} |

**Response**: `Empty`

```typescript
const res = await adsenseplatform.sites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

## Schemas

### `Account`

Representation of an Account.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of the account. |
| `creationRequestId` | `string` | Required. An opaque token that uniquely identifies the account among all the platform's accounts.... |
| `displayName` | `string` | Display name of this account. |
| `name` | `string` | Output only. Resource name of the account. Format: platforms/pub-[0-9]+/accounts/pub-[0-9]+ |
| `regionCode` | `string` | Required. Input only. CLDR region code of the country/region of the address. Set this to country ... |
| `state` | `string` | Output only. Approval state of the account. |
| `timeZone` | `TimeZone` | Required. The IANA TZ timezone code of this account. For more information, see https://en.wikiped... |

### `Address`

Address data.

| Property | Type | Description |
|----------|------|-------------|
| `address1` | `string` | First line of address. Max length 64 bytes or 30 characters. |
| `address2` | `string` | Second line of address. Max length 64 bytes or 30 characters. |
| `city` | `string` | City. Max length 60 bytes or 30 characters. |
| `company` | `string` | Name of the company. Max length 255 bytes or 34 characters. |
| `contact` | `string` | Contact name of the company. Max length 128 bytes or 34 characters. |
| `fax` | `string` | Fax number with international code (i.e. +441234567890). |
| `phone` | `string` | Phone number with international code (i.e. +441234567890). |
| `regionCode` | `string` | Country/Region code. The region is specified as a CLDR region code (e.g. "US", "FR"). |
| `state` | `string` | State. Max length 60 bytes or 30 characters. |
| `zip` | `string` | Zip/post code. Max length 10 bytes or 10 characters. |

### `CloseAccountRequest`

Request definition for the account close rpc.

### `CloseAccountResponse`

Response definition for the account close rpc.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Event`

A platform sub-account event to record spam signals.

| Property | Type | Description |
|----------|------|-------------|
| `eventInfo` | `EventInfo` | Required. Information associated with the event. |
| `eventTime` | `string` | Required. Event timestamp. |
| `eventType` | `string` | Required. Event type. |

### `EventInfo`

Private information for partner recorded events (PII).

| Property | Type | Description |
|----------|------|-------------|
| `billingAddress` | `Address` | The billing address of the publisher associated with this event, if available. |
| `email` | `string` | Required. The email address that is associated with the publisher when performing the event. |

### `ListAccountsResponse`

Response definition for the list accounts rpc.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | The Accounts returned in the list response. Represented by a partial view of the Account resource... |
| `nextPageToken` | `string` | Continuation token used to page through accounts. To retrieve the next page of the results, set t... |

### `ListSitesResponse`

Response definition for the site list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to page through sites. To retrieve the next page of the results, set the ... |
| `sites` | `array<Site>` | The sites returned in this list response. |

### `LookupAccountResponse`

Response definition for the lookup account rpc.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the Account Format: platforms/{platform}/accounts/{account_id} |

### `RequestSiteReviewResponse`

Response definition for the site request review rpc.

### `Site`

Representation of a Site.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain/sub-domain of the site. Must be a valid domain complying with [RFC 1035](https://www.ietf.... |
| `name` | `string` | Output only. Resource name of a site. Format: platforms/{platform}/accounts/{account}/sites/{site} |
| `state` | `string` | Output only. State of a site. |

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

