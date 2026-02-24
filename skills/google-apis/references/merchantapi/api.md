# Merchant API - API Reference

**Version**: `reviews_v1beta` | **Methods**: 8 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `merchantapi.accounts.merchantReviews.get` | GET | `reviews/v1beta/{+name}` | Gets a merchant review. |
| `merchantapi.accounts.merchantReviews.list` | GET | `reviews/v1beta/{+parent}/merchantReviews` | Lists merchant reviews. |
| `merchantapi.accounts.merchantReviews.insert` | POST | `reviews/v1beta/{+parent}/merchantReviews:insert` | Inserts a review for your Merchant Center account. If the review already exists, then the review ... |
| `merchantapi.accounts.merchantReviews.delete` | DELETE | `reviews/v1beta/{+name}` | Deletes merchant review. |
| `merchantapi.accounts.productReviews.get` | GET | `reviews/v1beta/{+name}` | Gets a product review. |
| `merchantapi.accounts.productReviews.list` | GET | `reviews/v1beta/{+parent}/productReviews` | Lists product reviews. |
| `merchantapi.accounts.productReviews.insert` | POST | `reviews/v1beta/{+parent}/productReviews:insert` | Inserts a product review. |
| `merchantapi.accounts.productReviews.delete` | DELETE | `reviews/v1beta/{+name}` | Deletes a product review. |

### `merchantapi.accounts.merchantReviews.get`

**GET** `reviews/v1beta/{+name}`

Gets a merchant review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the merchant review. Format: accounts/{account}/merchantReviews/{merchantReview} |

**Response**: `MerchantReview`

```typescript
const res = await merchantapi.merchantReviews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.merchantReviews.list`

**GET** `reviews/v1beta/{+parent}/merchantReviews`

Lists merchant reviews.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account to list merchant reviews for. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of merchant reviews to return. The service can return fewer than this value. The maximum... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMerchantReviews` call. Provide this to retrieve the subsequent ... |

**Response**: `ListMerchantReviewsResponse`

```typescript
const res = await merchantapi.merchantReviews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.merchantReviews.insert`

**POST** `reviews/v1beta/{+parent}/merchantReviews:insert`

Inserts a review for your Merchant Center account. If the review already exists, then the review is replaced with the new instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account where the merchant review will be inserted. Format: accounts/{account} |
| `dataSource` | `string` | query | No | Required. The data source of the [merchantreview](https://support.google.com/merchants/answer/7045996?sjid=5253581244... |

**Request body**: `MerchantReview`

**Response**: `MerchantReview`

```typescript
const res = await merchantapi.merchantReviews.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.merchantReviews.delete`

**DELETE** `reviews/v1beta/{+name}`

Deletes merchant review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the merchant review. Format: accounts/{account}/merchantReviews/{merchantReview} |

**Response**: `Empty`

```typescript
const res = await merchantapi.merchantReviews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.productReviews.get`

**GET** `reviews/v1beta/{+name}`

Gets a product review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the merchant review. Format: accounts/{account}/productReviews/{productReview} |

**Response**: `ProductReview`

```typescript
const res = await merchantapi.productReviews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.productReviews.list`

**GET** `reviews/v1beta/{+parent}/productReviews`

Lists product reviews.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account to list product reviews for. Format: accounts/{account} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of products to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListProductReviews` call. Provide this to retrieve the subsequent p... |

**Response**: `ListProductReviewsResponse`

```typescript
const res = await merchantapi.productReviews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.productReviews.insert`

**POST** `reviews/v1beta/{+parent}/productReviews:insert`

Inserts a product review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The account where the product review will be inserted. Format: accounts/{account} |
| `dataSource` | `string` | query | No | Required. Format: `accounts/{account}/dataSources/{datasource}`. |

**Request body**: `ProductReview`

**Response**: `ProductReview`

```typescript
const res = await merchantapi.productReviews.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

### `merchantapi.accounts.productReviews.delete`

**DELETE** `reviews/v1beta/{+name}`

Deletes a product review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ID of the Product review. Format: accounts/{account}/productReviews/{productReview} |

**Response**: `Empty`

```typescript
const res = await merchantapi.productReviews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/content`

---

## Schemas

### `CustomAttribute`

A message that represents custom attributes. Exactly one of `value` or `group_values` must not be empty.

| Property | Type | Description |
|----------|------|-------------|
| `groupValues` | `array<CustomAttribute>` | Subattributes within this attribute group. If `group_values` is not empty, `value` must be empty. |
| `name` | `string` | The name of the attribute. |
| `value` | `string` | The value of the attribute. If `value` is not empty, `group_values` must be empty. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListMerchantReviewsResponse`

Response message for the `ListMerchantsReview` method.

| Property | Type | Description |
|----------|------|-------------|
| `merchantReviews` | `array<MerchantReview>` | The merchant review. |
| `nextPageToken` | `string` | The token to retrieve the next page of results. |

### `ListProductReviewsResponse`

response message for the ListProductReviews method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `productReviews` | `array<ProductReview>` | The product review. |

### `MerchantReview`

A review for a merchant. For more information, see [Introduction to Merchant Review Feeds](https://developers.google.com/merchant-review-feeds)

| Property | Type | Description |
|----------|------|-------------|
| `customAttributes` | `array<CustomAttribute>` | Optional. A list of custom (merchant-provided) attributes. It can also be used for submitting any... |
| `dataSource` | `string` | Output only. The primary data source of the merchant review. |
| `merchantReviewAttributes` | `MerchantReviewAttributes` | Optional. A list of merchant review attributes. |
| `merchantReviewId` | `string` | Required. The user provided merchant review ID to uniquely identify the merchant review. |
| `merchantReviewStatus` | `MerchantReviewStatus` | Output only. The status of a merchant review, data validation issues, that is, information about ... |
| `name` | `string` | Identifier. The name of the merchant review. Format: `"{merchantreview.name=accounts/{account}/me... |

### `MerchantReviewAttributes`

Attributes.

| Property | Type | Description |
|----------|------|-------------|
| `collectionMethod` | `string` | Optional. The method used to collect the review. |
| `content` | `string` | Required. This should be any freeform text provided by the user and should not be truncated. If m... |
| `isAnonymous` | `boolean` | Optional. Set to true if the reviewer should remain anonymous. |
| `maxRating` | `string` | Optional. The maximum possible number for the rating. The value of the max rating must be greater... |
| `merchantDisplayName` | `string` | Optional. Human-readable display name for the merchant. |
| `merchantId` | `string` | Required. Must be unique and stable across all requests. In other words, if a request today and a... |
| `merchantLink` | `string` | Optional. URL to the merchant's main website. Do not use a redirect URL for this value. In other ... |
| `merchantRatingLink` | `string` | Optional. URL to the landing page that hosts the reviews for this merchant. Do not use a redirect... |
| `minRating` | `string` | Optional. The minimum possible number for the rating. This should be the worst possible rating an... |
| `rating` | `number` | Optional. The reviewer's overall rating of the merchant. |
| `reviewCountry` | `string` | Optional. The country where the reviewer made the order defined by ISO 3166-1 Alpha-2 Country Code. |
| `reviewLanguage` | `string` | Optional. The language of the review defined by BCP-47 language code. |
| `reviewTime` | `string` | Required. The timestamp indicating when the review was written. |
| `reviewerId` | `string` | Optional. A permanent, unique identifier for the author of the review in the publisher's system. |
| `reviewerUsername` | `string` | Optional. Display name of the review author. |
| `title` | `string` | Optional. The title of the review. |

### `MerchantReviewDestinationStatus`

The destination status of the merchant review status.

| Property | Type | Description |
|----------|------|-------------|
| `reportingContext` | `string` | Output only. The name of the reporting context. |

### `MerchantReviewItemLevelIssue`

The ItemLevelIssue of the merchant review status.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Output only. The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | Output only. The error code of the issue. |
| `description` | `string` | Output only. A short issue description in English. |
| `detail` | `string` | Output only. A detailed issue description in English. |
| `documentation` | `string` | Output only. The URL of a web page to help with resolving this issue. |
| `reportingContext` | `string` | Output only. The reporting context the issue applies to. |
| `resolution` | `string` | Output only. Whether the issue can be resolved by the merchant. |
| `severity` | `string` | Output only. How this issue affects serving of the merchant review. |

### `MerchantReviewStatus`

The status of a merchant review, data validation issues, that is, information about a merchant review computed asynchronously.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/wiki/... |
| `destinationStatuses` | `array<MerchantReviewDestinationStatus>` | Output only. The intended destinations for the merchant review. |
| `itemLevelIssues` | `array<MerchantReviewItemLevelIssue>` | Output only. A list of all issues associated with the merchant review. |
| `lastUpdateTime` | `string` | Output only. Date on which the item has been last updated, in [ISO 8601](http://en.wikipedia.org/... |

### `ProductChange`

The change that happened to the product including old value, new value, country code as the region code and reporting context.

| Property | Type | Description |
|----------|------|-------------|
| `newValue` | `string` | The new value of the changed resource or attribute. If empty, it means that the product was delet... |
| `oldValue` | `string` | The old value of the changed resource or attribute. If empty, it means that the product was creat... |
| `regionCode` | `string` | Countries that have the change (if applicable). Represented in the ISO 3166 format. |
| `reportingContext` | `string` | Reporting contexts that have the change (if applicable). Currently this field supports only (`SHO... |

### `ProductReview`

A review for a product. For more information, see [Introduction to Product Review Feeds](https://developers.google.com/product-review-feeds)

| Property | Type | Description |
|----------|------|-------------|
| `customAttributes` | `array<CustomAttribute>` | Optional. A list of custom (merchant-provided) attributes. |
| `dataSource` | `string` | Output only. The primary data source of the product review. |
| `name` | `string` | Identifier. The name of the product review. Format: `"{productreview.name=accounts/{account}/prod... |
| `productReviewAttributes` | `ProductReviewAttributes` | Optional. A list of product review attributes. |
| `productReviewId` | `string` | Required. The permanent, unique identifier for the product review in the publisher’s system. |
| `productReviewStatus` | `ProductReviewStatus` | Output only. The status of a product review, data validation issues, that is, information about a... |

### `ProductReviewAttributes`

Attributes.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatorName` | `string` | Optional. The name of the aggregator of the product reviews. A publisher may use a reviews aggreg... |
| `asins` | `array<string>` | Optional. Contains ASINs (Amazon Standard Identification Numbers) associated with a product. |
| `brands` | `array<string>` | Optional. Contains brand names associated with a product. |
| `collectionMethod` | `string` | Optional. The method used to collect the review. |
| `cons` | `array<string>` | Optional. Contains the disadvantages based on the opinion of the reviewer. Omit boilerplate text ... |
| `content` | `string` | Optional. The content of the review. If empty, the content might still get populated from pros an... |
| `gtins` | `array<string>` | Optional. Contains GTINs (global trade item numbers) associated with a product. Sub-types of GTIN... |
| `isIncentivizedReview` | `boolean` | Optional. Indicates whether the review is incentivized. |
| `isSpam` | `boolean` | Optional. Indicates whether the review is marked as spam in the publisher's system. |
| `isVerifiedPurchase` | `boolean` | Optional. Indicates whether the reviewer's purchase is verified. |
| `maxRating` | `string` | Optional. The maximum possible number for the rating. The value of the max rating must be greater... |
| `minRating` | `string` | Optional. Contains the ratings associated with the review. The minimum possible number for the ra... |
| `mpns` | `array<string>` | Optional. Contains MPNs (manufacturer part numbers) associated with a product. |
| `productLinks` | `array<string>` | Optional. The URI of the product. This URI can have the same value as the `review_link` element, ... |
| `productNames` | `array<string>` | Optional. Descriptive name of a product. |
| `pros` | `array<string>` | Optional. Contains the advantages based on the opinion of the reviewer. Omit boilerplate text lik... |
| `publisherFavicon` | `string` | Optional. A link to the company favicon of the publisher. The image dimensions should be favicon ... |
| `publisherName` | `string` | Optional. The name of the publisher of the product reviews. The information about the publisher, ... |
| `rating` | `number` | Optional. The reviewer's overall rating of the product. |
| `reviewCountry` | `string` | Optional. The country of the review defined by ISO 3166-1 Alpha-2 Country Code. |
| `reviewLanguage` | `string` | Optional. The language of the review defined by BCP-47 language code. |
| `reviewLink` | `ReviewLink` | Optional. The URI of the review landing page. |
| `reviewTime` | `string` | Required. The timestamp indicating when the review was written. |
| `reviewerId` | `string` | Optional. The author of the product review. A permanent, unique identifier for the author of the ... |
| `reviewerImageLinks` | `array<string>` | Optional. A URI to an image of the reviewed product created by the review author. The URI does no... |
| `reviewerIsAnonymous` | `boolean` | Optional. Set to true if the reviewer should remain anonymous. |
| `reviewerUsername` | `string` | Optional. The name of the reviewer of the product review. |
| `skus` | `array<string>` | Optional. Contains SKUs (stock keeping units) associated with a product. Often this matches the p... |
| `subclientName` | `string` | Optional. The name of the subclient of the product reviews. The subclient is an identifier of the... |
| `title` | `string` | Optional. The title of the review. |
| `transactionId` | `string` | Optional. A permanent, unique identifier for the transaction associated with the review in the pu... |

### `ProductReviewDestinationStatus`

The destination status of the product review status.

| Property | Type | Description |
|----------|------|-------------|
| `reportingContext` | `string` | Output only. The name of the reporting context. |

### `ProductReviewItemLevelIssue`

The ItemLevelIssue of the product review status.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Output only. The attribute's name, if the issue is caused by a single attribute. |
| `code` | `string` | Output only. The error code of the issue. |
| `description` | `string` | Output only. A short issue description in English. |
| `detail` | `string` | Output only. A detailed issue description in English. |
| `documentation` | `string` | Output only. The URL of a web page to help with resolving this issue. |
| `reportingContext` | `string` | Output only. The reporting context the issue applies to. |
| `resolution` | `string` | Output only. Whether the issue can be resolved by the merchant. |
| `severity` | `string` | Output only. How this issue affects serving of the product review. |

### `ProductReviewStatus`

Product review status.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/wiki/... |
| `destinationStatuses` | `array<ProductReviewDestinationStatus>` | Output only. The intended destinations for the product review. |
| `itemLevelIssues` | `array<ProductReviewItemLevelIssue>` | Output only. A list of all issues associated with the product review. |
| `lastUpdateTime` | `string` | Output only. Date on which the item has been last updated, in [ISO 8601](http://en.wikipedia.org/... |

### `ProductStatusChangeMessage`

The message that the merchant will receive to notify about product status change event

| Property | Type | Description |
|----------|------|-------------|
| `account` | `string` | The target account that owns the entity that changed. Format : `accounts/{merchant_id}` |
| `attribute` | `string` | The attribute in the resource that changed, in this case it will be always `Status`. |
| `changes` | `array<ProductChange>` | A message to describe the change that happened to the product |
| `eventTime` | `string` | The time at which the event was generated. If you want to order the notification messages you rec... |
| `expirationTime` | `string` | Optional. The product expiration time. This field will not be set if the notification is sent for... |
| `managingAccount` | `string` | The account that manages the merchant's account. can be the same as merchant id if it is standalo... |
| `resource` | `string` | The product name. Format: `accounts/{account}/products/{product}` |
| `resourceId` | `string` | The product id. |
| `resourceType` | `string` | The resource that changed, in this case it will always be `Product`. |

### `ReviewLink`

The URI of the review landing page.

| Property | Type | Description |
|----------|------|-------------|
| `link` | `string` | Optional. The URI of the review landing page. For example: `http://www.example.com/review_5.html`. |
| `type` | `string` | Optional. Type of the review URI. |

