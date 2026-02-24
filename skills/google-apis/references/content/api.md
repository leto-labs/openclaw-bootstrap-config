# Content API for Shopping - API Reference

**Version**: `v2.1` | **Methods**: 125 | **Schemas**: 317

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `content.accounts.authinfo` | GET | `accounts/authinfo` | Returns information about the authenticated user. |
| `content.accounts.claimwebsite` | POST | `{merchantId}/accounts/{accountId}/claimwebsite` | Claims the website of a Merchant Center sub-account. Merchant accounts with approved third-party ... |
| `content.accounts.custombatch` | POST | `accounts/batch` | Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single requ... |
| `content.accounts.delete` | DELETE | `{merchantId}/accounts/{accountId}` | Deletes a Merchant Center sub-account. |
| `content.accounts.get` | GET | `{merchantId}/accounts/{accountId}` | Retrieves a Merchant Center account. |
| `content.accounts.insert` | POST | `{merchantId}/accounts` | Creates a Merchant Center sub-account. |
| `content.accounts.link` | POST | `{merchantId}/accounts/{accountId}/link` | Performs an action on a link between two Merchant Center accounts, namely accountId and linkedAcc... |
| `content.accounts.list` | GET | `{merchantId}/accounts` | Lists the sub-accounts in your Merchant Center account. |
| `content.accounts.listlinks` | GET | `{merchantId}/accounts/{accountId}/listlinks` | Returns the list of accounts linked to your Merchant Center account. |
| `content.accounts.update` | PUT | `{merchantId}/accounts/{accountId}` | Updates a Merchant Center account. Any fields that are not provided are deleted from the resource. |
| `content.accounts.updatelabels` | POST | `{merchantId}/accounts/{accountId}/updatelabels` | Updates labels that are assigned to the Merchant Center account by CSS user. |
| `content.accounts.requestphoneverification` | POST | `{merchantId}/accounts/{accountId}/requestphoneverification` | Request verification code to start phone verification. |
| `content.accounts.verifyphonenumber` | POST | `{merchantId}/accounts/{accountId}/verifyphonenumber` | Validates verification code to verify phone number for the account. If successful this will overw... |
| `content.accounts.credentials.create` | POST | `accounts/{accountId}/credentials` | Uploads credentials for the Merchant Center account. If credentials already exist for this Mercha... |
| `content.accounts.labels.list` | GET | `accounts/{accountId}/labels` | Lists the labels assigned to an account. |
| `content.accounts.labels.create` | POST | `accounts/{accountId}/labels` | Creates a new label, not assigned to any account. |
| `content.accounts.labels.patch` | PATCH | `accounts/{accountId}/labels/{labelId}` | Updates a label. |
| `content.accounts.labels.delete` | DELETE | `accounts/{accountId}/labels/{labelId}` | Deletes a label and removes it from all accounts to which it was assigned. |
| `content.accounts.returncarrier.create` | POST | `accounts/{accountId}/returncarrier` | Links return carrier to a merchant account. |
| `content.accounts.returncarrier.patch` | PATCH | `accounts/{accountId}/returncarrier/{carrierAccountId}` | Updates a return carrier in the merchant account. |
| `content.accounts.returncarrier.delete` | DELETE | `accounts/{accountId}/returncarrier/{carrierAccountId}` | Delete a return carrier in the merchant account. |
| `content.accounts.returncarrier.list` | GET | `accounts/{accountId}/returncarrier` | Lists available return carriers in the merchant account. |
| `content.accountstatuses.custombatch` | POST | `accountstatuses/batch` | Retrieves multiple Merchant Center account statuses in a single request. |
| `content.accountstatuses.get` | GET | `{merchantId}/accountstatuses/{accountId}` | Retrieves the status of a Merchant Center account. No itemLevelIssues are returned for multi-clie... |
| `content.accountstatuses.list` | GET | `{merchantId}/accountstatuses` | Lists the statuses of the sub-accounts in your Merchant Center account. |
| `content.accounttax.custombatch` | POST | `accounttax/batch` | Retrieves and updates tax settings of multiple accounts in a single request. |
| `content.accounttax.get` | GET | `{merchantId}/accounttax/{accountId}` | Retrieves the tax settings of the account. |
| `content.accounttax.list` | GET | `{merchantId}/accounttax` | Lists the tax settings of the sub-accounts in your Merchant Center account. |
| `content.accounttax.update` | PUT | `{merchantId}/accounttax/{accountId}` | Updates the tax settings of the account. Any fields that are not provided are deleted from the re... |
| `content.datafeeds.custombatch` | POST | `datafeeds/batch` | Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request. |
| `content.datafeeds.delete` | DELETE | `{merchantId}/datafeeds/{datafeedId}` | Deletes a datafeed configuration from your Merchant Center account. |
| `content.datafeeds.fetchnow` | POST | `{merchantId}/datafeeds/{datafeedId}/fetchNow` | Invokes a fetch for the datafeed in your Merchant Center account. If you need to call this method... |
| `content.datafeeds.get` | GET | `{merchantId}/datafeeds/{datafeedId}` | Retrieves a datafeed configuration from your Merchant Center account. |
| `content.datafeeds.insert` | POST | `{merchantId}/datafeeds` | Registers a datafeed configuration with your Merchant Center account. |
| `content.datafeeds.list` | GET | `{merchantId}/datafeeds` | Lists the configurations for datafeeds in your Merchant Center account. |
| `content.datafeeds.update` | PUT | `{merchantId}/datafeeds/{datafeedId}` | Updates a datafeed configuration of your Merchant Center account. Any fields that are not provide... |
| `content.datafeedstatuses.custombatch` | POST | `datafeedstatuses/batch` | Gets multiple Merchant Center datafeed statuses in a single request. |
| `content.datafeedstatuses.get` | GET | `{merchantId}/datafeedstatuses/{datafeedId}` | Retrieves the status of a datafeed from your Merchant Center account. |
| `content.datafeedstatuses.list` | GET | `{merchantId}/datafeedstatuses` | Lists the statuses of the datafeeds in your Merchant Center account. |
| `content.liasettings.custombatch` | POST | `liasettings/batch` | Retrieves and/or updates the LIA settings of multiple accounts in a single request. |
| `content.liasettings.get` | GET | `{merchantId}/liasettings/{accountId}` | Retrieves the LIA settings of the account. |
| `content.liasettings.getaccessiblegmbaccounts` | GET | `{merchantId}/liasettings/{accountId}/accessiblegmbaccounts` | Retrieves the list of accessible Business Profiles. |
| `content.liasettings.list` | GET | `{merchantId}/liasettings` | Lists the LIA settings of the sub-accounts in your Merchant Center account. |
| `content.liasettings.listposdataproviders` | GET | `liasettings/posdataproviders` | Retrieves the list of POS data providers that have active settings for the all eiligible countries. |
| `content.liasettings.requestgmbaccess` | POST | `{merchantId}/liasettings/{accountId}/requestgmbaccess` | Requests access to a specified Business Profile. |
| `content.liasettings.requestinventoryverification` | POST | `{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}` | Requests inventory validation for the specified country. |
| `content.liasettings.setinventoryverificationcontact` | POST | `{merchantId}/liasettings/{accountId}/setinventoryverificationcontact` | Sets the inventory verification contact for the specified country. |
| `content.liasettings.setomnichannelexperience` | POST | `{merchantId}/liasettings/{accountId}/setomnichannelexperience` | Sets the omnichannel experience for the specified country. Only supported for merchants whose POS... |
| `content.liasettings.setposdataprovider` | POST | `{merchantId}/liasettings/{accountId}/setposdataprovider` | Sets the POS data provider for the specified country. |
| `content.liasettings.update` | PUT | `{merchantId}/liasettings/{accountId}` | Updates the LIA settings of the account. Any fields that are not provided are deleted from the re... |
| `content.localinventory.custombatch` | POST | `localinventory/batch` | Updates local inventory for multiple products or stores in a single request. |
| `content.localinventory.insert` | POST | `{merchantId}/products/{productId}/localinventory` | Updates the local inventory of a product in your Merchant Center account. |
| `content.pos.custombatch` | POST | `pos/batch` | Batches multiple POS-related calls in a single request. |
| `content.pos.delete` | DELETE | `{merchantId}/pos/{targetMerchantId}/store/{storeCode}` | Deletes a store for the given merchant. |
| `content.pos.get` | GET | `{merchantId}/pos/{targetMerchantId}/store/{storeCode}` | Retrieves information about the given store. |
| `content.pos.insert` | POST | `{merchantId}/pos/{targetMerchantId}/store` | Creates a store for the given merchant. |
| `content.pos.inventory` | POST | `{merchantId}/pos/{targetMerchantId}/inventory` | Submit inventory for the given merchant. |
| `content.pos.list` | GET | `{merchantId}/pos/{targetMerchantId}/store` | Lists the stores of the target merchant. |
| `content.pos.sale` | POST | `{merchantId}/pos/{targetMerchantId}/sale` | Submit a sale event for the given merchant. |
| `content.products.custombatch` | POST | `products/batch` | Retrieves, inserts, and deletes multiple products in a single request. |
| `content.products.delete` | DELETE | `{merchantId}/products/{productId}` | Deletes a product from your Merchant Center account. |
| `content.products.get` | GET | `{merchantId}/products/{productId}` | Retrieves a product from your Merchant Center account. |
| `content.products.insert` | POST | `{merchantId}/products` | Uploads a product to your Merchant Center account. If an item with the same channel, contentLangu... |
| `content.products.update` | PATCH | `{merchantId}/products/{productId}` | Updates an existing product in your Merchant Center account. Only updates attributes provided in ... |
| `content.products.list` | GET | `{merchantId}/products` | Lists the products in your Merchant Center account. The response might contain fewer items than s... |
| `content.productstatuses.custombatch` | POST | `productstatuses/batch` | Gets the statuses of multiple products in a single request. |
| `content.productstatuses.get` | GET | `{merchantId}/productstatuses/{productId}` | Gets the status of a product from your Merchant Center account. |
| `content.productstatuses.list` | GET | `{merchantId}/productstatuses` | Lists the statuses of the products in your Merchant Center account. |
| `content.pubsubnotificationsettings.get` | GET | `{merchantId}/pubsubnotificationsettings` | Retrieves a Merchant Center account's pubsub notification settings. |
| `content.pubsubnotificationsettings.update` | PUT | `{merchantId}/pubsubnotificationsettings` | Register a Merchant Center account for pubsub notifications. Note that cloud topic name shouldn't... |
| `content.regionalinventory.custombatch` | POST | `regionalinventory/batch` | Updates regional inventory for multiple products or regions in a single request. |
| `content.regionalinventory.insert` | POST | `{merchantId}/products/{productId}/regionalinventory` | Updates the regional inventory of a product in your Merchant Center account. If a regional invent... |
| `content.shippingsettings.custombatch` | POST | `shippingsettings/batch` | Retrieves and updates the shipping settings of multiple accounts in a single request. |
| `content.shippingsettings.get` | GET | `{merchantId}/shippingsettings/{accountId}` | Retrieves the shipping settings of the account. |
| `content.shippingsettings.getsupportedcarriers` | GET | `{merchantId}/supportedCarriers` | Retrieves supported carriers and carrier services for an account. |
| `content.shippingsettings.getsupportedholidays` | GET | `{merchantId}/supportedHolidays` | Retrieves supported holidays for an account. |
| `content.shippingsettings.getsupportedpickupservices` | GET | `{merchantId}/supportedPickupServices` | Retrieves supported pickup services for an account. |
| `content.shippingsettings.list` | GET | `{merchantId}/shippingsettings` | Lists the shipping settings of the sub-accounts in your Merchant Center account. |
| `content.shippingsettings.update` | PUT | `{merchantId}/shippingsettings/{accountId}` | Updates the shipping settings of the account. Any fields that are not provided are deleted from t... |
| `content.collections.get` | GET | `{merchantId}/collections/{collectionId}` | Retrieves a collection from your Merchant Center account. |
| `content.collections.list` | GET | `{merchantId}/collections` | Lists the collections in your Merchant Center account. The response might contain fewer items tha... |
| `content.collections.create` | POST | `{merchantId}/collections` | Uploads a collection to your Merchant Center account. If a collection with the same collectionId ... |
| `content.collections.delete` | DELETE | `{merchantId}/collections/{collectionId}` | Deletes a collection from your Merchant Center account. |
| `content.quotas.list` | GET | `{merchantId}/quotas` | Lists the daily call quota and usage per method for your Merchant Center account. |
| `content.collectionstatuses.get` | GET | `{merchantId}/collectionstatuses/{collectionId}` | Gets the status of a collection from your Merchant Center account. |
| `content.collectionstatuses.list` | GET | `{merchantId}/collectionstatuses` | Lists the statuses of the collections in your Merchant Center account. |
| `content.conversionsources.create` | POST | `{merchantId}/conversionsources` | Creates a new conversion source. |
| `content.conversionsources.patch` | PATCH | `{merchantId}/conversionsources/{conversionSourceId}` | Updates information of an existing conversion source. |
| `content.conversionsources.delete` | DELETE | `{merchantId}/conversionsources/{conversionSourceId}` | Archives an existing conversion source. It will be recoverable for 30 days. This archiving behavi... |
| `content.conversionsources.undelete` | POST | `{merchantId}/conversionsources/{conversionSourceId}:undelete` | Re-enables an archived conversion source. |
| `content.conversionsources.get` | GET | `{merchantId}/conversionsources/{conversionSourceId}` | Fetches a conversion source. |
| `content.conversionsources.list` | GET | `{merchantId}/conversionsources` | Retrieves the list of conversion sources the caller has access to. |
| `content.freelistingsprogram.get` | GET | `{merchantId}/freelistingsprogram` | Retrieves the status and review eligibility for the free listing program. Returns errors and warn... |
| `content.freelistingsprogram.requestreview` | POST | `{merchantId}/freelistingsprogram/requestreview` | Requests a review of free listings in a specific region. This method deprecated. Use the `Merchan... |
| `content.freelistingsprogram.checkoutsettings.get` | GET | `{merchantId}/freelistingsprogram/checkoutsettings` | Gets Checkout settings for the given merchant. This includes information about review state, enro... |
| `content.freelistingsprogram.checkoutsettings.insert` | POST | `{merchantId}/freelistingsprogram/checkoutsettings` | Enrolls merchant in `Checkout` program. |
| `content.freelistingsprogram.checkoutsettings.delete` | DELETE | `{merchantId}/freelistingsprogram/checkoutsettings` | Deletes `Checkout` settings and unenrolls merchant from `Checkout` program. |
| `content.shoppingadsprogram.get` | GET | `{merchantId}/shoppingadsprogram` | Retrieves the status and review eligibility for the Shopping Ads program. Returns errors and warn... |
| `content.shoppingadsprogram.requestreview` | POST | `{merchantId}/shoppingadsprogram/requestreview` | Requests a review of Shopping ads in a specific region. This method deprecated. Use the `Merchant... |
| `content.csses.list` | GET | `{cssGroupId}/csses` | Lists CSS domains affiliated with a CSS group. |
| `content.csses.get` | GET | `{cssGroupId}/csses/{cssDomainId}` | Retrieves a single CSS domain by ID. |
| `content.csses.updatelabels` | POST | `{cssGroupId}/csses/{cssDomainId}/updatelabels` | Updates labels that are assigned to a CSS domain by its CSS group. |
| `content.reports.search` | POST | `{merchantId}/reports/search` | Retrieves merchant performance metrics matching the search query and optionally segmented by sele... |
| `content.merchantsupport.renderaccountissues` | POST | `{merchantId}/merchantsupport/renderaccountissues` | Provide a list of merchant's issues with a support content and available actions. This content an... |
| `content.merchantsupport.renderproductissues` | POST | `{merchantId}/merchantsupport/renderproductissues/{productId}` | Provide a list of issues for merchant's product with a support content and available actions. Thi... |
| `content.merchantsupport.triggeraction` | POST | `{merchantId}/merchantsupport/triggeraction` | Start an action. The action can be requested by merchants in third-party application. Before merc... |
| `content.regions.get` | GET | `{merchantId}/regions/{regionId}` | Retrieves a region defined in your Merchant Center account. |
| `content.regions.create` | POST | `{merchantId}/regions` | Creates a region definition in your Merchant Center account. |
| `content.regions.patch` | PATCH | `{merchantId}/regions/{regionId}` | Updates a region definition in your Merchant Center account. |
| `content.regions.delete` | DELETE | `{merchantId}/regions/{regionId}` | Deletes a region definition from your Merchant Center account. |
| `content.regions.list` | GET | `{merchantId}/regions` | Lists the regions in your Merchant Center account. |
| `content.promotions.create` | POST | `{merchantId}/promotions` | Inserts a promotion for your Merchant Center account. If the promotion already exists, then it up... |
| `content.promotions.get` | GET | `{merchantId}/promotions/{id}` | Retrieves a promotion from your Merchant Center account. |
| `content.promotions.list` | GET | `{merchantId}/promotions` | List all promotions from your Merchant Center account. |
| `content.recommendations.generate` | GET | `{merchantId}/recommendations/generate` | Generates recommendations for a merchant. |
| `content.recommendations.reportInteraction` | POST | `{merchantId}/recommendations/reportInteraction` | Reports an interaction on a recommendation for a merchant. |
| `content.returnpolicyonline.get` | GET | `{merchantId}/returnpolicyonline/{returnPolicyId}` | Gets an existing return policy. |
| `content.returnpolicyonline.create` | POST | `{merchantId}/returnpolicyonline` | Creates a new return policy. |
| `content.returnpolicyonline.delete` | DELETE | `{merchantId}/returnpolicyonline/{returnPolicyId}` | Deletes an existing return policy. |
| `content.returnpolicyonline.patch` | PATCH | `{merchantId}/returnpolicyonline/{returnPolicyId}` | Updates an existing return policy. |
| `content.returnpolicyonline.list` | GET | `{merchantId}/returnpolicyonline` | Lists all existing return policies. |
| `content.ordertrackingsignals.create` | POST | `{merchantId}/ordertrackingsignals` | Creates new order tracking signal. |
| `content.productdeliverytime.create` | POST | `{merchantId}/productdeliverytime` | Creates or updates the delivery time of a product. |
| `content.productdeliverytime.get` | GET | `{merchantId}/productdeliverytime/{productId}` | Gets `productDeliveryTime` by `productId`. |
| `content.productdeliverytime.delete` | DELETE | `{merchantId}/productdeliverytime/{productId}` | Deletes the delivery time of a product. |

### `content.accounts.authinfo`

**GET** `accounts/authinfo`

Returns information about the authenticated user.

**Response**: `AccountsAuthInfoResponse`

```typescript
const res = await content.accounts.authinfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.claimwebsite`

**POST** `{merchantId}/accounts/{accountId}/claimwebsite`

Claims the website of a Merchant Center sub-account. Merchant accounts with approved third-party CSSs aren't required to claim a website.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account whose website is claimed. |
| `overwrite` | `boolean` | query | No | Only available to selected merchants, for example multi-client accounts (MCAs) and their sub-accounts. When set to `T... |

**Response**: `AccountsClaimWebsiteResponse`

```typescript
const res = await content.accounts.claimwebsite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.custombatch`

**POST** `accounts/batch`

Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.

**Request body**: `AccountsCustomBatchRequest`

**Response**: `AccountsCustomBatchResponse`

```typescript
const res = await content.accounts.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.delete`

**DELETE** `{merchantId}/accounts/{accountId}`

Deletes a Merchant Center sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account, and accountId must be the ID of a sub-account of... |
| `accountId` | `string` | path | Yes | The ID of the account. |
| `force` | `boolean` | query | No | Option to delete sub-accounts with products. The default value is false. |

```typescript
const res = await content.accounts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.get`

**GET** `{merchantId}/accounts/{accountId}`

Retrieves a Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account. |
| `view` | `string` | query | No | Controls which fields will be populated. Acceptable values are: "merchant" and "css". The default value is "merchant". |

**Response**: `Account`

```typescript
const res = await content.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.insert`

**POST** `{merchantId}/accounts`

Creates a Merchant Center sub-account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await content.accounts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.link`

**POST** `{merchantId}/accounts/{accountId}/link`

Performs an action on a link between two Merchant Center accounts, namely accountId and linkedAccountId.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account that should be linked. |

**Request body**: `AccountsLinkRequest`

**Response**: `AccountsLinkResponse`

```typescript
const res = await content.accounts.link({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.list`

**GET** `{merchantId}/accounts`

Lists the sub-accounts in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |
| `label` | `string` | query | No | If view is set to "css", only return accounts that are assigned label with given ID. |
| `maxResults` | `integer` | query | No | The maximum number of accounts to return in the response, used for paging. |
| `name` | `string` | query | No | If set, only the accounts with the given name (case sensitive) will be returned. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |
| `view` | `string` | query | No | Controls which fields will be populated. Acceptable values are: "merchant" and "css". The default value is "merchant". |

**Response**: `AccountsListResponse`

```typescript
const res = await content.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.listlinks`

**GET** `{merchantId}/accounts/{accountId}/listlinks`

Returns the list of accounts linked to your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to list links. |
| `maxResults` | `integer` | query | No | The maximum number of links to return in the response, used for pagination. The minimum allowed value is 5 results pe... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `AccountsListLinksResponse`

```typescript
const res = await content.accounts.listlinks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.update`

**PUT** `{merchantId}/accounts/{accountId}`

Updates a Merchant Center account. Any fields that are not provided are deleted from the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await content.accounts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.updatelabels`

**POST** `{merchantId}/accounts/{accountId}/updatelabels`

Updates labels that are assigned to the Merchant Center account by CSS user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. |
| `accountId` | `string` | path | Yes | The ID of the account whose labels are updated. |

**Request body**: `AccountsUpdateLabelsRequest`

**Response**: `AccountsUpdateLabelsResponse`

```typescript
const res = await content.accounts.updatelabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.requestphoneverification`

**POST** `{merchantId}/accounts/{accountId}/requestphoneverification`

Request verification code to start phone verification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a... |
| `accountId` | `string` | path | Yes | Required. The ID of the account. |

**Request body**: `RequestPhoneVerificationRequest`

**Response**: `RequestPhoneVerificationResponse`

```typescript
const res = await content.accounts.requestphoneverification({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.verifyphonenumber`

**POST** `{merchantId}/accounts/{accountId}/verifyphonenumber`

Validates verification code to verify phone number for the account. If successful this will overwrite the value of `accounts.businessinformation.phoneNumber`. Only verified phone number will replace an existing verified phone number.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a... |
| `accountId` | `string` | path | Yes | Required. The ID of the account. |

**Request body**: `VerifyPhoneNumberRequest`

**Response**: `VerifyPhoneNumberResponse`

```typescript
const res = await content.accounts.verifyphonenumber({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.credentials.create`

**POST** `accounts/{accountId}/credentials`

Uploads credentials for the Merchant Center account. If credentials already exist for this Merchant Center account and purpose, this method updates them.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The merchant id of the account these credentials belong to. |

**Request body**: `AccountCredentials`

**Response**: `AccountCredentials`

```typescript
const res = await content.credentials.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.labels.list`

**GET** `accounts/{accountId}/labels`

Lists the labels assigned to an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The account id for whose labels are to be listed. |
| `pageSize` | `integer` | query | No | The maximum number of labels to return. The service may return fewer than this value. If unspecified, at most 50 labe... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAccountLabels` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListAccountLabelsResponse`

```typescript
const res = await content.labels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.labels.create`

**POST** `accounts/{accountId}/labels`

Creates a new label, not assigned to any account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The id of the account this label belongs to. |

**Request body**: `AccountLabel`

**Response**: `AccountLabel`

```typescript
const res = await content.labels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.labels.patch`

**PATCH** `accounts/{accountId}/labels/{labelId}`

Updates a label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The id of the account this label belongs to. |
| `labelId` | `string` | path | Yes | Required. The id of the label to update. |

**Request body**: `AccountLabel`

**Response**: `AccountLabel`

```typescript
const res = await content.labels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.labels.delete`

**DELETE** `accounts/{accountId}/labels/{labelId}`

Deletes a label and removes it from all accounts to which it was assigned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The id of the account that owns the label. |
| `labelId` | `string` | path | Yes | Required. The id of the label to delete. |

```typescript
const res = await content.labels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.returncarrier.create`

**POST** `accounts/{accountId}/returncarrier`

Links return carrier to a merchant account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The Merchant Center Account Id under which the Return Carrier is to be linked. |

**Request body**: `AccountReturnCarrier`

**Response**: `AccountReturnCarrier`

```typescript
const res = await content.returncarrier.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.returncarrier.patch`

**PATCH** `accounts/{accountId}/returncarrier/{carrierAccountId}`

Updates a return carrier in the merchant account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The Merchant Center Account Id under which the Return Carrier is to be linked. |
| `carrierAccountId` | `string` | path | Yes | Required. The Google-provided unique carrier ID, used to update the resource. |

**Request body**: `AccountReturnCarrier`

**Response**: `AccountReturnCarrier`

```typescript
const res = await content.returncarrier.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.returncarrier.delete`

**DELETE** `accounts/{accountId}/returncarrier/{carrierAccountId}`

Delete a return carrier in the merchant account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The Merchant Center Account Id under which the Return Carrier is to be linked. |
| `carrierAccountId` | `string` | path | Yes | Required. The Google-provided unique carrier ID, used to update the resource. |

```typescript
const res = await content.returncarrier.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounts.returncarrier.list`

**GET** `accounts/{accountId}/returncarrier`

Lists available return carriers in the merchant account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Required. The Merchant Center Account Id under which the Return Carrier is to be linked. |

**Response**: `ListAccountReturnCarrierResponse`

```typescript
const res = await content.returncarrier.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accountstatuses.custombatch`

**POST** `accountstatuses/batch`

Retrieves multiple Merchant Center account statuses in a single request.

**Request body**: `AccountstatusesCustomBatchRequest`

**Response**: `AccountstatusesCustomBatchResponse`

```typescript
const res = await content.accountstatuses.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accountstatuses.get`

**GET** `{merchantId}/accountstatuses/{accountId}`

Retrieves the status of a Merchant Center account. No itemLevelIssues are returned for multi-client accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account. |
| `destinations` | `string` | query | No | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination. |

**Response**: `AccountStatus`

```typescript
const res = await content.accountstatuses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accountstatuses.list`

**GET** `{merchantId}/accountstatuses`

Lists the statuses of the sub-accounts in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |
| `destinations` | `string` | query | No | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination. |
| `maxResults` | `integer` | query | No | The maximum number of account statuses to return in the response, used for paging. |
| `name` | `string` | query | No | If set, only the accounts with the given name (case sensitive) will be returned. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `AccountstatusesListResponse`

```typescript
const res = await content.accountstatuses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounttax.custombatch`

**POST** `accounttax/batch`

Retrieves and updates tax settings of multiple accounts in a single request.

**Request body**: `AccounttaxCustomBatchRequest`

**Response**: `AccounttaxCustomBatchResponse`

```typescript
const res = await content.accounttax.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounttax.get`

**GET** `{merchantId}/accounttax/{accountId}`

Retrieves the tax settings of the account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get/update account tax settings. |

**Response**: `AccountTax`

```typescript
const res = await content.accounttax.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounttax.list`

**GET** `{merchantId}/accounttax`

Lists the tax settings of the sub-accounts in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of tax settings to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `AccounttaxListResponse`

```typescript
const res = await content.accounttax.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.accounttax.update`

**PUT** `{merchantId}/accounttax/{accountId}`

Updates the tax settings of the account. Any fields that are not provided are deleted from the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get/update account tax settings. |

**Request body**: `AccountTax`

**Response**: `AccountTax`

```typescript
const res = await content.accounttax.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.custombatch`

**POST** `datafeeds/batch`

Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request.

**Request body**: `DatafeedsCustomBatchRequest`

**Response**: `DatafeedsCustomBatchResponse`

```typescript
const res = await content.datafeeds.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.delete`

**DELETE** `{merchantId}/datafeeds/{datafeedId}`

Deletes a datafeed configuration from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |
| `datafeedId` | `string` | path | Yes | The ID of the datafeed. |

```typescript
const res = await content.datafeeds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.fetchnow`

**POST** `{merchantId}/datafeeds/{datafeedId}/fetchNow`

Invokes a fetch for the datafeed in your Merchant Center account. If you need to call this method more than once per day, we recommend you use the [Products service](https://developers.google.com/shopping-content/reference/rest/v2.1/products) to update your product data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |
| `datafeedId` | `string` | path | Yes | The ID of the datafeed to be fetched. |

**Response**: `DatafeedsFetchNowResponse`

```typescript
const res = await content.datafeeds.fetchnow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.get`

**GET** `{merchantId}/datafeeds/{datafeedId}`

Retrieves a datafeed configuration from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |
| `datafeedId` | `string` | path | Yes | The ID of the datafeed. |

**Response**: `Datafeed`

```typescript
const res = await content.datafeeds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.insert`

**POST** `{merchantId}/datafeeds`

Registers a datafeed configuration with your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |

**Request body**: `Datafeed`

**Response**: `Datafeed`

```typescript
const res = await content.datafeeds.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.list`

**GET** `{merchantId}/datafeeds`

Lists the configurations for datafeeds in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeeds. This account cannot be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of products to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `DatafeedsListResponse`

```typescript
const res = await content.datafeeds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeeds.update`

**PUT** `{merchantId}/datafeeds/{datafeedId}`

Updates a datafeed configuration of your Merchant Center account. Any fields that are not provided are deleted from the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |
| `datafeedId` | `string` | path | Yes | The ID of the datafeed. |

**Request body**: `Datafeed`

**Response**: `Datafeed`

```typescript
const res = await content.datafeeds.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeedstatuses.custombatch`

**POST** `datafeedstatuses/batch`

Gets multiple Merchant Center datafeed statuses in a single request.

**Request body**: `DatafeedstatusesCustomBatchRequest`

**Response**: `DatafeedstatusesCustomBatchResponse`

```typescript
const res = await content.datafeedstatuses.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeedstatuses.get`

**GET** `{merchantId}/datafeedstatuses/{datafeedId}`

Retrieves the status of a datafeed from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeed. This account cannot be a multi-client account. |
| `datafeedId` | `string` | path | Yes | The ID of the datafeed. |
| `country` | `string` | query | No | Deprecated. Use `feedLabel` instead. The country to get the datafeed status for. If this parameter is provided then `... |
| `feedLabel` | `string` | query | No | The feed label to get the datafeed status for. If this parameter is provided then `language` must also be provided. N... |
| `language` | `string` | query | No | The language to get the datafeed status for. If this parameter is provided then `country` must also be provided. Note... |

**Response**: `DatafeedStatus`

```typescript
const res = await content.datafeedstatuses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.datafeedstatuses.list`

**GET** `{merchantId}/datafeedstatuses`

Lists the statuses of the datafeeds in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that manages the datafeeds. This account cannot be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of products to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `DatafeedstatusesListResponse`

```typescript
const res = await content.datafeedstatuses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.custombatch`

**POST** `liasettings/batch`

Retrieves and/or updates the LIA settings of multiple accounts in a single request.

**Request body**: `LiasettingsCustomBatchRequest`

**Response**: `LiasettingsCustomBatchResponse`

```typescript
const res = await content.liasettings.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.get`

**GET** `{merchantId}/liasettings/{accountId}`

Retrieves the LIA settings of the account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get or update LIA settings. |

**Response**: `LiaSettings`

```typescript
const res = await content.liasettings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.getaccessiblegmbaccounts`

**GET** `{merchantId}/liasettings/{accountId}/accessiblegmbaccounts`

Retrieves the list of accessible Business Profiles.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to retrieve accessible Business Profiles. |

**Response**: `LiasettingsGetAccessibleGmbAccountsResponse`

```typescript
const res = await content.liasettings.getaccessiblegmbaccounts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.list`

**GET** `{merchantId}/liasettings`

Lists the LIA settings of the sub-accounts in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of LIA settings to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `LiasettingsListResponse`

```typescript
const res = await content.liasettings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.listposdataproviders`

**GET** `liasettings/posdataproviders`

Retrieves the list of POS data providers that have active settings for the all eiligible countries.

**Response**: `LiasettingsListPosDataProvidersResponse`

```typescript
const res = await content.liasettings.listposdataproviders({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.requestgmbaccess`

**POST** `{merchantId}/liasettings/{accountId}/requestgmbaccess`

Requests access to a specified Business Profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which Business Profile access is requested. |
| `gmbEmail` | `string` | query | Yes | The email of the Business Profile. |

**Response**: `LiasettingsRequestGmbAccessResponse`

```typescript
const res = await content.liasettings.requestgmbaccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.requestinventoryverification`

**POST** `{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}`

Requests inventory validation for the specified country.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account that manages the order. This cannot be a multi-client account. |
| `country` | `string` | path | Yes | The country for which inventory validation is requested. |

**Response**: `LiasettingsRequestInventoryVerificationResponse`

```typescript
const res = await content.liasettings.requestinventoryverification({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.setinventoryverificationcontact`

**POST** `{merchantId}/liasettings/{accountId}/setinventoryverificationcontact`

Sets the inventory verification contact for the specified country.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account that manages the order. This cannot be a multi-client account. |
| `country` | `string` | query | Yes | The country for which inventory verification is requested. |
| `language` | `string` | query | Yes | The language for which inventory verification is requested. |
| `contactName` | `string` | query | Yes | The name of the inventory verification contact. |
| `contactEmail` | `string` | query | Yes | The email of the inventory verification contact. |

**Response**: `LiasettingsSetInventoryVerificationContactResponse`

```typescript
const res = await content.liasettings.setinventoryverificationcontact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.setomnichannelexperience`

**POST** `{merchantId}/liasettings/{accountId}/setomnichannelexperience`

Sets the omnichannel experience for the specified country. Only supported for merchants whose POS data provider is trusted to enable the corresponding experience. For more context, see these help articles [about LFP](https://support.google.com/merchants/answer/7676652) and [how to get started](https://support.google.com/merchants/answer/7676578) with it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to retrieve accessible Business Profiles. |
| `country` | `string` | query | No | The CLDR country code (for example, "US") for which the omnichannel experience is selected. |
| `lsfType` | `string` | query | No | The Local Store Front (LSF) type for this country. Acceptable values are: - "`ghlsf`" (Google-Hosted Local Store Fron... |
| `pickupTypes` | `string` | query | No | The Pickup types for this country. Acceptable values are: - "`pickupToday`" - "`pickupLater`" |

**Response**: `LiaOmnichannelExperience`

```typescript
const res = await content.liasettings.setomnichannelexperience({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.setposdataprovider`

**POST** `{merchantId}/liasettings/{accountId}/setposdataprovider`

Sets the POS data provider for the specified country.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to retrieve accessible Business Profiles. |
| `country` | `string` | query | Yes | The country for which the POS data provider is selected. |
| `posDataProviderId` | `string` | query | No | The ID of POS data provider. |
| `posExternalAccountId` | `string` | query | No | The account ID by which this merchant is known to the POS data provider. |

**Response**: `LiasettingsSetPosDataProviderResponse`

```typescript
const res = await content.liasettings.setposdataprovider({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.liasettings.update`

**PUT** `{merchantId}/liasettings/{accountId}`

Updates the LIA settings of the account. Any fields that are not provided are deleted from the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get or update LIA settings. |

**Request body**: `LiaSettings`

**Response**: `LiaSettings`

```typescript
const res = await content.liasettings.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.localinventory.custombatch`

**POST** `localinventory/batch`

Updates local inventory for multiple products or stores in a single request.

**Request body**: `LocalinventoryCustomBatchRequest`

**Response**: `LocalinventoryCustomBatchResponse`

```typescript
const res = await content.localinventory.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.localinventory.insert`

**POST** `{merchantId}/products/{productId}/localinventory`

Updates the local inventory of a product in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product for which to update local inventory. |

**Request body**: `LocalInventory`

**Response**: `LocalInventory`

```typescript
const res = await content.localinventory.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.custombatch`

**POST** `pos/batch`

Batches multiple POS-related calls in a single request.

**Request body**: `PosCustomBatchRequest`

**Response**: `PosCustomBatchResponse`

```typescript
const res = await content.pos.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.delete`

**DELETE** `{merchantId}/pos/{targetMerchantId}/store/{storeCode}`

Deletes a store for the given merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |
| `storeCode` | `string` | path | Yes | A store code that is unique per merchant. |

```typescript
const res = await content.pos.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.get`

**GET** `{merchantId}/pos/{targetMerchantId}/store/{storeCode}`

Retrieves information about the given store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |
| `storeCode` | `string` | path | Yes | A store code that is unique per merchant. |

**Response**: `PosStore`

```typescript
const res = await content.pos.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.insert`

**POST** `{merchantId}/pos/{targetMerchantId}/store`

Creates a store for the given merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |

**Request body**: `PosStore`

**Response**: `PosStore`

```typescript
const res = await content.pos.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.inventory`

**POST** `{merchantId}/pos/{targetMerchantId}/inventory`

Submit inventory for the given merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |

**Request body**: `PosInventoryRequest`

**Response**: `PosInventoryResponse`

```typescript
const res = await content.pos.inventory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.list`

**GET** `{merchantId}/pos/{targetMerchantId}/store`

Lists the stores of the target merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |

**Response**: `PosListResponse`

```typescript
const res = await content.pos.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pos.sale`

**POST** `{merchantId}/pos/{targetMerchantId}/sale`

Submit a sale event for the given merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the POS or inventory data provider. |
| `targetMerchantId` | `string` | path | Yes | The ID of the target merchant. |

**Request body**: `PosSaleRequest`

**Response**: `PosSaleResponse`

```typescript
const res = await content.pos.sale({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.custombatch`

**POST** `products/batch`

Retrieves, inserts, and deletes multiple products in a single request.

**Request body**: `ProductsCustomBatchRequest`

**Response**: `ProductsCustomBatchResponse`

```typescript
const res = await content.products.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.delete`

**DELETE** `{merchantId}/products/{productId}`

Deletes a product from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product. |
| `feedId` | `string` | query | No | The Content API Supplemental Feed ID. If present then product deletion applies to the data in a supplemental feed. If... |

```typescript
const res = await content.products.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.get`

**GET** `{merchantId}/products/{productId}`

Retrieves a product from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product. |

**Response**: `Product`

```typescript
const res = await content.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.insert`

**POST** `{merchantId}/products`

Uploads a product to your Merchant Center account. If an item with the same channel, contentLanguage, offerId, and targetCountry already exists, this method updates that entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `feedId` | `string` | query | No | The Content API Supplemental Feed ID. If present then product insertion applies to the data in a supplemental feed. |

**Request body**: `Product`

**Response**: `Product`

```typescript
const res = await content.products.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.update`

**PATCH** `{merchantId}/products/{productId}`

Updates an existing product in your Merchant Center account. Only updates attributes provided in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product for which to update. |
| `updateMask` | `string` | query | No | The comma-separated list of product attributes to be updated. Example: `"title,salePrice"`. Attributes specified in t... |

**Request body**: `Product`

**Response**: `Product`

```typescript
const res = await content.products.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.products.list`

**GET** `{merchantId}/products`

Lists the products in your Merchant Center account. The response might contain fewer items than specified by maxResults. Rely on nextPageToken to determine if there are more items to be requested.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the products. This account cannot be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of products to return in the response, used for paging. The default value is 25. The maximum value... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `ProductsListResponse`

```typescript
const res = await content.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productstatuses.custombatch`

**POST** `productstatuses/batch`

Gets the statuses of multiple products in a single request.

**Request body**: `ProductstatusesCustomBatchRequest`

**Response**: `ProductstatusesCustomBatchResponse`

```typescript
const res = await content.productstatuses.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productstatuses.get`

**GET** `{merchantId}/productstatuses/{productId}`

Gets the status of a product from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product. |
| `destinations` | `string` | query | No | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination. |

**Response**: `ProductStatus`

```typescript
const res = await content.productstatuses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productstatuses.list`

**GET** `{merchantId}/productstatuses`

Lists the statuses of the products in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the products. This account cannot be a multi-client account. |
| `destinations` | `string` | query | No | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination. |
| `maxResults` | `integer` | query | No | The maximum number of product statuses to return in the response, used for paging. The default value is 25. The maxim... |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `ProductstatusesListResponse`

```typescript
const res = await content.productstatuses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pubsubnotificationsettings.get`

**GET** `{merchantId}/pubsubnotificationsettings`

Retrieves a Merchant Center account's pubsub notification settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account for which to get pubsub notification settings. |

**Response**: `PubsubNotificationSettings`

```typescript
const res = await content.pubsubnotificationsettings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.pubsubnotificationsettings.update`

**PUT** `{merchantId}/pubsubnotificationsettings`

Register a Merchant Center account for pubsub notifications. Note that cloud topic name shouldn't be provided as part of the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account. |

**Request body**: `PubsubNotificationSettings`

**Response**: `PubsubNotificationSettings`

```typescript
const res = await content.pubsubnotificationsettings.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regionalinventory.custombatch`

**POST** `regionalinventory/batch`

Updates regional inventory for multiple products or regions in a single request.

**Request body**: `RegionalinventoryCustomBatchRequest`

**Response**: `RegionalinventoryCustomBatchResponse`

```typescript
const res = await content.regionalinventory.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regionalinventory.insert`

**POST** `{merchantId}/products/{productId}/regionalinventory`

Updates the regional inventory of a product in your Merchant Center account. If a regional inventory with the same region ID already exists, this method updates that entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account that contains the product. This account cannot be a multi-client account. |
| `productId` | `string` | path | Yes | The REST ID of the product for which to update the regional inventory. |

**Request body**: `RegionalInventory`

**Response**: `RegionalInventory`

```typescript
const res = await content.regionalinventory.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.custombatch`

**POST** `shippingsettings/batch`

Retrieves and updates the shipping settings of multiple accounts in a single request.

**Request body**: `ShippingsettingsCustomBatchRequest`

**Response**: `ShippingsettingsCustomBatchResponse`

```typescript
const res = await content.shippingsettings.custombatch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.get`

**GET** `{merchantId}/shippingsettings/{accountId}`

Retrieves the shipping settings of the account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get/update shipping settings. |

**Response**: `ShippingSettings`

```typescript
const res = await content.shippingsettings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.getsupportedcarriers`

**GET** `{merchantId}/supportedCarriers`

Retrieves supported carriers and carrier services for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account for which to retrieve the supported carriers. |

**Response**: `ShippingsettingsGetSupportedCarriersResponse`

```typescript
const res = await content.shippingsettings.getsupportedcarriers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.getsupportedholidays`

**GET** `{merchantId}/supportedHolidays`

Retrieves supported holidays for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account for which to retrieve the supported holidays. |

**Response**: `ShippingsettingsGetSupportedHolidaysResponse`

```typescript
const res = await content.shippingsettings.getsupportedholidays({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.getsupportedpickupservices`

**GET** `{merchantId}/supportedPickupServices`

Retrieves supported pickup services for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the account for which to retrieve the supported pickup services. |

**Response**: `ShippingsettingsGetSupportedPickupServicesResponse`

```typescript
const res = await content.shippingsettings.getsupportedpickupservices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.list`

**GET** `{merchantId}/shippingsettings`

Lists the shipping settings of the sub-accounts in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. This must be a multi-client account. |
| `maxResults` | `integer` | query | No | The maximum number of shipping settings to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `ShippingsettingsListResponse`

```typescript
const res = await content.shippingsettings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shippingsettings.update`

**PUT** `{merchantId}/shippingsettings/{accountId}`

Updates the shipping settings of the account. Any fields that are not provided are deleted from the resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-cli... |
| `accountId` | `string` | path | Yes | The ID of the account for which to get/update shipping settings. |

**Request body**: `ShippingSettings`

**Response**: `ShippingSettings`

```typescript
const res = await content.shippingsettings.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collections.get`

**GET** `{merchantId}/collections/{collectionId}`

Retrieves a collection from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |
| `collectionId` | `string` | path | Yes | Required. The REST ID of the collection. |

**Response**: `Collection`

```typescript
const res = await content.collections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collections.list`

**GET** `{merchantId}/collections`

Lists the collections in your Merchant Center account. The response might contain fewer items than specified by page_size. Rely on next_page_token to determine if there are more items to be requested.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |
| `pageSize` | `integer` | query | No | The maximum number of collections to return in the response, used for paging. Defaults to 50; values above 1000 will ... |
| `pageToken` | `string` | query | No | Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided ... |

**Response**: `ListCollectionsResponse`

```typescript
const res = await content.collections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collections.create`

**POST** `{merchantId}/collections`

Uploads a collection to your Merchant Center account. If a collection with the same collectionId already exists, this method updates that entry. In each update, the collection is completely replaced by the fields in the body of the update request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |

**Request body**: `Collection`

**Response**: `Collection`

```typescript
const res = await content.collections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collections.delete`

**DELETE** `{merchantId}/collections/{collectionId}`

Deletes a collection from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |
| `collectionId` | `string` | path | Yes | Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection. |

```typescript
const res = await content.collections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.quotas.list`

**GET** `{merchantId}/quotas`

Lists the daily call quota and usage per method for your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that has quota. This account must be an admin. |
| `pageSize` | `integer` | query | No | The maximum number of quotas to return in the response, used for paging. Defaults to 500; values above 1000 will be c... |
| `pageToken` | `string` | query | No | Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided ... |

**Response**: `ListMethodQuotasResponse`

```typescript
const res = await content.quotas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collectionstatuses.get`

**GET** `{merchantId}/collectionstatuses/{collectionId}`

Gets the status of a collection from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |
| `collectionId` | `string` | path | Yes | Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection. |

**Response**: `CollectionStatus`

```typescript
const res = await content.collectionstatuses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.collectionstatuses.list`

**GET** `{merchantId}/collectionstatuses`

Lists the statuses of the collections in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. This account cannot be a multi-client account. |
| `pageSize` | `integer` | query | No | The maximum number of collection statuses to return in the response, used for paging. Defaults to 50; values above 10... |
| `pageToken` | `string` | query | No | Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided ... |

**Response**: `ListCollectionStatusesResponse`

```typescript
const res = await content.collectionstatuses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.create`

**POST** `{merchantId}/conversionsources`

Creates a new conversion source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |

**Request body**: `ConversionSource`

**Response**: `ConversionSource`

```typescript
const res = await content.conversionsources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.patch`

**PATCH** `{merchantId}/conversionsources/{conversionSourceId}`

Updates information of an existing conversion source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |
| `conversionSourceId` | `string` | path | Yes | Required. The ID of the conversion source to be updated. |
| `updateMask` | `string` | query | No | Optional. List of fields being updated. The following fields can be updated: `attribution_settings`, `display_name`, ... |

**Request body**: `ConversionSource`

**Response**: `ConversionSource`

```typescript
const res = await content.conversionsources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.delete`

**DELETE** `{merchantId}/conversionsources/{conversionSourceId}`

Archives an existing conversion source. It will be recoverable for 30 days. This archiving behavior is not typical in the Content API and unique to this service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |
| `conversionSourceId` | `string` | path | Yes | Required. The ID of the conversion source to be deleted. |

```typescript
const res = await content.conversionsources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.undelete`

**POST** `{merchantId}/conversionsources/{conversionSourceId}:undelete`

Re-enables an archived conversion source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |
| `conversionSourceId` | `string` | path | Yes | Required. The ID of the conversion source to be undeleted. |

**Request body**: `UndeleteConversionSourceRequest`

```typescript
const res = await content.conversionsources.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.get`

**GET** `{merchantId}/conversionsources/{conversionSourceId}`

Fetches a conversion source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |
| `conversionSourceId` | `string` | path | Yes | Required. The REST ID of the collection. |

**Response**: `ConversionSource`

```typescript
const res = await content.conversionsources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.conversionsources.list`

**GET** `{merchantId}/conversionsources`

Retrieves the list of conversion sources the caller has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that owns the new conversion source. |
| `pageSize` | `integer` | query | No | The maximum number of conversion sources to return in a page. If no `page_size` is specified, `100` is used as the de... |
| `pageToken` | `string` | query | No | Page token. |
| `showDeleted` | `boolean` | query | No | If true, also returns archived conversion sources. |

**Response**: `ListConversionSourcesResponse`

```typescript
const res = await content.conversionsources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.freelistingsprogram.get`

**GET** `{merchantId}/freelistingsprogram`

Retrieves the status and review eligibility for the free listing program. Returns errors and warnings if they require action to resolve, will become disapprovals, or impact impressions. Use `accountstatuses` to view all issues for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Response**: `FreeListingsProgramStatus`

```typescript
const res = await content.freelistingsprogram.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.freelistingsprogram.requestreview`

**POST** `{merchantId}/freelistingsprogram/requestreview`

Requests a review of free listings in a specific region. This method deprecated. Use the `MerchantSupportService` to view product and account issues and request a review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Request body**: `RequestReviewFreeListingsRequest`

```typescript
const res = await content.freelistingsprogram.requestreview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.freelistingsprogram.checkoutsettings.get`

**GET** `{merchantId}/freelistingsprogram/checkoutsettings`

Gets Checkout settings for the given merchant. This includes information about review state, enrollment state and URL settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Response**: `CheckoutSettings`

```typescript
const res = await content.checkoutsettings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.freelistingsprogram.checkoutsettings.insert`

**POST** `{merchantId}/freelistingsprogram/checkoutsettings`

Enrolls merchant in `Checkout` program.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Request body**: `InsertCheckoutSettingsRequest`

**Response**: `CheckoutSettings`

```typescript
const res = await content.checkoutsettings.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.freelistingsprogram.checkoutsettings.delete`

**DELETE** `{merchantId}/freelistingsprogram/checkoutsettings`

Deletes `Checkout` settings and unenrolls merchant from `Checkout` program.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

```typescript
const res = await content.checkoutsettings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shoppingadsprogram.get`

**GET** `{merchantId}/shoppingadsprogram`

Retrieves the status and review eligibility for the Shopping Ads program. Returns errors and warnings if they require action to resolve, will become disapprovals, or impact impressions. Use `accountstatuses` to view all issues for an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Response**: `ShoppingAdsProgramStatus`

```typescript
const res = await content.shoppingadsprogram.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.shoppingadsprogram.requestreview`

**POST** `{merchantId}/shoppingadsprogram/requestreview`

Requests a review of Shopping ads in a specific region. This method deprecated. Use the `MerchantSupportService` to view product and account issues and request a review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account. |

**Request body**: `RequestReviewShoppingAdsRequest`

```typescript
const res = await content.shoppingadsprogram.requestreview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.csses.list`

**GET** `{cssGroupId}/csses`

Lists CSS domains affiliated with a CSS group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cssGroupId` | `string` | path | Yes | Required. The CSS group ID of CSS domains to be listed. |
| `pageSize` | `integer` | query | No | The maximum number of CSS domains to return. The service may return fewer than this value. If unspecified, at most 50... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCsses` call. Provide this to retrieve the subsequent page. When paginatin... |

**Response**: `ListCssesResponse`

```typescript
const res = await content.csses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.csses.get`

**GET** `{cssGroupId}/csses/{cssDomainId}`

Retrieves a single CSS domain by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cssGroupId` | `string` | path | Yes | Required. The ID of the managing account. If this parameter is not the same as [cssDomainId](#cssDomainId), then this... |
| `cssDomainId` | `string` | path | Yes | Required. The ID of the CSS domain to return. |

**Response**: `Css`

```typescript
const res = await content.csses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.csses.updatelabels`

**POST** `{cssGroupId}/csses/{cssDomainId}/updatelabels`

Updates labels that are assigned to a CSS domain by its CSS group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `cssGroupId` | `string` | path | Yes | Required. The CSS group ID of the updated CSS domain. |
| `cssDomainId` | `string` | path | Yes | Required. The ID of the updated CSS domain. |

**Request body**: `LabelIds`

**Response**: `Css`

```typescript
const res = await content.csses.updatelabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.reports.search`

**POST** `{merchantId}/reports/search`

Retrieves merchant performance metrics matching the search query and optionally segmented by selected dimensions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. Id of the merchant making the call. Must be a standalone account or an MCA subaccount. |

**Request body**: `SearchRequest`

**Response**: `SearchResponse`

```typescript
const res = await content.reports.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.merchantsupport.renderaccountissues`

**POST** `{merchantId}/merchantsupport/renderaccountissues`

Provide a list of merchant's issues with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account to fetch issues for. |
| `languageCode` | `string` | query | No | Optional. The [IETF BCP-47](https://tools.ietf.org/html/bcp47) language code used to localize support content. If not... |
| `timeZone` | `string` | query | No | Optional. The [IANA](https://www.iana.org/time-zones) timezone used to localize times in support content. For example... |

**Request body**: `RenderAccountIssuesRequestPayload`

**Response**: `RenderAccountIssuesResponse`

```typescript
const res = await content.merchantsupport.renderaccountissues({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.merchantsupport.renderproductissues`

**POST** `{merchantId}/merchantsupport/renderproductissues/{productId}`

Provide a list of issues for merchant's product with a support content and available actions. This content and actions are meant to be rendered and shown in third-party applications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the product. |
| `productId` | `string` | path | Yes | Required. The [REST_ID](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id... |
| `languageCode` | `string` | query | No | Optional. The [IETF BCP-47](https://tools.ietf.org/html/bcp47) language code used to localize support content. If not... |
| `timeZone` | `string` | query | No | Optional. The [IANA](https://www.iana.org/time-zones) timezone used to localize times in support content. For example... |

**Request body**: `RenderProductIssuesRequestPayload`

**Response**: `RenderProductIssuesResponse`

```typescript
const res = await content.merchantsupport.renderproductissues({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.merchantsupport.triggeraction`

**POST** `{merchantId}/merchantsupport/triggeraction`

Start an action. The action can be requested by merchants in third-party application. Before merchants can request the action, the third-party application needs to show them action specific content and display a user input form. You can request access using [Trigger action allowlist form](https://docs.google.com/forms/d/e/1FAIpQLSfeV_sBW9MBQv9BMTV6JZ1g11PGHLdHsrefca-9h0LmpU7CUg/viewform?usp=sharing). The action can be successfully started only once all `required` inputs are provided. If any `required` input is missing, or invalid value was provided, the service will return 400 error. Validation errors will contain Ids for all problematic field together with translated, human readable error messages that can be shown to the user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the merchant's account. |
| `languageCode` | `string` | query | No | Optional. Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) used to localize the response. If not... |

**Request body**: `TriggerActionPayload`

**Response**: `TriggerActionResponse`

```typescript
const res = await content.merchantsupport.triggeraction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regions.get`

**GET** `{merchantId}/regions/{regionId}`

Retrieves a region defined in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve region definition. |
| `regionId` | `string` | path | Yes | Required. The id of the region to retrieve. |

**Response**: `Region`

```typescript
const res = await content.regions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regions.create`

**POST** `{merchantId}/regions`

Creates a region definition in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to create region definition. |
| `regionId` | `string` | query | No | Required. The id of the region to create. |

**Request body**: `Region`

**Response**: `Region`

```typescript
const res = await content.regions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regions.patch`

**PATCH** `{merchantId}/regions/{regionId}`

Updates a region definition in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to update region definition. |
| `regionId` | `string` | path | Yes | Required. The id of the region to update. |
| `updateMask` | `string` | query | No | Optional. The comma-separated field mask indicating the fields to update. Example: `"displayName,postalCodeArea.regio... |

**Request body**: `Region`

**Response**: `Region`

```typescript
const res = await content.regions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regions.delete`

**DELETE** `{merchantId}/regions/{regionId}`

Deletes a region definition from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to delete region definition. |
| `regionId` | `string` | path | Yes | Required. The id of the region to delete. |

```typescript
const res = await content.regions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.regions.list`

**GET** `{merchantId}/regions`

Lists the regions in your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to list region definitions. |
| `pageSize` | `integer` | query | No | The maximum number of regions to return. The service may return fewer than this value. If unspecified, at most 50 rul... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListRegions` call. Provide this to retrieve the subsequent page. When paginat... |

**Response**: `ListRegionsResponse`

```typescript
const res = await content.regions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.promotions.create`

**POST** `{merchantId}/promotions`

Inserts a promotion for your Merchant Center account. If the promotion already exists, then it updates the promotion instead. To [end or delete] (https://developers.google.com/shopping-content/guides/promotions#end_a_promotion) a promotion update the time period of the promotion to a time that has already passed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. |

**Request body**: `Promotion`

**Response**: `Promotion`

```typescript
const res = await content.promotions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.promotions.get`

**GET** `{merchantId}/promotions/{id}`

Retrieves a promotion from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. |
| `id` | `string` | path | Yes | Required. REST ID of the promotion to retrieve. |

**Response**: `Promotion`

```typescript
const res = await content.promotions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.promotions.list`

**GET** `{merchantId}/promotions`

List all promotions from your Merchant Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that contains the collection. |
| `countryCode` | `string` | query | No | [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) (for example, "US"), used as a ... |
| `languageCode` | `string` | query | No | The two-letter ISO 639-1 language code associated with the promotions, used as a filter. |
| `pageSize` | `integer` | query | No | The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPromotion` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListPromotionResponse`

```typescript
const res = await content.promotions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.recommendations.generate`

**GET** `{merchantId}/recommendations/generate`

Generates recommendations for a merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account to fetch recommendations for. |
| `allowedTag` | `string` | query | No | Optional. List of allowed tags. Tags are a set of predefined strings that describe the category that individual recom... |
| `languageCode` | `string` | query | No | Optional. Language code of the client. If not set, the result will be in default language (English). This language co... |

**Response**: `GenerateRecommendationsResponse`

```typescript
const res = await content.recommendations.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.recommendations.reportInteraction`

**POST** `{merchantId}/recommendations/reportInteraction`

Reports an interaction on a recommendation for a merchant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The ID of the account that wants to report an interaction. |

**Request body**: `ReportInteractionRequest`

```typescript
const res = await content.recommendations.reportInteraction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.returnpolicyonline.get`

**GET** `{merchantId}/returnpolicyonline/{returnPolicyId}`

Gets an existing return policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve the return policy online object. |
| `returnPolicyId` | `string` | path | Yes | Required. The id of the return policy to retrieve. |

**Response**: `ReturnPolicyOnline`

```typescript
const res = await content.returnpolicyonline.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.returnpolicyonline.create`

**POST** `{merchantId}/returnpolicyonline`

Creates a new return policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve the return policy online object. |

**Request body**: `ReturnPolicyOnline`

**Response**: `ReturnPolicyOnline`

```typescript
const res = await content.returnpolicyonline.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.returnpolicyonline.delete`

**DELETE** `{merchantId}/returnpolicyonline/{returnPolicyId}`

Deletes an existing return policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve the return policy online object. |
| `returnPolicyId` | `string` | path | Yes | Required. The id of the return policy to delete. |

```typescript
const res = await content.returnpolicyonline.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.returnpolicyonline.patch`

**PATCH** `{merchantId}/returnpolicyonline/{returnPolicyId}`

Updates an existing return policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve the return policy online object. |
| `returnPolicyId` | `string` | path | Yes | Required. The id of the return policy to update. |

**Request body**: `ReturnPolicyOnline`

**Response**: `ReturnPolicyOnline`

```typescript
const res = await content.returnpolicyonline.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.returnpolicyonline.list`

**GET** `{merchantId}/returnpolicyonline`

Lists all existing return policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The id of the merchant for which to retrieve the return policy online object. |

**Response**: `ListReturnPolicyOnlineResponse`

```typescript
const res = await content.returnpolicyonline.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.ordertrackingsignals.create`

**POST** `{merchantId}/ordertrackingsignals`

Creates new order tracking signal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The ID of the merchant for which the order signal is created. |

**Request body**: `OrderTrackingSignal`

**Response**: `OrderTrackingSignal`

```typescript
const res = await content.ordertrackingsignals.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productdeliverytime.create`

**POST** `{merchantId}/productdeliverytime`

Creates or updates the delivery time of a product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | The Google merchant ID of the account that contains the product. This account cannot be a multi-client account. |

**Request body**: `ProductDeliveryTime`

**Response**: `ProductDeliveryTime`

```typescript
const res = await content.productdeliverytime.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productdeliverytime.get`

**GET** `{merchantId}/productdeliverytime/{productId}`

Gets `productDeliveryTime` by `productId`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client acco... |
| `productId` | `string` | path | Yes | Required. The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`. |

**Response**: `ProductDeliveryTime`

```typescript
const res = await content.productdeliverytime.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `content.productdeliverytime.delete`

**DELETE** `{merchantId}/productdeliverytime/{productId}`

Deletes the delivery time of a product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `merchantId` | `string` | path | Yes | Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client acco... |
| `productId` | `string` | path | Yes | Required. The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`. |

```typescript
const res = await content.productdeliverytime.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

## Schemas

### `Account`

Account data. After the creation of a new account it may take a few minutes before it's fully operational. The methods delete, insert, and update require the admin role.

| Property | Type | Description |
|----------|------|-------------|
| `accountManagement` | `string` | Output only. How the account is managed. Acceptable values are: - "`manual`" - "`automatic`" |
| `adsLinks` | `array<AccountAdsLink>` | Linked Ads accounts that are active or pending approval. To create a new link request, add a new ... |
| `adultContent` | `boolean` | Indicates whether the merchant sells adult content. |
| `automaticImprovements` | `AccountAutomaticImprovements` | The automatic improvements of the account can be used to automatically update items, improve imag... |
| `automaticLabelIds` | `array<string>` | Automatically created label IDs that are assigned to the account by CSS Center. |
| `businessIdentity` | `AccountBusinessIdentity` | The business identity attributes can be used to self-declare attributes that let customers know m... |
| `businessInformation` | `AccountBusinessInformation` | The business information of the account. |
| `conversionSettings` | `AccountConversionSettings` | Settings for conversion tracking. |
| `cssId` | `string` | ID of CSS the account belongs to. |
| `googleMyBusinessLink` | `AccountGoogleMyBusinessLink` | The Business Profile which is linked or in the process of being linked with the Merchant Center a... |
| `id` | `string` | Required. 64-bit Merchant Center account ID. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#account`". |
| `labelIds` | `array<string>` | Manually created label IDs that are assigned to the account by CSS. |
| `name` | `string` | Required. Display name for the account. |
| `sellerId` | `string` | Client-specific, locally-unique, internal ID for the child account. |
| `users` | `array<AccountUser>` | Users with access to the account. Every account (except for subaccounts) must have at least one a... |
| `websiteUrl` | `string` | The merchant's website. |
| `youtubeChannelLinks` | `array<AccountYouTubeChannelLink>` | Linked YouTube channels that are active or pending approval. To create a new link request, add a ... |

### `AccountAddress`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | CLDR country code (for example, "US"). All MCA sub-accounts inherit the country of their parent M... |
| `locality` | `string` | City, town or commune. May also include dependent localities or sublocalities (for example, neigh... |
| `postalCode` | `string` | Postal code or ZIP (for example, "94043"). |
| `region` | `string` | Top-level administrative subdivision of the country. For example, a state like California ("CA") ... |
| `streetAddress` | `string` | Street-level part of the address. Use `\n` to add a second line. |

### `AccountAdsLink`

| Property | Type | Description |
|----------|------|-------------|
| `adsId` | `string` | Customer ID of the Ads account. |
| `status` | `string` | Status of the link between this Merchant Center account and the Ads account. Upon retrieval, it r... |

### `AccountAutomaticImprovements`

The automatic improvements of the account can be used to automatically update items, improve images and shipping.

| Property | Type | Description |
|----------|------|-------------|
| `imageImprovements` | `AccountImageImprovements` | This improvement will attempt to automatically correct submitted images if they don't meet the [i... |
| `itemUpdates` | `AccountItemUpdates` | Turning on [item updates](https://support.google.com/merchants/answer/3246284) allows Google to a... |
| `shippingImprovements` | `AccountShippingImprovements` | Not available for MCAs [accounts](https://support.google.com/merchants/answer/188487). By turning... |

### `AccountBusinessIdentity`

The [business identity attributes](https://support.google.com/merchants/answer/10342414) can be used to self-declare attributes that let customers know more about your business.

| Property | Type | Description |
|----------|------|-------------|
| `blackOwned` | `AccountIdentityType` | Specifies whether the business identifies itself as being black-owned. This optional field is onl... |
| `includeForPromotions` | `boolean` | Required. By setting this field, your business may be included in promotions for all the selected... |
| `latinoOwned` | `AccountIdentityType` | Specifies whether the business identifies itself as being latino-owned. This optional field is on... |
| `smallBusiness` | `AccountIdentityType` | Specifies whether the business identifies itself as a small business. This optional field is only... |
| `veteranOwned` | `AccountIdentityType` | Specifies whether the business identifies itself as being veteran-owned. This optional field is o... |
| `womenOwned` | `AccountIdentityType` | Specifies whether the business identifies itself as being women-owned. This optional field is onl... |

### `AccountBusinessInformation`

| Property | Type | Description |
|----------|------|-------------|
| `address` | `AccountAddress` | The address of the business. Use `\n` to add a second address line. |
| `customerService` | `AccountCustomerService` | The customer service information of the business. |
| `koreanBusinessRegistrationNumber` | `string` | The 10-digit [Korean business registration number](https://support.google.com/merchants/answer/90... |
| `phoneNumber` | `string` | The phone number of the business in [E.164](https://en.wikipedia.org/wiki/E.164) format. This can... |
| `phoneVerificationStatus` | `string` | Verification status of the phone number of the business. This status is read only and can be upda... |

### `AccountConversionSettings`

Settings for conversion tracking.

| Property | Type | Description |
|----------|------|-------------|
| `freeListingsAutoTaggingEnabled` | `boolean` | When enabled, free listing URLs have a parameter to enable conversion tracking for products owned... |

### `AccountCredentials`

Credentials allowing Google to call a partner's API on behalf of a merchant.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | An OAuth access token. |
| `expiresIn` | `string` | The amount of time, in seconds, after which the access token is no longer valid. |
| `purpose` | `string` | Indicates to Google how Google should use these OAuth tokens. |

### `AccountCustomerService`

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Customer service email. |
| `phoneNumber` | `string` | Customer service phone number. |
| `url` | `string` | Customer service URL. |

### `AccountGoogleMyBusinessLink`

| Property | Type | Description |
|----------|------|-------------|
| `gmbAccountId` | `string` | The ID of the Business Profile. If this is provided, then `gmbEmail` is ignored. The value of thi... |
| `gmbEmail` | `string` | The Business Profile email address of a specific account within a Business Profile. A sample acco... |
| `status` | `string` | Status of the link between this Merchant Center account and the Business Profile. Acceptable valu... |

### `AccountIdentifier`

| Property | Type | Description |
|----------|------|-------------|
| `aggregatorId` | `string` | The aggregator ID, set for aggregators and subaccounts (in that case, it represents the aggregato... |
| `merchantId` | `string` | The merchant account ID, set for individual accounts and subaccounts. |

### `AccountIdentityType`

The account identity type used to specify attributes.

| Property | Type | Description |
|----------|------|-------------|
| `selfIdentified` | `boolean` | Optional. Indicates that the business identifies itself with a given identity type. Setting this ... |

### `AccountImageImprovements`

This improvement will attempt to automatically correct submitted images if they don't meet the [image requirements](https://support.google.com/merchants/answer/6324350), for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: [Automatic image improvements](https://support.google.com/merchants/answer/9242973)

| Property | Type | Description |
|----------|------|-------------|
| `accountImageImprovementsSettings` | `AccountImageImprovementsSettings` | Determines how the images should be automatically updated. If this field is not present, then the... |
| `effectiveAllowAutomaticImageImprovements` | `boolean` | Output only. The effective value of allow_automatic_image_improvements. If account_image_improvem... |

### `AccountImageImprovementsSettings`

Settings for the Automatic Image Improvements.

| Property | Type | Description |
|----------|------|-------------|
| `allowAutomaticImageImprovements` | `boolean` | Enables automatic image improvements. |

### `AccountIssue`

An issue affecting specific merchant.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<Action>` | A list of actionable steps that can be executed to solve the issue. An example is requesting a re... |
| `impact` | `AccountIssueImpact` | Clarifies the severity of the issue. The summarizing message, if present, should be shown right u... |
| `prerenderedContent` | `string` | Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes that can be used t... |
| `prerenderedOutOfCourtDisputeSettlement` | `string` | Pre-rendered HTML that contains a link to the external location where the ODS can be requested an... |
| `title` | `string` | Title of the issue. |

### `AccountIssueImpact`

Overall impact of the issue.

| Property | Type | Description |
|----------|------|-------------|
| `breakdowns` | `array<Breakdown>` | Detailed impact breakdown. Explains the types of restriction the issue has in different shopping ... |
| `message` | `string` | Optional. Message summarizing the overall impact of the issue. If present, it should be rendered ... |
| `severity` | `string` | The severity of the issue. |

### `AccountItemUpdates`

Turning on [item updates](https://support.google.com/merchants/answer/3246284) allows Google to automatically update items for you. When item updates are on, Google uses the structured data markup on the website and advanced data extractors to update the price and availability of the items. When the item updates are off, items with mismatched data aren't shown.

| Property | Type | Description |
|----------|------|-------------|
| `accountItemUpdatesSettings` | `AccountItemUpdatesSettings` | Determines which attributes of the items should be automatically updated. If this field is not pr... |
| `effectiveAllowAvailabilityUpdates` | `boolean` | Output only. The effective value of allow_availability_updates. If account_item_updates_settings ... |
| `effectiveAllowConditionUpdates` | `boolean` | Output only. The effective value of allow_condition_updates. If account_item_updates_settings is ... |
| `effectiveAllowPriceUpdates` | `boolean` | Output only. The effective value of allow_price_updates. If account_item_updates_settings is pres... |
| `effectiveAllowStrictAvailabilityUpdates` | `boolean` | Output only. The effective value of allow_strict_availability_updates. If account_item_updates_se... |

### `AccountItemUpdatesSettings`

Settings for the Automatic Item Updates.

| Property | Type | Description |
|----------|------|-------------|
| `allowAvailabilityUpdates` | `boolean` | If availability updates are enabled, any previous availability values get overwritten if Google f... |
| `allowConditionUpdates` | `boolean` | If condition updates are enabled, Google always updates item condition with the condition detecte... |
| `allowPriceUpdates` | `boolean` | If price updates are enabled, Google always updates the active price with the crawled information. |
| `allowStrictAvailabilityUpdates` | `boolean` | If allow_availability_updates is enabled, items are automatically updated in all your Shopping ta... |

### `AccountLabel`

Label assigned by CSS domain or CSS group to one of its sub-accounts.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Immutable. The ID of account this label belongs to. |
| `description` | `string` | The description of this label. |
| `labelId` | `string` | Output only. The ID of the label. |
| `labelType` | `string` | Output only. The type of this label. |
| `name` | `string` | The display name of this label. |

### `AccountReturnCarrier`

The return carrier information. This service is designed for merchants enrolled in the Buy on Google program.

| Property | Type | Description |
|----------|------|-------------|
| `carrierAccountId` | `string` | Output only. Immutable. The Google-provided unique carrier ID, used to update the resource. |
| `carrierAccountName` | `string` | Name of the carrier account. |
| `carrierAccountNumber` | `string` | Number of the carrier account. |
| `carrierCode` | `string` | The carrier code enum. Accepts the values FEDEX or UPS. |

### `AccountShippingImprovements`

Not available for MCAs [accounts](https://support.google.com/merchants/answer/188487). By turning on [automatic shipping improvements](https://support.google.com/merchants/answer/10027038), you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: * Delivery address of an order * Current handling time and shipping time settings * Estimated weekdays or business days * Parcel tracking data

| Property | Type | Description |
|----------|------|-------------|
| `allowShippingImprovements` | `boolean` | Enables automatic shipping improvements. |

### `AccountStatus`

The status of an account, that is, information about its products, which is computed offline and not returned immediately at insertion time.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account for which the status is reported. |
| `accountLevelIssues` | `array<AccountStatusAccountLevelIssue>` | A list of account level issues. |
| `accountManagement` | `string` | How the account is managed. Acceptable values are: - "`manual`" - "`automatic`" |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountStatus`" |
| `products` | `array<AccountStatusProducts>` | List of product-related data by channel, destination, and country. Data in this field may be dela... |
| `websiteClaimed` | `boolean` | Whether the account's website is claimed or not. |

### `AccountStatusAccountLevelIssue`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | Country for which this issue is reported. |
| `destination` | `string` | The destination the issue applies to. If this field is empty then the issue applies to all availa... |
| `detail` | `string` | Additional details about the issue. |
| `documentation` | `string` | The URL of a web page to help resolving this issue. |
| `id` | `string` | Issue identifier. |
| `severity` | `string` | Severity of the issue. Acceptable values are: - "`critical`" - "`error`" - "`suggestion`" |
| `title` | `string` | Short description of the issue. |

### `AccountStatusItemLevelIssue`

| Property | Type | Description |
|----------|------|-------------|
| `attributeName` | `string` | The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | The error code of the issue. |
| `description` | `string` | A short issue description in English. |
| `detail` | `string` | A detailed issue description in English. |
| `documentation` | `string` | The URL of a web page to help with resolving this issue. |
| `numItems` | `string` | Number of items with this issue. |
| `resolution` | `string` | Whether the issue can be resolved by the merchant. |
| `servability` | `string` | How this issue affects serving of the offer. |

### `AccountStatusProducts`

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | The channel the data applies to. Acceptable values are: - "`local`" - "`online`" |
| `country` | `string` | The country the data applies to. |
| `destination` | `string` | The destination the data applies to. |
| `itemLevelIssues` | `array<AccountStatusItemLevelIssue>` | List of item-level issues. |
| `statistics` | `AccountStatusStatistics` | Aggregated product statistics. |

### `AccountStatusStatistics`

| Property | Type | Description |
|----------|------|-------------|
| `active` | `string` | Number of active offers. |
| `disapproved` | `string` | Number of disapproved offers. |
| `expiring` | `string` | Number of expiring offers. |
| `pending` | `string` | Number of pending offers. |

### `AccountTax`

The tax settings of a merchant account. All methods require the admin role.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Required. The ID of the account to which these account tax settings belong. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountTax`". |
| `rules` | `array<AccountTaxTaxRule>` | Tax rules. Updating the tax rules will enable "US" taxes (not reversible). Defining no rules is e... |

### `AccountTaxTaxRule`

Tax calculation rule to apply in a state or province (US only).

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | Country code in which tax is applicable. |
| `locationId` | `string` | Required. State (or province) is which the tax is applicable, described by its location ID (also ... |
| `ratePercent` | `string` | Explicit tax rate in percent, represented as a floating point number without the percentage chara... |
| `shippingTaxed` | `boolean` | If true, shipping charges are also taxed. |
| `useGlobalRate` | `boolean` | Whether the tax rate is taken from a global tax table or specified explicitly. |

### `AccountUser`

| Property | Type | Description |
|----------|------|-------------|
| `admin` | `boolean` | Whether user is an admin. |
| `emailAddress` | `string` | User's email address. |
| `orderManager` | `boolean` | This role is deprecated and can no longer be assigned. Any value set will be ignored. |
| `paymentsAnalyst` | `boolean` | This role is deprecated and can no longer be assigned. Any value set will be ignored. |
| `paymentsManager` | `boolean` | This role is deprecated and can no longer be assigned. Any value set will be ignored. |
| `readOnly` | `boolean` | Optional. Whether user has standard read-only access. |
| `reportingManager` | `boolean` | Whether user is a reporting manager. This role is equivalent to the Performance and insights role... |

### `AccountYouTubeChannelLink`

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | Channel ID. |
| `status` | `string` | Status of the link between this Merchant Center account and the YouTube channel. Upon retrieval, ... |

### `AccountsAuthInfoResponse`

| Property | Type | Description |
|----------|------|-------------|
| `accountIdentifiers` | `array<AccountIdentifier>` | The account identifiers corresponding to the authenticated user. - For an individual account: onl... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsAuthInfoRespo... |

### `AccountsClaimWebsiteResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsClaimWebsiteR... |

### `AccountsCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccountsCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `AccountsCustomBatchRequestEntry`

A batch entry encoding a single non-batch accounts request.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `Account` | The account to create or update. Only defined if the method is `insert` or `update`. |
| `accountId` | `string` | The ID of the targeted account. Only defined if the method is not `insert`. |
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `force` | `boolean` | Whether the account should be deleted if the account has offers. Only applicable if the method is... |
| `labelIds` | `array<string>` | Label IDs for the 'updatelabels' request. |
| `linkRequest` | `AccountsCustomBatchRequestEntryLinkRequest` | Details about the `link` request. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`claimWebsite`" - "`delete`" - "`get`" -... |
| `overwrite` | `boolean` | Only applicable if the method is `claimwebsite`. Indicates whether or not to take the claim from ... |
| `view` | `string` | Controls which fields are visible. Only applicable if the method is 'get'. |

### `AccountsCustomBatchRequestEntryLinkRequest`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Action to perform for this link. The `"request"` action is only available to select merchants. Ac... |
| `linkType` | `string` | Type of the link between the two accounts. Acceptable values are: - "`channelPartner`" - "`eComme... |
| `linkedAccountId` | `string` | The ID of the linked account. |
| `services` | `array<string>` | Provided services. Acceptable values are: - "`shoppingAdsProductManagement`" - "`shoppingActionsP... |

### `AccountsCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccountsCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsCustomBatchRe... |

### `AccountsCustomBatchResponseEntry`

A batch entry encoding a single non-batch accounts response.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `Account` | The retrieved, created, or updated account. Not defined if the method was `delete`, `claimwebsite... |
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsCustomBatchRe... |

### `AccountsLinkRequest`

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Action to perform for this link. The `"request"` action is only available to select merchants. Ac... |
| `eCommercePlatformLinkInfo` | `ECommercePlatformLinkInfo` | Additional information required for `eCommercePlatform` link type. |
| `linkType` | `string` | Type of the link between the two accounts. Acceptable values are: - "`channelPartner`" - "`eComme... |
| `linkedAccountId` | `string` | The ID of the linked account. |
| `paymentServiceProviderLinkInfo` | `PaymentServiceProviderLinkInfo` | Additional information required for `paymentServiceProvider` link type. |
| `services` | `array<string>` | Acceptable values are: - "`shoppingAdsProductManagement`" - "`shoppingActionsProductManagement`" ... |

### `AccountsLinkResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsLinkResponse`". |

### `AccountsListLinksResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsListLinksResp... |
| `links` | `array<LinkedAccount>` | The list of available links. |
| `nextPageToken` | `string` | The token for the retrieval of the next page of links. |

### `AccountsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsListResponse`". |
| `nextPageToken` | `string` | The token for the retrieval of the next page of accounts. |
| `resources` | `array<Account>` |  |

### `AccountsUpdateLabelsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `labelIds` | `array<string>` | The IDs of labels that should be assigned to the account. |

### `AccountsUpdateLabelsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountsUpdateLabelsR... |

### `AccountstatusesCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccountstatusesCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `AccountstatusesCustomBatchRequestEntry`

A batch entry encoding a single non-batch accountstatuses request.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the (sub-)account whose status to get. |
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `destinations` | `array<string>` | If set, only issues for the specified destinations are returned, otherwise only issues for the Sh... |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" |

### `AccountstatusesCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccountstatusesCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountstatusesCustom... |

### `AccountstatusesCustomBatchResponseEntry`

A batch entry encoding a single non-batch accountstatuses response.

| Property | Type | Description |
|----------|------|-------------|
| `accountStatus` | `AccountStatus` | The requested account status. Defined if and only if the request was successful. |
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |

### `AccountstatusesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accountstatusesListRe... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of account statuses. |
| `resources` | `array<AccountStatus>` |  |

### `AccounttaxCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccounttaxCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `AccounttaxCustomBatchRequestEntry`

A batch entry encoding a single non-batch accounttax request.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account for which to get/update account tax settings. |
| `accountTax` | `AccountTax` | The account tax settings to update. Only defined if the method is `update`. |
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" - "`update`" |

### `AccounttaxCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<AccounttaxCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accounttaxCustomBatch... |

### `AccounttaxCustomBatchResponseEntry`

A batch entry encoding a single non-batch accounttax response.

| Property | Type | Description |
|----------|------|-------------|
| `accountTax` | `AccountTax` | The retrieved or updated account tax settings. |
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accounttaxCustomBatch... |

### `AccounttaxListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#accounttaxListRespons... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of account tax settings. |
| `resources` | `array<AccountTax>` |  |

### `Action`

An actionable step that can be executed to solve the issue.

| Property | Type | Description |
|----------|------|-------------|
| `builtinSimpleAction` | `BuiltInSimpleAction` | Action implemented and performed in (your) third-party application. The application should point ... |
| `builtinUserInputAction` | `BuiltInUserInputAction` | Action implemented and performed in (your) third-party application. The application needs to show... |
| `buttonLabel` | `string` | Label of the action button. |
| `externalAction` | `ExternalAction` | Action that is implemented and performed outside of (your) third-party application. The applicati... |
| `isAvailable` | `boolean` | Controlling whether the button is active or disabled. The value is 'false' when the action was al... |
| `reasons` | `array<ActionReason>` | List of reasons why the action is not available. The list of reasons is empty if the action is av... |

### `ActionFlow`

Flow that can be selected for an action. When merchant selects a flow, application should open a dialog with more information and input form.

| Property | Type | Description |
|----------|------|-------------|
| `dialogButtonLabel` | `string` | Label for the button to trigger the action from the action dialog. For example: "Request review" |
| `dialogCallout` | `Callout` | Important message to be highlighted in the request dialog. For example: "You can only request a r... |
| `dialogMessage` | `TextWithTooltip` | Message displayed in the request dialog. For example: "Make sure you've fixed all your country-sp... |
| `dialogTitle` | `string` | Title of the request dialog. For example: "Before you request a review" |
| `id` | `string` | Not for display but need to be sent back for the selected action flow. |
| `inputs` | `array<InputField>` | A list of input fields. |
| `label` | `string` | Text value describing the intent for the action flow. It can be used as an input label if merchan... |

### `ActionInput`

Input provided by the merchant.

| Property | Type | Description |
|----------|------|-------------|
| `actionFlowId` | `string` | Required. Id of the selected action flow. |
| `inputValues` | `array<InputValue>` | Required. Values for input fields. |

### `ActionReason`

A single reason why the action is not available.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `Action` | Optional. An action that needs to be performed to solve the problem represented by this reason. T... |
| `detail` | `string` | Detailed explanation of the reason. Should be displayed as a hint if present. |
| `message` | `string` | Messages summarizing the reason, why the action is not available. For example: "Review requested ... |

### `Address`

| Property | Type | Description |
|----------|------|-------------|
| `administrativeArea` | `string` | Required. Top-level administrative subdivision of the country. For example, a state like Californ... |
| `city` | `string` | Required. City, town or commune. May also include dependent localities or sublocalities (for exam... |
| `country` | `string` | Required. [CLDR country code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)... |
| `postalCode` | `string` | Required. Postal code or ZIP (for example, "94043"). |
| `streetAddress` | `string` | Street-level part of the address. Use `\n` to add a second line. |

### `AlternateDisputeResolution`

The Alternate Dispute Resolution (ADR) that may be available to merchants in some regions. If present, the link should be shown on the same page as the list of issues.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | The label for the alternate dispute resolution link. |
| `uri` | `string` | The URL pointing to a page, where merchant can request alternative dispute resolution with an [ex... |

### `AttributionSettings`

Represents attribution settings for conversion sources receiving pre-attribution data.

| Property | Type | Description |
|----------|------|-------------|
| `attributionLookbackWindowInDays` | `integer` | Required. Lookback windows (in days) used for attribution in this source. Supported values are 7,... |
| `attributionModel` | `string` |  |
| `conversionType` | `array<AttributionSettingsConversionType>` | Immutable. Unordered list. List of different conversion types a conversion event can be classifie... |

### `AttributionSettingsConversionType`

Message representing a types of conversion events

| Property | Type | Description |
|----------|------|-------------|
| `includeInReporting` | `boolean` | Output only. Option indicating if the type should be included in Merchant Center reporting. |
| `name` | `string` | Output only. Conversion event name, as it'll be reported by the client. |

### `BestSellers`

Fields related to the [Best sellers reports](https://support.google.com/merchants/answer/9488679).

| Property | Type | Description |
|----------|------|-------------|
| `categoryId` | `string` | Google product category ID to calculate the ranking for, represented in [Google's product taxonom... |
| `countryCode` | `string` | Country where the ranking is calculated. A `WHERE` condition on `best_sellers.country_code` is re... |
| `previousRank` | `string` | Popularity rank in the previous week or month. |
| `previousRelativeDemand` | `string` | Estimated demand in relation to the item with the highest popularity rank in the same category an... |
| `rank` | `string` | Popularity on Shopping ads and free listings, in the selected category and country, based on the ... |
| `relativeDemand` | `string` | Estimated demand in relation to the item with the highest popularity rank in the same category an... |
| `relativeDemandChange` | `string` | Change in the estimated demand. Whether it rose, sank or remained flat. |
| `reportDate` | `Date` | Report date. The value of this field can only be one of the following: * The first day of the wee... |
| `reportGranularity` | `string` | Granularity of the report. The ranking can be done over a week or a month timeframe. A `WHERE` co... |

### `Brand`

Brand fields. Values are only set for fields requested explicitly in the request's search query.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the brand. |

### `Breakdown`

A detailed impact breakdown for a group of regions where the impact of the issue on different shopping destinations is the same.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<string>` | Human readable, localized description of issue's effect on different targets. Should be rendered ... |
| `regions` | `array<BreakdownRegion>` | Lists of regions. Should be rendered as a title for this group of details. The full list should b... |

### `BreakdownRegion`

Region with code and localized name.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) |
| `name` | `string` | The localized name of the region. For region with code='001' the value is 'All countries' or the ... |

### `BuiltInSimpleAction`

Action that is implemented and performed in (your) third-party application. Represents various functionality that is expected to be available to merchant and will help them with resolving the issue. The application should point the merchant to the place, where they can access the corresponding functionality. If the functionality is not supported, it is recommended to explain the situation to merchant and provide them with instructions how to solve the issue.

| Property | Type | Description |
|----------|------|-------------|
| `additionalContent` | `BuiltInSimpleActionAdditionalContent` | Long text from an external source that should be available to the merchant. Present when the type... |
| `attributeCode` | `string` | The attribute that needs to be updated. Present when the type is `EDIT_ITEM_ATTRIBUTE`. This fiel... |
| `type` | `string` | The type of action that represents a functionality that is expected to be available in third-part... |

### `BuiltInSimpleActionAdditionalContent`

Long text from external source.

| Property | Type | Description |
|----------|------|-------------|
| `paragraphs` | `array<string>` | Long text organized into paragraphs. |
| `title` | `string` | Title of the additional content; |

### `BuiltInUserInputAction`

Action that is implemented and performed in (your) third-party application. The application needs to show an additional content and input form to the merchant. They can start the action only when they provided all required inputs. The application will request processing of the action by calling the [triggeraction method](https://developers.google.com/shopping-content/reference/rest/v2.1/merchantsupport/triggeraction).

| Property | Type | Description |
|----------|------|-------------|
| `actionContext` | `string` | Internal details. Not for display but need to be sent back when triggering the action. |
| `flows` | `array<ActionFlow>` | Actions may provide multiple different flows. Merchant selects one that fits best to their intent... |

### `BusinessDayConfig`

| Property | Type | Description |
|----------|------|-------------|
| `businessDays` | `array<string>` | Regular business days, such as '"monday"'. May not be empty. |

### `Callout`

An important message that should be highlighted. Usually displayed as a banner.

| Property | Type | Description |
|----------|------|-------------|
| `fullMessage` | `TextWithTooltip` | A full message that needs to be shown to the merchant. |
| `styleHint` | `string` | Can be used to render messages with different severity in different styles. Snippets off all type... |

### `CarrierRate`

| Property | Type | Description |
|----------|------|-------------|
| `carrierName` | `string` | Carrier service, such as `"UPS"` or `"Fedex"`. The list of supported carriers can be retrieved th... |
| `carrierService` | `string` | Carrier service, such as `"ground"` or `"2 days"`. The list of supported services for a carrier c... |
| `flatAdjustment` | `Price` | Additive shipping rate modifier. Can be negative. For example `{ "value": "1", "currency" : "USD"... |
| `name` | `string` | Name of the carrier rate. Must be unique per rate group. Required. |
| `originPostalCode` | `string` | Shipping origin for this carrier rate. Required. |
| `percentageAdjustment` | `string` | Multiplicative shipping rate modifier as a number in decimal notation. Can be negative. For examp... |

### `CarriersCarrier`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The CLDR country code of the carrier (for example, "US"). Always present. |
| `eddServices` | `array<string>` | A list of services supported for EDD (Estimated Delivery Date) calculation. This is the list of v... |
| `name` | `string` | The name of the carrier (for example, `"UPS"`). Always present. |
| `services` | `array<string>` | A list of supported services (for example, `"ground"`) for that carrier. Contains at least one se... |

### `CheckoutSettings`

`CheckoutSettings` for a specific merchant ID.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveEnrollmentState` | `string` | Output only. The effective value of enrollment state for a given merchant ID. If account level se... |
| `effectiveReviewState` | `string` | Output only. The effective value of review state for a given merchant ID. If account level settin... |
| `effectiveUriSettings` | `UrlSettings` | The effective value of `url_settings` for a given merchant ID. If account level settings are pres... |
| `enrollmentState` | `string` | Output only. Reflects the merchant enrollment state in `Checkout` feature. |
| `merchantId` | `string` | Required. The ID of the account. |
| `reviewState` | `string` | Output only. Reflects the merchant review state in `Checkout` feature. This is set based on the d... |
| `uriSettings` | `UrlSettings` | URL settings for cart or checkout URL. |

### `CloudExportAdditionalProperties`

Product property for the Cloud Retail API. For example, properties for a TV product could be "Screen-Resolution" or "Screen-Size".

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value of the given property. For example for a TV product, "True" or "False" if the scree... |
| `floatValue` | `array<number>` | Float values of the given property. For example for a TV product 1.2345. Maximum number of specif... |
| `intValue` | `array<string>` | Integer values of the given property. For example, 1080 for a screen resolution of a TV product. ... |
| `maxValue` | `number` | Maximum float value of the given property. For example for a TV product 100.00. |
| `minValue` | `number` | Minimum float value of the given property. For example for a TV product 1.00. |
| `propertyName` | `string` | Name of the given property. For example, "Screen-Resolution" for a TV product. Maximum string siz... |
| `textValue` | `array<string>` | Text value of the given property. For example, "8K(UHD)" could be a text value for a TV product. ... |
| `unitCode` | `string` | Unit of the given property. For example, "Pixels" for a TV product. Maximum string size is 256 by... |

### `Collection`

The collection message.

| Property | Type | Description |
|----------|------|-------------|
| `customLabel0` | `string` | Label that you assign to a collection to help organize bidding and reporting in Shopping campaign... |
| `customLabel1` | `string` | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. |
| `customLabel2` | `string` | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. |
| `customLabel3` | `string` | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. |
| `customLabel4` | `string` | Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. |
| `featuredProduct` | `array<CollectionFeaturedProduct>` | This identifies one or more products associated with the collection. Used as a lookup to the corr... |
| `headline` | `array<string>` | Your collection's name. [headline attribute](https://support.google.com/merchants/answer/9673580) |
| `id` | `string` | Required. The REST ID of the collection. Content API methods that operate on collections take thi... |
| `imageLink` | `array<string>` | The URL of a collection’s image. [image_link attribute](https://support.google.com/merchants/answ... |
| `language` | `string` | The language of a collection and the language of any featured products linked to the collection. ... |
| `link` | `string` | A collection’s landing page. URL directly linking to your collection's page on your website. [lin... |
| `mobileLink` | `string` | A collection’s mobile-optimized landing page when you have a different URL for mobile and desktop... |
| `productCountry` | `string` | [product_country attribute](https://support.google.com/merchants/answer/9674155) |

### `CollectionFeaturedProduct`

The message for FeaturedProduct. [FeaturedProduct](https://support.google.com/merchants/answer/9703736)

| Property | Type | Description |
|----------|------|-------------|
| `offerId` | `string` | The unique identifier for the product item. |
| `x` | `number` | Required. X-coordinate of the product callout on the Shoppable Image. |
| `y` | `number` | Required. Y-coordinate of the product callout on the Shoppable Image. |

### `CollectionStatus`

The collectionstatus message.

| Property | Type | Description |
|----------|------|-------------|
| `collectionLevelIssuses` | `array<CollectionStatusItemLevelIssue>` | A list of all issues associated with the collection. |
| `creationDate` | `string` | Date on which the collection has been created in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601... |
| `destinationStatuses` | `array<CollectionStatusDestinationStatus>` | The intended destinations for the collection. |
| `id` | `string` | Required. The ID of the collection for which status is reported. |
| `lastUpdateDate` | `string` | Date on which the collection has been last updated in [ISO 8601](http://en.wikipedia.org/wiki/ISO... |

### `CollectionStatusDestinationStatus`

Destination status message.

| Property | Type | Description |
|----------|------|-------------|
| `approvedCountries` | `array<string>` | Country codes (ISO 3166-1 alpha-2) where the collection is approved. |
| `destination` | `string` | The name of the destination |
| `disapprovedCountries` | `array<string>` | Country codes (ISO 3166-1 alpha-2) where the collection is disapproved. |
| `pendingCountries` | `array<string>` | Country codes (ISO 3166-1 alpha-2) where the collection is pending approval. |
| `status` | `string` | The status for the specified destination in the collections target country. |

### `CollectionStatusItemLevelIssue`

Issue associated with the collection.

| Property | Type | Description |
|----------|------|-------------|
| `applicableCountries` | `array<string>` | Country codes (ISO 3166-1 alpha-2) where issue applies to the offer. |
| `attributeName` | `string` | The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | The error code of the issue. |
| `description` | `string` | A short issue description in English. |
| `destination` | `string` | The destination the issue applies to. |
| `detail` | `string` | A detailed issue description in English. |
| `documentation` | `string` | The URL of a web page to help with resolving this issue. |
| `resolution` | `string` | Whether the issue can be resolved by the merchant. |
| `servability` | `string` | How this issue affects the serving of the collection. |

### `CompetitiveVisibility`

Fields related to [competitive visibility reports] (https://support.google.com/merchants/answer/11366442).

| Property | Type | Description |
|----------|------|-------------|
| `adsOrganicRatio` | `number` | [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#zippy=%2Cadsfree-rati... |
| `categoryBenchmarkVisibilityTrend` | `number` | Change in visibility based on impressions with respect to the start of the selected time range (o... |
| `categoryId` | `string` | Google product category ID to calculate the report for, represented in [Google's product taxonomy... |
| `countryCode` | `string` | The country where impression appeared. Required in the `SELECT` clause. A `WHERE` condition on `c... |
| `date` | `Date` | Date of this row. Available only in `CompetitiveVisibilityBenchmarkView` and `CompetitiveVisibili... |
| `domain` | `string` | Domain of your competitor or your domain, if 'is_your_domain' is true. Available only in `Competi... |
| `higherPositionRate` | `number` | Higher position rate shows how often a competitor’s offer got placed in a higher position on the ... |
| `isYourDomain` | `boolean` | True if this row contains data for your domain. Available only in `CompetitiveVisibilityTopMercha... |
| `pageOverlapRate` | `number` | Page overlap rate describes how frequently competing retailers’ offers are shown together with yo... |
| `rank` | `string` | Position of the domain in the top merchants ranking for the selected keys (`date`, `category_id`,... |
| `relativeVisibility` | `number` | Relative visibility shows how often your competitors’ offers are shown compared to your offers. I... |
| `trafficSource` | `string` | Type of impression listing. Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE'... |
| `yourDomainVisibilityTrend` | `number` | Change in visibility based on impressions for your domain with respect to the start of the select... |

### `ConversionSource`

Represents a conversion source owned by a Merchant account. A merchant account can have up to 200 conversion sources.

| Property | Type | Description |
|----------|------|-------------|
| `conversionSourceId` | `string` | Output only. Generated by the Content API upon creation of a new `ConversionSource`. Format: [a-z... |
| `expireTime` | `string` | Output only. The time when an archived conversion source becomes permanently deleted and is no lo... |
| `googleAnalyticsLink` | `GoogleAnalyticsLink` | Immutable. Conversion Source of type "Link to Google Analytics Property". |
| `merchantCenterDestination` | `MerchantCenterDestination` | Conversion Source of type "Merchant Center Tag Destination". |
| `state` | `string` | Output only. Current state of this conversion source. Can't be edited through the API. |

### `Css`

Information about CSS domain.

| Property | Type | Description |
|----------|------|-------------|
| `cssDomainId` | `string` | Output only. Immutable. The CSS domain ID. |
| `cssGroupId` | `string` | Output only. Immutable. The ID of the CSS group this CSS domain is affiliated with. Only populate... |
| `displayName` | `string` | Output only. Immutable. The CSS domain's display name, used when space is constrained. |
| `fullName` | `string` | Output only. Immutable. The CSS domain's full name. |
| `homepageUri` | `string` | Output only. Immutable. The CSS domain's homepage. |
| `labelIds` | `array<string>` | A list of label IDs that are assigned to this CSS domain by its CSS group. Only populated for CSS... |

### `CustomAttribute`

A message that represents custom attributes. Exactly one of `value` or `groupValues` must be provided. Maximum allowed number of characters for each custom attribute is 10240 (represents sum of characters for name and value). Maximum 2500 custom attributes can be set per merchant, with total size of 102.4kB.

| Property | Type | Description |
|----------|------|-------------|
| `groupValues` | `array<CustomAttribute>` | Subattributes within this attribute group. Exactly one of value or groupValues must be provided. |
| `name` | `string` | The name of the attribute. Underscores will be replaced by spaces upon insertion. |
| `value` | `string` | The value of the attribute. |

### `CutoffTime`

| Property | Type | Description |
|----------|------|-------------|
| `hour` | `integer` | Hour of the cutoff time until which an order has to be placed to be processed in the same day. Re... |
| `minute` | `integer` | Minute of the cutoff time until which an order has to be placed to be processed in the same day. ... |
| `timezone` | `string` | Timezone identifier for the cutoff time (for example, "Europe/Zurich"). List of identifiers. Requ... |

### `Datafeed`

Datafeed configuration data.

| Property | Type | Description |
|----------|------|-------------|
| `attributeLanguage` | `string` | The two-letter ISO 639-1 language in which the attributes are defined in the data feed. |
| `contentType` | `string` | Required. The type of data feed. For product inventory feeds, only feeds for local stores, not on... |
| `fetchSchedule` | `DatafeedFetchSchedule` | Fetch schedule for the feed file. |
| `fileName` | `string` | Required. The filename of the feed. All feeds must have a unique file name. |
| `format` | `DatafeedFormat` | Format of the feed file. |
| `id` | `string` | Required for update. The ID of the data feed. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeed`" |
| `name` | `string` | Required for insert. A descriptive name of the data feed. |
| `targets` | `array<DatafeedTarget>` | The targets this feed should apply to (country, language, destinations). |

### `DatafeedFetchSchedule`

The required fields vary based on the frequency of fetching. For a monthly fetch schedule, day_of_month and hour are required. For a weekly fetch schedule, weekday and hour are required. For a daily fetch schedule, only hour is required.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfMonth` | `integer` | The day of the month the feed file should be fetched (1-31). |
| `fetchUrl` | `string` | The URL where the feed file can be fetched. Google Merchant Center will support automatic schedul... |
| `hour` | `integer` | The hour of the day the feed file should be fetched (0-23). |
| `minuteOfHour` | `integer` | The minute of the hour the feed file should be fetched (0-59). Read-only. |
| `password` | `string` | An optional password for fetch_url. |
| `paused` | `boolean` | Whether the scheduled fetch is paused or not. |
| `timeZone` | `string` | Time zone used for schedule. UTC by default. For example, "America/Los_Angeles". |
| `username` | `string` | An optional user name for fetch_url. |
| `weekday` | `string` | The day of the week the feed file should be fetched. Acceptable values are: - "`monday`" - "`tues... |

### `DatafeedFormat`

| Property | Type | Description |
|----------|------|-------------|
| `columnDelimiter` | `string` | Delimiter for the separation of values in a delimiter-separated values feed. If not specified, th... |
| `fileEncoding` | `string` | Character encoding scheme of the data feed. If not specified, the encoding will be auto-detected.... |
| `quotingMode` | `string` | Specifies how double quotes are interpreted. If not specified, the mode will be auto-detected. Ig... |

### `DatafeedStatus`

The status of a datafeed, that is, the result of the last retrieval of the datafeed computed asynchronously when the feed processing is finished.

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The country for which the status is reported, represented as a CLDR territory code. |
| `datafeedId` | `string` | The ID of the feed for which the status is reported. |
| `errors` | `array<DatafeedStatusError>` | The list of errors occurring in the feed. |
| `feedLabel` | `string` | The feed label status is reported for. |
| `itemsTotal` | `string` | The number of items in the feed that were processed. |
| `itemsValid` | `string` | The number of items in the feed that were valid. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedStatus`" |
| `language` | `string` | The two-letter ISO 639-1 language for which the status is reported. |
| `lastUploadDate` | `string` | The last date at which the feed was uploaded. |
| `processingStatus` | `string` | The processing status of the feed. Acceptable values are: - "`"`failure`": The feed could not be ... |
| `warnings` | `array<DatafeedStatusError>` | The list of errors occurring in the feed. |

### `DatafeedStatusError`

An error occurring in the feed, like "invalid price".

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The code of the error, for example, "validation/invalid_value". |
| `count` | `string` | The number of occurrences of the error in the feed. |
| `examples` | `array<DatafeedStatusExample>` | A list of example occurrences of the error, grouped by product. |
| `message` | `string` | The error message, for example, "Invalid price". |

### `DatafeedStatusExample`

An example occurrence for a particular error.

| Property | Type | Description |
|----------|------|-------------|
| `itemId` | `string` | The ID of the example item. |
| `lineNumber` | `string` | Line number in the data feed where the example is found. |
| `value` | `string` | The problematic value. |

### `DatafeedTarget`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | Deprecated. Use `feedLabel` instead. The country where the items in the feed will be included in ... |
| `excludedDestinations` | `array<string>` | The list of [destinations to exclude](//support.google.com/merchants/answer/6324486) for this tar... |
| `feedLabel` | `string` | Feed label for the DatafeedTarget. Either `country` or `feedLabel` is required. If both `feedLabe... |
| `includedDestinations` | `array<string>` | The list of [destinations to include](//support.google.com/merchants/answer/7501026) for this tar... |
| `language` | `string` | The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for `targets... |
| `targetCountries` | `array<string>` | The countries where the items may be displayed. Represented as a CLDR territory code. Will be ign... |

### `DatafeedsCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DatafeedsCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `DatafeedsCustomBatchRequestEntry`

A batch entry encoding a single non-batch datafeeds request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `datafeed` | `Datafeed` | The data feed to insert. |
| `datafeedId` | `string` | The ID of the data feed to get, delete or fetch. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`delete`" - "`fetchNow`" - "`get`" - "`i... |

### `DatafeedsCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DatafeedsCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedsCustomBatchR... |

### `DatafeedsCustomBatchResponseEntry`

A batch entry encoding a single non-batch datafeeds response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `datafeed` | `Datafeed` | The requested data feed. Defined if and only if the request was successful. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |

### `DatafeedsFetchNowResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedsFetchNowResp... |

### `DatafeedsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedsListResponse`". |
| `nextPageToken` | `string` | The token for the retrieval of the next page of datafeeds. |
| `resources` | `array<Datafeed>` |  |

### `DatafeedstatusesCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DatafeedstatusesCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `DatafeedstatusesCustomBatchRequestEntry`

A batch entry encoding a single non-batch datafeedstatuses request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `country` | `string` | Deprecated. Use `feedLabel` instead. The country to get the datafeed status for. If this paramete... |
| `datafeedId` | `string` | The ID of the data feed to get. |
| `feedLabel` | `string` | The feed label to get the datafeed status for. If this parameter is provided, then `language` mus... |
| `language` | `string` | The language to get the datafeed status for. If this parameter is provided then `country` must al... |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" |

### `DatafeedstatusesCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DatafeedstatusesCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedstatusesCusto... |

### `DatafeedstatusesCustomBatchResponseEntry`

A batch entry encoding a single non-batch datafeedstatuses response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `datafeedStatus` | `DatafeedStatus` | The requested data feed status. Defined if and only if the request was successful. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |

### `DatafeedstatusesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#datafeedstatusesListR... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of datafeed statuses. |
| `resources` | `array<DatafeedStatus>` |  |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DateTime`

Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying... |
| `hours` | `integer` | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An AP... |
| `minutes` | `integer` | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `month` | `integer` | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `nanos` | `integer` | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `seconds` | `integer` | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API ma... |
| `timeZone` | `TimeZone` | Time zone. |
| `utcOffset` | `string` | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of ... |
| `year` | `integer` | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |

### `DeliveryArea`

A delivery area for the product. Only one of `countryCode` or `postalCodeRange` must be set.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Required. The country that the product can be delivered to. Submit a [unicode CLDR region](http:/... |
| `postalCodeRange` | `DeliveryAreaPostalCodeRange` | A postal code, postal code range or postal code prefix that defines this area. Limited to US and ... |
| `regionCode` | `string` | A state, territory, or prefecture. This is supported for the United States, Australia, and Japan.... |

### `DeliveryAreaPostalCodeRange`

A range of postal codes that defines the delivery area. Only set `firstPostalCode` when specifying a single postal code.

| Property | Type | Description |
|----------|------|-------------|
| `firstPostalCode` | `string` | Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of th... |
| `lastPostalCode` | `string` | A postal code or a pattern of the form prefix* denoting the inclusive upper bound of the range de... |

### `DeliveryTime`

| Property | Type | Description |
|----------|------|-------------|
| `cutoffTime` | `CutoffTime` | Business days cutoff time definition. If not configured, the cutoff time will be defaulted to 8AM... |
| `handlingBusinessDayConfig` | `BusinessDayConfig` | The business days during which orders can be handled. If not provided, Monday to Friday business ... |
| `holidayCutoffs` | `array<HolidayCutoff>` | Holiday cutoff definitions. If configured, they specify order cutoff times for holiday-specific s... |
| `maxHandlingTimeInDays` | `integer` | Maximum number of business days spent before an order is shipped. 0 means same day shipped, 1 mea... |
| `maxTransitTimeInDays` | `integer` | Maximum number of business days that are spent in transit. 0 means same day delivery, 1 means nex... |
| `minHandlingTimeInDays` | `integer` | Minimum number of business days spent before an order is shipped. 0 means same day shipped, 1 mea... |
| `minTransitTimeInDays` | `integer` | Minimum number of business days that are spent in transit. 0 means same day delivery, 1 means nex... |
| `transitBusinessDayConfig` | `BusinessDayConfig` | The business days during which orders can be in-transit. If not provided, Monday to Friday busine... |
| `transitTimeTable` | `TransitTable` | Transit time table, number of business days spent in transit based on row and column dimensions. ... |
| `warehouseBasedDeliveryTimes` | `array<WarehouseBasedDeliveryTime>` | Indicates that the delivery time should be calculated per warehouse (shipping origin location) ba... |

### `Distance`

Distance represented by an integer and unit.

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The distance unit. Acceptable values are `None`, `Miles`, and `Kilometers`. |
| `value` | `string` | The distance represented as a number. |

### `ECommercePlatformLinkInfo`

Additional information required for E_COMMERCE_PLATFORM link type.

| Property | Type | Description |
|----------|------|-------------|
| `externalAccountId` | `string` | The id used by the third party service provider to identify the merchant. |

### `Error`

An error returned by the API.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The domain of the error. |
| `message` | `string` | A description of the error. |
| `reason` | `string` | The error code. |

### `Errors`

A list of errors returned by a failed batch entry.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The HTTP status of the first error in `errors`. |
| `errors` | `array<Error>` | A list of errors. |
| `message` | `string` | The message of the first error in `errors`. |

### `ExternalAction`

Action that is implemented and performed outside of the third-party application. It should redirect the merchant to the provided URL of an external system where they can perform the action. For example to request a review in the Merchant Center.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of external action. |
| `uri` | `string` | URL to external system, for example Merchant Center, where the merchant can perform the action. |

### `FreeListingsProgramStatus`

Response message for GetFreeListingsProgramStatus.

| Property | Type | Description |
|----------|------|-------------|
| `globalState` | `string` | State of the program. `ENABLED` if there are offers for at least one region. |
| `regionStatuses` | `array<FreeListingsProgramStatusRegionStatus>` | Status of the program in each region. Regions with the same status and review eligibility are gro... |

### `FreeListingsProgramStatusRegionStatus`

Status of program and region.

| Property | Type | Description |
|----------|------|-------------|
| `disapprovalDate` | `string` | Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only visible when your e... |
| `eligibilityStatus` | `string` | Eligibility status of the standard free listing program. |
| `onboardingIssues` | `array<string>` | Issues that must be fixed to be eligible for review. |
| `regionCodes` | `array<string>` | The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for a... |
| `reviewEligibilityStatus` | `string` | If a program is eligible for review in a specific region. Only visible if `eligibilityStatus` is ... |
| `reviewIneligibilityReason` | `string` | Review ineligibility reason if account is not eligible for review. |
| `reviewIneligibilityReasonDescription` | `string` | Reason a program in a specific region isn’t eligible for review. Only visible if `reviewEligibili... |
| `reviewIneligibilityReasonDetails` | `FreeListingsProgramStatusReviewIneligibilityReasonDetails` | Additional information for ineligibility. If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`,... |
| `reviewIssues` | `array<string>` | Issues evaluated in the review process. Fix all issues before requesting a review. |

### `FreeListingsProgramStatusReviewIneligibilityReasonDetails`

Additional details for review ineligibility reasons.

| Property | Type | Description |
|----------|------|-------------|
| `cooldownTime` | `string` | This timestamp represents end of cooldown period for review ineligbility reason `IN_COOLDOWN_PERI... |

### `FreeShippingThreshold`

Conditions to be met for a product to have free shipping.

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | Required. The [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.... |
| `priceThreshold` | `Price` | Required. The minimum product price for the shipping cost to become free. Represented as a number. |

### `GenerateRecommendationsResponse`

Response containing generated recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `recommendations` | `array<Recommendation>` | Recommendations generated for a request. |
| `responseToken` | `string` | Output only. Response token is a string created for each `GenerateRecommendationsResponse`. This ... |

### `GmbAccounts`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the Merchant Center account. |
| `gmbAccounts` | `array<GmbAccountsGmbAccount>` | A list of Business Profiles which are available to the merchant. |

### `GmbAccountsGmbAccount`

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email which identifies the Business Profile. |
| `listingCount` | `string` | Number of listings under this account. |
| `name` | `string` | The name of the Business Profile. |
| `type` | `string` | The type of the Business Profile (User or Business). |

### `GoogleAnalyticsLink`

"Google Analytics Link" sources can be used to get conversion data from an existing Google Analytics property into the linked Merchant Center account.

| Property | Type | Description |
|----------|------|-------------|
| `attributionSettings` | `AttributionSettings` | Output only. Attribution settings for the linked Google Analytics property. |
| `propertyId` | `string` | Required. Immutable. ID of the Google Analytics property the merchant is linked to. |
| `propertyName` | `string` | Output only. Name of the Google Analytics property the merchant is linked to. |

### `Headers`

A non-empty list of row or column headers for a table. Exactly one of `prices`, `weights`, `numItems`, `postalCodeGroupNames`, or `location` must be set.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<LocationIdSet>` | A list of location ID sets. Must be non-empty. Can only be set if all other fields are not set. |
| `numberOfItems` | `array<string>` | A list of inclusive number of items upper bounds. The last value can be `"infinity"`. For example... |
| `postalCodeGroupNames` | `array<string>` | A list of postal group names. The last value can be `"all other locations"`. Example: `["zone 1",... |
| `prices` | `array<Price>` | A list of inclusive order price upper bounds. The last price's value can be `"infinity"`. For exa... |
| `weights` | `array<Weight>` | A list of inclusive order weight upper bounds. The last weight's value can be `"infinity"`. For e... |

### `HolidayCutoff`

| Property | Type | Description |
|----------|------|-------------|
| `deadlineDate` | `string` | Date of the order deadline, in ISO 8601 format. For example, "2016-11-29" for 29th November 2016.... |
| `deadlineHour` | `integer` | Hour of the day on the deadline date until which the order has to be placed to qualify for the de... |
| `deadlineTimezone` | `string` | Timezone identifier for the deadline hour (for example, "Europe/Zurich"). List of identifiers. Re... |
| `holidayId` | `string` | Unique identifier for the holiday. Required. |
| `visibleFromDate` | `string` | Date on which the deadline will become visible to consumers in ISO 8601 format. For example, "201... |

### `HolidaysHoliday`

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | The CLDR territory code of the country in which the holiday is available. For example, "US", "DE"... |
| `date` | `string` | Date of the holiday, in ISO 8601 format. For example, "2016-12-25" for Christmas 2016. Always pre... |
| `deliveryGuaranteeDate` | `string` | Date on which the order has to arrive at the customer's, in ISO 8601 format. For example, "2016-1... |
| `deliveryGuaranteeHour` | `string` | Hour of the day in the delivery location's timezone on the guaranteed delivery date by which the ... |
| `id` | `string` | Unique identifier for the holiday to be used when configuring holiday cutoffs. Always present. |
| `type` | `string` | The holiday type. Always present. Acceptable values are: - "`Christmas`" - "`Easter`" - "`Father'... |

### `InputField`

Input field that needs to be available to the merchant. If the field is marked as required, then a value needs to be provided for a successful processing of the request.

| Property | Type | Description |
|----------|------|-------------|
| `checkboxInput` | `InputFieldCheckboxInput` | Input field to provide a boolean value. Corresponds to the [html input type=checkbox](https://www... |
| `choiceInput` | `InputFieldChoiceInput` | Input field to select one of the offered choices. Corresponds to the [html input type=radio](http... |
| `id` | `string` | Not for display but need to be sent back for the given input field. |
| `label` | `TextWithTooltip` | Input field label. There may be more information to be shown in a tooltip. |
| `required` | `boolean` | Whether the field is required. The action button needs to stay disabled till values for all requi... |
| `textInput` | `InputFieldTextInput` | Input field to provide text information. Corresponds to the [html input type=text](https://www.w3... |

### `InputFieldCheckboxInput`

Checkbox input allows merchants to provide a boolean value. Corresponds to the [html input type=checkbox](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox). If merchant checks the box, the input value for the field is `true`, otherwise it is `false`. This type of input is often used as a confirmation that the merchant completed required steps before they are allowed to start the action. In such a case, the input field is marked as required and the button to trigger the action should stay disabled until the merchant checks the box.

### `InputFieldChoiceInput`

Choice input allows merchants to select one of the offered choices. Some choices may be linked to additional input fields that should be displayed under or next to the choice option. The value for the additional input field needs to be provided only when the specific choice is selected by the merchant. For example, additional input field can be hidden or disabled until the merchant selects the specific choice.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `array<InputFieldChoiceInputChoiceInputOption>` | A list of choices. Only one option can be selected. |

### `InputFieldChoiceInputChoiceInputOption`

A choice that merchant can select.

| Property | Type | Description |
|----------|------|-------------|
| `additionalInput` | `InputField` | Input that should be displayed when this option is selected. The additional input will not contai... |
| `id` | `string` | Not for display but need to be sent back for the selected choice option. |
| `label` | `TextWithTooltip` | Short description of the choice option. There may be more information to be shown as a tooltip. |

### `InputFieldTextInput`

Text input allows merchants to provide a text value.

| Property | Type | Description |
|----------|------|-------------|
| `additionalInfo` | `TextWithTooltip` | Additional info regarding the field to be displayed to merchant. For example, warning to not incl... |
| `ariaLabel` | `string` | Text to be used as the [aria-label](https://www.w3.org/TR/WCAG20-TECHS/ARIA14.html) for the input. |
| `formatInfo` | `string` | Information about the required format. If present, it should be shown close to the input field to... |
| `type` | `string` | Type of the text input |

### `InputValue`

Input provided by the merchant for input field.

| Property | Type | Description |
|----------|------|-------------|
| `checkboxInputValue` | `InputValueCheckboxInputValue` | Value for checkbox input field. |
| `choiceInputValue` | `InputValueChoiceInputValue` | Value for choice input field. |
| `inputFieldId` | `string` | Required. Id of the corresponding input field. |
| `textInputValue` | `InputValueTextInputValue` | Value for text input field. |

### `InputValueCheckboxInputValue`

Value for checkbox input field.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `boolean` | Required. True if the merchant checked the box field. False otherwise. |

### `InputValueChoiceInputValue`

Value for choice input field.

| Property | Type | Description |
|----------|------|-------------|
| `choiceInputOptionId` | `string` | Required. Id of the option that was selected by the merchant. |

### `InputValueTextInputValue`

Value for text input field.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Required. Text provided by the merchant. |

### `InsertCheckoutSettingsRequest`

Request message for the `InsertCheckoutSettings` method.

| Property | Type | Description |
|----------|------|-------------|
| `uriSettings` | `UrlSettings` | Required. The `UrlSettings` for the request. The presence of URL settings indicates `Checkout` en... |

### `Installment`

Details of a monthly installment payment offering. [Learn more](https://support.google.com/merchants/answer/6324474) about installments.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Price` | The amount the buyer has to pay per month. |
| `creditType` | `string` | Optional. Type of installment payments. Supported values are: - "`finance`" - "`lease`" |
| `downpayment` | `Price` | Optional. The initial down payment amount the buyer has to pay. |
| `months` | `string` | The number of installments the buyer has to pay. |

### `LabelIds`

The IDs of labels that should be assigned to the CSS domain.

| Property | Type | Description |
|----------|------|-------------|
| `labelIds` | `array<string>` | The list of label IDs. |

### `LiaAboutPageSettings`

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | The status of the verification process for the About page. Supported values are: - "`active`" - "... |
| `url` | `string` | The URL for the About page. |

### `LiaCountrySettings`

| Property | Type | Description |
|----------|------|-------------|
| `about` | `LiaAboutPageSettings` | The settings for the About page. |
| `country` | `string` | Required. CLDR country code (for example, "US"). |
| `hostedLocalStorefrontActive` | `boolean` | The status of the "Merchant hosted local storefront" feature. |
| `inventory` | `LiaInventorySettings` | LIA inventory verification settings. |
| `omnichannelExperience` | `LiaOmnichannelExperience` | The omnichannel experience configured for this country. |
| `onDisplayToOrder` | `LiaOnDisplayToOrderSettings` | LIA "On Display To Order" settings. |
| `posDataProvider` | `LiaPosDataProvider` | The POS data provider linked with this country. |
| `storePickupActive` | `boolean` | The status of the "Store pickup" feature. |

### `LiaInventorySettings`

| Property | Type | Description |
|----------|------|-------------|
| `inventoryVerificationContactEmail` | `string` | The email of the contact for the inventory verification process. |
| `inventoryVerificationContactName` | `string` | The name of the contact for the inventory verification process. |
| `inventoryVerificationContactStatus` | `string` | The status of the verification contact. Acceptable values are: - "`active`" - "`inactive`" - "`pe... |
| `status` | `string` | The status of the inventory verification process. Acceptable values are: - "`active`" - "`inactiv... |

### `LiaOmnichannelExperience`

Omnichannel experience details.

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The CLDR country code (for example, "US"). |
| `lsfType` | `string` | The Local Store Front (LSF) type for this country. Acceptable values are: - "`ghlsf`" (Google-Hos... |
| `pickupTypes` | `array<string>` | The Pickup types for this country. Acceptable values are: - "`pickupToday`" - "`pickupLater`" |

### `LiaOnDisplayToOrderSettings`

| Property | Type | Description |
|----------|------|-------------|
| `shippingCostPolicyUrl` | `string` | Shipping cost and policy URL. |
| `status` | `string` | The status of the ?On display to order? feature. Acceptable values are: - "`active`" - "`inactive... |

### `LiaPosDataProvider`

| Property | Type | Description |
|----------|------|-------------|
| `posDataProviderId` | `string` | The ID of the POS data provider. |
| `posExternalAccountId` | `string` | The account ID by which this merchant is known to the POS data provider. |

### `LiaSettings`

Local Inventory ads (LIA) settings. All methods except listposdataproviders require the admin role.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account to which these LIA settings belong. Ignored upon update, always present in ... |
| `countrySettings` | `array<LiaCountrySettings>` | The LIA settings for each country. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liaSettings`" |

### `LiasettingsCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LiasettingsCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `LiasettingsCustomBatchRequestEntry`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account for which to get/update account LIA settings. |
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `contactEmail` | `string` | Inventory validation contact email. Required only for SetInventoryValidationContact. |
| `contactName` | `string` | Inventory validation contact name. Required only for SetInventoryValidationContact. |
| `country` | `string` | The country code. Required only for RequestInventoryVerification. |
| `gmbEmail` | `string` | The Business Profile. Required only for RequestGmbAccess. |
| `liaSettings` | `LiaSettings` | The account Lia settings to update. Only defined if the method is `update`. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" - "`getAccessibleGmbAccounts`" - ... |
| `omnichannelExperience` | `LiaOmnichannelExperience` | The omnichannel experience for a country. Required only for SetOmnichannelExperience. |
| `posDataProviderId` | `string` | The ID of POS data provider. Required only for SetPosProvider. |
| `posExternalAccountId` | `string` | The account ID by which this merchant is known to the POS provider. |

### `LiasettingsCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LiasettingsCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsCustomBatc... |

### `LiasettingsCustomBatchResponseEntry`

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry to which this entry responds. |
| `errors` | `Errors` | A list of errors defined if, and only if, the request failed. |
| `gmbAccounts` | `GmbAccounts` | The list of accessible Business Profiles. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsCustomBatc... |
| `liaSettings` | `LiaSettings` | The retrieved or updated Lia settings. |
| `omnichannelExperience` | `LiaOmnichannelExperience` | The updated omnichannel experience for a country. |
| `posDataProviders` | `array<PosDataProviders>` | The list of POS data providers. |

### `LiasettingsGetAccessibleGmbAccountsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the Merchant Center account. |
| `gmbAccounts` | `array<GmbAccountsGmbAccount>` | A list of Business Profiles which are available to the merchant. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsGetAccessi... |

### `LiasettingsListPosDataProvidersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsListPosDat... |
| `posDataProviders` | `array<PosDataProviders>` | The list of POS data providers for each eligible country |

### `LiasettingsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsListRespon... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of LIA settings. |
| `resources` | `array<LiaSettings>` |  |

### `LiasettingsRequestGmbAccessResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsRequestGmb... |

### `LiasettingsRequestInventoryVerificationResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsRequestInv... |

### `LiasettingsSetInventoryVerificationContactResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsSetInvento... |

### `LiasettingsSetPosDataProviderResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsSetPosData... |

### `LinkService`

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Service provided to or by the linked account. Acceptable values are: - "`shoppingActionsOrderMana... |
| `status` | `string` | Status of the link Acceptable values are: - "`active`" - "`inactive`" - "`pending`" |

### `LinkedAccount`

| Property | Type | Description |
|----------|------|-------------|
| `linkedAccountId` | `string` | The ID of the linked account. |
| `services` | `array<LinkService>` | List of provided services. |

### `ListAccountLabelsResponse`

Response message for the `ListAccountLabels` method.

| Property | Type | Description |
|----------|------|-------------|
| `accountLabels` | `array<AccountLabel>` | The labels from the specified account. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListAccountReturnCarrierResponse`

Response for listing account return carriers.

| Property | Type | Description |
|----------|------|-------------|
| `accountReturnCarriers` | `array<AccountReturnCarrier>` | List of all available account return carriers for the merchant. |

### `ListCollectionStatusesResponse`

Response message for the ListCollectionStatuses method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `resources` | `array<CollectionStatus>` | The collectionstatuses listed. |

### `ListCollectionsResponse`

Response message for the ListCollections method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `resources` | `array<Collection>` | The collections listed. |

### `ListConversionSourcesResponse`

Response message for the ListConversionSources method.

| Property | Type | Description |
|----------|------|-------------|
| `conversionSources` | `array<ConversionSource>` | List of conversion sources. |
| `nextPageToken` | `string` | Token to be used to fetch the next results page. |

### `ListCssesResponse`

The response message for the `ListCsses` method

| Property | Type | Description |
|----------|------|-------------|
| `csses` | `array<Css>` | The CSS domains affiliated with the specified CSS group. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListMethodQuotasResponse`

Response message for the ListMethodQuotas method.

| Property | Type | Description |
|----------|------|-------------|
| `methodQuotas` | `array<MethodQuota>` | The current quota usage and limits per each method. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListPromotionResponse`

Response message for Promotions.List method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `promotions` | `array<Promotion>` | List of all available promotions for the merchant. |

### `ListRegionsResponse`

Response message for the `ListRegions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `regions` | `array<Region>` | The regions from the specified merchant. |

### `ListReturnPolicyOnlineResponse`

Response message for the `ListReturnPolicyOnline` method.

| Property | Type | Description |
|----------|------|-------------|
| `returnPolicies` | `array<ReturnPolicyOnline>` | The retrieved return policies. |

### `LocalInventory`

Local inventory resource. For accepted attribute values, see the local product inventory feed specification.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | The availability of the product. For accepted attribute values, see the local product inventory f... |
| `customAttributes` | `array<CustomAttribute>` | A list of custom (merchant-provided) attributes. Can also be used to submit any attribute of the ... |
| `instoreProductLocation` | `string` | The in-store product location. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#localInventory`" |
| `pickupMethod` | `string` | The supported pickup method for this offer. Unless the value is "not supported", this field must ... |
| `pickupSla` | `string` | The expected date that an order will be ready for pickup relative to the order date. Must be subm... |
| `price` | `Price` | The price of the product. |
| `quantity` | `integer` | The quantity of the product. Must be nonnegative. |
| `salePrice` | `Price` | The sale price of the product. Mandatory if `sale_price_effective_date` is defined. |
| `salePriceEffectiveDate` | `string` | A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both ... |
| `storeCode` | `string` | Required. The store code of this local inventory resource. |

### `LocalinventoryCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LocalinventoryCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `LocalinventoryCustomBatchRequestEntry`

Batch entry encoding a single local inventory update request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `localInventory` | `LocalInventory` | Local inventory of the product. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | Method of the batch request entry. Acceptable values are: - "`insert`" |
| `productId` | `string` | The ID of the product for which to update local inventory. |

### `LocalinventoryCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LocalinventoryCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#localinventoryCustomB... |

### `LocalinventoryCustomBatchResponseEntry`

Batch entry encoding a single local inventory update response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#localinventoryCustomB... |

### `LocationIdSet`

| Property | Type | Description |
|----------|------|-------------|
| `locationIds` | `array<string>` | A non-empty list of location IDs. They must all be of the same location type (for example, state). |

### `LoyaltyProgram`

Allows the setting up of loyalty program benefits (for example price or points). https://support.google.com/merchants/answer/12922446

| Property | Type | Description |
|----------|------|-------------|
| `cashbackForFutureUse` | `Price` | Optional. The cashback that can be used for future purchases. |
| `loyaltyPoints` | `string` | Optional. The amount of loyalty points earned on a purchase. |
| `memberPriceEffectiveDate` | `string` | Optional. A date range during which the item is eligible for member price. If not specified, the ... |
| `price` | `Price` | Optional. The price for members of the given tier (instant discount price). Must be smaller or eq... |
| `programLabel` | `string` | Required. The label of the loyalty program. This is an internal label that uniquely identifies th... |
| `shippingLabel` | `string` | Optional. The shipping label for the loyalty program. You can use this label to indicate whether ... |
| `tierLabel` | `string` | Required. The label of the tier within the loyalty program. Must match one of the labels within t... |

### `MerchantCenterDestination`

"Merchant Center Destination" sources can be used to send conversion events from a website using a Google tag directly to a Merchant Center account where the source is created.

| Property | Type | Description |
|----------|------|-------------|
| `attributionSettings` | `AttributionSettings` | Required. Attribution settings being used for the Merchant Center Destination. |
| `currencyCode` | `string` | Required. Three-letter currency code (ISO 4217). The currency code defines in which currency the ... |
| `destinationId` | `string` | Output only. Merchant Center Destination ID. |
| `displayName` | `string` | Required. Merchant-specified display name for the destination. This is the name that identifies t... |

### `MethodQuota`

The quota information per method in the Content API.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | Output only. The method name, for example `products.list`. Method name does not contain version b... |
| `quotaLimit` | `string` | Output only. The maximum number of calls allowed per day for the method. |
| `quotaMinuteLimit` | `string` | Output only. The maximum number of calls allowed per minute for the method. |
| `quotaUsage` | `string` | Output only. The current quota usage, meaning the number of calls already made to the method per ... |

### `Metrics`

Performance metrics. Values are only set for metrics requested explicitly in the request's search query.

| Property | Type | Description |
|----------|------|-------------|
| `aos` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `aovMicros` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `clicks` | `string` | Number of clicks. |
| `conversionRate` | `number` | Number of conversions divided by the number of clicks, reported on the impression date. The metri... |
| `conversionValueMicros` | `string` | Value of conversions in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) attribute... |
| `conversions` | `number` | Number of conversions attributed to the product, reported on the conversion date. Depending on th... |
| `ctr` | `number` | Click-through rate - the number of clicks merchant's products receive (clicks) divided by the num... |
| `daysToShip` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `impressions` | `string` | Number of times merchant's products are shown. |
| `itemDaysToShip` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `itemFillRate` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `orderedItemSalesMicros` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `orderedItems` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `orders` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `rejectedItems` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `returnRate` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `returnedItems` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `returnsMicros` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `shippedItemSalesMicros` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `shippedItems` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `shippedOrders` | `string` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `unshippedItems` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |
| `unshippedOrders` | `number` | *Deprecated*: This field is no longer supported and retrieving it returns 0 starting from May 202... |

### `MinimumOrderValueTable`

| Property | Type | Description |
|----------|------|-------------|
| `storeCodeSetWithMovs` | `array<MinimumOrderValueTableStoreCodeSetWithMov>` |  |

### `MinimumOrderValueTableStoreCodeSetWithMov`

A list of store code sets sharing the same minimum order value. At least two sets are required and the last one must be empty, which signifies 'MOV for all other stores'. Each store code can only appear once across all the sets. All prices within a service must have the same currency.

| Property | Type | Description |
|----------|------|-------------|
| `storeCodes` | `array<string>` | A list of unique store codes or empty for the catch all. |
| `value` | `Price` | The minimum order value for the given stores. |

### `OrderTrackingSignal`

Represents a merchant trade from which signals are extracted, e.g. shipping.

| Property | Type | Description |
|----------|------|-------------|
| `customerShippingFee` | `PriceAmount` | The shipping fee of the order; this value should be set to zero in the case of free shipping. |
| `deliveryPostalCode` | `string` | Required. The delivery postal code, as a continuous string without spaces or dashes, e.g. "95016"... |
| `deliveryRegionCode` | `string` | Required. The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en... |
| `lineItems` | `array<OrderTrackingSignalLineItemDetails>` | Information about line items in the order. |
| `merchantId` | `string` | The Google merchant ID of this order tracking signal. This value is optional. If left unset, the ... |
| `orderCreatedTime` | `DateTime` | Required. The time when the order was created on the merchant side. Include the year and timezone... |
| `orderId` | `string` | Required. The ID of the order on the merchant side. This field will be hashed in returned OrderTr... |
| `orderTrackingSignalId` | `string` | Output only. The ID that uniquely identifies this order tracking signal. |
| `shipmentLineItemMapping` | `array<OrderTrackingSignalShipmentLineItemMapping>` | The mapping of the line items to the shipment information. |
| `shippingInfo` | `array<OrderTrackingSignalShippingInfo>` | The shipping information for the order. |

### `OrderTrackingSignalLineItemDetails`

The line items of the order.

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `string` | Brand of the product. |
| `gtin` | `string` | The Global Trade Item Number. |
| `lineItemId` | `string` | Required. The ID for this line item. |
| `mpn` | `string` | The manufacturer part number. |
| `productDescription` | `string` | Plain text description of this product (deprecated: Please use product_title instead). |
| `productId` | `string` | Required. The Content API REST ID of the product, in the form channel:contentLanguage:targetCount... |
| `productTitle` | `string` | Plain text title of this product. |
| `quantity` | `string` | The quantity of the line item in the order. |
| `sku` | `string` | Merchant SKU for this item (deprecated). |
| `upc` | `string` | Universal product code for this item (deprecated: Please use GTIN instead). |

### `OrderTrackingSignalShipmentLineItemMapping`

Represents how many items are in the shipment for the given shipment_id and line_item_id.

| Property | Type | Description |
|----------|------|-------------|
| `lineItemId` | `string` | Required. The line item ID. |
| `quantity` | `string` | The line item quantity in the shipment. |
| `shipmentId` | `string` | Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation res... |

### `OrderTrackingSignalShippingInfo`

The shipping information for the order.

| Property | Type | Description |
|----------|------|-------------|
| `actualDeliveryTime` | `DateTime` | The time when the shipment was actually delivered. Include the year and timezone string, if avail... |
| `carrierName` | `string` | The name of the shipping carrier for the delivery. This field is required if one of the following... |
| `carrierServiceName` | `string` | The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc. |
| `earliestDeliveryPromiseTime` | `DateTime` | The earliest delivery promised time. Include the year and timezone string, if available. This fie... |
| `latestDeliveryPromiseTime` | `DateTime` | The latest delivery promised time. Include the year and timezone string, if available. This field... |
| `originPostalCode` | `string` | The origin postal code, as a continuous string without spaces or dashes, e.g. "95016". This field... |
| `originRegionCode` | `string` | The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for ... |
| `shipmentId` | `string` | Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation res... |
| `shippedTime` | `DateTime` | The time when the shipment was shipped. Include the year and timezone string, if available. |
| `shippingStatus` | `string` | The status of the shipment. |
| `trackingId` | `string` | The tracking ID of the shipment. This field is required if one of the following fields is absent:... |

### `PaymentServiceProviderLinkInfo`

Additional information required for PAYMENT_SERVICE_PROVIDER link type.

| Property | Type | Description |
|----------|------|-------------|
| `externalAccountBusinessCountry` | `string` | The business country of the merchant account as identified by the third party service provider. |
| `externalAccountId` | `string` | The id used by the third party service provider to identify the merchant. |

### `PickupCarrierService`

| Property | Type | Description |
|----------|------|-------------|
| `carrierName` | `string` | The name of the pickup carrier (for example, `"UPS"`). Required. |
| `serviceName` | `string` | The name of the pickup service (for example, `"Access point"`). Required. |

### `PickupServicesPickupService`

| Property | Type | Description |
|----------|------|-------------|
| `carrierName` | `string` | The name of the carrier (for example, `"UPS"`). Always present. |
| `country` | `string` | The CLDR country code of the carrier (for example, "US"). Always present. |
| `serviceName` | `string` | The name of the pickup service (for example, `"Access point"`). Always present. |

### `PosCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<PosCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `PosCustomBatchRequestEntry`

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `inventory` | `PosInventory` | The inventory to submit. This should be set only if the method is `inventory`. |
| `merchantId` | `string` | The ID of the POS data provider. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`inv... |
| `sale` | `PosSale` | The sale information to submit. This should be set only if the method is `sale`. |
| `store` | `PosStore` | The store information to submit. This should be set only if the method is `insert`. |
| `storeCode` | `string` | The store code. This should be set only if the method is `delete` or `get`. |
| `targetMerchantId` | `string` | The ID of the account for which to get/submit data. |

### `PosCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<PosCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posCustomBatchRespons... |

### `PosCustomBatchResponseEntry`

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry to which this entry responds. |
| `errors` | `Errors` | A list of errors defined if, and only if, the request failed. |
| `inventory` | `PosInventory` | The updated inventory information. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posCustomBatchRespons... |
| `sale` | `PosSale` | The updated sale information. |
| `store` | `PosStore` | The retrieved or updated store information. |

### `PosDataProviders`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | Country code. |
| `posDataProviders` | `array<PosDataProvidersPosDataProvider>` | A list of POS data providers. |

### `PosDataProvidersPosDataProvider`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of Pos data Provider. |
| `fullName` | `string` | The full name of this POS data Provider. |
| `providerId` | `string` | The ID of the account. |

### `PosInventory`

The absolute quantity of an item available at the given store.

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posInventory`" |
| `pickupMethod` | `string` | Optional. Supported pickup method for this offer. Unless the value is "not supported", this field... |
| `pickupSla` | `string` | Optional. Expected date that an order will be ready for pickup relative to the order date. Must b... |
| `price` | `Price` | Required. The current price of the item. |
| `quantity` | `string` | Required. The available quantity of the item. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosInventoryRequest`

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `pickupMethod` | `string` | Optional. Supported pickup method for this offer. Unless the value is "not supported", this field... |
| `pickupSla` | `string` | Optional. Expected date that an order will be ready for pickup relative to the order date. Must b... |
| `price` | `Price` | Required. The current price of the item. |
| `quantity` | `string` | Required. The available quantity of the item. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosInventoryResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posInventoryResponse`". |
| `pickupMethod` | `string` | Optional. Supported pickup method for this offer. Unless the value is "not supported", this field... |
| `pickupSla` | `string` | Optional. Expected date that an order will be ready for pickup relative to the order date. Must b... |
| `price` | `Price` | Required. The current price of the item. |
| `quantity` | `string` | Required. The available quantity of the item. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posListResponse`". |
| `resources` | `array<PosStore>` |  |

### `PosSale`

The change of the available quantity of an item at the given store.

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posSale`" |
| `price` | `Price` | Required. The price of the item. |
| `quantity` | `string` | Required. The relative change of the available quantity. Negative for items returned. |
| `saleId` | `string` | A unique ID to group items from the same sale event. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosSaleRequest`

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `price` | `Price` | Required. The price of the item. |
| `quantity` | `string` | Required. The relative change of the available quantity. Negative for items returned. |
| `saleId` | `string` | A unique ID to group items from the same sale event. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosSaleResponse`

| Property | Type | Description |
|----------|------|-------------|
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `gtin` | `string` | Global Trade Item Number. |
| `itemId` | `string` | Required. A unique identifier for the item. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posSaleResponse`". |
| `price` | `Price` | Required. The price of the item. |
| `quantity` | `string` | Required. The relative change of the available quantity. Negative for items returned. |
| `saleId` | `string` | A unique ID to group items from the same sale event. |
| `storeCode` | `string` | Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API o... |
| `targetCountry` | `string` | Required. The CLDR territory code for the item. |
| `timestamp` | `string` | Required. The inventory timestamp, in ISO 8601 format. |

### `PosStore`

Store resource.

| Property | Type | Description |
|----------|------|-------------|
| `gcidCategory` | `array<string>` | The business type of the store. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#posStore`" |
| `matchingStatus` | `string` | Output only. The matching status of POS store and Google Business Profile store. Possible values ... |
| `matchingStatusHint` | `string` | Output only. The hint of why the matching has failed. This is only set when matching_status=faile... |
| `phoneNumber` | `string` | The store phone number. |
| `placeId` | `string` | The Google Place Id of the store location. |
| `storeAddress` | `string` | Required. The street address of the store. |
| `storeCode` | `string` | Required. A store identifier that is unique for the given merchant. |
| `storeName` | `string` | The merchant or store name. |
| `websiteUrl` | `string` | The website url for the store or merchant. |

### `PostalCodeGroup`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The CLDR territory code of the country the postal code group applies to. Required. |
| `name` | `string` | The name of the postal code group, referred to in headers. Required. |
| `postalCodeRanges` | `array<PostalCodeRange>` | A range of postal codes. Required. |

### `PostalCodeRange`

| Property | Type | Description |
|----------|------|-------------|
| `postalCodeRangeBegin` | `string` | A postal code or a pattern of the form `prefix*` denoting the inclusive lower bound of the range ... |
| `postalCodeRangeEnd` | `string` | A postal code or a pattern of the form `prefix*` denoting the inclusive upper bound of the range ... |

### `Price`

| Property | Type | Description |
|----------|------|-------------|
| `currency` | `string` | The currency of the price. |
| `value` | `string` | The price represented as a number. |

### `PriceAmount`

The price represented as a number and currency.

| Property | Type | Description |
|----------|------|-------------|
| `currency` | `string` | The currency of the price. |
| `value` | `string` | The price represented as a number. |

### `PriceCompetitiveness`

Price competitiveness fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceCompetitivenessProductView`. https://support.google.com/merchants/answer/9626903

| Property | Type | Description |
|----------|------|-------------|
| `benchmarkPriceCurrencyCode` | `string` | The price benchmark currency (ISO 4217 code). |
| `benchmarkPriceMicros` | `string` | The latest available price benchmark in micros (1 millionth of a standard unit, 1 USD = 1000000 m... |
| `countryCode` | `string` | The country of the price benchmark (ISO 3166 code). |

### `PriceInsights`

Price insights fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceInsightsProductView`. https://support.google.com/merchants/answer/11916926

| Property | Type | Description |
|----------|------|-------------|
| `effectiveness` | `string` | The predicted effectiveness of applying the price suggestion, bucketed. |
| `predictedClicksChangeFraction` | `number` | The predicted change in clicks as a fraction after introducing the suggested price compared to cu... |
| `predictedConversionsChangeFraction` | `number` | The predicted change in conversions as a fraction after introducing the suggested price compared ... |
| `predictedGrossProfitChangeFraction` | `number` | *Deprecated*: This field is no longer supported and will start returning 0. The predicted change ... |
| `predictedImpressionsChangeFraction` | `number` | The predicted change in impressions as a fraction after introducing the suggested price compared ... |
| `predictedMonthlyGrossProfitChangeCurrencyCode` | `string` | *Deprecated*: This field is no longer supported and will start returning USD for all requests. Th... |
| `predictedMonthlyGrossProfitChangeMicros` | `string` | *Deprecated*: This field is no longer supported and will start returning 0. The predicted change ... |
| `suggestedPriceCurrencyCode` | `string` | The suggested price currency (ISO 4217 code). |
| `suggestedPriceMicros` | `string` | The latest suggested price in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) for... |

### `Product`

Required product attributes are primarily defined by the product data specification. See the Product Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect. The following reference documentation lists the field names in the **camelCase** casing style while the Products Data Specification lists the names in the **snake_case** casing style.

| Property | Type | Description |
|----------|------|-------------|
| `additionalImageLinks` | `array<string>` | Additional URLs of images of the item. |
| `additionalSizeType` | `string` | Additional cut of the item. Used together with size_type to represent combined size types for app... |
| `adsGrouping` | `string` | Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise. |
| `adsLabels` | `array<string>` | Similar to ads_grouping, but only works on CPC. |
| `adsRedirect` | `string` | Allows advertisers to override the item URL when the product is shown within the context of Produ... |
| `adult` | `boolean` | Should be set to true if the item is targeted towards adults. |
| `ageGroup` | `string` | Target age group of the item. |
| `autoPricingMinPrice` | `Price` | A safeguard in the [Automated Discounts](//support.google.com/merchants/answer/10295759) and [Dyn... |
| `availability` | `string` | Availability status of the item. |
| `availabilityDate` | `string` | The day a pre-ordered product becomes available for delivery, in ISO 8601 format. |
| `brand` | `string` | Brand of the item. |
| `canonicalLink` | `string` | URL for the canonical version of your item's landing page. |
| `certifications` | `array<ProductCertification>` | Product [certification](https://support.google.com/merchants/answer/13528839), introduced for EU ... |
| `channel` | `string` | Required. The item's channel (online or local). Acceptable values are: - "`local`" - "`online`" |
| `cloudExportAdditionalProperties` | `array<CloudExportAdditionalProperties>` | Extra fields to export to the Cloud Retail program. |
| `color` | `string` | Color of the item. |
| `condition` | `string` | Condition or state of the item. |
| `contentLanguage` | `string` | Required. The two-letter ISO 639-1 language code for the item. |
| `costOfGoodsSold` | `Price` | Cost of goods sold. Used for gross profit reporting. |
| `customAttributes` | `array<CustomAttribute>` | A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute... |
| `customLabel0` | `string` | Custom label 0 for custom grouping of items in a Shopping campaign. |
| `customLabel1` | `string` | Custom label 1 for custom grouping of items in a Shopping campaign. |
| `customLabel2` | `string` | Custom label 2 for custom grouping of items in a Shopping campaign. |
| `customLabel3` | `string` | Custom label 3 for custom grouping of items in a Shopping campaign. |
| `customLabel4` | `string` | Custom label 4 for custom grouping of items in a Shopping campaign. |
| `description` | `string` | Description of the item. |
| `disclosureDate` | `string` | The date time when an offer becomes visible in search results across Google’s YouTube surfaces, i... |
| `displayAdsId` | `string` | An identifier for an item for dynamic remarketing campaigns. |
| `displayAdsLink` | `string` | URL directly to your item's landing page for dynamic remarketing campaigns. |
| `displayAdsSimilarIds` | `array<string>` | Advertiser-specified recommendations. |
| `displayAdsTitle` | `string` | Title of an item for dynamic remarketing campaigns. |
| `displayAdsValue` | `number` | Offer margin for dynamic remarketing campaigns. |
| `energyEfficiencyClass` | `string` | The energy efficiency class as defined in EU directive 2010/30/EU. |
| `excludedDestinations` | `array<string>` | The list of [destinations to exclude](//support.google.com/merchants/answer/6324486) for this tar... |
| `expirationDate` | `string` | Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual... |
| `externalSellerId` | `string` | Required for multi-seller accounts. Use this attribute if you're a marketplace uploading products... |
| `feedLabel` | `string` | Feed label for the item. Either `targetCountry` or `feedLabel` is required. Must be less than or ... |
| `freeShippingThreshold` | `array<FreeShippingThreshold>` | Optional. Conditions to be met for a product to have free shipping. |
| `gender` | `string` | Target gender of the item. |
| `googleProductCategory` | `string` | Google's category of the item (see [Google product taxonomy](https://support.google.com/merchants... |
| `gtin` | `string` | Global Trade Item Number (GTIN) of the item. |
| `id` | `string` | The REST ID of the product. Content API methods that operate on products take this as their `prod... |
| `identifierExists` | `boolean` | False when the item does not have unique product identifiers appropriate to its category, such as... |
| `imageLink` | `string` | URL of an image of the item. |
| `includedDestinations` | `array<string>` | The list of [destinations to include](//support.google.com/merchants/answer/7501026) for this tar... |
| `installment` | `Installment` | Number and amount of installments to pay for an item. |
| `isBundle` | `boolean` | Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different product... |
| `itemGroupId` | `string` | Shared identifier for all variants of the same product. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#product`" |
| `lifestyleImageLinks` | `array<string>` | Additional URLs of lifestyle images of the item. Used to explicitly identify images that showcase... |
| `link` | `string` | URL directly linking to your item's page on your website. |
| `linkTemplate` | `string` | URL template for merchant hosted local storefront. |
| `loyaltyProgram` | `LoyaltyProgram` | Loyalty program information that is used to surface loyalty benefits ( for example, better pricin... |
| `loyaltyPrograms` | `array<LoyaltyProgram>` | Optional. A list of loyalty program information that is used to surface loyalty benefits (for exa... |
| `material` | `string` | The material of which the item is made. |
| `maxEnergyEfficiencyClass` | `string` | The energy efficiency class as defined in EU directive 2010/30/EU. |
| `maxHandlingTime` | `string` | Maximal product handling time (in business days). |
| `maximumRetailPrice` | `Price` | Maximum retail price (MRP) of the item. Applicable to India only. |
| `minEnergyEfficiencyClass` | `string` | The energy efficiency class as defined in EU directive 2010/30/EU. |
| `minHandlingTime` | `string` | Minimal product handling time (in business days). |
| `mobileLink` | `string` | URL for the mobile-optimized version of your item's landing page. |
| `mobileLinkTemplate` | `string` | URL template for merchant hosted local storefront optimized for mobile devices. |
| `mpn` | `string` | Manufacturer Part Number (MPN) of the item. |
| `multipack` | `string` | The number of identical products in a merchant-defined multipack. |
| `offerId` | `string` | Required. A unique identifier for the item. Leading and trailing whitespaces are stripped and mul... |
| `pattern` | `string` | The item's pattern (for example, polka dots). |
| `pause` | `string` | Publication of this item should be temporarily paused. Acceptable values are: - "`ads`" |
| `pickupMethod` | `string` | The pick up option for the item. Acceptable values are: - "`buy`" - "`reserve`" - "`ship to store... |
| `pickupSla` | `string` | Item store pickup timeline. Acceptable values are: - "`same day`" - "`next day`" - "`2-day`" - "`... |
| `price` | `Price` | Price of the item. |
| `productDetails` | `array<ProductProductDetail>` | Technical specification or additional product details. |
| `productHeight` | `ProductDimension` | The height of the product in the units provided. The value must be between 0 (exclusive) and 3000... |
| `productHighlights` | `array<string>` | Bullet points describing the most relevant highlights of a product. |
| `productLength` | `ProductDimension` | The length of the product in the units provided. The value must be between 0 (exclusive) and 3000... |
| `productTypes` | `array<string>` | Categories of the item (formatted as in product data specification). |
| `productWeight` | `ProductWeight` | The weight of the product in the units provided. The value must be between 0 (exclusive) and 2000... |
| `productWidth` | `ProductDimension` | The width of the product in the units provided. The value must be between 0 (exclusive) and 3000 ... |
| `promotionIds` | `array<string>` | The unique ID of a promotion. |
| `salePrice` | `Price` | Advertised sale price of the item. |
| `salePriceEffectiveDate` | `string` | Date range during which the item is on sale (see product data specification ). |
| `sellOnGoogleQuantity` | `string` | The quantity of the product that is available for selling on Google. Supported only for online pr... |
| `shipping` | `array<ProductShipping>` | Shipping rules. |
| `shippingHeight` | `ProductShippingDimension` | Height of the item for shipping. |
| `shippingLabel` | `string` | The shipping label of the product, used to group product in account-level shipping rules. |
| `shippingLength` | `ProductShippingDimension` | Length of the item for shipping. |
| `shippingWeight` | `ProductShippingWeight` | Weight of the item for shipping. |
| `shippingWidth` | `ProductShippingDimension` | Width of the item for shipping. |
| `shoppingAdsExcludedCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping Ads destination. Co... |
| `sizeSystem` | `string` | System in which the size is specified. Recommended for apparel items. |
| `sizeType` | `string` | The cut of the item. Recommended for apparel items. |
| `sizes` | `array<string>` | Size of the item. Only one value is allowed. For variants with different sizes, insert a separate... |
| `source` | `string` | Output only. The source of the offer, that is, how the offer was created. Acceptable values are: ... |
| `structuredDescription` | `ProductStructuredDescription` | Structured description, for algorithmically (AI)-generated descriptions. |
| `structuredTitle` | `ProductStructuredTitle` | Structured title, for algorithmically (AI)-generated titles. |
| `subscriptionCost` | `ProductSubscriptionCost` | Number of periods (months or years) and amount of payment per period for an item with an associat... |
| `sustainabilityIncentives` | `array<ProductSustainabilityIncentive>` | Optional. The list of sustainability incentive programs. |
| `targetCountry` | `string` | Required. The CLDR territory code for the item's country of sale. |
| `taxCategory` | `string` | The tax category of the product, used to configure detailed tax nexus in account-level tax settings. |
| `taxes` | `array<ProductTax>` | Tax information. |
| `title` | `string` | Title of the item. |
| `transitTimeLabel` | `string` | The transit time label of the product, used to group product in account-level transit time tables. |
| `unitPricingBaseMeasure` | `ProductUnitPricingBaseMeasure` | The preference of the denominator of the unit price. |
| `unitPricingMeasure` | `ProductUnitPricingMeasure` | The measure and dimension of an item. |
| `virtualModelLink` | `string` | URL of the 3D model of the item to provide more visuals. |

### `ProductCertification`

Product [certification](https://support.google.com/merchants/answer/13528839), introduced for EU energy efficiency labeling compliance using the [EU EPREL](https://eprel.ec.europa.eu/screen/home) database.

| Property | Type | Description |
|----------|------|-------------|
| `certificationAuthority` | `string` | The certification authority, for example "European_Commission". Maximum length is 2000 characters. |
| `certificationCode` | `string` | The certification code, for eaxample "123456". Maximum length is 2000 characters. |
| `certificationName` | `string` | The name of the certification, for example "EPREL". Maximum length is 2000 characters. |
| `certificationValue` | `string` | The certification value (also known as class, level or grade), for example "A+", "C", "gold". Max... |

### `ProductCluster`

Product cluster fields. A product cluster is a grouping for different offers that represent the same product. Values are only set for fields requested explicitly in the request's search query.

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `string` | Brand of the product cluster. |
| `brandInventoryStatus` | `string` | Tells if there is at least one product of the brand currently `IN_STOCK` in your product feed acr... |
| `categoryL1` | `string` | Product category (1st level) of the product cluster, represented in Google's product taxonomy. |
| `categoryL2` | `string` | Product category (2nd level) of the product cluster, represented in Google's product taxonomy. |
| `categoryL3` | `string` | Product category (3rd level) of the product cluster, represented in Google's product taxonomy. |
| `categoryL4` | `string` | Product category (4th level) of the product cluster, represented in Google's product taxonomy. |
| `categoryL5` | `string` | Product category (5th level) of the product cluster, represented in Google's product taxonomy. |
| `inventoryStatus` | `string` | Tells whether the product cluster is `IN_STOCK` in your product feed across multiple countries, `... |
| `title` | `string` | Title of the product cluster. |
| `variantGtins` | `array<string>` | GTINs of example variants of the product cluster. |

### `ProductDeliveryTime`

The estimated days to deliver a product after an order is placed. Only authorized shipping signals partners working with a merchant can use this resource. Merchants should use the [`products`](https://developers.google.com/shopping-content/reference/rest/v2.1/products#productshipping) resource instead.

| Property | Type | Description |
|----------|------|-------------|
| `areaDeliveryTimes` | `array<ProductDeliveryTimeAreaDeliveryTime>` | Required. A set of associations between `DeliveryArea` and `DeliveryTime` entries. The total numb... |
| `productId` | `ProductId` | Required. The `id` of the product. |

### `ProductDeliveryTimeAreaDeliveryTime`

A pairing of `DeliveryArea` associated with a `DeliveryTime` for this product.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryArea` | `DeliveryArea` | Required. The delivery area associated with `deliveryTime` for this product. |
| `deliveryTime` | `ProductDeliveryTimeAreaDeliveryTimeDeliveryTime` | Required. The delivery time associated with `deliveryArea` for this product. |

### `ProductDeliveryTimeAreaDeliveryTimeDeliveryTime`

A delivery time for this product.

| Property | Type | Description |
|----------|------|-------------|
| `maxHandlingTimeDays` | `integer` | Required. The maximum number of business days (inclusive) between when an order is placed and whe... |
| `maxTransitTimeDays` | `integer` | Required. The maximum number of business days (inclusive) between when the product ships and when... |
| `minHandlingTimeDays` | `integer` | Required. The minimum number of business days (inclusive) between when an order is placed and whe... |
| `minTransitTimeDays` | `integer` | Required. The minimum number of business days (inclusive) between when the product ships and when... |

### `ProductDimension`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | Required. The length units. Acceptable values are: - "`in`" - "`cm`" |
| `value` | `number` | Required. The length value represented as a number. The value can have a maximum precision of fou... |

### `ProductId`

The Content API ID of the product.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`. |

### `ProductIssue`

An issue affecting specific product.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<Action>` | A list of actionable steps that can be executed to solve the issue. An example is requesting a re... |
| `impact` | `ProductIssueImpact` | Clarifies the severity of the issue. The summarizing message, if present, should be shown right u... |
| `prerenderedContent` | `string` | Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes that can be used t... |
| `prerenderedOutOfCourtDisputeSettlement` | `string` | Pre-rendered HTML that contains a link to the external location where the ODS can be requested an... |
| `title` | `string` | Title of the issue. |

### `ProductIssueImpact`

Overall impact of product issue.

| Property | Type | Description |
|----------|------|-------------|
| `breakdowns` | `array<Breakdown>` | Detailed impact breakdown. Explains the types of restriction the issue has in different shopping ... |
| `message` | `string` | Optional. Message summarizing the overall impact of the issue. If present, it should be rendered ... |
| `severity` | `string` | The severity of the issue. |

### `ProductProductDetail`

| Property | Type | Description |
|----------|------|-------------|
| `attributeName` | `string` | The name of the product detail. |
| `attributeValue` | `string` | The value of the product detail. |
| `sectionName` | `string` | The section header used to group a set of product details. |

### `ProductShipping`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The CLDR territory code of the country to which an item will ship. |
| `locationGroupName` | `string` | The location where the shipping is applicable, represented by a location group name. |
| `locationId` | `string` | The numeric ID of a location that the shipping rate applies to as defined in the Google Ads API. |
| `maxHandlingTime` | `string` | Maximum handling time (inclusive) between when the order is received and shipped in business days... |
| `maxTransitTime` | `string` | Maximum transit time (inclusive) between when the order has shipped and when it's delivered in bu... |
| `minHandlingTime` | `string` | Minimum handling time (inclusive) between when the order is received and shipped in business days... |
| `minTransitTime` | `string` | Minimum transit time (inclusive) between when the order has shipped and when it's delivered in bu... |
| `postalCode` | `string` | The postal code range that the shipping rate applies to, represented by a postal code, a postal c... |
| `price` | `Price` | Fixed shipping price, represented as a number. |
| `region` | `string` | The geographic region to which a shipping rate applies. |
| `service` | `string` | A free-form description of the service class or delivery speed. |

### `ProductShippingDimension`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit of value. |
| `value` | `number` | The dimension of the product used to calculate the shipping cost of the item. |

### `ProductShippingWeight`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit of value. |
| `value` | `number` | The weight of the product used to calculate the shipping cost of the item. |

### `ProductStatus`

The status of a product, that is, information about a product computed asynchronously.

| Property | Type | Description |
|----------|------|-------------|
| `creationDate` | `string` | Date on which the item has been created, in ISO 8601 format. |
| `destinationStatuses` | `array<ProductStatusDestinationStatus>` | The intended destinations for the product. |
| `googleExpirationDate` | `string` | Date on which the item expires in Google Shopping, in ISO 8601 format. |
| `itemLevelIssues` | `array<ProductStatusItemLevelIssue>` | A list of all issues associated with the product. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productStatus`" |
| `lastUpdateDate` | `string` | Date on which the item has been last updated, in ISO 8601 format. |
| `link` | `string` | The link to the product. |
| `productId` | `string` | The ID of the product for which status is reported. |
| `title` | `string` | The title of the product. |

### `ProductStatusDestinationStatus`

| Property | Type | Description |
|----------|------|-------------|
| `approvedCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the offer is approved. |
| `channel` | `string` | The channel of the destination. |
| `destination` | `string` | The name of the destination |
| `disapprovedCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved. |
| `pendingCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval. |
| `status` | `string` | Deprecated. Destination approval status in `targetCountry` of the offer. |

### `ProductStatusItemLevelIssue`

| Property | Type | Description |
|----------|------|-------------|
| `applicableCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where issue applies to the offer. |
| `attributeName` | `string` | The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | The error code of the issue. |
| `description` | `string` | A short issue description in English. |
| `destination` | `string` | The destination the issue applies to. |
| `detail` | `string` | A detailed issue description in English. |
| `documentation` | `string` | The URL of a web page to help with resolving this issue. |
| `resolution` | `string` | Whether the issue can be resolved by the merchant. |
| `servability` | `string` | How this issue affects serving of the offer. |

### `ProductStructuredDescription`

Structured description, for algorithmically (AI)-generated descriptions. See [description](https://support.google.com/merchants/answer/6324468#When_to_use) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. The description text. Maximum length is 5000 characters. |
| `digitalSourceType` | `string` | Optional. The digital source type. Acceptable values are: - "`trained_algorithmic_media`" - "`def... |

### `ProductStructuredTitle`

Structured title, for algorithmically (AI)-generated titles. See [title](https://support.google.com/merchants/answer/6324415#Whentouse) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Required. The title text. Maximum length is 150 characters. |
| `digitalSourceType` | `string` | Optional. The digital source type. Acceptable values are: - "`trained_algorithmic_media`" - "`def... |

### `ProductSubscriptionCost`

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Price` | The amount the buyer has to pay per subscription period. |
| `period` | `string` | The type of subscription period. - "`month`" - "`year`" |
| `periodLength` | `string` | The number of subscription periods the buyer has to pay. |

### `ProductSustainabilityIncentive`

Information regarding sustainability related incentive programs such as rebates or tax relief.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Price` | Optional. The fixed amount of the incentive. |
| `percentage` | `number` | Optional. The percentage of the sale price that the incentive is applied to. |
| `type` | `string` | Required. Sustainability incentive program. |

### `ProductTax`

| Property | Type | Description |
|----------|------|-------------|
| `country` | `string` | The country within which the item is taxed, specified as a CLDR territory code. |
| `locationId` | `string` | The numeric ID of a location that the tax rate applies to as defined in the Google Ads API. |
| `postalCode` | `string` | The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix ... |
| `rate` | `number` | The percentage of tax rate that applies to the item price. |
| `region` | `string` | The geographic region to which the tax rate applies. |
| `taxShip` | `boolean` | Should be set to true if tax is charged on shipping. |

### `ProductUnitPricingBaseMeasure`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit of the denominator. |
| `value` | `string` | The denominator of the unit price. |

### `ProductUnitPricingMeasure`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit of the measure. |
| `value` | `number` | The measure of an item. |

### `ProductView`

Product fields. Values are only set for fields requested explicitly in the request's search query.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatedDestinationStatus` | `string` | Aggregated destination status. |
| `availability` | `string` | Availability of the product. |
| `brand` | `string` | Brand of the product. |
| `categoryL1` | `string` | First level of the product category in [Google's product taxonomy](https://support.google.com/mer... |
| `categoryL2` | `string` | Second level of the product category in [Google's product taxonomy](https://support.google.com/me... |
| `categoryL3` | `string` | Third level of the product category in [Google's product taxonomy](https://support.google.com/mer... |
| `categoryL4` | `string` | Fourth level of the product category in [Google's product taxonomy](https://support.google.com/me... |
| `categoryL5` | `string` | Fifth level of the product category in [Google's product taxonomy](https://support.google.com/mer... |
| `channel` | `string` | Channel of the product (online versus local). |
| `clickPotential` | `string` | Estimated performance potential compared to highest performing products of the merchant. |
| `clickPotentialRank` | `string` | Normalized click potential of the product. Values range from 1 to 1000, where 1 is the highest cl... |
| `condition` | `string` | Condition of the product. |
| `creationTime` | `string` | The time the merchant created the product in timestamp seconds. |
| `currencyCode` | `string` | Product price currency code (for example, ISO 4217). Absent if product price is not available. |
| `expirationDate` | `Date` | Expiration date for the product. Specified on insertion. |
| `gtin` | `array<string>` | GTIN of the product. |
| `id` | `string` | The REST ID of the product, in the form of channel:contentLanguage:targetCountry:offerId. Content... |
| `itemGroupId` | `string` | Item group ID provided by the merchant for grouping variants together. |
| `itemIssues` | `array<ProductViewItemIssue>` | List of item issues for the product. |
| `languageCode` | `string` | Language code of the product in BCP 47 format. |
| `offerId` | `string` | Merchant-provided id of the product. |
| `priceMicros` | `string` | Product price specified as micros (1 millionth of a standard unit, 1 USD = 1000000 micros) in the... |
| `productTypeL1` | `string` | First level of the product type in merchant's own [product taxonomy](https://support.google.com/m... |
| `productTypeL2` | `string` | Second level of the product type in merchant's own [product taxonomy](https://support.google.com/... |
| `productTypeL3` | `string` | Third level of the product type in merchant's own [product taxonomy](https://support.google.com/m... |
| `productTypeL4` | `string` | Fourth level of the product type in merchant's own [product taxonomy](https://support.google.com/... |
| `productTypeL5` | `string` | Fifth level of the product type in merchant's own [product taxonomy](https://support.google.com/m... |
| `shippingLabel` | `string` | The normalized shipping label specified in the feed |
| `title` | `string` | Title of the product. |

### `ProductViewItemIssue`

Item issue associated with the product.

| Property | Type | Description |
|----------|------|-------------|
| `issueType` | `ProductViewItemIssueItemIssueType` | Item issue type. |
| `resolution` | `string` | Item issue resolution. |
| `severity` | `ProductViewItemIssueItemIssueSeverity` | Item issue severity. |

### `ProductViewItemIssueIssueSeverityPerDestination`

Issue severity for all affected regions in a destination.

| Property | Type | Description |
|----------|------|-------------|
| `demotedCountries` | `array<string>` | List of demoted countries in the destination. |
| `destination` | `string` | Issue destination. |
| `disapprovedCountries` | `array<string>` | List of disapproved countries in the destination. |

### `ProductViewItemIssueItemIssueSeverity`

Severity of an issue per destination in a region, and aggregated severity.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatedSeverity` | `string` | Severity of an issue aggregated for destination. |
| `severityPerDestination` | `array<ProductViewItemIssueIssueSeverityPerDestination>` | Item issue severity for every destination. |

### `ProductViewItemIssueItemIssueType`

Type of the item issue.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalAttribute` | `string` | Canonical attribute name for attribute-specific issues. |
| `code` | `string` | Error code of the issue. |

### `ProductWeight`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | Required. The weight unit. Acceptable values are: - "`g`" - "`kg`" - "`oz`" - "`lb`" |
| `value` | `number` | Required. The weight represented as a number. The weight can have a maximum precision of four dec... |

### `ProductsCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ProductsCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `ProductsCustomBatchRequestEntry`

A batch entry encoding a single non-batch products request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `feedId` | `string` | The Content API Supplemental Feed ID. If present then product insertion or deletion applies to a ... |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`upd... |
| `product` | `Product` | The product to insert or update. Only required if the method is `insert` or `update`. If the `upd... |
| `productId` | `string` | The ID of the product to get or mutate. Only defined if the method is `get`, `delete`, or `update`. |
| `updateMask` | `string` | The comma-separated list of product attributes to be updated. Example: `"title,salePrice"`. Attri... |

### `ProductsCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ProductsCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productsCustomBatchRe... |

### `ProductsCustomBatchResponseEntry`

A batch entry encoding a single non-batch products response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productsCustomBatchRe... |
| `product` | `Product` | The inserted product. Only defined if the method is `insert` and if the request was successful. |

### `ProductsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productsListResponse`". |
| `nextPageToken` | `string` | The token for the retrieval of the next page of products. |
| `resources` | `array<Product>` |  |

### `ProductstatusesCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ProductstatusesCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `ProductstatusesCustomBatchRequestEntry`

A batch entry encoding a single non-batch productstatuses request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `destinations` | `array<string>` | If set, only issues for the specified destinations are returned, otherwise only issues for the Sh... |
| `includeAttributes` | `boolean` | Deprecated: Setting this field has no effect and attributes are never included. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" |
| `productId` | `string` | The ID of the product whose status to get. |

### `ProductstatusesCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ProductstatusesCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productstatusesCustom... |

### `ProductstatusesCustomBatchResponseEntry`

A batch entry encoding a single non-batch productstatuses response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productstatusesCustom... |
| `productStatus` | `ProductStatus` | The requested product status. Only defined if the request was successful. |

### `ProductstatusesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#productstatusesListRe... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of products statuses. |
| `resources` | `array<ProductStatus>` |  |

### `Promotion`

Represents a promotion. See the following articles for more details. * [Promotions feed specification](https://support.google.com/merchants/answer/2906014) * [Local promotions feed specification](https://support.google.com/merchants/answer/10146130) * [Promotions on Buy on Google product data specification](https://support.google.com/merchants/answer/9173673)

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `array<string>` | Product filter by brand for the promotion. |
| `brandExclusion` | `array<string>` | Product filter by brand exclusion for the promotion. |
| `contentLanguage` | `string` | Required. The content language used as part of the unique identifier. `en` content language is av... |
| `couponValueType` | `string` | Required. Coupon value type for the promotion. |
| `customRedemptionRestriction` | `string` | The custom redemption restriction for the promotion. If the `redemption_restriction` field is set... |
| `freeGiftDescription` | `string` | Free gift description for the promotion. |
| `freeGiftItemId` | `string` | Free gift item ID for the promotion. |
| `freeGiftValue` | `PriceAmount` | Free gift value for the promotion. |
| `genericRedemptionCode` | `string` | Generic redemption code for the promotion. To be used with the `offerType` field. |
| `getThisQuantityDiscounted` | `integer` | The number of items discounted in the promotion. |
| `id` | `string` | Output only. The REST promotion ID to uniquely identify the promotion. Content API methods that o... |
| `itemGroupId` | `array<string>` | Product filter by item group ID for the promotion. |
| `itemGroupIdExclusion` | `array<string>` | Product filter by item group ID exclusion for the promotion. |
| `itemId` | `array<string>` | Product filter by item ID for the promotion. |
| `itemIdExclusion` | `array<string>` | Product filter by item ID exclusion for the promotion. |
| `limitQuantity` | `integer` | Maximum purchase quantity for the promotion. |
| `limitValue` | `PriceAmount` | Maximum purchase value for the promotion. |
| `longTitle` | `string` | Required. Long title for the promotion. |
| `maxDiscountAmount` | `PriceAmount` | The maximum monetary discount a customer can receive for the promotion. This field is only suppor... |
| `minimumPurchaseAmount` | `PriceAmount` | Minimum purchase amount for the promotion. |
| `minimumPurchaseQuantity` | `integer` | Minimum purchase quantity for the promotion. |
| `moneyBudget` | `PriceAmount` | Cost cap for the promotion. |
| `moneyOffAmount` | `PriceAmount` | The money off amount offered in the promotion. |
| `offerType` | `string` | Required. Type of the promotion. |
| `orderLimit` | `integer` | Order limit for the promotion. |
| `percentOff` | `integer` | The percentage discount offered in the promotion. |
| `productApplicability` | `string` | Required. Applicability of the promotion to either all products or only specific products. |
| `productType` | `array<string>` | Product filter by product type for the promotion. |
| `productTypeExclusion` | `array<string>` | Product filter by product type exclusion for the promotion. |
| `promotionDestinationIds` | `array<string>` | Destination ID for the promotion. |
| `promotionDisplayDates` | `string` | String representation of the promotion display dates. Deprecated. Use `promotion_display_time_per... |
| `promotionDisplayTimePeriod` | `TimePeriod` | `TimePeriod` representation of the promotion's display dates. |
| `promotionEffectiveDates` | `string` | String representation of the promotion effective dates. Deprecated. Use `promotion_effective_time... |
| `promotionEffectiveTimePeriod` | `TimePeriod` | Required. `TimePeriod` representation of the promotion's effective dates. |
| `promotionId` | `string` | Required. The user provided promotion ID to uniquely identify the promotion. |
| `promotionStatus` | `PromotionPromotionStatus` | Output only. The current status of the promotion. |
| `promotionUrl` | `string` | URL to the page on the merchant's site where the promotion shows. Local Inventory ads promotions ... |
| `redemptionChannel` | `array<string>` | Required. Redemption channel for the promotion. At least one channel is required. |
| `redemptionRestriction` | `string` | The redemption restriction for the promotion. |
| `shippingServiceNames` | `array<string>` | Shipping service names for the promotion. |
| `storeApplicability` | `string` | Whether the promotion applies to all stores, or only specified stores. Local Inventory ads promot... |
| `storeCode` | `array<string>` | Store codes to include for the promotion. |
| `storeCodeExclusion` | `array<string>` | Store codes to exclude for the promotion. |
| `targetCountry` | `string` | Required. The target country used as part of the unique identifier. Can be `AU`, `CA`, `DE`, `FR`... |

### `PromotionPromotionStatus`

The status of the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `creationDate` | `string` | Date on which the promotion has been created in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601)... |
| `destinationStatuses` | `array<PromotionPromotionStatusDestinationStatus>` | The intended destinations for the promotion. |
| `lastUpdateDate` | `string` | Date on which the promotion status has been last updated in [ISO 8601](http://en.wikipedia.org/wi... |
| `promotionIssue` | `array<PromotionPromotionStatusPromotionIssue>` | A list of issues associated with the promotion. |

### `PromotionPromotionStatusDestinationStatus`

The destination status of the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | The name of the destination. |
| `status` | `string` | The status for the specified destination. |

### `PromotionPromotionStatusPromotionIssue`

The issue associated with the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Code of the issue. |
| `detail` | `string` | Explanation of the issue. |

### `PubsubNotificationSettings`

Settings for Pub/Sub notifications, all methods require that the caller is a direct user of the merchant center account.

| Property | Type | Description |
|----------|------|-------------|
| `cloudTopicName` | `string` | Cloud pub/sub topic to which notifications are sent (read-only). |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#pubsubNotificationSet... |
| `registeredEvents` | `array<string>` | List of event types. Acceptable values are: - "`orderPendingShipment`" |

### `RateGroup`

| Property | Type | Description |
|----------|------|-------------|
| `applicableShippingLabels` | `array<string>` | A list of shipping labels defining the products to which this rate group applies to. This is a di... |
| `carrierRates` | `array<CarrierRate>` | A list of carrier rates that can be referred to by `mainTable` or `singleValue`. |
| `mainTable` | `Table` | A table defining the rate group, when `singleValue` is not expressive enough. Can only be set if ... |
| `name` | `string` | Name of the rate group. Optional. If set has to be unique within shipping service. |
| `singleValue` | `Value` | The value of the rate group (for example, flat rate $10). Can only be set if `mainTable` and `sub... |
| `subtables` | `array<Table>` | A list of subtables referred to by `mainTable`. Can only be set if `mainTable` is set. |

### `Recommendation`

Recommendations are suggested ways to improve your merchant account's performance. For example, to engage with a feature, or start using a new Google product.

| Property | Type | Description |
|----------|------|-------------|
| `additionalCallToAction` | `array<RecommendationCallToAction>` | Output only. CTAs of this recommendation. Repeated. |
| `additionalDescriptions` | `array<RecommendationDescription>` | Output only. List of additional localized descriptions for a recommendation. Localication uses th... |
| `creative` | `array<RecommendationCreative>` | Output only. Any creatives attached to the recommendation. Repeated. |
| `defaultCallToAction` | `RecommendationCallToAction` | Optional. Default CTA of the recommendation. |
| `defaultDescription` | `string` | Optional. Localized recommendation description. The localization the {@link `GenerateRecommendati... |
| `numericalImpact` | `integer` | Optional. A numerical score of the impact from the recommendation's description. For example, a r... |
| `paid` | `boolean` | Optional. Indicates whether a user needs to pay when they complete the user journey suggested by ... |
| `recommendationName` | `string` | Optional. Localized recommendation name. The localization uses the {@link `GenerateRecommendation... |
| `subType` | `string` | Optional. Subtype of the recommendations. Only applicable when multiple recommendations can be ge... |
| `title` | `string` | Optional. Localized Recommendation Title. Localization uses the {@link `GenerateRecommendationsRe... |
| `type` | `string` | Output only. Type of the recommendation. List of currently available recommendation types: - OPPO... |

### `RecommendationCallToAction`

Call to action (CTA) that explains how a merchant can implement this recommendation

| Property | Type | Description |
|----------|------|-------------|
| `intent` | `string` | Output only. Intent of the action. This value describes the intent (for example, `OPEN_CREATE_EMA... |
| `localizedText` | `string` | Output only. Localized text of the CTA. Optional. |
| `uri` | `string` | Optional. URL of the CTA. This field will only be set for some recommendations where there is a s... |

### `RecommendationCreative`

Creative is a multimedia attachment to recommendation that can be used on the frontend.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the creative. |
| `uri` | `string` | URL of the creative. |

### `RecommendationDescription`

Google-provided description for the recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Output only. Text of the description. |
| `type` | `string` | Output only. Type of the description. |

### `Region`

Represents a geographic region that you can use as a target with both the `RegionalInventory` and `ShippingSettings` services. You can define regions as collections of either postal codes or, in some countries, using predefined geotargets.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the region. |
| `geotargetArea` | `RegionGeoTargetArea` | A list of geotargets that defines the region area. |
| `merchantId` | `string` | Output only. Immutable. Merchant that owns the region. |
| `postalCodeArea` | `RegionPostalCodeArea` | A list of postal codes that defines the region area. |
| `regionId` | `string` | Output only. Immutable. The ID uniquely identifying each region. |
| `regionalInventoryEligible` | `boolean` | Output only. Indicates if the region is eligible to use in the Regional Inventory configuration. |
| `shippingEligible` | `boolean` | Output only. Indicates if the region is eligible to use in the Shipping Services configuration. |

### `RegionGeoTargetArea`

A list of geotargets that defines the region area.

| Property | Type | Description |
|----------|------|-------------|
| `geotargetCriteriaIds` | `array<string>` | Required. A non-empty list of [location IDs](https://developers.google.com/adwords/api/docs/appen... |

### `RegionPostalCodeArea`

A list of postal codes that defines the region area. Note: All regions defined using postal codes are accessible via the account's `ShippingSettings.postalCodeGroups` resource.

| Property | Type | Description |
|----------|------|-------------|
| `postalCodes` | `array<RegionPostalCodeAreaPostalCodeRange>` | Required. A range of postal codes. |
| `regionCode` | `string` | Required. CLDR territory code or the country the postal code group applies to. |

### `RegionPostalCodeAreaPostalCodeRange`

A range of postal codes that defines the region area.

| Property | Type | Description |
|----------|------|-------------|
| `begin` | `string` | Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of th... |
| `end` | `string` | Optional. A postal code or a pattern of the form prefix* denoting the inclusive upper bound of th... |

### `RegionalInventory`

Regional inventory resource. contains the regional name and all attributes which are overridden for the specified region.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | The availability of the product. |
| `customAttributes` | `array<CustomAttribute>` | A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#regionalInventory`". |
| `price` | `Price` | The price of the product. |
| `regionId` | `string` | The ID uniquely identifying each region. |
| `salePrice` | `Price` | The sale price of the product. Mandatory if `sale_price_effective_date` is defined. |
| `salePriceEffectiveDate` | `string` | A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both ... |

### `RegionalinventoryCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<RegionalinventoryCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `RegionalinventoryCustomBatchRequestEntry`

A batch entry encoding a single non-batch regional inventory request.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | Method of the batch request entry. Acceptable values are: - "`insert`" |
| `productId` | `string` | The ID of the product for which to update price and availability. |
| `regionalInventory` | `RegionalInventory` | Price and availability of the product. |

### `RegionalinventoryCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<RegionalinventoryCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#regionalinventoryCust... |

### `RegionalinventoryCustomBatchResponseEntry`

A batch entry encoding a single non-batch regional inventory response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry this entry responds to. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#regionalinventoryCust... |
| `regionalInventory` | `RegionalInventory` | Price and availability of the product. |

### `RenderAccountIssuesRequestPayload`

The payload for configuring how the content should be rendered.

| Property | Type | Description |
|----------|------|-------------|
| `contentOption` | `string` | Optional. How the detailed content should be returned. Default option is to return the content as... |
| `userInputActionOption` | `string` | Optional. How actions with user input form should be handled. If not provided, actions will be re... |

### `RenderAccountIssuesResponse`

Response containing support content and actions for listed account issues.

| Property | Type | Description |
|----------|------|-------------|
| `alternateDisputeResolution` | `AlternateDisputeResolution` | Alternate Dispute Resolution (ADR) is deprecated. Use `prerendered_out_of_court_dispute_settlemen... |
| `issues` | `array<AccountIssue>` | List of account issues for a given account. This list can be shown with compressed, expandable it... |

### `RenderProductIssuesRequestPayload`

The payload for configuring how the content should be rendered.

| Property | Type | Description |
|----------|------|-------------|
| `contentOption` | `string` | Optional. How the detailed content should be returned. Default option is to return the content as... |
| `userInputActionOption` | `string` | Optional. How actions with user input form should be handled. If not provided, actions will be re... |

### `RenderProductIssuesResponse`

Response containing support content and actions for listed product issues.

| Property | Type | Description |
|----------|------|-------------|
| `alternateDisputeResolution` | `AlternateDisputeResolution` | Alternate Dispute Resolution (ADR) is deprecated. Use `prerendered_out_of_court_dispute_settlemen... |
| `issues` | `array<ProductIssue>` | List of issues for a given product. This list can be shown with compressed, expandable items. In ... |

### `ReportInteractionRequest`

Request to report interactions on a recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `interactionType` | `string` | Required. Type of the interaction that is reported, for example INTERACTION_CLICK. |
| `responseToken` | `string` | Required. Token of the response when recommendation was returned. |
| `subtype` | `string` | Optional. Subtype of the recommendations this interaction happened on. This field must be set onl... |
| `type` | `string` | Required. Type of the recommendations on which this interaction happened. This field must be set ... |

### `ReportRow`

Result row returned from the search query.

| Property | Type | Description |
|----------|------|-------------|
| `bestSellers` | `BestSellers` | Best sellers fields requested by the merchant in the query. Field values are only set if the merc... |
| `brand` | `Brand` | Brand fields requested by the merchant in the query. Field values are only set if the merchant qu... |
| `competitiveVisibility` | `CompetitiveVisibility` | Competitive visibility fields requested by the merchant in the query. Field values are only set i... |
| `metrics` | `Metrics` | Metrics requested by the merchant in the query. Metric values are only set for metrics requested ... |
| `priceCompetitiveness` | `PriceCompetitiveness` | Price competitiveness fields requested by the merchant in the query. Field values are only set if... |
| `priceInsights` | `PriceInsights` | Price insights fields requested by the merchant in the query. Field values are only set if the me... |
| `productCluster` | `ProductCluster` | Product cluster fields requested by the merchant in the query. Field values are only set if the m... |
| `productView` | `ProductView` | Product fields requested by the merchant in the query. Field values are only set if the merchant ... |
| `segments` | `Segments` | Segmentation dimensions requested by the merchant in the query. Dimension values are only set for... |
| `topicTrends` | `TopicTrends` | [Topic trends](https://support.google.com/merchants/answer/13542370) fields requested by the merc... |

### `RequestPhoneVerificationRequest`

Request message for the RequestPhoneVerification method.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) (for example, en-US). Langu... |
| `phoneNumber` | `string` | Phone number to be verified. |
| `phoneRegionCode` | `string` | Required. Two letter country code for the phone number, for example `CA` for Canadian numbers. Se... |
| `phoneVerificationMethod` | `string` | Verification method to receive verification code. |

### `RequestPhoneVerificationResponse`

Response message for the RequestPhoneVerification method.

| Property | Type | Description |
|----------|------|-------------|
| `verificationId` | `string` | The verification ID to use in subsequent calls to `verifyphonenumber`. |

### `RequestReviewFreeListingsRequest`

Request message for the RequestReviewFreeListings Program method.

| Property | Type | Description |
|----------|------|-------------|
| `regionCode` | `string` | The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country fo... |

### `RequestReviewShoppingAdsRequest`

Request message for the RequestReviewShoppingAds program method.

| Property | Type | Description |
|----------|------|-------------|
| `regionCode` | `string` | The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country fo... |

### `ReturnPolicyOnline`

Return policy online object. This is currently used to represent return policies for ads and free listings programs.

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<string>` | The countries of sale where the return policy is applicable. The values must be a valid 2 letter ... |
| `itemConditions` | `array<string>` | The item conditions that are accepted for returns. This is required to not be empty unless the ty... |
| `label` | `string` | The unique user-defined label of the return policy. The same label cannot be used in different re... |
| `name` | `string` | The name of the policy as shown in Merchant Center. |
| `policy` | `ReturnPolicyOnlinePolicy` | The return policy. |
| `restockingFee` | `ReturnPolicyOnlineRestockingFee` | The restocking fee that applies to all return reason categories. This would be treated as a free ... |
| `returnMethods` | `array<string>` | The return methods of how customers can return an item. This value is required to not be empty un... |
| `returnPolicyId` | `string` | Output only. Return policy ID generated by Google. |
| `returnPolicyUri` | `string` | The return policy uri. This can used by Google to do a sanity check for the policy. |
| `returnReasonCategoryInfo` | `array<ReturnPolicyOnlineReturnReasonCategoryInfo>` | The return reason category information. This required to not be empty unless the type of return p... |

### `ReturnPolicyOnlinePolicy`

The available policies.

| Property | Type | Description |
|----------|------|-------------|
| `days` | `string` | The number of days items can be returned after delivery, where one day is defined to be 24 hours ... |
| `type` | `string` | Policy type. |

### `ReturnPolicyOnlineRestockingFee`

The restocking fee. This can either be a fixed fee or a micro percent.

| Property | Type | Description |
|----------|------|-------------|
| `fixedFee` | `PriceAmount` | Fixed restocking fee. |
| `microPercent` | `integer` | Percent of total price in micros. 15,000,000 means 15% of the total price would be charged. |

### `ReturnPolicyOnlineReturnReasonCategoryInfo`

The return reason category info wrapper.

| Property | Type | Description |
|----------|------|-------------|
| `returnLabelSource` | `string` | The corresponding return label source. If the `ReturnMethod` field includes `BY_MAIL`, it is requ... |
| `returnReasonCategory` | `string` | The return reason category. |
| `returnShippingFee` | `ReturnPolicyOnlineReturnShippingFee` | The corresponding return shipping fee. This is only applicable when returnLabelSource is not the ... |

### `ReturnPolicyOnlineReturnShippingFee`

The return shipping fee. This can either be a fixed fee or a boolean to indicate that the customer pays the actual shipping cost.

| Property | Type | Description |
|----------|------|-------------|
| `fixedFee` | `PriceAmount` | Fixed return shipping fee amount. This value is only applicable when type is FIXED. We will treat... |
| `type` | `string` | Type of return shipping fee. |

### `Row`

| Property | Type | Description |
|----------|------|-------------|
| `cells` | `array<Value>` | The list of cells that constitute the row. Must have the same length as `columnHeaders` for two-d... |

### `SearchRequest`

Request message for the ReportService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | Number of ReportRows to retrieve in a single page. Defaults to 1000. Values above 5000 are coerce... |
| `pageToken` | `string` | Token of the page to retrieve. If not specified, the first page of results is returned. In order ... |
| `query` | `string` | Required. Query that defines performance metrics to retrieve and dimensions according to which th... |

### `SearchResponse`

Response message for the ReportService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token which can be sent as `page_token` to retrieve the next page. If omitted, there are no subse... |
| `results` | `array<ReportRow>` | Rows that matched the search query. |

### `Segments`

Dimensions according to which metrics are segmented in the response. Values of product dimensions, such as `offer_id`, reflect the state of a product at the time of the corresponding event, for example, impression or order. Segment fields cannot be selected in queries without also selecting at least one metric field. Values are only set for dimensions requested explicitly in the request's search query.

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `string` | Brand of the product. |
| `categoryL1` | `string` | [Product category (1st level)](https://developers.google.com/shopping-content/guides/reports/segm... |
| `categoryL2` | `string` | [Product category (2nd level)](https://developers.google.com/shopping-content/guides/reports/segm... |
| `categoryL3` | `string` | [Product category (3rd level)](https://developers.google.com/shopping-content/guides/reports/segm... |
| `categoryL4` | `string` | [Product category (4th level)](https://developers.google.com/shopping-content/guides/reports/segm... |
| `categoryL5` | `string` | [Product category (5th level)](https://developers.google.com/shopping-content/guides/reports/segm... |
| `currencyCode` | `string` | Currency in which price metrics are represented, for example, if you select `ordered_item_sales_m... |
| `customLabel0` | `string` | Custom label 0 for custom grouping of products. |
| `customLabel1` | `string` | Custom label 1 for custom grouping of products. |
| `customLabel2` | `string` | Custom label 2 for custom grouping of products. |
| `customLabel3` | `string` | Custom label 3 for custom grouping of products. |
| `customLabel4` | `string` | Custom label 4 for custom grouping of products. |
| `customerCountryCode` | `string` | Code of the country where the customer is located at the time of the event. Represented in the IS... |
| `date` | `Date` | Date in the merchant timezone to which metrics apply. |
| `offerId` | `string` | Merchant-provided id of the product. |
| `productTypeL1` | `string` | [Product type (1st level)](https://developers.google.com/shopping-content/guides/reports/segmenta... |
| `productTypeL2` | `string` | [Product type (2nd level)](https://developers.google.com/shopping-content/guides/reports/segmenta... |
| `productTypeL3` | `string` | [Product type (3rd level)](https://developers.google.com/shopping-content/guides/reports/segmenta... |
| `productTypeL4` | `string` | [Product type (4th level)](https://developers.google.com/shopping-content/guides/reports/segmenta... |
| `productTypeL5` | `string` | [Product type (5th level)](https://developers.google.com/shopping-content/guides/reports/segmenta... |
| `program` | `string` | Program to which metrics apply, for example, Free Product Listing. |
| `title` | `string` | Title of the product. |
| `week` | `Date` | First day of the week (Monday) of the metrics date in the merchant timezone. |

### `Service`

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | A boolean exposing the active status of the shipping service. Required. |
| `currency` | `string` | The CLDR code of the currency to which this service applies. Must match that of the prices in rat... |
| `deliveryCountry` | `string` | The CLDR territory code of the country to which the service applies. Required. |
| `deliveryTime` | `DeliveryTime` | Time spent in various aspects from order to the delivery of the product. Required. |
| `eligibility` | `string` | Eligibility for this service. Acceptable values are: - "`All scenarios`" - "`All scenarios except... |
| `minimumOrderValue` | `Price` | Minimum order value for this service. If set, indicates that customers will have to spend at leas... |
| `minimumOrderValueTable` | `MinimumOrderValueTable` | Table of per store minimum order values for the pickup fulfillment type. Cannot be set together w... |
| `name` | `string` | Free-form name of the service. Must be unique within target account. Required. |
| `pickupService` | `PickupCarrierService` | The carrier-service pair delivering items to collection points. The list of supported pickup serv... |
| `rateGroups` | `array<RateGroup>` | Shipping rate group definitions. Only the last one is allowed to have an empty `applicableShippin... |
| `shipmentType` | `string` | Type of locations this service ships orders to. Acceptable values are: - "`delivery`" - "`pickup`... |
| `storeConfig` | `ServiceStoreConfig` | A list of stores your products are delivered from. This is only available for the local delivery ... |

### `ServiceStoreConfig`

Stores that provide local delivery. Only valid with local delivery fulfillment.

| Property | Type | Description |
|----------|------|-------------|
| `cutoffConfig` | `ServiceStoreConfigCutoffConfig` | Time local delivery ends for the day. This can be either `local_cutoff_time` or `store_close_offs... |
| `serviceRadius` | `Distance` | Maximum delivery radius. Only needed for local delivery fulfillment type. |
| `storeCodes` | `array<string>` | A list of store codes that provide local delivery. If empty, then `store_service_type` must be `a... |
| `storeServiceType` | `string` | Indicates whether all stores listed by this merchant provide local delivery or not. Acceptable va... |

### `ServiceStoreConfigCutoffConfig`

Time local delivery ends for the day based on the local timezone of the store. `local_cutoff_time` and `store_close_offset_hours` are mutually exclusive.

| Property | Type | Description |
|----------|------|-------------|
| `localCutoffTime` | `ServiceStoreConfigCutoffConfigLocalCutoffTime` | Time in hours and minutes in the local timezone when local delivery ends. |
| `noDeliveryPostCutoff` | `boolean` | Merchants can opt-out of showing n+1 day local delivery when they have a shipping service configu... |
| `storeCloseOffsetHours` | `string` | Represents cutoff time as the number of hours before store closing. Mutually exclusive with other... |

### `ServiceStoreConfigCutoffConfigLocalCutoffTime`

Time in hours and minutes in the local timezone when local delivery ends.

| Property | Type | Description |
|----------|------|-------------|
| `hour` | `string` | Hour local delivery orders must be placed by to process the same day. |
| `minute` | `string` | Minute local delivery orders must be placed by to process the same day. |

### `ShippingSettings`

The merchant account's shipping settings. All methods except getsupportedcarriers and getsupportedholidays require the admin role.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account to which these account shipping settings belong. Ignored upon update, alway... |
| `postalCodeGroups` | `array<PostalCodeGroup>` | A list of postal code groups that can be referred to in `services`. Optional. |
| `services` | `array<Service>` | The target account's list of services. Optional. |
| `warehouses` | `array<Warehouse>` | Optional. A list of warehouses which can be referred to in `services`. |

### `ShippingsettingsCustomBatchRequest`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ShippingsettingsCustomBatchRequestEntry>` | The request entries to be processed in the batch. |

### `ShippingsettingsCustomBatchRequestEntry`

A batch entry encoding a single non-batch shippingsettings request.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the account for which to get/update account shipping settings. |
| `batchId` | `integer` | An entry ID, unique within the batch request. |
| `merchantId` | `string` | The ID of the managing account. |
| `method` | `string` | The method of the batch entry. Acceptable values are: - "`get`" - "`update`" |
| `shippingSettings` | `ShippingSettings` | The account shipping settings to update. Only defined if the method is `update`. |

### `ShippingsettingsCustomBatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<ShippingsettingsCustomBatchResponseEntry>` | The result of the execution of the batch requests. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsCusto... |

### `ShippingsettingsCustomBatchResponseEntry`

A batch entry encoding a single non-batch shipping settings response.

| Property | Type | Description |
|----------|------|-------------|
| `batchId` | `integer` | The ID of the request entry to which this entry responds. |
| `errors` | `Errors` | A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsCusto... |
| `shippingSettings` | `ShippingSettings` | The retrieved or updated account shipping settings. |

### `ShippingsettingsGetSupportedCarriersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `carriers` | `array<CarriersCarrier>` | A list of supported carriers. May be empty. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsGetSu... |

### `ShippingsettingsGetSupportedHolidaysResponse`

| Property | Type | Description |
|----------|------|-------------|
| `holidays` | `array<HolidaysHoliday>` | A list of holidays applicable for delivery guarantees. May be empty. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsGetSu... |

### `ShippingsettingsGetSupportedPickupServicesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsGetSu... |
| `pickupServices` | `array<PickupServicesPickupService>` | A list of supported pickup services. May be empty. |

### `ShippingsettingsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "`content#shippingsettingsListR... |
| `nextPageToken` | `string` | The token for the retrieval of the next page of shipping settings. |
| `resources` | `array<ShippingSettings>` |  |

### `ShoppingAdsProgramStatus`

Response message for GetShoppingAdsProgramStatus.

| Property | Type | Description |
|----------|------|-------------|
| `globalState` | `string` | State of the program. `ENABLED` if there are offers for at least one region. |
| `regionStatuses` | `array<ShoppingAdsProgramStatusRegionStatus>` | Status of the program in each region. Regions with the same status and review eligibility are gro... |

### `ShoppingAdsProgramStatusRegionStatus`

Status of program and region.

| Property | Type | Description |
|----------|------|-------------|
| `disapprovalDate` | `string` | Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only visible when your e... |
| `eligibilityStatus` | `string` | Eligibility status of the Shopping Ads program. |
| `onboardingIssues` | `array<string>` | Issues that must be fixed to be eligible for review. |
| `regionCodes` | `array<string>` | The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for a... |
| `reviewEligibilityStatus` | `string` | If a program is eligible for review in a specific region. Only visible if `eligibilityStatus` is ... |
| `reviewIneligibilityReason` | `string` | Review ineligibility reason if account is not eligible for review. |
| `reviewIneligibilityReasonDescription` | `string` | Reason a program in a specific region isn’t eligible for review. Only visible if `reviewEligibili... |
| `reviewIneligibilityReasonDetails` | `ShoppingAdsProgramStatusReviewIneligibilityReasonDetails` | Additional information for ineligibility. If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`,... |
| `reviewIssues` | `array<string>` | Issues evaluated in the review process. Fix all issues before requesting a review. |

### `ShoppingAdsProgramStatusReviewIneligibilityReasonDetails`

Additional details for review ineligibility reasons.

| Property | Type | Description |
|----------|------|-------------|
| `cooldownTime` | `string` | This timestamp represents end of cooldown period for review ineligbility reason `IN_COOLDOWN_PERI... |

### `Table`

| Property | Type | Description |
|----------|------|-------------|
| `columnHeaders` | `Headers` | Headers of the table's columns. Optional: if not set then the table has only one dimension. |
| `name` | `string` | Name of the table. Required for subtables, ignored for the main table. |
| `rowHeaders` | `Headers` | Headers of the table's rows. Required. |
| `rows` | `array<Row>` | The list of rows that constitute the table. Must have the same length as `rowHeaders`. Required. |

### `TextWithTooltip`

Block of text that may contain a tooltip with more information.

| Property | Type | Description |
|----------|------|-------------|
| `simpleTooltipValue` | `string` | Value of the tooltip as a simple text. |
| `simpleValue` | `string` | Value of the message as a simple text. |
| `tooltipIconStyle` | `string` | The suggested type of an icon for tooltip, if a tooltip is present. |

### `TimePeriod`

A message that represents a time period.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The ending timestamp. |
| `startTime` | `string` | The starting timestamp. |

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

### `TopicTrends`

Topic trends fields requested by the merchant in the query. Field values are only set if the merchant queries `TopicTrendsView`. Forecast data can be queried up to 13 weeks by passing a future date in the `date` field. Historical data is measured daily, and forecasted data is projected weekly. All data points are normalized based on the highest data points returned in the response. If you make separate queries with different date ranges, you might see different values for the same date in each response. The recommended way to get a trend score of a topic is `last7_days_search_interest / last{$day}_days_search_interest - 1`. You can view trends for up to eight topics at a time.

| Property | Type | Description |
|----------|------|-------------|
| `customerCountryCode` | `string` | Country trends are calculated for. Must be a two-letter country code (ISO 3166-1-alpha-2 code), f... |
| `date` | `Date` | Date the trend score was retrieved. |
| `last120DaysSearchInterest` | `number` | Search interest in the last 120 days, with the same normalization as search_interest. This field ... |
| `last30DaysSearchInterest` | `number` | Search interest in the last 30 days, with the same normalization as search_interest. This field i... |
| `last7DaysSearchInterest` | `number` | Search interest in the last 7 days, with the same normalization as search_interest. This field is... |
| `last90DaysSearchInterest` | `number` | Search interest in the last 90 days, with the same normalization as search_interest. This field i... |
| `next7DaysSearchInterest` | `number` | Estimated search interest in the next 7 days, with the same normalization as search_interest. Thi... |
| `searchInterest` | `number` | Daily search interest, normalized to the time and country to make comparisons easier, with 100 re... |
| `topic` | `string` | Google-provided topic trends are calculated for. Only top eight topics are returned. Topic is wha... |

### `TransitTable`

| Property | Type | Description |
|----------|------|-------------|
| `postalCodeGroupNames` | `array<string>` | A list of postal group names. The last value can be `"all other locations"`. Example: `["zone 1",... |
| `rows` | `array<TransitTableTransitTimeRow>` |  |
| `transitTimeLabels` | `array<string>` | A list of transit time labels. The last value can be `"all other labels"`. Example: `["food", "el... |

### `TransitTableTransitTimeRow`

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<TransitTableTransitTimeRowTransitTimeValue>` |  |

### `TransitTableTransitTimeRowTransitTimeValue`

| Property | Type | Description |
|----------|------|-------------|
| `maxTransitTimeInDays` | `integer` | Must be greater than or equal to `minTransitTimeInDays`. |
| `minTransitTimeInDays` | `integer` | Transit time range (min-max) in business days. 0 means same day delivery, 1 means next day delivery. |

### `TriggerActionPayload`

The payload for the triggered action.

| Property | Type | Description |
|----------|------|-------------|
| `actionContext` | `string` | Required. The context from the selected action. The value is obtained from rendered issues and ne... |
| `actionInput` | `ActionInput` | Required. Input provided by the merchant. |

### `TriggerActionResponse`

Response informing about the started action.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message for merchant. |

### `UndeleteConversionSourceRequest`

Request message for the UndeleteConversionSource method.

### `UrlSettings`

Specifications related to the `Checkout` URL. The `UriTemplate` is of the form `https://www.mystore.com/checkout?item_id={id}` where `{id}` will be automatically replaced with data from the merchant account with this attribute [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.offer_id)

| Property | Type | Description |
|----------|------|-------------|
| `cartUriTemplate` | `string` | URL template when the placeholders are expanded will redirect the buyer to the cart page on the m... |
| `checkoutUriTemplate` | `string` | URL template when the placeholders are expanded will redirect the buyer to the merchant checkout ... |

### `Value`

The single value of a rate group or the value of a rate group table's cell. Exactly one of `noShipping`, `flatRate`, `pricePercentage`, `carrierRateName`, `subtableName` must be set.

| Property | Type | Description |
|----------|------|-------------|
| `carrierRateName` | `string` | The name of a carrier rate referring to a carrier rate defined in the same rate group. Can only b... |
| `flatRate` | `Price` | A flat rate. Can only be set if all other fields are not set. |
| `noShipping` | `boolean` | If true, then the product can't ship. Must be true when set, can only be set if all other fields ... |
| `pricePercentage` | `string` | A percentage of the price represented as a number in decimal notation (for example, `"5.4"`). Can... |
| `subtableName` | `string` | The name of a subtable. Can only be set in table cells (not for single values), and only if all o... |

### `VerifyPhoneNumberRequest`

Request message for the VerifyPhoneNumber method.

| Property | Type | Description |
|----------|------|-------------|
| `phoneVerificationMethod` | `string` | Verification method used to receive verification code. |
| `verificationCode` | `string` | The verification code that was sent to the phone number for validation. |
| `verificationId` | `string` | The verification ID returned by `requestphoneverification`. |

### `VerifyPhoneNumberResponse`

Response message for the VerifyPhoneNumber method.

| Property | Type | Description |
|----------|------|-------------|
| `verifiedPhoneNumber` | `string` | Verified phone number if verification is successful. This phone number can only be replaced by an... |

### `Warehouse`

A fulfillment warehouse, which stores and handles inventory.

| Property | Type | Description |
|----------|------|-------------|
| `businessDayConfig` | `BusinessDayConfig` | Business days of the warehouse. If not set, will be Monday to Friday by default. |
| `cutoffTime` | `WarehouseCutoffTime` | Required. The latest time of day that an order can be accepted and begin processing. Later orders... |
| `handlingDays` | `string` | Required. The number of days it takes for this warehouse to pack up and ship an item. This is on ... |
| `name` | `string` | Required. The name of the warehouse. Must be unique within account. |
| `shippingAddress` | `Address` | Required. Shipping address of the warehouse. |

### `WarehouseBasedDeliveryTime`

| Property | Type | Description |
|----------|------|-------------|
| `carrier` | `string` | Required. Carrier, such as `"UPS"` or `"Fedex"`. The list of supported carriers can be retrieved ... |
| `carrierService` | `string` | Required. Carrier service, such as `"ground"` or `"2 days"`. The list of supported services for a... |
| `originAdministrativeArea` | `string` | Shipping origin's state. |
| `originCity` | `string` | Shipping origin's city. |
| `originCountry` | `string` | Shipping origin's country represented as a [CLDR territory code](https://github.com/unicode-org/c... |
| `originPostalCode` | `string` | Shipping origin. |
| `originStreetAddress` | `string` | Shipping origin's street address. |
| `warehouseName` | `string` | The name of the warehouse. Warehouse name need to be matched with name. If warehouseName is set, ... |

### `WarehouseCutoffTime`

| Property | Type | Description |
|----------|------|-------------|
| `hour` | `integer` | Required. Hour (24-hour clock) of the cutoff time until which an order has to be placed to be pro... |
| `minute` | `integer` | Required. Minute of the cutoff time until which an order has to be placed to be processed in the ... |

### `Weight`

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | Required. The weight unit. Acceptable values are: - "`kg`" - "`lb`" |
| `value` | `string` | Required. The weight represented as a number. The weight can have a maximum precision of four dec... |

