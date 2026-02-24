# Google Marketing Platform Admin API - API Reference

**Version**: `v1alpha` | **Methods**: 8 | **Schemas**: 16

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `marketingplatformadmin.organizations.get` | GET | `v1alpha/{+name}` | Lookup for a single organization. |
| `marketingplatformadmin.organizations.list` | GET | `v1alpha/organizations` | Returns a list of organizations that the user has access to. |
| `marketingplatformadmin.organizations.findSalesPartnerManagedClients` | POST | `v1alpha/{+organization}:findSalesPartnerManagedClients` | Returns a list of clients managed by the sales partner organization. User needs to be an OrgAdmin... |
| `marketingplatformadmin.organizations.reportPropertyUsage` | POST | `v1alpha/{+organization}:reportPropertyUsage` | Get the usage and billing data for properties within the organization for the specified month. Pe... |
| `marketingplatformadmin.organizations.analyticsAccountLinks.list` | GET | `v1alpha/{+parent}/analyticsAccountLinks` | Lists the Google Analytics accounts link to the specified Google Marketing Platform organization. |
| `marketingplatformadmin.organizations.analyticsAccountLinks.create` | POST | `v1alpha/{+parent}/analyticsAccountLinks` | Creates the link between the Analytics account and the Google Marketing Platform organization. Us... |
| `marketingplatformadmin.organizations.analyticsAccountLinks.delete` | DELETE | `v1alpha/{+name}` | Deletes the AnalyticsAccountLink, which detaches the Analytics account from the Google Marketing ... |
| `marketingplatformadmin.organizations.analyticsAccountLinks.setPropertyServiceLevel` | POST | `v1alpha/{+analyticsAccountLink}:setPropertyServiceLevel` | Updates the service level for an Analytics property. |

### `marketingplatformadmin.organizations.get`

**GET** `v1alpha/{+name}`

Lookup for a single organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Organization to retrieve. Format: organizations/{org_id} |

**Response**: `Organization`

```typescript
const res = await marketingplatformadmin.organizations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.read`
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.list`

**GET** `v1alpha/organizations`

Returns a list of organizations that the user has access to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of organizations to return in one call. The service may return fewer than this value. If... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListOrganizations call. Provide this to retrieve the subsequent page... |

**Response**: `ListOrganizationsResponse`

```typescript
const res = await marketingplatformadmin.organizations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.read`
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.findSalesPartnerManagedClients`

**POST** `v1alpha/{+organization}:findSalesPartnerManagedClients`

Returns a list of clients managed by the sales partner organization. User needs to be an OrgAdmin/BillingAdmin on the sales partner organization in order to view the end clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `organization` | `string` | path | Yes | Required. The name of the sales partner organization. Format: organizations/{org_id} |

**Request body**: `FindSalesPartnerManagedClientsRequest`

**Response**: `FindSalesPartnerManagedClientsResponse`

```typescript
const res = await marketingplatformadmin.organizations.findSalesPartnerManagedClients({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.read`
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.reportPropertyUsage`

**POST** `v1alpha/{+organization}:reportPropertyUsage`

Get the usage and billing data for properties within the organization for the specified month. Per direct client org, user needs to be OrgAdmin/BillingAdmin on the organization in order to view the billing and usage data. Per sales partner client org, user needs to be OrgAdmin/BillingAdmin on the sales partner org in order to view the billing and usage data, or OrgAdmin/BillingAdmin on the sales partner client org in order to view the usage data only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `organization` | `string` | path | Yes | Required. Specifies the organization whose property usage will be listed. Format: organizations/{org_id} |

**Request body**: `ReportPropertyUsageRequest`

**Response**: `ReportPropertyUsageResponse`

```typescript
const res = await marketingplatformadmin.organizations.reportPropertyUsage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.read`
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.analyticsAccountLinks.list`

**GET** `v1alpha/{+parent}/analyticsAccountLinks`

Lists the Google Analytics accounts link to the specified Google Marketing Platform organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent organization, which owns this collection of Analytics account links. Format: organizations/{org_id} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Analytics account links to return in one call. The service may return fewer than this... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListAnalyticsAccountLinks call. Provide this to retrieve the subsequ... |

**Response**: `ListAnalyticsAccountLinksResponse`

```typescript
const res = await marketingplatformadmin.analyticsAccountLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.read`
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.analyticsAccountLinks.create`

**POST** `v1alpha/{+parent}/analyticsAccountLinks`

Creates the link between the Analytics account and the Google Marketing Platform organization. User needs to be an org user, and admin on the Analytics account to create the link. If the account is already linked to an organization, user needs to unlink the account from the current organization, then try link again.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this Analytics account link will be created. Format: organizations/{org_id} |

**Request body**: `AnalyticsAccountLink`

**Response**: `AnalyticsAccountLink`

```typescript
const res = await marketingplatformadmin.analyticsAccountLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.analyticsAccountLinks.delete`

**DELETE** `v1alpha/{+name}`

Deletes the AnalyticsAccountLink, which detaches the Analytics account from the Google Marketing Platform organization. User needs to be an org user, and admin on the Analytics account in order to delete the link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Analytics account link to delete. Format: organizations/{org_id}/analyticsAccountLinks/{ana... |

**Response**: `Empty`

```typescript
const res = await marketingplatformadmin.analyticsAccountLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

### `marketingplatformadmin.organizations.analyticsAccountLinks.setPropertyServiceLevel`

**POST** `v1alpha/{+analyticsAccountLink}:setPropertyServiceLevel`

Updates the service level for an Analytics property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `analyticsAccountLink` | `string` | path | Yes | Required. The parent AnalyticsAccountLink scope where this property is in. Format: organizations/{org_id}/analyticsAc... |

**Request body**: `SetPropertyServiceLevelRequest`

**Response**: `SetPropertyServiceLevelResponse`

```typescript
const res = await marketingplatformadmin.analyticsAccountLinks.setPropertyServiceLevel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/marketingplatformadmin.analytics.update`

---

## Schemas

### `AnalyticsAccountLink`

A resource message representing the link between a Google Analytics account and a Google Marketing Platform organization.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsAccount` | `string` | Required. Immutable. The resource name of the AnalyticsAdmin API account. The account ID will be ... |
| `displayName` | `string` | Output only. The human-readable name for the Analytics account. |
| `linkVerificationState` | `string` | Output only. The verification state of the link between the Analytics account and the parent orga... |
| `name` | `string` | Identifier. Resource name of this AnalyticsAccountLink. Note the resource ID is the same as the I... |

### `BillInfo`

Contains the bill amount.

| Property | Type | Description |
|----------|------|-------------|
| `baseFee` | `Money` | The amount of the monthly base fee. |
| `eventFee` | `Money` | The amount of the event fee. |
| `priceProtectionCredit` | `Money` | The amount of the price protection credit, this is only available for eligible customers. |
| `total` | `Money` | The total amount of the bill. |

### `ClientData`

Contains the client data.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | The end date of the contract between the sales org and the end client. |
| `organization` | `Organization` | The end client that has/had contract with the requested sales org. |
| `startDate` | `Date` | The start date of the contract between the sales org and the end client. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FindSalesPartnerManagedClientsRequest`

Request message for FindSalesPartnerManagedClients RPC.

| Property | Type | Description |
|----------|------|-------------|
| `isActive` | `boolean` | Optional. If set, only active and just ended clients will be returned. |

### `FindSalesPartnerManagedClientsResponse`

Response message for FindSalesPartnerManagedClients RPC.

| Property | Type | Description |
|----------|------|-------------|
| `clientData` | `array<ClientData>` | The clients managed by the sales org. |

### `ListAnalyticsAccountLinksResponse`

Response message for ListAnalyticsAccountLinks RPC.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsAccountLinks` | `array<AnalyticsAccountLink>` | Analytics account links in this organization. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListOrganizationsResponse`

Response message for ListOrganizations RPC.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `organizations` | `array<Organization>` | The Organization resource that the user has access to, which includes the org id and display name. |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `Organization`

A resource message representing a Google Marketing Platform organization.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name for the organization. |
| `name` | `string` | Identifier. The resource name of the GMP organization. Format: organizations/{org_id} |

### `PropertyUsage`

Contains the count of events received by the property, along with metadata that influences the volume of `billable` events.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The ID of the property's parent account. |
| `billableEventCount` | `string` | The number of events for which the property is billed in the requested month. |
| `displayName` | `string` | The display name of the property. |
| `property` | `string` | The name of the Google Analytics Admin API property resource. Format: analyticsadmin.googleapis.c... |
| `propertyType` | `string` | The subtype of the analytics property. This affects the billable event count. |
| `serviceLevel` | `string` | The service level of the property. |
| `totalEventCount` | `string` | Total event count that the property received during the requested month. |

### `ReportPropertyUsageRequest`

Request message for ReportPropertyUsage RPC.

| Property | Type | Description |
|----------|------|-------------|
| `month` | `string` | Required. The target month to list property usages. Format: YYYY-MM. For example, "2025-05" |

### `ReportPropertyUsageResponse`

Response message for ReportPropertyUsage RPC.

| Property | Type | Description |
|----------|------|-------------|
| `billInfo` | `BillInfo` | Bill amount in the specified organization and month. Will be empty if user only has access to usa... |
| `propertyUsages` | `array<PropertyUsage>` | Usage data for all properties in the specified organization and month. |

### `SetPropertyServiceLevelRequest`

Request message for SetPropertyServiceLevel RPC.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsProperty` | `string` | Required. The Analytics property to change the ServiceLevel setting. This field is the name of th... |
| `serviceLevel` | `string` | Required. The service level to set for this property. |

### `SetPropertyServiceLevelResponse`

Response message for SetPropertyServiceLevel RPC.

