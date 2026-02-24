# Local Services API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 9

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `localservices.accountReports.search` | GET | `v1/accountReports:search` | Get account reports containing aggregate account data of all linked GLS accounts. Caller needs to... |
| `localservices.detailedLeadReports.search` | GET | `v1/detailedLeadReports:search` | Get detailed lead reports containing leads that have been received by all linked GLS accounts. Ca... |

### `localservices.accountReports.search`

**GET** `v1/accountReports:search`

Get account reports containing aggregate account data of all linked GLS accounts. Caller needs to provide their manager customer id and the associated auth credential that allows them read permissions on their linked accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `pageSize` | `integer` | query | No | The maximum number of accounts to return. If the page size is unset, page size will default to 1000. Maximum page_siz... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous request to SearchAccountReports that indicates where listing sho... |
| `query` | `string` | query | No | A query string for searching for account reports. Caller must provide a customer id of their MCC account with an asso... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse`

```typescript
const res = await localservices.accountReports.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adwords`

---

### `localservices.detailedLeadReports.search`

**GET** `v1/detailedLeadReports:search`

Get detailed lead reports containing leads that have been received by all linked GLS accounts. Caller needs to provide their manager customer id and the associated auth credential that allows them read permissions on their linked accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `endDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `endDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `endDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| `pageSize` | `integer` | query | No | The maximum number of accounts to return. If the page size is unset, page size will default to 1000. Maximum page_siz... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous request to SearchDetailedLeadReports that indicates where listin... |
| `query` | `string` | query | No | A query string for searching for account reports. Caller must provide a customer id of their MCC account with an asso... |
| `startDate.day` | `integer` | query | No | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and... |
| `startDate.month` | `integer` | query | No | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `startDate.year` | `integer` | query | No | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

**Response**: `GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse`

```typescript
const res = await localservices.detailedLeadReports.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/adwords`

---

## Schemas

### `GoogleAdsHomeservicesLocalservicesV1AccountReport`

An Account Report of a GLS account identified by their account id containing aggregate data gathered from a particular date range. Next ID: 18

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Unique identifier of the GLS account. |
| `aggregatorInfo` | `GoogleAdsHomeservicesLocalservicesV1AggregatorInfo` | Aggregator specific information related to the account. |
| `averageFiveStarRating` | `number` | Average review rating score from 1-5 stars. |
| `averageWeeklyBudget` | `number` | Average weekly budget in the currency code of the account. |
| `businessName` | `string` | Business name of the account. |
| `currencyCode` | `string` | Currency code of the account. |
| `currentPeriodChargedLeads` | `string` | Number of charged leads the account received in current specified period. |
| `currentPeriodConnectedPhoneCalls` | `string` | Number of connected phone calls (duration over 30s) in current specified period. |
| `currentPeriodPhoneCalls` | `string` | Number of phone calls in current specified period, including both connected and unconnected calls. |
| `currentPeriodTotalCost` | `number` | Total cost of the account in current specified period in the account's specified currency. |
| `impressionsLastTwoDays` | `string` | Number of impressions that customers have had in the past 2 days. |
| `phoneLeadResponsiveness` | `number` | Phone lead responsiveness of the account for the past 90 days from current date. This is computed... |
| `previousPeriodChargedLeads` | `string` | Number of charged leads the account received in previous specified period. |
| `previousPeriodConnectedPhoneCalls` | `string` | Number of connected phone calls (duration over 30s) in previous specified period. |
| `previousPeriodPhoneCalls` | `string` | Number of phone calls in previous specified period, including both connected and unconnected calls. |
| `previousPeriodTotalCost` | `number` | Total cost of the account in previous specified period in the account's specified currency. |
| `totalReview` | `integer` | Total number of reviews the account has up to current date. |

### `GoogleAdsHomeservicesLocalservicesV1AggregatorInfo`

Conatiner for aggregator specific information if lead is for an aggregator GLS account.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatorProviderId` | `string` | Provider id (listed in aggregator system) which maps to a account id in GLS system. |

### `GoogleAdsHomeservicesLocalservicesV1BookingLead`

Container for booking lead specific information.

| Property | Type | Description |
|----------|------|-------------|
| `bookingAppointmentTimestamp` | `string` | Timestamp of when service is provided by advertiser. |
| `consumerEmail` | `string` | Consumer email associated with the booking lead. |
| `consumerPhoneNumber` | `string` | Consumer phone number associated with the booking lead. |
| `customerName` | `string` | Name of the customer who created the lead. |
| `jobType` | `string` | The job type of the specified lead. |

### `GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport`

A Detailed Lead Report of a lead identified by their lead id and contains consumer, account, monetization, and lead data.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Identifies account that received the lead. |
| `aggregatorInfo` | `GoogleAdsHomeservicesLocalservicesV1AggregatorInfo` | Aggregator specific information related to the lead. |
| `bookingLead` | `GoogleAdsHomeservicesLocalservicesV1BookingLead` | More information associated to only booking leads. |
| `businessName` | `string` | Business name associated to the account. |
| `chargeStatus` | `string` | Whether the lead has been charged. |
| `currencyCode` | `string` | Currency code. |
| `disputeStatus` | `string` | Dispute status related to the lead. |
| `geo` | `string` | Location of the associated account's home city. |
| `googleAdsLeadId` | `string` | Unique identifier of a Detailed Lead Report. |
| `leadCategory` | `string` | Lead category (e.g. hvac, plumber) |
| `leadCreationTimestamp` | `string` | Timestamp of when the lead was created. |
| `leadId` | `string` | Deprecated in favor of google_ads_lead_id. Unique identifier of a Detailed Lead Report. |
| `leadPrice` | `number` | Price of the lead (available only after it has been charged). |
| `leadType` | `string` | Lead type. |
| `messageLead` | `GoogleAdsHomeservicesLocalservicesV1MessageLead` | More information associated to only message leads. |
| `phoneLead` | `GoogleAdsHomeservicesLocalservicesV1PhoneLead` | More information associated to only phone leads. |
| `timezone` | `GoogleTypeTimeZone` | Timezone of the particular provider associated to a lead. |

### `GoogleAdsHomeservicesLocalservicesV1MessageLead`

Container for message lead specific information.

| Property | Type | Description |
|----------|------|-------------|
| `consumerPhoneNumber` | `string` | Consumer phone number associated with the message lead. |
| `customerName` | `string` | Name of the customer who created the lead. |
| `jobType` | `string` | The job type of the specified lead. |
| `postalCode` | `string` | The postal code of the customer who created the lead. |

### `GoogleAdsHomeservicesLocalservicesV1PhoneLead`

Container for phone lead specific information.

| Property | Type | Description |
|----------|------|-------------|
| `chargedCallTimestamp` | `string` | Timestamp of the phone call which resulted in a charged phone lead. |
| `chargedConnectedCallDurationSeconds` | `string` | Duration of the charged phone call in seconds. |
| `consumerPhoneNumber` | `string` | Consumer phone number associated with the phone lead. |

### `GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse`

A page of the response received from the SearchAccountReports method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.

| Property | Type | Description |
|----------|------|-------------|
| `accountReports` | `array<GoogleAdsHomeservicesLocalservicesV1AccountReport>` | List of account reports which maps 1:1 to a particular linked GLS account. |
| `nextPageToken` | `string` | Pagination token to retrieve the next page of results. When `next_page_token` is not filled in, t... |

### `GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse`

A page of the response received from the SearchDetailedLeadReports method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.

| Property | Type | Description |
|----------|------|-------------|
| `detailedLeadReports` | `array<GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport>` | List of detailed lead reports uniquely identified by external lead id. |
| `nextPageToken` | `string` | Pagination token to retrieve the next page of results. When `next_page_token` is not filled in, t... |

### `GoogleTypeTimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

