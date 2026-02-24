# Cloud Billing API - API Reference

**Version**: `v1` | **Methods**: 18 | **Schemas**: 24

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudbilling.billingAccounts.get` | GET | `v1/{+name}` | Gets information about a billing account. The current authenticated user must be a [viewer of the... |
| `cloudbilling.billingAccounts.list` | GET | `v1/billingAccounts` | Lists the billing accounts that the current authenticated user has permission to [view](https://c... |
| `cloudbilling.billingAccounts.patch` | PATCH | `v1/{+name}` | Updates a billing account's fields. Currently the only field that can be edited is `display_name`... |
| `cloudbilling.billingAccounts.create` | POST | `v1/billingAccounts` | This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccou... |
| `cloudbilling.billingAccounts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a billing account. The caller must have the `billing.accounts.... |
| `cloudbilling.billingAccounts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy for a billing account. Replaces any existing policy. The caller mu... |
| `cloudbilling.billingAccounts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests the access control policy for a billing account. This method takes the resource and a set o... |
| `cloudbilling.billingAccounts.move` | POST | `v1/{+name}:move` | Changes which parent organization a billing account belongs to. |
| `cloudbilling.billingAccounts.subAccounts.list` | GET | `v1/{+parent}/subAccounts` | Lists the billing accounts that the current authenticated user has permission to [view](https://c... |
| `cloudbilling.billingAccounts.subAccounts.create` | POST | `v1/{+parent}/subAccounts` | This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccou... |
| `cloudbilling.billingAccounts.projects.list` | GET | `v1/{+name}/projects` | Lists the projects associated with a billing account. The current authenticated user must have th... |
| `cloudbilling.organizations.billingAccounts.list` | GET | `v1/{+parent}/billingAccounts` | Lists the billing accounts that the current authenticated user has permission to [view](https://c... |
| `cloudbilling.organizations.billingAccounts.create` | POST | `v1/{+parent}/billingAccounts` | This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccou... |
| `cloudbilling.organizations.billingAccounts.move` | GET | `v1/{+destinationParent}/{+name}:move` | Changes which parent organization a billing account belongs to. |
| `cloudbilling.projects.getBillingInfo` | GET | `v1/{+name}/billingInfo` | Gets the billing information for a project. The current authenticated user must have the `resourc... |
| `cloudbilling.projects.updateBillingInfo` | PUT | `v1/{+name}/billingInfo` | Sets or updates the billing account associated with a project. You specify the new billing accoun... |
| `cloudbilling.services.list` | GET | `v1/services` | Lists all public cloud services. |
| `cloudbilling.services.skus.list` | GET | `v1/{+parent}/skus` | Lists all publicly available SKUs for a given cloud service. |

### `cloudbilling.billingAccounts.get`

**GET** `v1/{+name}`

Gets information about a billing account. The current authenticated user must be a [viewer of the billing account](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the billing account to retrieve. For example, `billingAccounts/012345-567890-ABCDEF`. |

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.list`

**GET** `v1/billingAccounts`

Lists the billing accounts that the current authenticated user has permission to [view](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Options for how to filter the returned billing accounts. This only supports filtering for [subaccounts](https://cloud... |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 100; this is also the default. |
| `pageToken` | `string` | query | No | A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `L... |
| `parent` | `string` | query | No | Optional. The parent resource to list billing accounts from. Format: - `organizations/{organization_id}`, for example... |

**Response**: `ListBillingAccountsResponse`

```typescript
const res = await cloudbilling.billingAccounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.patch`

**PATCH** `v1/{+name}`

Updates a billing account's fields. Currently the only field that can be edited is `display_name`. The current authenticated user must have the `billing.accounts.update` IAM permission, which is typically given to the [administrator](https://cloud.google.com/billing/docs/how-to/billing-access) of the billing account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the billing account resource to be updated. |
| `updateMask` | `string` | query | No | The update mask applied to the resource. Only "display_name" is currently supported. |

**Request body**: `BillingAccount`

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.create`

**POST** `v1/billingAccounts`

This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts). Google Cloud resellers should use the Channel Services APIs, [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create) and [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create). When creating a subaccount, the current authenticated user must have the `billing.accounts.update` IAM permission on the parent account, which is typically given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access). This method will return an error if the parent account has not been provisioned for subaccounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | query | No | Optional. The parent to create a billing account from. Format: - `billingAccounts/{billing_account_id}`, for example,... |

**Request body**: `BillingAccount`

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a billing account. The caller must have the `billing.accounts.getIamPolicy` permission on the account, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudbilling.billingAccounts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy for a billing account. Replaces any existing policy. The caller must have the `billing.accounts.setIamPolicy` permission on the account, which is often given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudbilling.billingAccounts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests the access control policy for a billing account. This method takes the resource and a set of permissions as input and returns the subset of the input permissions that the caller is allowed for that resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudbilling.billingAccounts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.move`

**POST** `v1/{+name}:move`

Changes which parent organization a billing account belongs to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the billing account to move. Must be of the form `billingAccounts/{billing_account_id}... |

**Request body**: `MoveBillingAccountRequest`

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.subAccounts.list`

**GET** `v1/{+parent}/subAccounts`

Lists the billing accounts that the current authenticated user has permission to [view](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. The parent resource to list billing accounts from. Format: - `organizations/{organization_id}`, for example... |
| `filter` | `string` | query | No | Options for how to filter the returned billing accounts. This only supports filtering for [subaccounts](https://cloud... |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 100; this is also the default. |
| `pageToken` | `string` | query | No | A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `L... |

**Response**: `ListBillingAccountsResponse`

```typescript
const res = await cloudbilling.subAccounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.subAccounts.create`

**POST** `v1/{+parent}/subAccounts`

This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts). Google Cloud resellers should use the Channel Services APIs, [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create) and [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create). When creating a subaccount, the current authenticated user must have the `billing.accounts.update` IAM permission on the parent account, which is typically given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access). This method will return an error if the parent account has not been provisioned for subaccounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. The parent to create a billing account from. Format: - `billingAccounts/{billing_account_id}`, for example,... |

**Request body**: `BillingAccount`

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.subAccounts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.billingAccounts.projects.list`

**GET** `v1/{+name}/projects`

Lists the projects associated with a billing account. The current authenticated user must have the `billing.resourceAssociations.list` IAM permission, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the billing account associated with the projects that you want to list. For example, `... |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 100; this is also the default. |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previo... |

**Response**: `ListProjectBillingInfoResponse`

```typescript
const res = await cloudbilling.projects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.organizations.billingAccounts.list`

**GET** `v1/{+parent}/billingAccounts`

Lists the billing accounts that the current authenticated user has permission to [view](https://cloud.google.com/billing/docs/how-to/billing-access).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. The parent resource to list billing accounts from. Format: - `organizations/{organization_id}`, for example... |
| `filter` | `string` | query | No | Options for how to filter the returned billing accounts. This only supports filtering for [subaccounts](https://cloud... |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 100; this is also the default. |
| `pageToken` | `string` | query | No | A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `L... |

**Response**: `ListBillingAccountsResponse`

```typescript
const res = await cloudbilling.billingAccounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.organizations.billingAccounts.create`

**POST** `v1/{+parent}/billingAccounts`

This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts). Google Cloud resellers should use the Channel Services APIs, [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create) and [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create). When creating a subaccount, the current authenticated user must have the `billing.accounts.update` IAM permission on the parent account, which is typically given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access). This method will return an error if the parent account has not been provisioned for subaccounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Optional. The parent to create a billing account from. Format: - `billingAccounts/{billing_account_id}`, for example,... |

**Request body**: `BillingAccount`

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.organizations.billingAccounts.move`

**GET** `v1/{+destinationParent}/{+name}:move`

Changes which parent organization a billing account belongs to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `destinationParent` | `string` | path | Yes | Required. The resource name of the Organization to move the billing account under. Must be of the form `organizations... |
| `name` | `string` | path | Yes | Required. The resource name of the billing account to move. Must be of the form `billingAccounts/{billing_account_id}... |

**Response**: `BillingAccount`

```typescript
const res = await cloudbilling.billingAccounts.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.projects.getBillingInfo`

**GET** `v1/{+name}/billingInfo`

Gets the billing information for a project. The current authenticated user must have the `resourcemanager.projects.get` permission for the project, which can be granted by assigning the [Project Viewer](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles) role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the project for which billing information is retrieved. For example, `projects/tokyo-r... |

**Response**: `ProjectBillingInfo`

```typescript
const res = await cloudbilling.projects.getBillingInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.projects.updateBillingInfo`

**PUT** `v1/{+name}/billingInfo`

Sets or updates the billing account associated with a project. You specify the new billing account by setting the `billing_account_name` in the `ProjectBillingInfo` resource to the resource name of a billing account. Associating a project with an open billing account enables billing on the project and allows charges for resource usage. If the project already had a billing account, this method changes the billing account used for resource usage charges. *Note:* Incurred charges that have not yet been reported in the transaction history of the Google Cloud Console might be billed to the new billing account, even if the charge occurred before the new billing account was assigned to the project. The current authenticated user must have ownership privileges for both the [project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo ) and the [billing account](https://cloud.google.com/billing/docs/how-to/billing-access). You can disable billing on the project by setting the `billing_account_name` field to empty. This action disassociates the current billing account from the project. Any billable activity of your in-use services will stop, and your application could stop functioning as expected. Any unbilled charges to date will be billed to the previously associated account. The current authenticated user must be either an owner of the project or an owner of the billing account for the project. Note that associating a project with a *closed* billing account will have much the same effect as disabling billing on the project: any paid resources used by the project will be shut down. Thus, unless you wish to disable billing, you should always call this method with the name of an *open* billing account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the project associated with the billing information that you want to update. For examp... |

**Request body**: `ProjectBillingInfo`

**Response**: `ProjectBillingInfo`

```typescript
const res = await cloudbilling.projects.updateBillingInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.services.list`

**GET** `v1/services`

Lists all public cloud services.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Requested page size. Defaults to 5000. |
| `pageToken` | `string` | query | No | A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `L... |

**Response**: `ListServicesResponse`

```typescript
const res = await cloudbilling.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbilling.services.skus.list`

**GET** `v1/{+parent}/skus`

Lists all publicly available SKUs for a given cloud service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the service. Example: "services/6F81-5844-456A" |
| `currencyCode` | `string` | query | No | The ISO 4217 currency code for the pricing info in the response proto. Will use the conversion rate as of start_time.... |
| `endTime` | `string` | query | No | Optional exclusive end time of the time range for which the pricing versions will be returned. Timestamps in the futu... |
| `pageSize` | `integer` | query | No | Requested page size. Defaults to 5000. |
| `pageToken` | `string` | query | No | A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `L... |
| `startTime` | `string` | query | No | Optional inclusive start time of the time range for which the pricing versions will be returned. Timestamps in the fu... |

**Response**: `ListSkusResponse`

```typescript
const res = await cloudbilling.skus.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-billing`
- `https://www.googleapis.com/auth/cloud-billing.readonly`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AggregationInfo`

Represents the aggregation level and interval for pricing of a single SKU.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationCount` | `integer` | The number of intervals to aggregate over. Example: If aggregation_level is "DAILY" and aggregati... |
| `aggregationInterval` | `string` |  |
| `aggregationLevel` | `string` |  |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `BillingAccount`

A billing account in the [Google Cloud Console](https://console.cloud.google.com/). You can assign a billing account to one or more projects.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Optional. The currency in which the billing account is billed and charged, represented as an ISO ... |
| `displayName` | `string` | The display name given to the billing account, such as `My Billing Account`. This name is display... |
| `masterBillingAccount` | `string` | If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will... |
| `name` | `string` | Output only. The resource name of the billing account. The resource name has the form `billingAcc... |
| `open` | `boolean` | Output only. True if the billing account is open, and will therefore be charged for any usage on ... |
| `parent` | `string` | Output only. The billing account's parent resource identifier. Use the `MoveBillingAccount` metho... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Category`

Represents the category hierarchy of a SKU.

| Property | Type | Description |
|----------|------|-------------|
| `resourceFamily` | `string` | The type of product the SKU refers to. Example: "Compute", "Storage", "Network", "ApplicationServ... |
| `resourceGroup` | `string` | A group classification for related SKUs. Example: "RAM", "GPU", "Prediction", "Ops", "GoogleEgres... |
| `serviceDisplayName` | `string` | The display name of the service this SKU belongs to. |
| `usageType` | `string` | Represents how the SKU is consumed. Example: "OnDemand", "Preemptible", "Commit1Mo", "Commit1Yr" ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GeoTaxonomy`

Encapsulates the geographic taxonomy data for a sku.

| Property | Type | Description |
|----------|------|-------------|
| `regions` | `array<string>` | The list of regions associated with a sku. Empty for Global skus, which are associated with all G... |
| `type` | `string` | The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL. |

### `ListBillingAccountsResponse`

Response message for `ListBillingAccounts`.

| Property | Type | Description |
|----------|------|-------------|
| `billingAccounts` | `array<BillingAccount>` | A list of billing accounts. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. To retrieve the next page, call `ListBillingAccount... |

### `ListProjectBillingInfoResponse`

Request message for `ListProjectBillingInfoResponse`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. To retrieve the next page, call `ListProjectBilling... |
| `projectBillingInfo` | `array<ProjectBillingInfo>` | A list of `ProjectBillingInfo` resources representing the projects associated with the billing ac... |

### `ListServicesResponse`

Response message for `ListServices`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. To retrieve the next page, call `ListServices` agai... |
| `services` | `array<Service>` | A list of services. |

### `ListSkusResponse`

Response message for `ListSkus`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. To retrieve the next page, call `ListSkus` again wi... |
| `skus` | `array<Sku>` | The list of public SKUs of the given service. |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `MoveBillingAccountRequest`

Request message for `MoveBillingAccount` RPC.

| Property | Type | Description |
|----------|------|-------------|
| `destinationParent` | `string` | Required. The resource name of the Organization to move the billing account under. Must be of the... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PricingExpression`

Expresses a mathematical pricing formula. For Example:- `usage_unit: GBy` `tiered_rates:` `[start_usage_amount: 20, unit_price: $10]` `[start_usage_amount: 100, unit_price: $5]` The above expresses a pricing formula where the first 20GB is free, the next 80GB is priced at $10 per GB followed by $5 per GB for additional usage.

| Property | Type | Description |
|----------|------|-------------|
| `baseUnit` | `string` | The base unit for the SKU which is the unit used in usage exports. Example: "By" |
| `baseUnitConversionFactor` | `number` | Conversion factor for converting from price per usage_unit to price per base_unit, and start_usag... |
| `baseUnitDescription` | `string` | The base unit in human readable form. Example: "byte". |
| `displayQuantity` | `number` | The recommended quantity of units for displaying pricing info. When displaying pricing info it is... |
| `tieredRates` | `array<TierRate>` | The list of tiered rates for this pricing. The total cost is computed by applying each of the tie... |
| `usageUnit` | `string` | The short hand for unit of usage this pricing is specified in. Example: usage_unit of "GiBy" mean... |
| `usageUnitDescription` | `string` | The unit of usage in human readable form. Example: "gibi byte". |

### `PricingInfo`

Represents the pricing information for a SKU at a single point of time.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationInfo` | `AggregationInfo` | Aggregation Info. This can be left unspecified if the pricing expression doesn't require aggregat... |
| `currencyConversionRate` | `number` | Conversion rate used for currency conversion, from USD to the currency specified in the request. ... |
| `effectiveTime` | `string` | The timestamp from which this pricing was effective within the requested time range. This is guar... |
| `pricingExpression` | `PricingExpression` | Expresses the pricing formula. See `PricingExpression` for an example. |
| `summary` | `string` | An optional human readable summary of the pricing information, has a maximum length of 256 charac... |

### `ProjectBillingInfo`

Encapsulation of billing information for a Google Cloud Console project. A project has at most one associated billing account at a time (but a billing account can be assigned to multiple projects).

| Property | Type | Description |
|----------|------|-------------|
| `billingAccountName` | `string` | The resource name of the billing account associated with the project, if any. For example, `billi... |
| `billingEnabled` | `boolean` | Output only. True if the project is associated with an open billing account, to which usage on th... |
| `name` | `string` | Output only. The resource name for the `ProjectBillingInfo`; has the form `projects/{project_id}/... |
| `projectId` | `string` | Output only. The ID of the project that this `ProjectBillingInfo` represents, such as `tokyo-rain... |

### `Service`

Encapsulates a single service in Google Cloud Platform.

| Property | Type | Description |
|----------|------|-------------|
| `businessEntityName` | `string` | The business under which the service is offered. Ex. "businessEntities/GCP", "businessEntities/Maps" |
| `displayName` | `string` | A human readable display name for this service. |
| `name` | `string` | The resource name for the service. Example: "services/6F81-5844-456A" |
| `serviceId` | `string` | The identifier for the service. Example: "6F81-5844-456A" |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Sku`

Encapsulates a single SKU in Google Cloud

| Property | Type | Description |
|----------|------|-------------|
| `category` | `Category` | The category hierarchy of this SKU, purely for organizational purpose. |
| `description` | `string` | A human readable description of the SKU, has a maximum length of 256 characters. |
| `geoTaxonomy` | `GeoTaxonomy` | The geographic taxonomy for this sku. |
| `name` | `string` | The resource name for the SKU. Example: "services/6F81-5844-456A/skus/D041-B8A1-6E0B" |
| `pricingInfo` | `array<PricingInfo>` | A timeline of pricing info for this SKU in chronological order. |
| `serviceProviderName` | `string` | Identifies the service provider. This is 'Google' for first party services in Google Cloud Platform. |
| `serviceRegions` | `array<string>` | List of service regions this SKU is offered at. Example: "asia-east1" Service regions can be foun... |
| `skuId` | `string` | The identifier for the SKU. Example: "D041-B8A1-6E0B" |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TierRate`

The price rate indicating starting usage and its corresponding price.

| Property | Type | Description |
|----------|------|-------------|
| `startUsageAmount` | `number` | Usage is priced at this rate only after this amount. Example: start_usage_amount of 10 indicates ... |
| `unitPrice` | `Money` | The price per unit of usage. Example: unit_price of amount $10 indicates that each unit will cost... |

