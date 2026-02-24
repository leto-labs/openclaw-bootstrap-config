# Google Workspace Reseller API - API Reference

**Version**: `v1` | **Methods**: 17 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `reseller.customers.insert` | POST | `apps/reseller/v1/customers` | Orders a new customer's account. Before ordering a new customer account, establish whether the cu... |
| `reseller.customers.patch` | PATCH | `apps/reseller/v1/customers/{customerId}` | Updates a customer account's settings. This method supports patch semantics. You cannot update `c... |
| `reseller.customers.get` | GET | `apps/reseller/v1/customers/{customerId}` | Gets a customer account. Use this operation to see a customer account already in your reseller ma... |
| `reseller.customers.update` | PUT | `apps/reseller/v1/customers/{customerId}` | Updates a customer account's settings. You cannot update `customerType` via the Reseller API, but... |
| `reseller.resellernotify.unregister` | POST | `apps/reseller/v1/resellernotify/unregister` | Unregisters a Reseller for receiving notifications. |
| `reseller.resellernotify.getwatchdetails` | GET | `apps/reseller/v1/resellernotify/getwatchdetails` | Returns all the details of the watch corresponding to the reseller. |
| `reseller.resellernotify.register` | POST | `apps/reseller/v1/resellernotify/register` | Registers a Reseller for receiving notifications. |
| `reseller.subscriptions.startPaidService` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/startPaidService` | Immediately move a 30-day free trial subscription to a paid service subscription. This method is ... |
| `reseller.subscriptions.changeSeats` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeSeats` | Updates a subscription's user license settings. For more information about updating an annual com... |
| `reseller.subscriptions.list` | GET | `apps/reseller/v1/subscriptions` | Lists of subscriptions managed by the reseller. The list can be all subscriptions, all of a custo... |
| `reseller.subscriptions.changePlan` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changePlan` | Updates a subscription plan. Use this method to update a plan for a 30-day trial or a flexible pl... |
| `reseller.subscriptions.insert` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions` | Creates or transfer a subscription. Create a subscription for a customer's account that you order... |
| `reseller.subscriptions.changeRenewalSettings` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings` | Updates a user license's renewal settings. This is applicable for accounts with annual commitment... |
| `reseller.subscriptions.delete` | DELETE | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}` | Cancels, suspends, or transfers a subscription to direct. |
| `reseller.subscriptions.get` | GET | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}` | Gets a specific subscription. The `subscriptionId` can be found using the [Retrieve all reseller ... |
| `reseller.subscriptions.activate` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/activate` | Activates a subscription previously suspended by the reseller. If you did not suspend the custome... |
| `reseller.subscriptions.suspend` | POST | `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/suspend` | Suspends an active subscription. You can use this method to suspend a paid subscription that is c... |

### `reseller.customers.insert`

**POST** `apps/reseller/v1/customers`

Orders a new customer's account. Before ordering a new customer account, establish whether the customer account already exists using the [`customers.get`](https://developers.google.com/workspace/admin/reseller/v1/reference/customers/get) If the customer account exists as a direct Google account or as a resold customer account from another reseller, use the `customerAuthToken\` as described in [order a resold account for an existing customer](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_customers#create_existing_customer). For more information about ordering a new customer account, see [order a new customer account](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_customers#create_customer). After creating a new customer account, you must provision a user as an administrator. The customer's administrator is required to sign in to the Admin console and sign the G Suite via Reseller agreement to activate the account. Resellers are prohibited from signing the G Suite via Reseller agreement on the customer's behalf. For more information, see [order a new customer account](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_customers#tos).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerAuthToken` | `string` | query | No | The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's su... |

**Request body**: `Customer`

**Response**: `Customer`

```typescript
const res = await reseller.customers.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.customers.patch`

**PATCH** `apps/reseller/v1/customers/{customerId}`

Updates a customer account's settings. This method supports patch semantics. You cannot update `customerType` via the Reseller API, but a `"team"` customer can verify their domain and become `customerType = "domain"`. For more information, see [Verify your domain to unlock Essentials features](https://support.google.com/a/answer/9122284).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |

**Request body**: `Customer`

**Response**: `Customer`

```typescript
const res = await reseller.customers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.customers.get`

**GET** `apps/reseller/v1/customers/{customerId}`

Gets a customer account. Use this operation to see a customer account already in your reseller management, or to see the minimal account information for an existing customer that you do not manage. For more information about the API response for existing customers, see [retrieving a customer account](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_customers#get_customer).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |

**Response**: `Customer`

```typescript
const res = await reseller.customers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`
- `https://www.googleapis.com/auth/apps.order.readonly`

---

### `reseller.customers.update`

**PUT** `apps/reseller/v1/customers/{customerId}`

Updates a customer account's settings. You cannot update `customerType` via the Reseller API, but a `"team"` customer can verify their domain and become `customerType = "domain"`. For more information, see [update a customer's settings](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_customers#update_customer).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |

**Request body**: `Customer`

**Response**: `Customer`

```typescript
const res = await reseller.customers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.resellernotify.unregister`

**POST** `apps/reseller/v1/resellernotify/unregister`

Unregisters a Reseller for receiving notifications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `serviceAccountEmailAddress` | `string` | query | No | The service account which owns the Cloud-PubSub topic. |

**Response**: `ResellernotifyResource`

```typescript
const res = await reseller.resellernotify.unregister({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.resellernotify.getwatchdetails`

**GET** `apps/reseller/v1/resellernotify/getwatchdetails`

Returns all the details of the watch corresponding to the reseller.

**Response**: `ResellernotifyGetwatchdetailsResponse`

```typescript
const res = await reseller.resellernotify.getwatchdetails({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`
- `https://www.googleapis.com/auth/apps.order.readonly`

---

### `reseller.resellernotify.register`

**POST** `apps/reseller/v1/resellernotify/register`

Registers a Reseller for receiving notifications.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `serviceAccountEmailAddress` | `string` | query | No | The service account which will own the created Cloud-PubSub topic. |

**Response**: `ResellernotifyResource`

```typescript
const res = await reseller.resellernotify.register({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.startPaidService`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/startPaidService`

Immediately move a 30-day free trial subscription to a paid service subscription. This method is only applicable if a payment plan has already been set up for the 30-day trial subscription. For more information, see [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#paid_service).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.startPaidService({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.changeSeats`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeSeats`

Updates a subscription's user license settings. For more information about updating an annual commitment plan or a flexible plan subscription’s licenses, see [Manage Subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#update_subscription_seat).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Request body**: `Seats`

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.changeSeats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.list`

**GET** `apps/reseller/v1/subscriptions`

Lists of subscriptions managed by the reseller. The list can be all subscriptions, all of a customer's subscriptions, or all of a customer's transferable subscriptions. Optionally, this method can filter the response by a `customerNamePrefix`. For more information, see [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerAuthToken` | `string` | query | No | The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's su... |
| `customerId` | `string` | query | No | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `customerNamePrefix` | `string` | query | No | When retrieving all of your subscriptions and filtering for specific customers, you can enter a prefix for a customer... |
| `maxResults` | `integer` | query | No | When retrieving a large list, the `maxResults` is the maximum number of results per page. The `nextPageToken` value t... |
| `pageToken` | `string` | query | No | Token to specify next page in the list |

**Response**: `Subscriptions`

```typescript
const res = await reseller.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`
- `https://www.googleapis.com/auth/apps.order.readonly`

---

### `reseller.subscriptions.changePlan`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changePlan`

Updates a subscription plan. Use this method to update a plan for a 30-day trial or a flexible plan subscription to an annual commitment plan with monthly or yearly payments. How a plan is updated differs depending on the plan and the products. For more information, see the description in [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#update_subscription_plan).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Request body**: `ChangePlanRequest`

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.changePlan({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.insert`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions`

Creates or transfer a subscription. Create a subscription for a customer's account that you ordered using the [Order a new customer account](https://developers.google.com/workspace/admin/reseller/v1/reference/customers/insert.html) method. For more information about creating a subscription for different payment plans, see [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#create_subscription).\ If you did not order the customer's account using the customer insert method, use the customer's `customerAuthToken` when creating a subscription for that customer. If transferring a G Suite subscription with an associated Google Drive or Google Vault subscription, use the [batch operation](https://developers.google.com/workspace/admin/reseller/v1/how-tos/batch.html) to transfer all of these subscriptions. For more information, see how to [transfer subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#transfer_a_subscription).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `action` | `string` | query | No | The intented insert action. Advised to set this when the customer already has a subscription for a different SKU in t... |
| `customerAuthToken` | `string` | query | No | The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's su... |
| `sourceSkuId` | `string` | query | No | The sku_id of the existing subscription to be upgraded or downgraded. This is required when action is SWITCH. |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.changeRenewalSettings`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings`

Updates a user license's renewal settings. This is applicable for accounts with annual commitment plans only. For more information, see the description in [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#update_renewal).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Request body**: `RenewalSettings`

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.changeRenewalSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.delete`

**DELETE** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}`

Cancels, suspends, or transfers a subscription to direct.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |
| `deletionType` | `string` | query | Yes | The `deletionType` query string enables the cancellation, downgrade, or suspension of a subscription. |

```typescript
const res = await reseller.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.get`

**GET** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}`

Gets a specific subscription. The `subscriptionId` can be found using the [Retrieve all reseller subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#get_all_subscriptions) method. For more information about retrieving a specific subscription, see the information descrived in [manage subscriptions](https://developers.google.com/workspace/admin/reseller/v1/how-tos/manage_subscriptions#get_subscription).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`
- `https://www.googleapis.com/auth/apps.order.readonly`

---

### `reseller.subscriptions.activate`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/activate`

Activates a subscription previously suspended by the reseller. If you did not suspend the customer subscription and it is suspended for any other reason, such as for abuse or a pending ToS acceptance, this call will not reactivate the customer subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

### `reseller.subscriptions.suspend`

**POST** `apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/suspend`

Suspends an active subscription. You can use this method to suspend a paid subscription that is currently in the `ACTIVE` state. * For `FLEXIBLE` subscriptions, billing is paused. * For `ANNUAL_MONTHLY_PAY` or `ANNUAL_YEARLY_PAY` subscriptions: * Suspending the subscription does not change the renewal date that was originally committed to. * A suspended subscription does not renew. If you activate the subscription after the original renewal date, a new annual subscription will be created, starting on the day of activation. We strongly encourage you to suspend subscriptions only for short periods of time as suspensions over 60 days may result in the subscription being cancelled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a c... |
| `subscriptionId` | `string` | path | Yes | This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Sin... |

**Response**: `Subscription`

```typescript
const res = await reseller.subscriptions.suspend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.order`

---

## Schemas

### `Address`

JSON template for address of a customer.

| Property | Type | Description |
|----------|------|-------------|
| `addressLine1` | `string` | A customer's physical address. An address can be composed of one to three lines. The `addressline... |
| `addressLine2` | `string` | Line 2 of the address. |
| `addressLine3` | `string` | Line 3 of the address. |
| `contactName` | `string` | The customer contact's name. This is required. |
| `countryCode` | `string` | For `countryCode` information, see the ISO 3166 country code elements. Verify that country is app... |
| `kind` | `string` | Identifies the resource as a customer address. Value: `customers#address` |
| `locality` | `string` | An example of a `locality` value is the city of `San Francisco`. |
| `organizationName` | `string` | The company or company division name. This is required. |
| `postalCode` | `string` | A `postalCode` example is a postal zip code such as `94043`. This property is required when creat... |
| `region` | `string` | An example of a `region` value is `CA` for the state of California. |

### `ChangePlanRequest`

JSON template for the ChangePlan rpc request.

| Property | Type | Description |
|----------|------|-------------|
| `dealCode` | `string` | Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be... |
| `kind` | `string` | Identifies the resource as a subscription change plan request. Value: `subscriptions#changePlanRe... |
| `planName` | `string` | The `planName` property is required. This is the name of the subscription's payment plan. For mor... |
| `purchaseOrderId` | `string` | This is an optional property. This purchase order (PO) information is for resellers to use for th... |
| `seats` | `Seats` | This is a required property. The seats property is the number of user seat licenses. |

### `Customer`

When a Google customer's account is registered with a reseller, the customer's subscriptions for Google services are managed by this reseller. A customer is described by a primary domain name and a physical address.

| Property | Type | Description |
|----------|------|-------------|
| `alternateEmail` | `string` | Like the "Customer email" in the reseller tools, this email is the secondary contact used if some... |
| `customerDomain` | `string` | The customer's primary domain name string. `customerDomain` is required when creating a new custo... |
| `customerDomainVerified` | `boolean` | Whether the customer's primary domain has been verified. |
| `customerId` | `string` | This property will always be returned in a response as the unique identifier generated by Google.... |
| `customerType` | `string` | Identifies the type of the customer. Acceptable values include: * `domain`: Implies a domain-veri... |
| `kind` | `string` | Identifies the resource as a customer. Value: `reseller#customer` |
| `phoneNumber` | `string` | Customer contact phone number. Must start with "+" followed by the country code. The rest of the ... |
| `postalAddress` | `Address` | A customer's address information. Each field has a limit of 255 charcters. |
| `primaryAdmin` | `PrimaryAdmin` | The first admin details of the customer, present in case of TEAM customer. |
| `resourceUiUrl` | `string` | URL to customer's Admin console dashboard. The read-only URL is generated by the API service. Thi... |

### `PrimaryAdmin`

JSON template for primary admin in case of TEAM customers

| Property | Type | Description |
|----------|------|-------------|
| `primaryEmail` | `string` | The business email of the primary administrator of the customer. The email verification link is s... |

### `RenewalSettings`

JSON template for a subscription renewal settings.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies the resource as a subscription renewal setting. Value: `subscriptions#renewalSettings` |
| `renewalType` | `string` | Renewal settings for the annual commitment plan. For more detailed information, see renewal optio... |

### `ResellernotifyGetwatchdetailsResponse`

JSON template for resellernotify getwatchdetails response.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccountEmailAddresses` | `array<string>` | List of registered service accounts. |
| `topicName` | `string` | Topic name of the PubSub |

### `ResellernotifyResource`

JSON template for resellernotify response.

| Property | Type | Description |
|----------|------|-------------|
| `topicName` | `string` | Topic name of the PubSub |

### `Seats`

JSON template for subscription seats.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies the resource as a subscription seat setting. Value: `subscriptions#seats` |
| `licensedNumberOfSeats` | `integer` | Read-only field containing the current number of users that are assigned a license for the produc... |
| `maximumNumberOfSeats` | `integer` | This is a required property and is exclusive to subscriptions with `FLEXIBLE` or `TRIAL` plans. T... |
| `numberOfSeats` | `integer` | This is a required property and is exclusive to subscriptions with `ANNUAL_MONTHLY_PAY` and `ANNU... |

### `Subscription`

JSON template for a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `billingMethod` | `string` | Read-only field that returns the current billing method for a subscription. |
| `creationTime` | `string` | The `creationTime` property is the date when subscription was created. It is in milliseconds usin... |
| `customerDomain` | `string` | Primary domain name of the customer |
| `customerId` | `string` | This property will always be returned in a response as the unique identifier generated by Google.... |
| `dealCode` | `string` | Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be... |
| `kind` | `string` | Identifies the resource as a Subscription. Value: `reseller#subscription` |
| `plan` | `object` | The `plan` property is required. In this version of the API, the G Suite plans are the flexible p... |
| `purchaseOrderId` | `string` | This is an optional property. This purchase order (PO) information is for resellers to use for th... |
| `renewalSettings` | `RenewalSettings` | Renewal settings for the annual commitment plan. For more detailed information, see renewal optio... |
| `resourceUiUrl` | `string` | URL to customer's Subscriptions page in the Admin console. The read-only URL is generated by the ... |
| `seats` | `Seats` | This is a required property. The number and limit of user seat licenses in the plan. |
| `skuId` | `string` | A required property. The `skuId` is a unique system identifier for a product's SKU assigned to a ... |
| `skuName` | `string` | Read-only external display name for a product's SKU assigned to a customer in the subscription. S... |
| `status` | `string` | This is an optional property. |
| `subscriptionId` | `string` | The `subscriptionId` is the subscription identifier and is unique for each customer. This is a re... |
| `suspensionReasons` | `array<string>` | Read-only field containing an enumerable of all the current suspension reasons for a subscription... |
| `transferInfo` | `object` | Read-only transfer related information for the subscription. For more information, see retrieve t... |
| `trialSettings` | `object` | The G Suite annual commitment and flexible payment plans can be in a 30-day free trial. For more ... |

### `Subscriptions`

A subscription manages the relationship of a Google customer's payment plan with a product's SKU, user licenses, 30-day free trial status, and renewal options. A primary role of a reseller is to manage the Google customer's subscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies the resource as a collection of subscriptions. Value: reseller#subscriptions |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |
| `subscriptions` | `array<Subscription>` | The subscriptions in this page of results. |

