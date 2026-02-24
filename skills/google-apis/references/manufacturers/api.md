# Manufacturer Center API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 20

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `manufacturers.accounts.products.list` | GET | `v1/{+parent}/products` | Lists all the products in a Manufacturer Center account. |
| `manufacturers.accounts.products.get` | GET | `v1/{+parent}/products/{+name}` | Gets the product from a Manufacturer Center account, including product issues. A recently updated... |
| `manufacturers.accounts.products.update` | PUT | `v1/{+parent}/products/{+name}` | Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a prod... |
| `manufacturers.accounts.products.delete` | DELETE | `v1/{+parent}/products/{+name}` | Deletes the product from a Manufacturer Center account. |
| `manufacturers.accounts.languages.productCertifications.patch` | PATCH | `v1/{+name}` | Updates (or creates if allow_missing = true) a product certification which links certifications w... |
| `manufacturers.accounts.languages.productCertifications.list` | GET | `v1/{+parent}/productCertifications` | Lists product certifications from a specified certification body. This method can only be called ... |
| `manufacturers.accounts.languages.productCertifications.get` | GET | `v1/{+name}` | Gets a product certification by its name. This method can only be called by certification bodies. |
| `manufacturers.accounts.languages.productCertifications.delete` | DELETE | `v1/{+name}` | Deletes a product certification by its name. This method can only be called by certification bodies. |

### `manufacturers.accounts.products.list`

**GET** `v1/{+parent}/products`

Lists all the products in a Manufacturer Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account. |
| `include` | `string` | query | No | The information to be included in the response. Only sections listed here will be returned. |
| `pageSize` | `integer` | query | No | Maximum number of product statuses to return in the response, used for paging. |
| `pageToken` | `string` | query | No | The token returned by the previous request. |

**Response**: `ListProductsResponse`

```typescript
const res = await manufacturers.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.products.get`

**GET** `v1/{+parent}/products/{+name}`

Gets the product from a Manufacturer Center account, including product issues. A recently updated product takes around 15 minutes to process. Changes are only visible after it has been processed. While some issues may be available once the product has been processed, other issues may take days to appear.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account. |
| `name` | `string` | path | Yes | Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the p... |
| `include` | `string` | query | No | The information to be included in the response. Only sections listed here will be returned. |

**Response**: `Product`

```typescript
const res = await manufacturers.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.products.update`

**PUT** `v1/{+parent}/products/{+name}`

Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a product with the provided attributes. If the product already exists, then all attributes are replaced with the new ones. The checks at upload time are minimal. All required attributes need to be present for a product to be valid. Issues may show up later after the API has accepted a new upload for a product and it is possible to overwrite an existing valid product with an invalid product. To detect this, you should retrieve the product and check it for issues once the new version is available. Uploaded attributes first need to be processed before they can be retrieved. Until then, new products will be unavailable, and retrieval of previously uploaded products will return the original state of the product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account. |
| `name` | `string` | path | Yes | Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the p... |

**Request body**: `Attributes`

**Response**: `Empty`

```typescript
const res = await manufacturers.products.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.products.delete`

**DELETE** `v1/{+parent}/products/{+name}`

Deletes the product from a Manufacturer Center account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account. |
| `name` | `string` | path | Yes | Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the p... |

**Response**: `Empty`

```typescript
const res = await manufacturers.products.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.languages.productCertifications.patch`

**PATCH** `v1/{+name}`

Updates (or creates if allow_missing = true) a product certification which links certifications with products. This method can only be called by certification bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name identifier of a product certification Format: accounts/{account}/languages/{language_code}/... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update according to aip.dev/134. However, only full update is supported as of right n... |

**Request body**: `ProductCertification`

**Response**: `ProductCertification`

```typescript
const res = await manufacturers.productCertifications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.languages.productCertifications.list`

**GET** `v1/{+parent}/productCertifications`

Lists product certifications from a specified certification body. This method can only be called by certification bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of product certifications. Format: accounts/{account}/languages/{lan... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of product certifications to return. The service may return fewer than this value. If un... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListProductCertifications` call. Provide this to retrieve the subse... |

**Response**: `ListProductCertificationsResponse`

```typescript
const res = await manufacturers.productCertifications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.languages.productCertifications.get`

**GET** `v1/{+name}`

Gets a product certification by its name. This method can only be called by certification bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the product certification to get. Format: accounts/{account}/languages/{language_code}/productC... |

**Response**: `ProductCertification`

```typescript
const res = await manufacturers.productCertifications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

### `manufacturers.accounts.languages.productCertifications.delete`

**DELETE** `v1/{+name}`

Deletes a product certification by its name. This method can only be called by certification bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the product certification to delete. Format: accounts/{account}/languages/{language_code}/produ... |

**Response**: `Empty`

```typescript
const res = await manufacturers.productCertifications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/manufacturercenter`

---

## Schemas

### `Attributes`

Attributes of the product. For more information, see https://support.google.com/manufacturers/answer/6124116.

| Property | Type | Description |
|----------|------|-------------|
| `additionalImageLink` | `array<Image>` | The additional images of the product. For more information, see https://support.google.com/manufa... |
| `ageGroup` | `string` | The target age group of the product. For more information, see https://support.google.com/manufac... |
| `brand` | `string` | The brand name of the product. For more information, see https://support.google.com/manufacturers... |
| `capacity` | `Capacity` | The capacity of the product. For more information, see https://support.google.com/manufacturers/a... |
| `certification` | `array<GoogleShoppingManufacturersV1ProductCertification>` | Optional. List of certifications claimed by this product. |
| `color` | `string` | The color of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `count` | `Count` | The count of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `description` | `string` | The description of the product. For more information, see https://support.google.com/manufacturer... |
| `disclosureDate` | `string` | The disclosure date of the product. For more information, see https://support.google.com/manufact... |
| `excludedDestination` | `array<string>` | A list of excluded destinations such as "ClientExport", "ClientShoppingCatalog" or "PartnerShoppi... |
| `featureDescription` | `array<FeatureDescription>` | The rich format description of the product. For more information, see https://support.google.com/... |
| `flavor` | `string` | The flavor of the product. For more information, see https://support.google.com/manufacturers/ans... |
| `format` | `string` | The format of the product. For more information, see https://support.google.com/manufacturers/ans... |
| `gender` | `string` | The target gender of the product. For more information, see https://support.google.com/manufactur... |
| `grocery` | `Grocery` | Grocery Attributes. See more at https://support.google.com/manufacturers/answer/12098458#grocery. |
| `gtin` | `array<string>` | The Global Trade Item Number (GTIN) of the product. For more information, see https://support.goo... |
| `imageLink` | `Image` | The image of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `includedDestination` | `array<string>` | A list of included destinations such as "ClientExport", "ClientShoppingCatalog" or "PartnerShoppi... |
| `intendedCountry` | `array<string>` | Optional. List of countries to show this product in. Countries provided in this attribute will ov... |
| `itemGroupId` | `string` | The item group id of the product. For more information, see https://support.google.com/manufactur... |
| `material` | `string` | The material of the product. For more information, see https://support.google.com/manufacturers/a... |
| `mpn` | `string` | The Manufacturer Part Number (MPN) of the product. For more information, see https://support.goog... |
| `nutrition` | `Nutrition` | Nutrition Attributes. See more at https://support.google.com/manufacturers/answer/12098458#food-s... |
| `pattern` | `string` | The pattern of the product. For more information, see https://support.google.com/manufacturers/an... |
| `productDetail` | `array<ProductDetail>` | The details of the product. For more information, see https://support.google.com/manufacturers/an... |
| `productHighlight` | `array<string>` | The product highlights. For more information, see https://support.google.com/manufacturers/answer... |
| `productLine` | `string` | The name of the group of products related to the product. For more information, see https://suppo... |
| `productName` | `string` | The canonical name of the product. For more information, see https://support.google.com/manufactu... |
| `productPageUrl` | `string` | The URL of the detail page of the product. For more information, see https://support.google.com/m... |
| `productType` | `array<string>` | The type or category of the product. For more information, see https://support.google.com/manufac... |
| `releaseDate` | `string` | The release date of the product. For more information, see https://support.google.com/manufacture... |
| `richProductContent` | `array<string>` | Rich product content. For more information, see https://support.google.com/manufacturers/answer/9... |
| `scent` | `string` | The scent of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `size` | `string` | The size of the product. For more information, see https://support.google.com/manufacturers/answe... |
| `sizeSystem` | `string` | The size system of the product. For more information, see https://support.google.com/manufacturer... |
| `sizeType` | `array<string>` | The size type of the product. For more information, see https://support.google.com/manufacturers/... |
| `suggestedRetailPrice` | `Price` | The suggested retail price (MSRP) of the product. For more information, see https://support.googl... |
| `targetClientId` | `string` | The target client id. Should only be used in the accounts of the data partners. For more informat... |
| `theme` | `string` | The theme of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `title` | `string` | The title of the product. For more information, see https://support.google.com/manufacturers/answ... |
| `videoLink` | `array<string>` | The videos of the product. For more information, see https://support.google.com/manufacturers/ans... |
| `virtualModelLink` | `string` | Virtual Model (3d) asset link. |

### `Capacity`

The capacity of a product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity.

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit of the capacity, i.e., MB, GB, or TB. |
| `value` | `string` | The numeric value of the capacity. |

### `Certification`

Description of a certification.

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | Required. Name of the certification body. |
| `code` | `string` | Optional. A unique code to identify the certification. |
| `link` | `string` | Optional. A URL link to the certification. |
| `logo` | `string` | Optional. A URL link to the certification logo. |
| `name` | `string` | Required. Name of the certification. |
| `validUntil` | `string` | Optional. The expiration date (UTC). |
| `value` | `string` | Optional. A custom value of the certification. |

### `Count`

The number of products in a single package. For more information, see https://support.google.com/manufacturers/answer/6124116#count.

| Property | Type | Description |
|----------|------|-------------|
| `unit` | `string` | The unit in which these products are counted. |
| `value` | `string` | The numeric value of the number of products in a package. |

### `DestinationStatus`

The destination status.

| Property | Type | Description |
|----------|------|-------------|
| `approvedCountries` | `array<string>` | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is approved. |
| `destination` | `string` | The name of the destination. |
| `disapprovedCountries` | `array<string>` | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved. |
| `pendingCountries` | `array<string>` | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval. |
| `status` | `string` | The status of the destination. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FeatureDescription`

A feature description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.

| Property | Type | Description |
|----------|------|-------------|
| `headline` | `string` | A short description of the feature. |
| `image` | `Image` | An optional image describing the feature. |
| `text` | `string` | A detailed description of the feature. |

### `FloatUnit`

Combination of float amount and unit.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `number` | amount. |
| `unit` | `string` | unit. |

### `GoogleShoppingManufacturersV1ProductCertification`

Description of a certification.

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | Required. Name of the certification body. |
| `code` | `string` | Optional. A unique code to identify the certification. |
| `link` | `string` | Optional. A URL link to the certification. |
| `logo` | `string` | Optional. A URL link to the certification logo. |
| `name` | `string` | Required. Name of the certification. |
| `validUntil` | `string` | Optional. The expiration date (UTC). |
| `value` | `string` | Optional. A custom value of the certification. |

### `Grocery`

| Property | Type | Description |
|----------|------|-------------|
| `activeIngredients` | `string` | Active ingredients. |
| `alcoholByVolume` | `number` | Alcohol by volume. |
| `allergens` | `string` | Allergens. |
| `derivedNutritionClaim` | `array<string>` | Derived nutrition claim. |
| `directions` | `string` | Directions. |
| `indications` | `string` | Indications. |
| `ingredients` | `string` | Ingredients. |
| `nutritionClaim` | `array<string>` | Nutrition claim. |
| `storageInstructions` | `string` | Storage instructions. |

### `Image`

An image.

| Property | Type | Description |
|----------|------|-------------|
| `imageUrl` | `string` | The URL of the image. For crawled images, this is the provided URL. For uploaded images, this is ... |
| `status` | `string` | The status of the image. @OutputOnly |
| `type` | `string` | The type of the image, i.e., crawled or uploaded. @OutputOnly |

### `Issue`

Product issue.

| Property | Type | Description |
|----------|------|-------------|
| `applicableCountries` | `array<string>` | Output only. List of country codes (ISO 3166-1 alpha-2) where issue applies to the manufacturer p... |
| `attribute` | `string` | If present, the attribute that triggered the issue. For more information about attributes, see ht... |
| `description` | `string` | Longer description of the issue focused on how to resolve it. |
| `destination` | `string` | The destination this issue applies to. |
| `resolution` | `string` | What needs to happen to resolve the issue. |
| `severity` | `string` | The severity of the issue. |
| `timestamp` | `string` | The timestamp when this issue appeared. |
| `title` | `string` | Short title describing the nature of the issue. |
| `type` | `string` | The server-generated type of the issue, for example, “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERV... |

### `ListProductCertificationsResponse`

Response for ListProductCertifications method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `productCertifications` | `array<ProductCertification>` | The product certifications from the specified certification body. |

### `ListProductsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token for the retrieval of the next page of product statuses. |
| `products` | `array<Product>` | List of the products. |

### `Nutrition`

| Property | Type | Description |
|----------|------|-------------|
| `addedSugars` | `FloatUnit` | Added sugars. |
| `addedSugarsDailyPercentage` | `number` | Added sugars daily percentage. |
| `calcium` | `FloatUnit` | Calcium. |
| `calciumDailyPercentage` | `number` | Calcium daily percentage. |
| `cholesterol` | `FloatUnit` | Cholesterol. |
| `cholesterolDailyPercentage` | `number` | Cholesterol daily percentage. |
| `dietaryFiber` | `FloatUnit` | Dietary fiber. |
| `dietaryFiberDailyPercentage` | `number` | Dietary fiber daily percentage. |
| `energy` | `FloatUnit` | Mandatory Nutrition Facts. Energy. |
| `energyFromFat` | `FloatUnit` | Energy from fat. |
| `folateDailyPercentage` | `number` | Folate daily percentage. |
| `folateFolicAcid` | `FloatUnit` | Folate folic acid. |
| `folateMcgDfe` | `number` | Folate mcg DFE. |
| `iron` | `FloatUnit` | Iron. |
| `ironDailyPercentage` | `number` | Iron daily percentage. |
| `monounsaturatedFat` | `FloatUnit` | Monounsaturated fat. |
| `nutritionFactMeasure` | `string` | Nutrition fact measure. |
| `polyols` | `FloatUnit` | Polyols. |
| `polyunsaturatedFat` | `FloatUnit` | Polyunsaturated fat. |
| `potassium` | `FloatUnit` | Potassium. |
| `potassiumDailyPercentage` | `number` | Potassium daily percentage. |
| `preparedSizeDescription` | `string` | Prepared size description. |
| `protein` | `FloatUnit` | Protein. |
| `proteinDailyPercentage` | `number` | Protein daily percentage. |
| `saturatedFat` | `FloatUnit` | Saturated fat. |
| `saturatedFatDailyPercentage` | `number` | Saturated fat daily percentage. |
| `servingSizeDescription` | `string` | Food Serving Size. Serving size description. |
| `servingSizeMeasure` | `FloatUnit` | Serving size measure. |
| `servingsPerContainer` | `string` | Servings per container. |
| `sodium` | `FloatUnit` | Sodium. |
| `sodiumDailyPercentage` | `number` | Sodium daily percentage. |
| `starch` | `FloatUnit` | Starch. |
| `totalCarbohydrate` | `FloatUnit` | Total carbohydrate. |
| `totalCarbohydrateDailyPercentage` | `number` | Total carbohydrate daily percentage. |
| `totalFat` | `FloatUnit` | Total fat. |
| `totalFatDailyPercentage` | `number` | Total fat daily percentage. |
| `totalSugars` | `FloatUnit` | Total sugars. |
| `totalSugarsDailyPercentage` | `number` | Total sugars daily percentage. |
| `transFat` | `FloatUnit` | Trans fat. |
| `transFatDailyPercentage` | `number` | Trans fat daily percentage. |
| `vitaminD` | `FloatUnit` | Vitamin D. |
| `vitaminDDailyPercentage` | `number` | Vitamin D daily percentage. |
| `voluntaryNutritionFact` | `array<VoluntaryNutritionFact>` | Voluntary nutrition fact. |

### `Price`

A price.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `string` | The numeric value of the price. |
| `currency` | `string` | The currency in which the price is denoted. |

### `Product`

Product data.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | Attributes of the product uploaded to the Manufacturer Center. Manually edited attributes are tak... |
| `contentLanguage` | `string` | The content language of the product as a two-letter ISO 639-1 language code (for example, en). |
| `destinationStatuses` | `array<DestinationStatus>` | The status of the destinations. |
| `feedLabel` | `string` | Optional. The feed label for the product. |
| `issues` | `array<Issue>` | A server-generated list of issues associated with the product. |
| `name` | `string` | Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The tar... |
| `parent` | `string` | Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center... |
| `productId` | `string` | The ID of the product. For more information, see https://support.google.com/manufacturers/answer/... |
| `targetCountry` | `string` | The target country of the product as a CLDR territory code (for example, US). |

### `ProductCertification`

Product certification data.

| Property | Type | Description |
|----------|------|-------------|
| `brand` | `string` | Required. This is the product's brand name. The brand is used to help identify your product. |
| `certification` | `array<Certification>` | Required. A list of certifications to link to the described product. |
| `countryCode` | `array<string>` | Optional. A 2-letter country code (ISO 3166-1 Alpha 2). |
| `destinationStatuses` | `array<DestinationStatus>` | Output only. The statuses of the destinations. |
| `issues` | `array<Issue>` | Output only. A server-generated list of issues associated with the product. |
| `mpn` | `array<string>` | Optional. These are the Manufacturer Part Numbers (MPN). MPNs are used to uniquely identify a spe... |
| `name` | `string` | Required. The unique name identifier of a product certification Format: accounts/{account}/langua... |
| `productCode` | `array<string>` | Optional. Another name for GTIN. |
| `productType` | `array<string>` | Optional. These are your own product categorization system in your product data. |
| `title` | `string` | Required. This is to clearly identify the product you are certifying. |

### `ProductDetail`

A product detail of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.

| Property | Type | Description |
|----------|------|-------------|
| `attributeName` | `string` | The name of the attribute. |
| `attributeValue` | `string` | The value of the attribute. |
| `sectionName` | `string` | A short section name that can be reused between multiple product details. |

### `VoluntaryNutritionFact`

Voluntary Nutrition Facts.

| Property | Type | Description |
|----------|------|-------------|
| `dailyPercentage` | `number` | Daily percentage. |
| `name` | `string` | Name. |
| `value` | `FloatUnit` | Value. |

