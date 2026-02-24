# AdSense Management API - API Reference

**Version**: `v2` | **Methods**: 33 | **Schemas**: 36

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `adsense.accounts.get` | GET | `v2/{+name}` | Gets information about the selected AdSense account. |
| `adsense.accounts.list` | GET | `v2/accounts` | Lists all accounts available to this user. |
| `adsense.accounts.listChildAccounts` | GET | `v2/{+parent}:listChildAccounts` | Lists all accounts directly managed by the given AdSense account. |
| `adsense.accounts.getAdBlockingRecoveryTag` | GET | `v2/{+name}/adBlockingRecoveryTag` | Gets the ad blocking recovery tag of an account. |
| `adsense.accounts.adclients.list` | GET | `v2/{+parent}/adclients` | Lists all the ad clients available in an account. |
| `adsense.accounts.adclients.get` | GET | `v2/{+name}` | Gets the ad client from the given resource name. |
| `adsense.accounts.adclients.getAdcode` | GET | `v2/{+name}/adcode` | Gets the AdSense code for a given ad client. This returns what was previously known as the 'auto ... |
| `adsense.accounts.adclients.adunits.get` | GET | `v2/{+name}` | Gets an ad unit from a specified account and ad client. |
| `adsense.accounts.adclients.adunits.list` | GET | `v2/{+parent}/adunits` | Lists all ad units under a specified account and ad client. |
| `adsense.accounts.adclients.adunits.getAdcode` | GET | `v2/{+name}/adcode` | Gets the ad unit code for a given ad unit. For more information, see [About the AdSense code](htt... |
| `adsense.accounts.adclients.adunits.create` | POST | `v2/{+parent}/adunits` | Creates an ad unit. This method can be called only by a restricted set of projects, which are usu... |
| `adsense.accounts.adclients.adunits.patch` | PATCH | `v2/{+name}` | Updates an ad unit. This method can be called only by a restricted set of projects, which are usu... |
| `adsense.accounts.adclients.adunits.listLinkedCustomChannels` | GET | `v2/{+parent}:listLinkedCustomChannels` | Lists all the custom channels available for an ad unit. |
| `adsense.accounts.adclients.customchannels.listLinkedAdUnits` | GET | `v2/{+parent}:listLinkedAdUnits` | Lists all the ad units available for a custom channel. |
| `adsense.accounts.adclients.customchannels.get` | GET | `v2/{+name}` | Gets information about the selected custom channel. |
| `adsense.accounts.adclients.customchannels.list` | GET | `v2/{+parent}/customchannels` | Lists all the custom channels available in an ad client. |
| `adsense.accounts.adclients.customchannels.create` | POST | `v2/{+parent}/customchannels` | Creates a custom channel. This method can be called only by a restricted set of projects, which a... |
| `adsense.accounts.adclients.customchannels.patch` | PATCH | `v2/{+name}` | Updates a custom channel. This method can be called only by a restricted set of projects, which a... |
| `adsense.accounts.adclients.customchannels.delete` | DELETE | `v2/{+name}` | Deletes a custom channel. This method can be called only by a restricted set of projects, which a... |
| `adsense.accounts.adclients.urlchannels.get` | GET | `v2/{+name}` | Gets information about the selected url channel. |
| `adsense.accounts.adclients.urlchannels.list` | GET | `v2/{+parent}/urlchannels` | Lists active url channels. |
| `adsense.accounts.alerts.list` | GET | `v2/{+parent}/alerts` | Lists all the alerts available in an account. |
| `adsense.accounts.payments.list` | GET | `v2/{+parent}/payments` | Lists all the payments available for an account. |
| `adsense.accounts.policyIssues.get` | GET | `v2/{+name}` | Gets information about the selected policy issue. |
| `adsense.accounts.policyIssues.list` | GET | `v2/{+parent}/policyIssues` | Lists all the policy issues where the specified account is involved, both directly and through an... |
| `adsense.accounts.reports.getSaved` | GET | `v2/{+name}/saved` | Gets the saved report from the given resource name. |
| `adsense.accounts.reports.generate` | GET | `v2/{+account}/reports:generate` | Generates an ad hoc report. |
| `adsense.accounts.reports.generateCsv` | GET | `v2/{+account}/reports:generateCsv` | Generates a csv formatted ad hoc report. |
| `adsense.accounts.reports.saved.generate` | GET | `v2/{+name}/saved:generate` | Generates a saved report. |
| `adsense.accounts.reports.saved.generateCsv` | GET | `v2/{+name}/saved:generateCsv` | Generates a csv formatted saved report. |
| `adsense.accounts.reports.saved.list` | GET | `v2/{+parent}/reports/saved` | Lists saved reports. |
| `adsense.accounts.sites.get` | GET | `v2/{+name}` | Gets information about the selected site. |
| `adsense.accounts.sites.list` | GET | `v2/{+parent}/sites` | Lists all the sites available in an account. |

### `adsense.accounts.get`

**GET** `v2/{+name}`

Gets information about the selected AdSense account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Account to get information about. Format: accounts/{account} |

**Response**: `Account`

```typescript
const res = await adsense.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.list`

**GET** `v2/accounts`

Lists all accounts available to this user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of accounts to include in the response, used for paging. If unspecified, at most 10000 accounts wi... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAccounts` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `ListAccountsResponse`

```typescript
const res = await adsense.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.listChildAccounts`

**GET** `v2/{+parent}:listChildAccounts`

Lists all accounts directly managed by the given AdSense account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account, which owns the child accounts. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of accounts to include in the response, used for paging. If unspecified, at most 10000 accounts wi... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListChildAccounts` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListChildAccountsResponse`

```typescript
const res = await adsense.accounts.listChildAccounts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.getAdBlockingRecoveryTag`

**GET** `v2/{+name}/adBlockingRecoveryTag`

Gets the ad blocking recovery tag of an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the account to get the tag for. Format: accounts/{account} |

**Response**: `AdBlockingRecoveryTag`

```typescript
const res = await adsense.accounts.getAdBlockingRecoveryTag({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.list`

**GET** `v2/{+parent}/adclients`

Lists all the ad clients available in an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the collection of ad clients. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of ad clients to include in the response, used for paging. If unspecified, at most 10000 ad client... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAdClients` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListAdClientsResponse`

```typescript
const res = await adsense.adclients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.get`

**GET** `v2/{+name}`

Gets the ad client from the given resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ad client to retrieve. Format: accounts/{account}/adclients/{adclient} |

**Response**: `AdClient`

```typescript
const res = await adsense.adclients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.getAdcode`

**GET** `v2/{+name}/adcode`

Gets the AdSense code for a given ad client. This returns what was previously known as the 'auto ad code'. This is only supported for ad clients with a product_code of AFC. For more information, see [About the AdSense code](https://support.google.com/adsense/answer/9274634).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ad client for which to get the adcode. Format: accounts/{account}/adclients/{adclient} |

**Response**: `AdClientAdCode`

```typescript
const res = await adsense.adclients.getAdcode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.adunits.get`

**GET** `v2/{+name}`

Gets an ad unit from a specified account and ad client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. AdUnit to get information about. Format: accounts/{account}/adclients/{adclient}/adunits/{adunit} |

**Response**: `AdUnit`

```typescript
const res = await adsense.adunits.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.adunits.list`

**GET** `v2/{+parent}/adunits`

Lists all ad units under a specified account and ad client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ad client which owns the collection of ad units. Format: accounts/{account}/adclients/{adclient} |
| `pageSize` | `integer` | query | No | The maximum number of ad units to include in the response, used for paging. If unspecified, at most 10000 ad units wi... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAdUnits` call. Provide this to retrieve the subsequent page. When paginat... |

**Response**: `ListAdUnitsResponse`

```typescript
const res = await adsense.adunits.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.adunits.getAdcode`

**GET** `v2/{+name}/adcode`

Gets the ad unit code for a given ad unit. For more information, see [About the AdSense code](https://support.google.com/adsense/answer/9274634) and [Where to place the ad code in your HTML](https://support.google.com/adsense/answer/9190028).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the adunit for which to get the adcode. Format: accounts/{account}/adclients/{adclient}/adunits/{ad... |

**Response**: `AdUnitAdCode`

```typescript
const res = await adsense.adunits.getAdcode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.adunits.create`

**POST** `v2/{+parent}/adunits`

Creates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by [AdSense for Platforms](https://developers.google.com/adsense/platforms/) publishers. Contact your account manager if you need to use this method. Note that ad units can only be created for ad clients with an "AFC" product code. For more info see the [AdClient resource](/adsense/management/reference/rest/v2/accounts.adclients). For now, this method can only be used to create `DISPLAY` ad units. See: https://support.google.com/adsense/answer/9183566

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Ad client to create an ad unit under. Format: accounts/{account}/adclients/{adclient} |

**Request body**: `AdUnit`

**Response**: `AdUnit`

```typescript
const res = await adsense.adunits.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsense.accounts.adclients.adunits.patch`

**PATCH** `v2/{+name}`

Updates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by [AdSense for Platforms](https://developers.google.com/adsense/platforms/) publishers. Contact your account manager if you need to use this method. For now, this method can only be used to update `DISPLAY` ad units. See: https://support.google.com/adsense/answer/9183566

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the ad unit. Format: accounts/{account}/adclients/{adclient}/adunits/{adunit} |
| `updateMask` | `string` | query | No | The list of fields to update. If empty, a full update is performed. |

**Request body**: `AdUnit`

**Response**: `AdUnit`

```typescript
const res = await adsense.adunits.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsense.accounts.adclients.adunits.listLinkedCustomChannels`

**GET** `v2/{+parent}:listLinkedCustomChannels`

Lists all the custom channels available for an ad unit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ad unit which owns the collection of custom channels. Format: accounts/{account}/adclients/{adclient}/a... |
| `pageSize` | `integer` | query | No | The maximum number of custom channels to include in the response, used for paging. If unspecified, at most 10000 cust... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListLinkedCustomChannels` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListLinkedCustomChannelsResponse`

```typescript
const res = await adsense.adunits.listLinkedCustomChannels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.customchannels.listLinkedAdUnits`

**GET** `v2/{+parent}:listLinkedAdUnits`

Lists all the ad units available for a custom channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The custom channel which owns the collection of ad units. Format: accounts/{account}/adclients/{adclient}/c... |
| `pageSize` | `integer` | query | No | The maximum number of ad units to include in the response, used for paging. If unspecified, at most 10000 ad units wi... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListLinkedAdUnits` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListLinkedAdUnitsResponse`

```typescript
const res = await adsense.customchannels.listLinkedAdUnits({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.customchannels.get`

**GET** `v2/{+name}`

Gets information about the selected custom channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom channel. Format: accounts/{account}/adclients/{adclient}/customchannels/{customchannel} |

**Response**: `CustomChannel`

```typescript
const res = await adsense.customchannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.customchannels.list`

**GET** `v2/{+parent}/customchannels`

Lists all the custom channels available in an ad client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ad client which owns the collection of custom channels. Format: accounts/{account}/adclients/{adclient} |
| `pageSize` | `integer` | query | No | The maximum number of custom channels to include in the response, used for paging. If unspecified, at most 10000 cust... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCustomChannels` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListCustomChannelsResponse`

```typescript
const res = await adsense.customchannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.customchannels.create`

**POST** `v2/{+parent}/customchannels`

Creates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by [AdSense for Platforms](https://developers.google.com/adsense/platforms/) publishers. Contact your account manager if you need to use this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ad client to create a custom channel under. Format: accounts/{account}/adclients/{adclient} |

**Request body**: `CustomChannel`

**Response**: `CustomChannel`

```typescript
const res = await adsense.customchannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsense.accounts.adclients.customchannels.patch`

**PATCH** `v2/{+name}`

Updates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by [AdSense for Platforms](https://developers.google.com/adsense/platforms/) publishers. Contact your account manager if you need to use this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the custom channel. Format: accounts/{account}/adclients/{adclient}/customchannels/{cus... |
| `updateMask` | `string` | query | No | The list of fields to update. If empty, a full update is performed. |

**Request body**: `CustomChannel`

**Response**: `CustomChannel`

```typescript
const res = await adsense.customchannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsense.accounts.adclients.customchannels.delete`

**DELETE** `v2/{+name}`

Deletes a custom channel. This method can be called only by a restricted set of projects, which are usually owned by [AdSense for Platforms](https://developers.google.com/adsense/platforms/) publishers. Contact your account manager if you need to use this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom channel to delete. Format: accounts/{account}/adclients/{adclient}/customchannels/{custo... |

**Response**: `Empty`

```typescript
const res = await adsense.customchannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`

---

### `adsense.accounts.adclients.urlchannels.get`

**GET** `v2/{+name}`

Gets information about the selected url channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the url channel to retrieve. Format: accounts/{account}/adclients/{adclient}/urlchannels/{urlch... |

**Response**: `UrlChannel`

```typescript
const res = await adsense.urlchannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.adclients.urlchannels.list`

**GET** `v2/{+parent}/urlchannels`

Lists active url channels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ad client which owns the collection of url channels. Format: accounts/{account}/adclients/{adclient} |
| `pageSize` | `integer` | query | No | The maximum number of url channels to include in the response, used for paging. If unspecified, at most 10000 url cha... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListUrlChannels` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListUrlChannelsResponse`

```typescript
const res = await adsense.urlchannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.alerts.list`

**GET** `v2/{+parent}/alerts`

Lists all the alerts available in an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the collection of alerts. Format: accounts/{account} |
| `languageCode` | `string` | query | No | The language to use for translating alert messages. If unspecified, this defaults to the user's display language. If ... |

**Response**: `ListAlertsResponse`

```typescript
const res = await adsense.alerts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.payments.list`

**GET** `v2/{+parent}/payments`

Lists all the payments available for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the collection of payments. Format: accounts/{account} |

**Response**: `ListPaymentsResponse`

```typescript
const res = await adsense.payments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.policyIssues.get`

**GET** `v2/{+name}`

Gets information about the selected policy issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the policy issue. Format: accounts/{account}/policyIssues/{policy_issue} |

**Response**: `PolicyIssue`

```typescript
const res = await adsense.policyIssues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.policyIssues.list`

**GET** `v2/{+parent}/policyIssues`

Lists all the policy issues where the specified account is involved, both directly and through any AFP child accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account for which policy issues are being retrieved. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of policy issues to include in the response, used for paging. If unspecified, at most 10000 policy... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPolicyIssues` call. Provide this to retrieve the subsequent page. When pa... |

**Response**: `ListPolicyIssuesResponse`

```typescript
const res = await adsense.policyIssues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.getSaved`

**GET** `v2/{+name}/saved`

Gets the saved report from the given resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the saved report to retrieve. Format: accounts/{account}/reports/{report} |

**Response**: `SavedReport`

```typescript
const res = await adsense.reports.getSaved({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.generate`

**GET** `v2/{+account}/reports:generate`

Generates an ad hoc report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `account` | `string` | path | Yes | Required. The account which owns the collection of reports. Format: accounts/{account} |
| `currencyCode` | `string` | query | No | The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on monetary metrics. Defau... |
| `dateRange` | `string` | query | No | Date range of the report, if unset the range will be considered CUSTOM. |
| `dimensions` | `string` | query | No | Dimensions to base the report on. |
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `filters` | `string` | query | No | A list of [filters](/adsense/management/reporting/filtering) to apply to the report. All provided filters must match ... |
| `languageCode` | `string` | query | No | The language to use for translating report output. If unspecified, this defaults to English ("en"). If the given lang... |
| `limit` | `integer` | query | No | The maximum number of rows of report data to return. Reports producing more rows than the requested limit will be tru... |
| `metrics` | `string` | query | No | Required. Reporting metrics. |
| `orderBy` | `string` | query | No | The name of a dimension or metric to sort the resulting report on, can be prefixed with "+" to sort ascending or "-" ... |
| `reportingTimeZone` | `string` | query | No | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `ReportResult`

```typescript
const res = await adsense.reports.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.generateCsv`

**GET** `v2/{+account}/reports:generateCsv`

Generates a csv formatted ad hoc report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `account` | `string` | path | Yes | Required. The account which owns the collection of reports. Format: accounts/{account} |
| `currencyCode` | `string` | query | No | The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on monetary metrics. Defau... |
| `dateRange` | `string` | query | No | Date range of the report, if unset the range will be considered CUSTOM. |
| `dimensions` | `string` | query | No | Dimensions to base the report on. |
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `filters` | `string` | query | No | A list of [filters](/adsense/management/reporting/filtering) to apply to the report. All provided filters must match ... |
| `languageCode` | `string` | query | No | The language to use for translating report output. If unspecified, this defaults to English ("en"). If the given lang... |
| `limit` | `integer` | query | No | The maximum number of rows of report data to return. Reports producing more rows than the requested limit will be tru... |
| `metrics` | `string` | query | No | Required. Reporting metrics. |
| `orderBy` | `string` | query | No | The name of a dimension or metric to sort the resulting report on, can be prefixed with "+" to sort ascending or "-" ... |
| `reportingTimeZone` | `string` | query | No | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `HttpBody`

```typescript
const res = await adsense.reports.generateCsv({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.saved.generate`

**GET** `v2/{+name}/saved:generate`

Generates a saved report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the saved report. Format: accounts/{account}/reports/{report} |
| `currencyCode` | `string` | query | No | The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on monetary metrics. Defau... |
| `dateRange` | `string` | query | No | Date range of the report, if unset the range will be considered CUSTOM. |
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `languageCode` | `string` | query | No | The language to use for translating report output. If unspecified, this defaults to English ("en"). If the given lang... |
| `reportingTimeZone` | `string` | query | No | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `ReportResult`

```typescript
const res = await adsense.saved.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.saved.generateCsv`

**GET** `v2/{+name}/saved:generateCsv`

Generates a csv formatted saved report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the saved report. Format: accounts/{account}/reports/{report} |
| `currencyCode` | `string` | query | No | The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on monetary metrics. Defau... |
| `dateRange` | `string` | query | No | Date range of the report, if unset the range will be considered CUSTOM. |
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `languageCode` | `string` | query | No | The language to use for translating report output. If unspecified, this defaults to English ("en"). If the given lang... |
| `reportingTimeZone` | `string` | query | No | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `HttpBody`

```typescript
const res = await adsense.saved.generateCsv({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.reports.saved.list`

**GET** `v2/{+parent}/reports/saved`

Lists saved reports.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the collection of reports. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of reports to include in the response, used for paging. If unspecified, at most 10000 reports will... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSavedReports` call. Provide this to retrieve the subsequent page. When pa... |

**Response**: `ListSavedReportsResponse`

```typescript
const res = await adsense.saved.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.sites.get`

**GET** `v2/{+name}`

Gets information about the selected site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the site. Format: accounts/{account}/sites/{site} |

**Response**: `Site`

```typescript
const res = await adsense.sites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

### `adsense.accounts.sites.list`

**GET** `v2/{+parent}/sites`

Lists all the sites available in an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account which owns the collection of sites. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of sites to include in the response, used for paging. If unspecified, at most 10000 sites will be ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSites` call. Provide this to retrieve the subsequent page. When paginatin... |

**Response**: `ListSitesResponse`

```typescript
const res = await adsense.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adsense`
- `https://www.googleapis.com/auth/adsense.readonly`

---

## Schemas

### `Account`

Representation of an account.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation time of the account. |
| `displayName` | `string` | Output only. Display name of this account. |
| `name` | `string` | Output only. Resource name of the account. Format: accounts/pub-[0-9]+ |
| `pendingTasks` | `array<string>` | Output only. Outstanding tasks that need to be completed as part of the sign-up process for a new... |
| `premium` | `boolean` | Output only. Whether this account is premium. Premium accounts have access to additional spam-rel... |
| `state` | `string` | Output only. State of the account. |
| `timeZone` | `TimeZone` | The account time zone, as used by reporting. For more information, see [changing the time zone of... |

### `AdBlockingRecoveryTag`

Representation of an ad blocking recovery tag. See https://support.google.com/adsense/answer/11575177.

| Property | Type | Description |
|----------|------|-------------|
| `errorProtectionCode` | `string` | Error protection code that can be used in conjunction with the tag. It'll display a message to us... |
| `tag` | `string` | The ad blocking recovery tag. Note that the message generated by the tag can be blocked by an ad ... |

### `AdClient`

Representation of an ad client. An ad client represents a user's subscription with a specific AdSense product.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name of the ad client. Format: accounts/{account}/adclients/{adclient} |
| `productCode` | `string` | Output only. Reporting product code of the ad client. For example, "AFC" for AdSense for Content.... |
| `reportingDimensionId` | `string` | Output only. Unique ID of the ad client as used in the `AD_CLIENT_ID` reporting dimension. Presen... |
| `state` | `string` | Output only. State of the ad client. |

### `AdClientAdCode`

Representation of the AdSense code for a given ad client. For more information, see [About the AdSense code](https://support.google.com/adsense/answer/9274634).

| Property | Type | Description |
|----------|------|-------------|
| `adCode` | `string` | Output only. The AdSense code snippet to add to the head of an HTML page. |
| `ampBody` | `string` | Output only. The AdSense code snippet to add to the body of an AMP page. |
| `ampHead` | `string` | Output only. The AdSense code snippet to add to the head of an AMP page. |

### `AdUnit`

Representation of an ad unit. An ad unit represents a saved ad unit with a specific set of ad settings that have been customized within an account.

| Property | Type | Description |
|----------|------|-------------|
| `contentAdsSettings` | `ContentAdsSettings` | Required. Settings specific to content ads (AFC). |
| `displayName` | `string` | Required. Display name of the ad unit, as provided when the ad unit was created. |
| `name` | `string` | Output only. Resource name of the ad unit. Format: accounts/{account}/adclients/{adclient}/adunit... |
| `reportingDimensionId` | `string` | Output only. Unique ID of the ad unit as used in the `AD_UNIT_ID` reporting dimension. |
| `state` | `string` | Required. State of the ad unit. |

### `AdUnitAdCode`

Representation of the ad unit code for a given ad unit. For more information, see [About the AdSense code](https://support.google.com/adsense/answer/9274634) and [Where to place the ad code in your HTML](https://support.google.com/adsense/answer/9190028).

| Property | Type | Description |
|----------|------|-------------|
| `adCode` | `string` | Output only. The code snippet to add to the body of an HTML page. |

### `Alert`

Representation of an alert.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. The localized alert message. This may contain HTML markup, such as phrase elements o... |
| `name` | `string` | Output only. Resource name of the alert. Format: accounts/{account}/alerts/{alert} |
| `severity` | `string` | Output only. Severity of this alert. |
| `type` | `string` | Output only. Type of alert. This identifies the broad type of this alert, and provides a stable m... |

### `Cell`

Cell representation.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Value in the cell. The dimension cells contain strings, and the metric cells contain numbers. |

### `ContentAdsSettings`

Settings specific to content ads (AFC).

| Property | Type | Description |
|----------|------|-------------|
| `size` | `string` | Required. Size of the ad unit. e.g. "728x90", "1x3" (for responsive ad units). |
| `type` | `string` | Required. Type of the ad unit. |

### `CustomChannel`

Representation of a custom channel.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Whether the custom channel is active and collecting data. See https://support.google.com/adsense/... |
| `displayName` | `string` | Required. Display name of the custom channel. |
| `name` | `string` | Output only. Resource name of the custom channel. Format: accounts/{account}/adclients/{adclient}... |
| `reportingDimensionId` | `string` | Output only. Unique ID of the custom channel as used in the `CUSTOM_CHANNEL_ID` reporting dimension. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Header`

The header information of the columns requested in the report.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) of this column. Only present... |
| `name` | `string` | Required. Name of the header. |
| `type` | `string` | Required. Type of the header. |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `ListAccountsResponse`

Response definition for the account list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | The accounts returned in this list response. |
| `nextPageToken` | `string` | Continuation token used to page through accounts. To retrieve the next page of the results, set t... |

### `ListAdClientsResponse`

Response definition for the ad client list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `adClients` | `array<AdClient>` | The ad clients returned in this list response. |
| `nextPageToken` | `string` | Continuation token used to page through ad clients. To retrieve the next page of the results, set... |

### `ListAdUnitsResponse`

Response definition for the adunit list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `adUnits` | `array<AdUnit>` | The ad units returned in the list response. |
| `nextPageToken` | `string` | Continuation token used to page through ad units. To retrieve the next page of the results, set t... |

### `ListAlertsResponse`

Response definition for the alerts list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `alerts` | `array<Alert>` | The alerts returned in this list response. |

### `ListChildAccountsResponse`

Response definition for the child account list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | The accounts returned in this list response. |
| `nextPageToken` | `string` | Continuation token used to page through accounts. To retrieve the next page of the results, set t... |

### `ListCustomChannelsResponse`

Response definition for the custom channel list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `customChannels` | `array<CustomChannel>` | The custom channels returned in this list response. |
| `nextPageToken` | `string` | Continuation token used to page through alerts. To retrieve the next page of the results, set the... |

### `ListLinkedAdUnitsResponse`

Response definition for the ad units linked to a custom channel list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `adUnits` | `array<AdUnit>` | The ad units returned in the list response. |
| `nextPageToken` | `string` | Continuation token used to page through ad units. To retrieve the next page of the results, set t... |

### `ListLinkedCustomChannelsResponse`

Response definition for the custom channels linked to an adunit list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `customChannels` | `array<CustomChannel>` | The custom channels returned in this list response. |
| `nextPageToken` | `string` | Continuation token used to page through alerts. To retrieve the next page of the results, set the... |

### `ListPaymentsResponse`

Response definition for the payments list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `payments` | `array<Payment>` | The payments returned in this list response. |

### `ListPolicyIssuesResponse`

Response definition for the policy issues list rpc. Policy issues are reported only if the publisher has at least one AFC ad client in READY or GETTING_READY state. If the publisher has no such AFC ad client, the response will be an empty list.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to page through policy issues. To retrieve the next page of the results, ... |
| `policyIssues` | `array<PolicyIssue>` | The policy issues returned in the list response. |

### `ListSavedReportsResponse`

Response definition for the saved reports list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to page through reports. To retrieve the next page of the results, set th... |
| `savedReports` | `array<SavedReport>` | The reports returned in this list response. |

### `ListSitesResponse`

Response definition for the sites list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to page through sites. To retrieve the next page of the results, set the ... |
| `sites` | `array<Site>` | The sites returned in this list response. |

### `ListUrlChannelsResponse`

Response definition for the url channels list rpc.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Continuation token used to page through url channels. To retrieve the next page of the results, s... |
| `urlChannels` | `array<UrlChannel>` | The url channels returned in this list response. |

### `Payment`

Representation of an unpaid or paid payment. See [Payment timelines for AdSense](https://support.google.com/adsense/answer/7164703) for more information about payments and the [YouTube homepage and payments account](https://support.google.com/adsense/answer/11622510) article for information about dedicated payments accounts for YouTube.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `string` | Output only. The amount of unpaid or paid earnings, as a formatted string, including the currency... |
| `date` | `Date` | Output only. For paid earnings, the date that the payment was credited. For unpaid earnings, this... |
| `name` | `string` | Output only. Resource name of the payment. Format: - accounts/{account}/payments/unpaid for unpai... |

### `PolicyIssue`

Representation of a policy issue for a single entity (site, site-section, or page). All issues for a single entity are represented by a single PolicyIssue resource, though that PolicyIssue can have multiple causes (or "topics") that can change over time. Policy issues are removed if there are no issues detected recently or if there's a recent successful appeal for the entity.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. The most severe action taken on the entity over the past seven days. |
| `adClients` | `array<string>` | Optional. List of ad clients associated with the policy issue (either as the primary ad client or... |
| `adRequestCount` | `string` | Required. Total number of ad requests affected by the policy violations over the past seven days. |
| `entityType` | `string` | Required. Type of the entity indicating if the entity is a site, site-section, or page. |
| `firstDetectedDate` | `Date` | Required. The date (in the America/Los_Angeles timezone) when policy violations were first detect... |
| `lastDetectedDate` | `Date` | Required. The date (in the America/Los_Angeles timezone) when policy violations were last detecte... |
| `name` | `string` | Required. Resource name of the entity with policy issues. Format: accounts/{account}/policyIssues... |
| `policyTopics` | `array<PolicyTopic>` | Required. Unordered list. The policy topics that this entity was found to violate over the past s... |
| `site` | `string` | Required. Hostname/domain of the entity (for example "foo.com" or "www.foo.com"). This _should_ b... |
| `siteSection` | `string` | Optional. Prefix of the site-section having policy issues (For example "foo.com/bar-section"). Th... |
| `uri` | `string` | Optional. URI of the page having policy violations (for example "foo.com/bar" or "www.foo.com/bar... |
| `warningEscalationDate` | `Date` | Optional. The date (in the America/Los_Angeles timezone) when the entity will have ad serving dem... |

### `PolicyTopic`

Information about a particular policy topic. A policy topic represents a single class of policy issue that can impact ad serving for your site. For example, sexual content or having ads that obscure your content. A single policy issue can have multiple policy topics for a single entity.

| Property | Type | Description |
|----------|------|-------------|
| `mustFix` | `boolean` | Required. Deprecated. Always set to false. |
| `topic` | `string` | Required. The policy topic. For example, "sexual-content" or "ads-obscuring-content"." |
| `type` | `string` | Optional. The type of policy topic. For example, "POLICY" represents all the policy topics that a... |

### `ReportResult`

Result of a generated report.

| Property | Type | Description |
|----------|------|-------------|
| `averages` | `Row` | The averages of the report. This is the same length as any other row in the report; cells corresp... |
| `endDate` | `Date` | Required. End date of the range (inclusive). |
| `headers` | `array<Header>` | The header information; one for each dimension in the request, followed by one for each metric in... |
| `rows` | `array<Row>` | The output rows of the report. Each row is a list of cells; one for each dimension in the request... |
| `startDate` | `Date` | Required. Start date of the range (inclusive). |
| `totalMatchedRows` | `string` | The total number of rows matched by the report request. |
| `totals` | `Row` | The totals of the report. This is the same length as any other row in the report; cells correspon... |
| `warnings` | `array<string>` | Any warnings associated with generation of the report. These warnings are always returned in Engl... |

### `Row`

Row representation.

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<Cell>` | Cells in the row. |

### `SavedReport`

Representation of a saved report.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name of the report. Format: accounts/{account}/reports/{report} |
| `title` | `string` | Report title as specified by publisher. |

### `Site`

Representation of a Site.

| Property | Type | Description |
|----------|------|-------------|
| `autoAdsEnabled` | `boolean` | Whether auto ads is turned on for the site. |
| `domain` | `string` | Domain (or subdomain) of the site, e.g. "example.com" or "www.example.com". This is used in the `... |
| `name` | `string` | Output only. Resource name of a site. Format: accounts/{account}/sites/{site} |
| `reportingDimensionId` | `string` | Output only. Unique ID of the site as used in the `OWNED_SITE_ID` reporting dimension. |
| `state` | `string` | Output only. State of a site. |

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

### `UrlChannel`

Representation of a URL channel. URL channels allow you to track the performance of particular pages in your site; see [URL channels](https://support.google.com/adsense/answer/2923836) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name of the URL channel. Format: accounts/{account}/adclients/{adclient}/ur... |
| `reportingDimensionId` | `string` | Output only. Unique ID of the custom channel as used in the `URL_CHANNEL_ID` reporting dimension. |
| `uriPattern` | `string` | URI pattern of the channel. Does not include "http://" or "https://". Example: www.example.com/home |

