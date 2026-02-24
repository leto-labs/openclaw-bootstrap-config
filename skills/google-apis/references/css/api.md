# CSS API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 24

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `css.accounts.listChildAccounts` | GET | `v1/{+parent}:listChildAccounts` | Lists all the accounts under the specified CSS account ID, and optionally filters by label ID and... |
| `css.accounts.get` | GET | `v1/{+name}` | Retrieves a single CSS/MC account by ID. |
| `css.accounts.updateLabels` | POST | `v1/{+name}:updateLabels` | Updates labels assigned to CSS/MC accounts by a CSS domain. |
| `css.accounts.labels.list` | GET | `v1/{+parent}/labels` | Lists the labels owned by an account. |
| `css.accounts.labels.create` | POST | `v1/{+parent}/labels` | Creates a new label, not assigned to any account. |
| `css.accounts.labels.patch` | PATCH | `v1/{+name}` | Updates a label. |
| `css.accounts.labels.delete` | DELETE | `v1/{+name}` | Deletes a label and removes it from all accounts to which it was assigned. |
| `css.accounts.cssProductInputs.insert` | POST | `v1/{+parent}/cssProductInputs:insert` | Uploads a CssProductInput to your CSS Center account. If an input with the same contentLanguage, ... |
| `css.accounts.cssProductInputs.patch` | PATCH | `v1/{+name}` | Updates the existing Css Product input in your CSS Center account. After inserting, updating, or ... |
| `css.accounts.cssProductInputs.delete` | DELETE | `v1/{+name}` | Deletes a CSS Product input from your CSS Center account. After a delete it may take several minu... |
| `css.accounts.cssProducts.get` | GET | `v1/{+name}` | Retrieves the processed CSS Product from your CSS Center account. After inserting, updating, or d... |
| `css.accounts.cssProducts.list` | GET | `v1/{+parent}/cssProducts` | Lists the processed CSS Products in your CSS Center account. The response might contain fewer ite... |
| `css.accounts.quotas.list` | GET | `v1/{+parent}/quotas` | Lists the daily call quota and usage per group for your CSS Center account. |

### `css.accounts.listChildAccounts`

**GET** `v1/{+parent}:listChildAccounts`

Lists all the accounts under the specified CSS account ID, and optionally filters by label ID and account name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account. Must be a CSS group or domain. Format: accounts/{account} |
| `fullName` | `string` | query | No | If set, only the MC accounts with the given name (case sensitive) will be returned. |
| `labelId` | `string` | query | No | If set, only the MC accounts with the given label ID will be returned. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of accounts to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListChildAccounts` call. Provide this to retrieve the subsequent pa... |

**Response**: `ListChildAccountsResponse`

```typescript
const res = await css.accounts.listChildAccounts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.get`

**GET** `v1/{+name}`

Retrieves a single CSS/MC account by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the managed CSS/MC account. Format: accounts/{account} |
| `parent` | `string` | query | No | Optional. Only required when retrieving MC account information. The CSS domain that is the parent resource of the MC ... |

**Response**: `Account`

```typescript
const res = await css.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.updateLabels`

**POST** `v1/{+name}:updateLabels`

Updates labels assigned to CSS/MC accounts by a CSS domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The label resource name. Format: accounts/{account} |

**Request body**: `UpdateAccountLabelsRequest`

**Response**: `Account`

```typescript
const res = await css.accounts.updateLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.labels.list`

**GET** `v1/{+parent}/labels`

Lists the labels owned by an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of labels to return. The service may return fewer than this value. If unspecified, at most 50 labe... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAccountLabels` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListAccountLabelsResponse`

```typescript
const res = await css.labels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.labels.create`

**POST** `v1/{+parent}/labels`

Creates a new label, not assigned to any account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account. Format: accounts/{account} |

**Request body**: `AccountLabel`

**Response**: `AccountLabel`

```typescript
const res = await css.labels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.labels.patch`

**PATCH** `v1/{+name}`

Updates a label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the label. Format: accounts/{account}/labels/{label} |

**Request body**: `AccountLabel`

**Response**: `AccountLabel`

```typescript
const res = await css.labels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.labels.delete`

**DELETE** `v1/{+name}`

Deletes a label and removes it from all accounts to which it was assigned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the label to delete. Format: accounts/{account}/labels/{label} |

**Response**: `Empty`

```typescript
const res = await css.labels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.cssProductInputs.insert`

**POST** `v1/{+parent}/cssProductInputs:insert`

Uploads a CssProductInput to your CSS Center account. If an input with the same contentLanguage, identity, feedLabel and feedId already exists, this method replaces that entry. After inserting, updating, or deleting a CSS Product input, it may take several minutes before the processed CSS Product can be retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account where this CSS Product will be inserted. Format: accounts/{account} |
| `feedId` | `string` | query | No | Optional. DEPRECATED. Feed id is not required for CSS Products. The primary or supplemental feed id. If CSS Product a... |

**Request body**: `CssProductInput`

**Response**: `CssProductInput`

```typescript
const res = await css.cssProductInputs.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.cssProductInputs.patch`

**PATCH** `v1/{+name}`

Updates the existing Css Product input in your CSS Center account. After inserting, updating, or deleting a CSS Product input, it may take several minutes before the processed Css Product can be retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the CSS Product input. Format: `accounts/{account}/cssProductInputs/{css_product_input}`, whe... |
| `updateMask` | `string` | query | No | The list of CSS product attributes to be updated. If the update mask is omitted, then it is treated as implied field ... |

**Request body**: `CssProductInput`

**Response**: `CssProductInput`

```typescript
const res = await css.cssProductInputs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.cssProductInputs.delete`

**DELETE** `v1/{+name}`

Deletes a CSS Product input from your CSS Center account. After a delete it may take several minutes until the input is no longer available.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CSS product input resource to delete. Format: accounts/{account}/cssProductInputs/{css_prod... |
| `supplementalFeedId` | `string` | query | No | The Content API Supplemental Feed ID. The field must not be set if the action applies to a primary feed. If the field... |

**Response**: `Empty`

```typescript
const res = await css.cssProductInputs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.cssProducts.get`

**GET** `v1/{+name}`

Retrieves the processed CSS Product from your CSS Center account. After inserting, updating, or deleting a product input, it may take several minutes before the updated final product can be retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CSS product to retrieve. Format: `accounts/{account}/cssProducts/{css_product}` |

**Response**: `CssProduct`

```typescript
const res = await css.cssProducts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.cssProducts.list`

**GET** `v1/{+parent}/cssProducts`

Lists the processed CSS Products in your CSS Center account. The response might contain fewer items than specified by pageSize. Rely on pageToken to determine if there are more items to be requested. After inserting, updating, or deleting a CSS product input, it may take several minutes before the updated processed CSS product can be retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account/domain to list processed CSS Products for. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | The maximum number of CSS Products to return. The service may return fewer than this value. The maximum value is 1000... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCssProducts` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListCssProductsResponse`

```typescript
const res = await css.cssProducts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `css.accounts.quotas.list`

**GET** `v1/{+parent}/quotas`

Lists the daily call quota and usage per group for your CSS Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The CSS account that owns the collection of method quotas and resources. In most cases, this is the CSS dom... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of quotas to return in the response, used for paging. Defaults to 500; values above 1000... |
| `pageToken` | `string` | query | No | Optional. Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that... |

**Response**: `ListQuotaGroupsResponse`

```typescript
const res = await css.quotas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

## Schemas

### `Account`

Information about CSS/MC account.

| Property | Type | Description |
|----------|------|-------------|
| `accountType` | `string` | Output only. The type of this account. |
| `automaticLabelIds` | `array<string>` | Automatically created label IDs assigned to the MC account by CSS Center. |
| `displayName` | `string` | The CSS/MC account's short display name. |
| `fullName` | `string` | Output only. Immutable. The CSS/MC account's full name. |
| `homepageUri` | `string` | Output only. Immutable. The CSS/MC account's homepage. |
| `labelIds` | `array<string>` | Manually created label IDs assigned to the CSS/MC account by a CSS parent account. |
| `name` | `string` | The label resource name. Format: accounts/{account} |
| `parent` | `string` | The CSS/MC account's parent resource. CSS group for CSS domains; CSS domain for MC accounts. Retu... |

### `AccountLabel`

Label assigned by CSS domain or CSS group to one of its sub-accounts.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Output only. The ID of account this label belongs to. |
| `description` | `string` | The description of this label. |
| `displayName` | `string` | The display name of this label. |
| `labelId` | `string` | Output only. The ID of the label. |
| `labelType` | `string` | Output only. The type of this label. |
| `name` | `string` | Identifier. The resource name of the label. Format: accounts/{account}/labels/{label} |

### `Attributes`

Attributes for CSS Product.

| Property | Type | Description |
|----------|------|-------------|
| `additionalImageLinks` | `array<string>` | Additional URL of images of the item. |
| `adult` | `boolean` | Set to true if the item is targeted towards adults. |
| `ageGroup` | `string` | Target age group of the item. |
| `brand` | `string` | Product Related Attributes.[14-36] Brand of the item. |
| `certifications` | `array<Certification>` | A list of certificates claimed by the CSS for the given product. |
| `color` | `string` | Color of the item. |
| `cppAdsRedirect` | `string` | Allows advertisers to override the item URL when the product is shown within the context of Produ... |
| `cppLink` | `string` | URL directly linking to your the Product Detail Page of the CSS. |
| `cppMobileLink` | `string` | URL for the mobile-optimized version of the Product Detail Page of the CSS. |
| `customLabel0` | `string` | Custom label 0 for custom grouping of items in a Shopping campaign. |
| `customLabel1` | `string` | Custom label 1 for custom grouping of items in a Shopping campaign. |
| `customLabel2` | `string` | Custom label 2 for custom grouping of items in a Shopping campaign. |
| `customLabel3` | `string` | Custom label 3 for custom grouping of items in a Shopping campaign. |
| `customLabel4` | `string` | Custom label 4 for custom grouping of items in a Shopping campaign. |
| `description` | `string` | Description of the item. |
| `excludedDestinations` | `array<string>` | The list of destinations to exclude for this target (corresponds to unchecked check boxes in Merc... |
| `expirationDate` | `string` | Date on which the item should expire, as specified upon insertion, in [ISO 8601](http://en.wikipe... |
| `gender` | `string` | Target gender of the item. |
| `googleProductCategory` | `string` | Google's category of the item (see [Google product taxonomy](https://support.google.com/merchants... |
| `gtin` | `string` | Global Trade Item Number ([GTIN](https://support.google.com/merchants/answer/188494#gtin)) of the... |
| `headlineOfferCondition` | `string` | Condition of the headline offer. |
| `headlineOfferInstallment` | `HeadlineOfferInstallment` | Number and amount of installments to pay for an item. |
| `headlineOfferLink` | `string` | Link to the headline offer. |
| `headlineOfferMobileLink` | `string` | Mobile Link to the headline offer. |
| `headlineOfferPrice` | `Price` | Headline Price of the CSS Product. |
| `headlineOfferShippingPrice` | `Price` | Headline Price of the CSS Product. |
| `headlineOfferSubscriptionCost` | `HeadlineOfferSubscriptionCost` | Number of periods (months or years) and amount of payment per period for an item with an associat... |
| `highPrice` | `Price` | High Price of the CSS Product. |
| `imageLink` | `string` | URL of an image of the item. |
| `includedDestinations` | `array<string>` | The list of destinations to include for this target (corresponds to checked check boxes in Mercha... |
| `isBundle` | `boolean` | Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different product... |
| `itemGroupId` | `string` | Shared identifier for all variants of the same product. |
| `lowPrice` | `Price` | Low Price of the CSS Product. |
| `material` | `string` | The material of which the item is made. |
| `mpn` | `string` | Manufacturer Part Number ([MPN](https://support.google.com/merchants/answer/188494#mpn)) of the i... |
| `multipack` | `string` | The number of identical products in a merchant-defined multipack. |
| `numberOfOffers` | `string` | The number of CSS Products. |
| `pattern` | `string` | The item's pattern (e.g. polka dots). |
| `pause` | `string` | Publication of this item will be temporarily paused. |
| `productDetails` | `array<ProductDetail>` | Technical specification or additional product details. |
| `productHeight` | `ProductDimension` | The height of the product in the units provided. The value must be between 0 (exclusive) and 3000... |
| `productHighlights` | `array<string>` | Bullet points describing the most relevant highlights of a product. |
| `productLength` | `ProductDimension` | The length of the product in the units provided. The value must be between 0 (exclusive) and 3000... |
| `productTypes` | `array<string>` | Categories of the item (formatted as in [products data specification](https://support.google.com/... |
| `productWeight` | `ProductWeight` | The weight of the product in the units provided. The value must be between 0 (exclusive) and 2000... |
| `productWidth` | `ProductDimension` | The width of the product in the units provided. The value must be between 0 (exclusive) and 3000 ... |
| `size` | `string` | Size of the item. Only one value is allowed. For variants with different sizes, insert a separate... |
| `sizeSystem` | `string` | System in which the size is specified. Recommended for apparel items. |
| `sizeTypes` | `array<string>` | The cut of the item. It can be used to represent combined size types for apparel items. Maximum t... |
| `title` | `string` | Title of the item. |

### `Certification`

The certification for the product. Use the this attribute to describe certifications, such as energy efficiency ratings, associated with a product.

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | The authority or certification body responsible for issuing the certification. At this time, the ... |
| `code` | `string` | The code of the certification. For example, for the EPREL certificate with the link https://eprel... |
| `name` | `string` | The name of the certification. At this time, the most common value is "EPREL", which represents e... |

### `CssProduct`

The processed CSS Product.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | Output only. A list of product attributes. |
| `contentLanguage` | `string` | Output only. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code for... |
| `cssProductStatus` | `CssProductStatus` | Output only. The status of a product, data validation issues, that is, information about a produc... |
| `customAttributes` | `array<CustomAttribute>` | Output only. A list of custom (CSS-provided) attributes. It can also be used to submit any attrib... |
| `feedLabel` | `string` | Output only. The feed label for the product. |
| `name` | `string` | The name of the CSS Product. Format: `"accounts/{account}/cssProducts/{css_product}"` |
| `rawProvidedId` | `string` | Output only. Your unique raw identifier for the product. |

### `CssProductInput`

This resource represents input data you submit for a CSS Product, not the processed CSS Product that you see in CSS Center, in Shopping Ads, or across Google surfaces.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | A list of CSS Product attributes. |
| `contentLanguage` | `string` | Required. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code for th... |
| `customAttributes` | `array<CustomAttribute>` | A list of custom (CSS-provided) attributes. It can also be used for submitting any attribute of t... |
| `feedLabel` | `string` | Required. The [feed label](https://developers.google.com/shopping-content/guides/products/feed-la... |
| `finalName` | `string` | Output only. The name of the processed CSS Product. Format: `accounts/{account}/cssProducts/{css_... |
| `freshnessTime` | `string` | DEPRECATED. Use expiration_date instead. Represents the existing version (freshness) of the CSS P... |
| `name` | `string` | Identifier. The name of the CSS Product input. Format: `accounts/{account}/cssProductInputs/{css_... |
| `rawProvidedId` | `string` | Required. Your unique identifier for the CSS Product. This is the same for the CSS Product input ... |

### `CssProductStatus`

The status of the Css Product, data validation issues, that is, information about the Css Product computed asynchronously.

| Property | Type | Description |
|----------|------|-------------|
| `creationDate` | `string` | Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) for... |
| `destinationStatuses` | `array<DestinationStatus>` | The intended destinations for the product. |
| `googleExpirationDate` | `string` | Date on which the item expires, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format. |
| `itemLevelIssues` | `array<ItemLevelIssue>` | A list of all issues associated with the product. |
| `lastUpdateDate` | `string` | Date on which the item has been last updated, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601... |

### `CustomAttribute`

A message that represents custom attributes. Exactly one of `value` or `group_values` must not be empty.

| Property | Type | Description |
|----------|------|-------------|
| `groupValues` | `array<CustomAttribute>` | Subattributes within this attribute group. If `group_values` is not empty, `value` must be empty. |
| `name` | `string` | The name of the attribute. |
| `value` | `string` | The value of the attribute. If `value` is not empty, `group_values` must be empty. |

### `DestinationStatus`

The destination status of the product status.

| Property | Type | Description |
|----------|------|-------------|
| `approvedCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the CSS Product is approved. |
| `destination` | `string` | The name of the destination |
| `disapprovedCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the CSS Product is disapproved. |
| `pendingCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where the CSS Product is pending approval. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `HeadlineOfferInstallment`

A message that represents installment.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Price` | The amount the buyer has to pay per month. |
| `downpayment` | `Price` | The up-front down payment amount the buyer has to pay. |
| `months` | `string` | The number of installments the buyer has to pay. |

### `HeadlineOfferSubscriptionCost`

The SubscriptionCost of the product.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Price` | The amount the buyer has to pay per subscription period. |
| `period` | `string` | The type of subscription period. Supported values are: * "`month`" * "`year`" |
| `periodLength` | `string` | The number of subscription periods the buyer has to pay. |

### `ItemLevelIssue`

The ItemLevelIssue of the product status.

| Property | Type | Description |
|----------|------|-------------|
| `applicableCountries` | `array<string>` | List of country codes (ISO 3166-1 alpha-2) where issue applies to the CSS Product. |
| `attribute` | `string` | The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | The error code of the issue. |
| `description` | `string` | A short issue description in English. |
| `destination` | `string` | The destination the issue applies to. |
| `detail` | `string` | A detailed issue description in English. |
| `documentation` | `string` | The URL of a web page to help with resolving this issue. |
| `resolution` | `string` | Whether the issue can be resolved by the merchant. |
| `servability` | `string` | How this issue affects serving of the CSS Product. |

### `ListAccountLabelsResponse`

Response message for the `ListAccountLabels` method.

| Property | Type | Description |
|----------|------|-------------|
| `accountLabels` | `array<AccountLabel>` | The labels from the specified account. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListChildAccountsResponse`

Response message for the `ListChildAccounts` method.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | The CSS/MC accounts returned for the specified CSS parent account. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListCssProductsResponse`

Response message for the ListCssProducts method.

| Property | Type | Description |
|----------|------|-------------|
| `cssProducts` | `array<CssProduct>` | The processed CSS products from the specified account. These are your processed CSS products afte... |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListQuotaGroupsResponse`

Response message for the ListMethodGroups method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `quotaGroups` | `array<QuotaGroup>` | The methods, current quota usage and limits per each group. The quota is shared between all metho... |

### `MethodDetails`

The method details per method in the CSS API.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | Output only. The name of the method for example `cssproductsservice.listcssproducts`. |
| `path` | `string` | Output only. The path for the method such as `v1/cssproductsservice.listcssproducts`. |
| `subapi` | `string` | Output only. The sub-API that the method belongs to. In the CSS API, this is always `css`. |
| `version` | `string` | Output only. The API version that the method belongs to. |

### `Price`

The price represented as a number and currency.

| Property | Type | Description |
|----------|------|-------------|
| `amountMicros` | `string` | The price represented as a number in micros (1 million micros is an equivalent to one's currency ... |
| `currencyCode` | `string` | The currency of the price using three-letter acronyms according to [ISO 4217](http://en.wikipedia... |

### `ProductDetail`

The product details.

| Property | Type | Description |
|----------|------|-------------|
| `attributeName` | `string` | The name of the product detail. |
| `attributeValue` | `string` | The value of the product detail. |
| `sectionName` | `string` | The section header used to group a set of product details. |

### `ProductDimension`

The dimension of the product.

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | Required. The dimension units. Acceptable values are: * "`in`" * "`cm`" |
| `value` | `number` | Required. The dimension value represented as a number. The value can have a maximum precision of ... |

### `ProductWeight`

The weight of the product.

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | Required. The weight unit. Acceptable values are: * "`g`" * "`kg`" * "`oz`" * "`lb`" |
| `value` | `number` | Required. The weight represented as a number. The weight can have a maximum precision of four dec... |

### `QuotaGroup`

The group information for methods in the CSS API. The quota is shared between all methods in the group. Even if none of the methods within the group have usage the information for the group is returned.

| Property | Type | Description |
|----------|------|-------------|
| `methodDetails` | `array<MethodDetails>` | Output only. List of all methods group quota applies to. |
| `name` | `string` | Identifier. The resource name of the quota group. Format: accounts/{account}/quotas/{group} Examp... |
| `quotaLimit` | `string` | Output only. The maximum number of calls allowed per day for the group. |
| `quotaMinuteLimit` | `string` | Output only. The maximum number of calls allowed per minute for the group. |
| `quotaUsage` | `string` | Output only. The current quota usage, meaning the number of calls already made on a given day to ... |

### `UpdateAccountLabelsRequest`

The request message for the `UpdateLabels` method.

| Property | Type | Description |
|----------|------|-------------|
| `labelIds` | `array<string>` | The list of label IDs to overwrite the existing account label IDs. If the list is empty, all curr... |
| `parent` | `string` | Optional. Only required when updating MC account labels. The CSS domain that is the parent resour... |

