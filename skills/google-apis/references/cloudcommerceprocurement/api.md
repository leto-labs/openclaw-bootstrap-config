# Cloud Commerce Partner Procurement API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 15

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudcommerceprocurement.providers.entitlements.get` | GET | `v1/{+name}` | Gets a requested Entitlement resource. |
| `cloudcommerceprocurement.providers.entitlements.rejectPlanChange` | POST | `v1/{+name}:rejectPlanChange` | Rejects an entitlement plan change that is in the EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANG... |
| `cloudcommerceprocurement.providers.entitlements.list` | GET | `v1/{+parent}/entitlements` | Lists Entitlements for which the provider has read access. |
| `cloudcommerceprocurement.providers.entitlements.reject` | POST | `v1/{+name}:reject` | Rejects an entitlement that is in the EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state. Th... |
| `cloudcommerceprocurement.providers.entitlements.suspend` | POST | `v1/{+name}:suspend` | Requests suspension of an active Entitlement. This is not yet supported. |
| `cloudcommerceprocurement.providers.entitlements.patch` | PATCH | `v1/{+name}` | Updates an existing Entitlement. |
| `cloudcommerceprocurement.providers.entitlements.approvePlanChange` | POST | `v1/{+name}:approvePlanChange` | Approves an entitlement plan change that is in the EntitlementState.ENTITLEMENT_PENDING_PLAN_CHAN... |
| `cloudcommerceprocurement.providers.entitlements.approve` | POST | `v1/{+name}:approve` | Approves an entitlement that is in the EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state. T... |
| `cloudcommerceprocurement.providers.accounts.approve` | POST | `v1/{+name}:approve` | Grants an approval on an Account. |
| `cloudcommerceprocurement.providers.accounts.list` | GET | `v1/{+parent}/accounts` | Lists Accounts that the provider has access to. |
| `cloudcommerceprocurement.providers.accounts.reject` | POST | `v1/{+name}:reject` | Rejects an approval on an Account. |
| `cloudcommerceprocurement.providers.accounts.get` | GET | `v1/{+name}` | Gets a requested Account resource. |
| `cloudcommerceprocurement.providers.accounts.reset` | POST | `v1/{+name}:reset` | Resets an Account and cancels all associated Entitlements. Partner can only reset accounts they o... |

### `cloudcommerceprocurement.providers.entitlements.get`

**GET** `v1/{+name}`

Gets a requested Entitlement resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entitlement to retrieve. |

**Response**: `Entitlement`

```typescript
const res = await cloudcommerceprocurement.entitlements.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.rejectPlanChange`

**POST** `v1/{+name}:rejectPlanChange`

Rejects an entitlement plan change that is in the EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state. This method is invoked by the provider to reject the plan change on the entitlement resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entitlement. |

**Request body**: `RejectEntitlementPlanChangeRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.entitlements.rejectPlanChange({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.list`

**GET** `v1/{+parent}/entitlements`

Lists Entitlements for which the provider has read access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | The filter that can be used to limit the list request. The filter is a query string that can match a selected set of ... |
| `pageSize` | `integer` | query | No | The maximum number of entries that are requested. The default page size is 200. |
| `pageToken` | `string` | query | No | The token for fetching the next page. |

**Response**: `ListEntitlementsResponse`

```typescript
const res = await cloudcommerceprocurement.entitlements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.reject`

**POST** `v1/{+name}:reject`

Rejects an entitlement that is in the EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state. This method is invoked by the provider to reject the creation of the entitlement resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entitlement. |

**Request body**: `RejectEntitlementRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.entitlements.reject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.suspend`

**POST** `v1/{+name}:suspend`

Requests suspension of an active Entitlement. This is not yet supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entitlement to suspend. |

**Request body**: `SuspendEntitlementRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.entitlements.suspend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.patch`

**PATCH** `v1/{+name}`

Updates an existing Entitlement.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entitlement to update. |
| `updateMask` | `string` | query | No | The update mask that applies to the resource. See the [FieldMask definition] (https://developers.google.com/protocol-... |

**Request body**: `Entitlement`

**Response**: `Entitlement`

```typescript
const res = await cloudcommerceprocurement.entitlements.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.approvePlanChange`

**POST** `v1/{+name}:approvePlanChange`

Approves an entitlement plan change that is in the EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state. This method is invoked by the provider to approve the plan change on the entitlement resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entitlement. |

**Request body**: `ApproveEntitlementPlanChangeRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.entitlements.approvePlanChange({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.entitlements.approve`

**POST** `v1/{+name}:approve`

Approves an entitlement that is in the EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state. This method is invoked by the provider to approve the creation of the entitlement resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the entitlement, with the format `providers/{providerId}/entitlements/{entitlementId}`. |

**Request body**: `ApproveEntitlementRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.entitlements.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.accounts.approve`

**POST** `v1/{+name}:approve`

Grants an approval on an Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the account, with the format `providers/{providerId}/accounts/{accountId}`. |

**Request body**: `ApproveAccountRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.accounts.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.accounts.list`

**GET** `v1/{+parent}/accounts`

Lists Accounts that the provider has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `pageSize` | `integer` | query | No | The maximum number of entries that are requested. The default page size is 25 and the maximum page size is 200. |
| `pageToken` | `string` | query | No | The token for fetching the next page. |

**Response**: `ListAccountsResponse`

```typescript
const res = await cloudcommerceprocurement.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.accounts.reject`

**POST** `v1/{+name}:reject`

Rejects an approval on an Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the account. |

**Request body**: `RejectAccountRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.accounts.reject({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.accounts.get`

**GET** `v1/{+name}`

Gets a requested Account resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the account to retrieve. |
| `view` | `string` | query | No | Optional. What information to include in the response. |

**Response**: `Account`

```typescript
const res = await cloudcommerceprocurement.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcommerceprocurement.providers.accounts.reset`

**POST** `v1/{+name}:reset`

Resets an Account and cancels all associated Entitlements. Partner can only reset accounts they own rather than customer accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the account. |

**Request body**: `ResetAccountRequest`

**Response**: `Empty`

```typescript
const res = await cloudcommerceprocurement.accounts.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Account`

Represents an account that was established by the customer on the service provider's system.

| Property | Type | Description |
|----------|------|-------------|
| `approvals` | `array<Approval>` | Output only. The approvals for this account. These approvals are used to track actions that are p... |
| `createTime` | `string` | Output only. The creation timestamp. |
| `inputProperties` | `object` | Output only. The custom properties that were collected from the user to create this account. |
| `name` | `string` | Output only. The resource name of the account. Account names have the form `accounts/{account_id}`. |
| `provider` | `string` | Output only. The identifier of the service provider that this account was created against. Each s... |
| `resellerParentBillingAccount` | `string` | Output only. The reseller parent billing account of the account's corresponding billing account, ... |
| `state` | `string` | Output only. The state of the account. This is used to decide whether the customer is in good sta... |
| `updateTime` | `string` | Output only. The last update timestamp. |

### `Approval`

An approval for some action on an account.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the approval. |
| `reason` | `string` | Output only. An explanation for the state of the approval. |
| `state` | `string` | Output only. The state of the approval. |
| `updateTime` | `string` | Optional. The last update timestamp of the approval. |

### `ApproveAccountRequest`

Request message for PartnerProcurementService.ApproveAccount.

| Property | Type | Description |
|----------|------|-------------|
| `approvalName` | `string` | The name of the approval being approved. If absent and there is only one approval possible, that ... |
| `properties` | `object` | Set of properties that should be associated with the account. Optional. |
| `reason` | `string` | Free form text string explaining the approval reason. Optional. Max allowed length: 256 bytes. Lo... |

### `ApproveEntitlementPlanChangeRequest`

Request message for [PartnerProcurementService.ApproveEntitlementPlanChange[].

| Property | Type | Description |
|----------|------|-------------|
| `pendingPlanName` | `string` | Required. Name of the pending plan that's being approved. |

### `ApproveEntitlementRequest`

Request message for [PartnerProcurementService.ApproveEntitlement[].

| Property | Type | Description |
|----------|------|-------------|
| `entitlementMigrated` | `string` | Optional. The resource name of the entitlement that was migrated, with the format `providers/{pro... |
| `properties` | `object` | Set of properties that should be associated with the entitlement. Optional. |

### `Consumer`

A resource using (consuming) this entitlement.

| Property | Type | Description |
|----------|------|-------------|
| `project` | `string` | A project name with format `projects/`. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Entitlement`

Represents a procured product of a customer.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `string` | Output only. The resource name of the account that this entitlement is based on, if any. |
| `cancellationReason` | `string` | Output only. The reason the entitlement was cancelled. If this entitlement wasn't cancelled, this... |
| `consumers` | `array<Consumer>` | Output only. The resources using this entitlement, if applicable. |
| `createTime` | `string` | Output only. The creation timestamp. |
| `entitlementBenefitIds` | `array<string>` | Output only. The entitlement benefit IDs associated with the purchase. |
| `inputProperties` | `object` | Output only. The custom properties that were collected from the user to create this entitlement. |
| `messageToUser` | `string` | Provider-supplied message that is displayed to the end user. Currently this is used to communicat... |
| `name` | `string` | Output only. The resource name of the entitlement. Entitlement names have the form `providers/{pr... |
| `newOfferEndTime` | `string` | Output only. The end time of the new offer, determined from the offer's specified end date. If th... |
| `newOfferStartTime` | `string` | Output only. The timestamp when the new offer becomes effective. This field is populated even if ... |
| `newPendingOffer` | `string` | Output only. Upon a pending plan change, the name of the offer that the entitlement is switching ... |
| `newPendingOfferDuration` | `string` | Output only. The duration of the new offer, in ISO 8601 duration format. This field is populated ... |
| `newPendingPlan` | `string` | Output only. The identifier of the pending new plan. Required if the product has plans and the en... |
| `offer` | `string` | Output only. The name of the offer that was procured. Field is empty if order wasn't made using a... |
| `offerDuration` | `string` | Output only. The offer duration of the current offer, in ISO 8601 duration format. This is empty ... |
| `offerEndTime` | `string` | Output only. End time for the current term of the Offer associated with this entitlement. The val... |
| `orderId` | `string` | Output only. The order ID of this entitlement, without any `orders/` resource name prefix. |
| `plan` | `string` | Output only. The identifier of the plan that was procured. Required if the product has plans. |
| `product` | `string` | Output only. The identifier of the entity that was purchased. This may actually represent a produ... |
| `productExternalName` | `string` | Output only. The identifier of the product that was procured. |
| `provider` | `string` | Output only. The identifier of the service provider that this entitlement was created against. Ea... |
| `quoteExternalName` | `string` | Output only. The identifier of the quote that was used to procure. Empty if the order is not purc... |
| `state` | `string` | Output only. The state of the entitlement. |
| `subscriptionEndTime` | `string` | Output only. End time for the subscription corresponding to this entitlement. |
| `updateTime` | `string` | Output only. The last update timestamp. |
| `usageReportingId` | `string` | Output only. The consumerId to use when reporting usage through the Service Control API. See the ... |

### `ListAccountsResponse`

Response message for [PartnerProcurementService.ListAccounts[].

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | The list of accounts in this response. |
| `nextPageToken` | `string` | The token for fetching the next page. |

### `ListEntitlementsResponse`

Response message for PartnerProcurementService.ListEntitlements.

| Property | Type | Description |
|----------|------|-------------|
| `entitlements` | `array<Entitlement>` | The list of entitlements in this response. |
| `nextPageToken` | `string` | The token for fetching the next page. |

### `RejectAccountRequest`

Request message for PartnerProcurementService.RejectAccount.

| Property | Type | Description |
|----------|------|-------------|
| `approvalName` | `string` | The name of the approval being rejected. If absent and there is only one approval possible, that ... |
| `reason` | `string` | Free form text string explaining the rejection reason. Max allowed length: 256 bytes. Longer stri... |

### `RejectEntitlementPlanChangeRequest`

Request message for PartnerProcurementService.RejectEntitlementPlanChange.

| Property | Type | Description |
|----------|------|-------------|
| `pendingPlanName` | `string` | Required. Name of the pending plan that is being rejected. |
| `reason` | `string` | Free form text string explaining the rejection reason. Max allowed length: 256 bytes. Longer stri... |

### `RejectEntitlementRequest`

Request message for PartnerProcurementService.RejectEntitlement.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Free form text string explaining the rejection reason. Max allowed length: 256 bytes. Longer stri... |

### `ResetAccountRequest`

Request message for PartnerProcurementService.ResetAccount.

### `SuspendEntitlementRequest`

Request message for ParterProcurementService.SuspendEntitlement. This is not yet supported.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | A free-form reason string, explaining the reason for suspension request. |

