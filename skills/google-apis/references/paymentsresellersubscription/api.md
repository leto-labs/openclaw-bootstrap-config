# Payments Reseller Subscription API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 52

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `paymentsresellersubscription.partners.subscriptions.create` | POST | `v1/{+parent}/subscriptions` | Used by partners to create a subscription for their customers. The created subscription is associ... |
| `paymentsresellersubscription.partners.subscriptions.provision` | POST | `v1/{+parent}/subscriptions:provision` | Used by partners to provision a subscription for their customers. This creates a subscription wit... |
| `paymentsresellersubscription.partners.subscriptions.get` | GET | `v1/{+name}` | Gets a subscription by id. It should be called directly by the partner using service accounts. |
| `paymentsresellersubscription.partners.subscriptions.entitle` | POST | `v1/{+name}:entitle` | Entitles a previously provisioned subscription to the current end user. The end user identity is ... |
| `paymentsresellersubscription.partners.subscriptions.extend` | POST | `v1/{+name}:extend` | [Opt-in only] Most partners should be on auto-extend by default. Extends a subscription service f... |
| `paymentsresellersubscription.partners.subscriptions.cancel` | POST | `v1/{+name}:cancel` | Cancels a subscription service either immediately or by the end of the current billing cycle for ... |
| `paymentsresellersubscription.partners.subscriptions.undoCancel` | POST | `v1/{+name}:undoCancel` | Currently, it is used by **Google One, Play Pass** partners. Revokes the pending cancellation of ... |
| `paymentsresellersubscription.partners.subscriptions.suspend` | POST | `v1/{+name}:suspend` | Suspends a subscription. Contract terms may dictate if a prorated refund will be issued upon susp... |
| `paymentsresellersubscription.partners.subscriptions.resume` | POST | `v1/{+name}:resume` | Resumes a suspended subscription. The new billing cycle will start at the time of the request. It... |
| `paymentsresellersubscription.partners.subscriptions.lineItems.patch` | PATCH | `v1/{+name}` | Updates a line item of a subscription. It should be authenticated with a service account. |
| `paymentsresellersubscription.partners.products.list` | GET | `v1/{+parent}/products` | Currently, it doesn't support **YouTube** products. Retrieves the products that can be resold by ... |
| `paymentsresellersubscription.partners.promotions.findEligible` | POST | `v1/{+parent}/promotions:findEligible` | Currently, it is only enabled for **YouTube**. Finds eligible promotions for the current user. Th... |
| `paymentsresellersubscription.partners.promotions.list` | GET | `v1/{+parent}/promotions` | Currently, it doesn't support **YouTube** promotions. Retrieves the promotions, such as free tria... |
| `paymentsresellersubscription.partners.userSessions.generate` | POST | `v1/{+parent}/userSessions:generate` | This API replaces user authorized OAuth consent based APIs (Create, Entitle). Issues a timed sess... |

### `paymentsresellersubscription.partners.subscriptions.create`

**POST** `v1/{+parent}/subscriptions`

Used by partners to create a subscription for their customers. The created subscription is associated with the end user inferred from the end user credentials. This API must be authorized by the end user using OAuth.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which is the identifier of the partner. It will have the format of "partners/{par... |
| `subscriptionId` | `string` | query | No | Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await paymentsresellersubscription.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.provision`

**POST** `v1/{+parent}/subscriptions:provision`

Used by partners to provision a subscription for their customers. This creates a subscription without associating it with the end user account. EntitleSubscription must be called separately using OAuth in order for the end user account to be associated with the subscription. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which is the identifier of the partner. It will have the format of "partners/{par... |
| `cycleOptions.initialCycleDuration.count` | `integer` | query | No | number of duration units to be included. |
| `cycleOptions.initialCycleDuration.unit` | `string` | query | No | The unit used for the duration |
| `subscriptionId` | `string` | query | No | Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await paymentsresellersubscription.subscriptions.provision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.get`

**GET** `v1/{+name}`

Gets a subscription by id. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource to retrieve. It will have the format of "partners/{partner_id}/subscr... |

**Response**: `Subscription`

```typescript
const res = await paymentsresellersubscription.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.entitle`

**POST** `v1/{+name}:entitle`

Entitles a previously provisioned subscription to the current end user. The end user identity is inferred from the authorized credential of the request. This API must be authorized by the end user using OAuth.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource that is entitled to the current end user. It will have the format of ... |

**Request body**: `EntitleSubscriptionRequest`

**Response**: `EntitleSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.entitle({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.extend`

**POST** `v1/{+name}:extend`

[Opt-in only] Most partners should be on auto-extend by default. Extends a subscription service for their customers on an ongoing basis for the subscription to remain active and renewable. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource to be extended. It will have the format of "partners/{partner_id}/sub... |

**Request body**: `ExtendSubscriptionRequest`

**Response**: `ExtendSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.extend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.cancel`

**POST** `v1/{+name}:cancel`

Cancels a subscription service either immediately or by the end of the current billing cycle for their customers. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource to be cancelled. It will have the format of "partners/{partner_id}/su... |

**Request body**: `CancelSubscriptionRequest`

**Response**: `CancelSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.undoCancel`

**POST** `v1/{+name}:undoCancel`

Currently, it is used by **Google One, Play Pass** partners. Revokes the pending cancellation of a subscription, which is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is already cancelled, the request will fail. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource whose pending cancellation needs to be undone. It will have the forma... |

**Request body**: `UndoCancelSubscriptionRequest`

**Response**: `UndoCancelSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.undoCancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.suspend`

**POST** `v1/{+name}:suspend`

Suspends a subscription. Contract terms may dictate if a prorated refund will be issued upon suspension. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource to be suspended. It will have the format of "partners/{partner_id}/su... |

**Request body**: `SuspendSubscriptionRequest`

**Response**: `SuspendSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.suspend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.resume`

**POST** `v1/{+name}:resume`

Resumes a suspended subscription. The new billing cycle will start at the time of the request. It should be called directly by the partner using service accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription resource to be resumed. It will have the format of "partners/{partner_id}/subs... |

**Request body**: `ResumeSubscriptionRequest`

**Response**: `ResumeSubscriptionResponse`

```typescript
const res = await paymentsresellersubscription.subscriptions.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.subscriptions.lineItems.patch`

**PATCH** `v1/{+name}`

Updates a line item of a subscription. It should be authenticated with a service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the line item. Format: partners/{partner}/subscriptions/{subscription}/lineItems/{lineItem} |
| `updateMask` | `string` | query | No | Required. The list of fields to update. Only a limited set of fields can be updated. The allowed fields are the follo... |

**Request body**: `SubscriptionLineItem`

**Response**: `SubscriptionLineItem`

```typescript
const res = await paymentsresellersubscription.lineItems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.products.list`

**GET** `v1/{+parent}/products`

Currently, it doesn't support **YouTube** products. Retrieves the products that can be resold by the partner. It should be authenticated with a service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, the partner that can resell. Format: partners/{partner} |
| `filter` | `string` | query | No | Optional. Specifies the filters for the product results. The syntax is defined in https://google.aip.dev/160 with the... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of products to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListProducts` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListProductsResponse`

```typescript
const res = await paymentsresellersubscription.products.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.promotions.findEligible`

**POST** `v1/{+parent}/promotions:findEligible`

Currently, it is only enabled for **YouTube**. Finds eligible promotions for the current user. The API requires user authorization via OAuth. The bare minimum oauth scope `openid` is sufficient, which will skip the consent screen.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, the partner that can resell. Format: partners/{partner} |

**Request body**: `FindEligiblePromotionsRequest`

**Response**: `FindEligiblePromotionsResponse`

```typescript
const res = await paymentsresellersubscription.promotions.findEligible({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.promotions.list`

**GET** `v1/{+parent}/promotions`

Currently, it doesn't support **YouTube** promotions. Retrieves the promotions, such as free trial, that can be used by the partner. It should be authenticated with a service account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, the partner that can resell. Format: partners/{partner} |
| `filter` | `string` | query | No | Optional. Specifies the filters for the promotion results. The syntax is defined in https://google.aip.dev/160 with t... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of promotions to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListPromotions` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListPromotionsResponse`

```typescript
const res = await paymentsresellersubscription.promotions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

### `paymentsresellersubscription.partners.userSessions.generate`

**POST** `v1/{+parent}/userSessions:generate`

This API replaces user authorized OAuth consent based APIs (Create, Entitle). Issues a timed session token for the given user intent. You can use the session token to redirect the user to Google to finish the signup flow. You can re-generate new session token repeatedly for the same request if necessary, regardless of the previous tokens being expired or not. By default, the session token is valid for 1 hour.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, the partner that can resell. Format: partners/{partner} |

**Request body**: `GenerateUserSessionRequest`

**Response**: `GenerateUserSessionResponse`

```typescript
const res = await paymentsresellersubscription.userSessions.generate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/sdm.service`

---

## Schemas

### `Amount`

Describes the amount unit including the currency code.

| Property | Type | Description |
|----------|------|-------------|
| `amountMicros` | `string` | Required. Amount in micros (1_000_000 micros = 1 currency unit) |
| `currencyCode` | `string` | Required. Currency codes in accordance with [ISO-4217 Currency Codes] (https://en.wikipedia.org/w... |

### `CancelSubscriptionRequest`

Request to cancel a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `cancelImmediately` | `boolean` | Optional. If true, Google will cancel the subscription immediately, and may or may not (based on ... |
| `cancellationReason` | `string` | Specifies the reason for the cancellation. |

### `CancelSubscriptionResponse`

Response that contains the cancelled subscription resource.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The cancelled subscription resource. |

### `CreateSubscriptionIntent`

Intent message for creating a Subscription resource.

| Property | Type | Description |
|----------|------|-------------|
| `cycleOptions` | `CycleOptions` | Optional. The cycle options for the subscription. |
| `parent` | `string` | Required. The parent resource name, which is the identifier of the partner. |
| `subscription` | `Subscription` | Required. The Subscription to be created. |
| `subscriptionId` | `string` | Required. Identifies the subscription resource on the Partner side. The value is restricted to 63... |

### `CycleOptions`

The cycle options when starting and resuming a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `initialCycleDuration` | `Duration` | Optional. The duration of the initial cycle. Only `DAY` is supported. If set, Google will start t... |

### `Duration`

Describes the length of a period of a time.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | number of duration units to be included. |
| `unit` | `string` | The unit used for the duration |

### `EntitleSubscriptionIntent`

Intent for entitling the previously provisioned subscription to an end user.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the subscription resource that is entitled to the current end user. It is i... |

### `EntitleSubscriptionRequest`

Partner request for entitling the previously provisioned subscription to an end user. The end user identity is inferred from the request OAuth context.

| Property | Type | Description |
|----------|------|-------------|
| `lineItemEntitlementDetails` | `array<EntitleSubscriptionRequestLineItemEntitlementDetails>` | Optional. The line items to be entitled. If unspecified, all line items will be entitled. |

### `EntitleSubscriptionRequestLineItemEntitlementDetails`

The details of the line item to be entitled.

| Property | Type | Description |
|----------|------|-------------|
| `lineItemIndex` | `integer` | Required. The index of the line item to be entitled. |
| `products` | `array<string>` | Optional. Only applicable if the line item corresponds to a hard bundle. Product resource names t... |

### `EntitleSubscriptionResponse`

Response that contains the entitled subscription resource.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The subscription that has user linked to it. |

### `ExtendSubscriptionRequest`

Request message for extending a Subscription resource. A new recurrence will be made based on the subscription schedule defined by the original product.

| Property | Type | Description |
|----------|------|-------------|
| `extension` | `Extension` | Required. Specifies details of the extension. Currently, the duration of the extension must be ex... |
| `requestId` | `string` | Required. Restricted to 36 ASCII characters. A random UUID is recommended. The idempotency key fo... |

### `ExtendSubscriptionResponse`

Response that contains the timestamps after the extension.

| Property | Type | Description |
|----------|------|-------------|
| `cycleEndTime` | `string` | The time at which the subscription is expected to be extended, in ISO 8061 format. UTC timezone. ... |
| `freeTrialEndTime` | `string` | End of the free trial period, in ISO 8061 format. UTC timezone. Example, "freeTrialEndTime":"2019... |
| `renewalTime` | `string` | Output only. The time at which the subscription is expected to be renewed by Google - a new charg... |

### `Extension`

Describes the details of an extension request.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `Duration` | Required. Specifies the period of access the subscription should grant. |
| `partnerUserToken` | `string` | Required. Identifier of the end-user in partner’s system. |

### `FindEligiblePromotionsRequest`

Request to find eligible promotions for the current user.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. Specifies the filters for the promotion results. The syntax is defined in https://googl... |
| `pageSize` | `integer` | Optional. The maximum number of promotions to return. The service may return fewer than this valu... |
| `pageToken` | `string` | Optional. A page token, received from a previous `FindEligiblePromotions` call. Provide this to r... |

### `FindEligiblePromotionsResponse`

Response containing the found promotions for the current user.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, the... |
| `promotions` | `array<Promotion>` | The promotions for the current user. |

### `FiniteBillingCycleDetails`

Details for a subscription line item with finite billing cycles.

| Property | Type | Description |
|----------|------|-------------|
| `billingCycleCountLimit` | `string` | The number of a subscription line item billing cycles after which billing will stop automatically. |

### `GenerateUserSessionRequest`

Request to generate a user session.

| Property | Type | Description |
|----------|------|-------------|
| `intentPayload` | `IntentPayload` | The user intent to generate the user session. |

### `GenerateUserSessionResponse`

Response that contains the details for generated user session.

| Property | Type | Description |
|----------|------|-------------|
| `userSession` | `UserSession` | The generated user session. The token size is proportional to the size of the intent payload. |

### `GoogleHomePayload`

Payload specific for Google Home products.

| Property | Type | Description |
|----------|------|-------------|
| `attachedToGoogleStructure` | `boolean` | Output only. This identifies whether the subscription is attached to a Google Home structure. |
| `googleStructureId` | `string` | Optional. Structure identifier on Google side. |
| `partnerStructureId` | `string` | Optional. This identifies the structure ID on partner side that the subscription should be applie... |

### `GoogleOnePayload`

Payload specific to Google One products.

| Property | Type | Description |
|----------|------|-------------|
| `campaigns` | `array<string>` | Campaign attributed to sales of this subscription. |
| `offering` | `string` | The type of offering the subscription was sold by the partner. e.g. VAS. |
| `salesChannel` | `string` | The type of sales channel through which the subscription was sold. |
| `storeId` | `string` | The identifier for the partner store where the subscription was sold. |

### `GoogleTypeLocalizedText`

Localized variant of a text in a particular language.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://w... |
| `text` | `string` | Localized string in the language corresponding to language_code below. |

### `IntentPayload`

The payload that describes the user intent.

| Property | Type | Description |
|----------|------|-------------|
| `createIntent` | `CreateSubscriptionIntent` | The request to create a subscription. |
| `entitleIntent` | `EntitleSubscriptionIntent` | The request to entitle a subscription. |
| `intentOptions` | `IntentPayloadIntentOptions` | Optional. The additional features for the intent. |

### `IntentPayloadIntentOptions`

The options for the intent.

| Property | Type | Description |
|----------|------|-------------|
| `enableOfferOverride` | `boolean` | Optional. If true, Google may use a different product and promotion id from the ones in the `crea... |

### `ListProductsResponse`

Response that contains the products.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, the... |
| `products` | `array<Product>` | The products for the specified partner. |

### `ListPromotionsResponse`

Response that contains the promotions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is empty, the... |
| `promotions` | `array<Promotion>` | The promotions for the specified partner. |

### `Location`

Describes a location of an end user.

| Property | Type | Description |
|----------|------|-------------|
| `postalCode` | `string` | The postal code this location refers to. Ex. "94043" |
| `regionCode` | `string` | 2-letter ISO region code for current content region. Ex. “US” Please refers to: https://en.wikipe... |

### `Product`

A Product resource that defines a subscription service that can be resold.

| Property | Type | Description |
|----------|------|-------------|
| `bundleDetails` | `ProductBundleDetails` | Output only. Specifies the details for a bundle product. |
| `finiteBillingCycleDetails` | `FiniteBillingCycleDetails` | Optional. Details for a subscription line item with finite billing cycles. If unset, the line ite... |
| `name` | `string` | Identifier. Response only. Resource name of the product. It will have the format of "partners/{pa... |
| `priceConfigs` | `array<ProductPriceConfig>` | Output only. Price configs for the product in the available regions. |
| `productType` | `string` | Output only. Specifies the type of the product. |
| `regionCodes` | `array<string>` | Output only. 2-letter ISO region code where the product is available in. Ex. "US" Please refer to... |
| `subscriptionBillingCycleDuration` | `Duration` | Output only. Specifies the length of the billing cycle of the subscription. |
| `titles` | `array<GoogleTypeLocalizedText>` | Output only. Localized human readable name of the product. |

### `ProductBundleDetails`

Details for a bundle product.

| Property | Type | Description |
|----------|------|-------------|
| `bundleElements` | `array<ProductBundleDetailsBundleElement>` | The individual products that are included in the bundle. |
| `entitlementMode` | `string` | The entitlement mode of the bundle product. |

### `ProductBundleDetailsBundleElement`

The individual product that is included in the bundle.

| Property | Type | Description |
|----------|------|-------------|
| `product` | `string` | Required. Output only. Product resource name that identifies the bundle element. The format is 'p... |

### `ProductPayload`

Specifies product specific payload.

| Property | Type | Description |
|----------|------|-------------|
| `googleHomePayload` | `GoogleHomePayload` | Payload specific to Google Home products. |
| `googleOnePayload` | `GoogleOnePayload` | Product-specific payloads. Payload specific to Google One products. |
| `youtubePayload` | `YoutubePayload` | Payload specific to Youtube products. |

### `ProductPriceConfig`

Configs the prices in an available region.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Amount` | Output only. The price in the region. |
| `regionCode` | `string` | Output only. 2-letter ISO region code where the product is available in. Ex. "US". |

### `Promotion`

A Promotion resource that defines a promotion for a subscription that can be resold.

| Property | Type | Description |
|----------|------|-------------|
| `applicableProducts` | `array<string>` | Output only. The product ids this promotion can be applied to. |
| `endTime` | `string` | Optional. Specifies the end time (exclusive) of the period that the promotion is available in. If... |
| `freeTrialDuration` | `Duration` | Optional. Specifies the duration of the free trial of the subscription when promotion_type is PRO... |
| `introductoryPricingDetails` | `PromotionIntroductoryPricingDetails` | Optional. Specifies the introductory pricing details when the promotion_type is PROMOTION_TYPE_IN... |
| `name` | `string` | Identifier. Response only. Resource name of the subscription promotion. It will have the format o... |
| `promotionType` | `string` | Output only. Specifies the type of the promotion. |
| `regionCodes` | `array<string>` | Output only. 2-letter ISO region code where the promotion is available in. Ex. "US" Please refer ... |
| `startTime` | `string` | Optional. Specifies the start time (inclusive) of the period that the promotion is available in. |
| `titles` | `array<GoogleTypeLocalizedText>` | Output only. Localized human readable name of the promotion. |

### `PromotionIntroductoryPricingDetails`

The details of a introductory pricing promotion.

| Property | Type | Description |
|----------|------|-------------|
| `introductoryPricingSpecs` | `array<PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>` | Output only. Specifies the introductory pricing periods. |

### `PromotionIntroductoryPricingDetailsIntroductoryPricingSpec`

The duration of an introductory pricing promotion.

| Property | Type | Description |
|----------|------|-------------|
| `discountAmount` | `Amount` | Output only. The discount amount. The value is positive. |
| `discountRatioMicros` | `string` | Output only. The discount percentage in micros. For example, 50,000 represents 5%. |
| `recurrenceCount` | `integer` | Output only. The duration of an introductory offer in billing cycles. |
| `regionCode` | `string` | Output only. 2-letter ISO region code where the product is available in. Ex. "US". |

### `ResumeSubscriptionRequest`

Request to resume a suspended subscription.

| Property | Type | Description |
|----------|------|-------------|
| `cycleOptions` | `CycleOptions` | Optional. The cycle options for the subscription. |
| `resumeMode` | `string` | Required. The mode to resume the subscription. |

### `ResumeSubscriptionResponse`

Response that contains the resumed subscription.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The resumed subscription resource. |

### `ServicePeriod`

A description of what time period or moment in time the product or service is being delivered over.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. The end time of the service period. Time is exclusive. |
| `startTime` | `string` | Required. The start time of the service period. Time is inclusive. |

### `Subscription`

A subscription serves as a central billing entity between an external partner and Google. The underlying Google services rely on the subscription state to grant or revoke the user's service entitlement. It's important to note that the subscription state may not always perfectly align with the user's service entitlement. For example, some Google services may continue providing access to the user until the current billing cycle ends, even if the subscription has been immediately canceled. However, other services may not do the same. To fully understand the specific details, please consult the relevant contract or product policy.

| Property | Type | Description |
|----------|------|-------------|
| `cancellationDetails` | `SubscriptionCancellationDetails` | Output only. Describes the details of a cancelled subscription. Only applicable to subscription o... |
| `createTime` | `string` | Output only. System generated timestamp when the subscription is created. UTC timezone. |
| `cycleEndTime` | `string` | Output only. The time at which the subscription is expected to be extended, in ISO 8061 format. U... |
| `endUserEntitled` | `boolean` | Output only. Indicates if the subscription is entitled to the end user. |
| `freeTrialEndTime` | `string` | Output only. End of the free trial period, in ISO 8061 format. For example, "2019-08-31T17:28:54.... |
| `lineItems` | `array<SubscriptionLineItem>` | Required. The line items of the subscription. |
| `migrationDetails` | `SubscriptionMigrationDetails` | Output only. Describes the details of the migrated subscription. Only populated if this subscript... |
| `name` | `string` | Identifier. Resource name of the subscription. It will have the format of "partners/{partner_id}/... |
| `partnerUserToken` | `string` | Required. Identifier of the end-user in partner’s system. The value is restricted to 63 ASCII cha... |
| `processingState` | `string` | Output only. Describes the processing state of the subscription. See more details at [the lifecyc... |
| `products` | `array<string>` | Optional. Deprecated: consider using `line_items` as the input. Required. Resource name that iden... |
| `promotionSpecs` | `array<SubscriptionPromotionSpec>` | Optional. Subscription-level promotions. Only free trial is supported on this level. It determine... |
| `promotions` | `array<string>` | Optional. Deprecated: consider using the top-level `promotion_specs` as the input. Optional. Reso... |
| `purchaseTime` | `string` | Optional. The timestamp when the user transaction was made with the Partner. Specify for the case... |
| `redirectUri` | `string` | Output only. The place where partners should redirect the end-user to after creation. This field ... |
| `renewalTime` | `string` | Output only. The time at which the subscription is expected to be renewed by Google - a new charg... |
| `serviceLocation` | `Location` | Required. The location that the service is provided as indicated by the partner. |
| `state` | `string` | Output only. Describes the state of the subscription. See more details at [the lifecycle of a sub... |
| `updateTime` | `string` | Output only. System generated timestamp when the subscription is most recently updated. UTC timez... |
| `upgradeDowngradeDetails` | `SubscriptionUpgradeDowngradeDetails` | Optional. Details about the previous subscription that this new subscription upgrades/downgrades ... |

### `SubscriptionCancellationDetails`

Describes the details of a cancelled or cancelling subscription.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Output only. The reason of the cancellation. |

### `SubscriptionLineItem`

Individual line item definition of a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `amount` | `Amount` | Output only. The price of the product/service in this line item. The amount could be the wholesal... |
| `bundleDetails` | `SubscriptionLineItemBundleDetails` | Output only. The bundle details for the line item. Only populated if the line item corresponds to... |
| `description` | `string` | Output only. Description of this line item. |
| `finiteBillingCycleDetails` | `FiniteBillingCycleDetails` | Optional. Details for a subscription line item with finite billing cycles. If unset, the line ite... |
| `lineItemFreeTrialEndTime` | `string` | Output only. The free trial end time will be populated after the line item is successfully proces... |
| `lineItemIndex` | `integer` | Output only. A unique index of the subscription line item. |
| `lineItemPromotionSpecs` | `array<SubscriptionPromotionSpec>` | Optional. The promotions applied on the line item. It can be: - an introductory pricing promotion... |
| `name` | `string` | Identifier. Resource name of the line item. Format: partners/{partner}/subscriptions/{subscriptio... |
| `oneTimeRecurrenceDetails` | `SubscriptionLineItemOneTimeRecurrenceDetails` | Output only. Details only set for a ONE_TIME recurrence line item. |
| `product` | `string` | Required. Product resource name that identifies the product associated with this line item. The f... |
| `productPayload` | `ProductPayload` | Optional. Product specific payload for this line item. |
| `recurrenceType` | `string` | Output only. The recurrence type of the line item. |
| `state` | `string` | Output only. The state of the line item. |

### `SubscriptionLineItemBundleDetails`

The bundle details for a line item corresponding to a hard bundle.

| Property | Type | Description |
|----------|------|-------------|
| `bundleElementDetails` | `array<SubscriptionLineItemBundleDetailsBundleElementDetails>` | Output only. The details for each element in the hard bundle. |

### `SubscriptionLineItemBundleDetailsBundleElementDetails`

The details for an element in the hard bundle.

| Property | Type | Description |
|----------|------|-------------|
| `product` | `string` | Output only. Product resource name that identifies the bundle element. The format is 'partners/{p... |
| `userAccountLinkedTime` | `string` | Output only. The time when this product is linked to an end user. |

### `SubscriptionLineItemOneTimeRecurrenceDetails`

Details for a ONE_TIME recurrence line item.

| Property | Type | Description |
|----------|------|-------------|
| `servicePeriod` | `ServicePeriod` | Output only. The service period of the ONE_TIME line item. |

### `SubscriptionMigrationDetails`

Describes the details of the migrated subscription.

| Property | Type | Description |
|----------|------|-------------|
| `migratedSubscriptionId` | `string` | Output only. The migrated subscription id in the legacy system. |

### `SubscriptionPromotionSpec`

Describes the spec for one promotion.

| Property | Type | Description |
|----------|------|-------------|
| `freeTrialDuration` | `Duration` | Output only. The duration of the free trial if the promotion is of type FREE_TRIAL. |
| `introductoryPricingDetails` | `PromotionIntroductoryPricingDetails` | Output only. The details of the introductory pricing spec if the promotion is of type INTRODUCTOR... |
| `promotion` | `string` | Required. Promotion resource name that identifies a promotion. The format is 'partners/{partner_i... |
| `type` | `string` | Output only. The type of the promotion for the spec. |

### `SubscriptionUpgradeDowngradeDetails`

Details about the previous subscription that this new subscription upgrades/downgrades from.

| Property | Type | Description |
|----------|------|-------------|
| `billingCycleSpec` | `string` | Required. Specifies the billing cycle spec for the new upgraded/downgraded subscription. |
| `previousSubscriptionId` | `string` | Required. The previous subscription id to be replaced. The format can be one of the following: 1.... |

### `SuspendSubscriptionRequest`

Request to suspend a subscription.

### `SuspendSubscriptionResponse`

Response that contains the suspended subscription.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The suspended subscription resource. |

### `UndoCancelSubscriptionRequest`

Request to revoke a cancellation request.

### `UndoCancelSubscriptionResponse`

Response that contains the updated subscription resource.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The updated subscription resource. |

### `UserSession`

A user session contains a short-lived token that includes information required to interact with Google Payments Reseller Platform using the following web endpoints. - A user session token should be generated dynamically for an authenticated user. You should refrain from sharing a token directly with a user in an unauthenticated context, such as SMS, or email. - You can re-generate new session tokens repeatedly for same `generate` request if necessary, regardless of the previous tokens being expired or not. You don't need to worry about multiple sessions resulting in duplicate fulfillments as guaranteed by the same subscription id. Please refer to the [Google Managed Signup](/payments/reseller/subscription/reference/index/User.Signup.Integration/Google.Managed.Signup) documentation for additional integration details.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Output only. The time at which the user session expires. |
| `token` | `string` | Output only. The encrypted token of the user session, including the information of the user's int... |

### `YoutubePayload`

Payload specific to Youtube products.

| Property | Type | Description |
|----------|------|-------------|
| `accessEndTime` | `string` | Output only. The access expiration time for this line item. |
| `partnerEligibilityIds` | `array<string>` | The list of eligibility_ids which are applicable for the line item. |
| `partnerPlanType` | `string` | Optional. Specifies the plan type offered to the end user by the partner. |

