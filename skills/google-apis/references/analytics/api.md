# Google Analytics API - API Reference

**Version**: `v3` | **Methods**: 88 | **Schemas**: 57

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `analytics.data.ga.get` | GET | `data/ga` | Returns Analytics data for a view (profile). |
| `analytics.data.mcf.get` | GET | `data/mcf` | Returns Analytics Multi-Channel Funnels data for a view (profile). |
| `analytics.data.realtime.get` | GET | `data/realtime` | Returns real time data for a view (profile). |
| `analytics.management.accountSummaries.list` | GET | `management/accountSummaries` | Lists account summaries (lightweight tree comprised of accounts/properties/profiles) to which the... |
| `analytics.management.accountUserLinks.delete` | DELETE | `management/accounts/{accountId}/entityUserLinks/{linkId}` | Removes a user from the given account. |
| `analytics.management.accountUserLinks.insert` | POST | `management/accounts/{accountId}/entityUserLinks` | Adds a new user to the given account. |
| `analytics.management.accountUserLinks.list` | GET | `management/accounts/{accountId}/entityUserLinks` | Lists account-user links for a given account. |
| `analytics.management.accountUserLinks.update` | PUT | `management/accounts/{accountId}/entityUserLinks/{linkId}` | Updates permissions for an existing user on the given account. |
| `analytics.management.accounts.list` | GET | `management/accounts` | Lists all accounts to which the user has access. |
| `analytics.management.clientId.hashClientId` | POST | `management/clientId:hashClientId` | Hashes the given Client ID. |
| `analytics.management.customDataSources.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources` | List custom data sources to which the user has access. |
| `analytics.management.customDimensions.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}` | Get a custom dimension to which the user has access. |
| `analytics.management.customDimensions.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions` | Create a new custom dimension. |
| `analytics.management.customDimensions.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions` | Lists custom dimensions to which the user has access. |
| `analytics.management.customDimensions.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}` | Updates an existing custom dimension. This method supports patch semantics. |
| `analytics.management.customDimensions.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}` | Updates an existing custom dimension. |
| `analytics.management.customMetrics.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}` | Get a custom metric to which the user has access. |
| `analytics.management.customMetrics.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics` | Create a new custom metric. |
| `analytics.management.customMetrics.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics` | Lists custom metrics to which the user has access. |
| `analytics.management.customMetrics.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}` | Updates an existing custom metric. This method supports patch semantics. |
| `analytics.management.customMetrics.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}` | Updates an existing custom metric. |
| `analytics.management.experiments.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}` | Delete an experiment. |
| `analytics.management.experiments.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}` | Returns an experiment to which the user has access. |
| `analytics.management.experiments.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments` | Create a new experiment. |
| `analytics.management.experiments.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments` | Lists experiments to which the user has access. |
| `analytics.management.experiments.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}` | Update an existing experiment. This method supports patch semantics. |
| `analytics.management.experiments.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}` | Update an existing experiment. |
| `analytics.management.filters.delete` | DELETE | `management/accounts/{accountId}/filters/{filterId}` | Delete a filter. |
| `analytics.management.filters.get` | GET | `management/accounts/{accountId}/filters/{filterId}` | Returns filters to which the user has access. |
| `analytics.management.filters.insert` | POST | `management/accounts/{accountId}/filters` | Create a new filter. |
| `analytics.management.filters.list` | GET | `management/accounts/{accountId}/filters` | Lists all filters for an account |
| `analytics.management.filters.patch` | PATCH | `management/accounts/{accountId}/filters/{filterId}` | Updates an existing filter. This method supports patch semantics. |
| `analytics.management.filters.update` | PUT | `management/accounts/{accountId}/filters/{filterId}` | Updates an existing filter. |
| `analytics.management.goals.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}` | Gets a goal to which the user has access. |
| `analytics.management.goals.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals` | Create a new goal. |
| `analytics.management.goals.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals` | Lists goals to which the user has access. |
| `analytics.management.goals.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}` | Updates an existing goal. This method supports patch semantics. |
| `analytics.management.goals.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}` | Updates an existing goal. |
| `analytics.management.profileFilterLinks.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}` | Delete a profile filter link. |
| `analytics.management.profileFilterLinks.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}` | Returns a single profile filter link. |
| `analytics.management.profileFilterLinks.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks` | Create a new profile filter link. |
| `analytics.management.profileFilterLinks.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks` | Lists all profile filter links for a profile. |
| `analytics.management.profileFilterLinks.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}` | Update an existing profile filter link. This method supports patch semantics. |
| `analytics.management.profileFilterLinks.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}` | Update an existing profile filter link. |
| `analytics.management.profileUserLinks.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}` | Removes a user from the given view (profile). |
| `analytics.management.profileUserLinks.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks` | Adds a new user to the given view (profile). |
| `analytics.management.profileUserLinks.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks` | Lists profile-user links for a given view (profile). |
| `analytics.management.profileUserLinks.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}` | Updates permissions for an existing user on the given view (profile). |
| `analytics.management.profiles.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}` | Deletes a view (profile). |
| `analytics.management.profiles.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}` | Gets a view (profile) to which the user has access. |
| `analytics.management.profiles.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles` | Create a new view (profile). |
| `analytics.management.profiles.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles` | Lists views (profiles) to which the user has access. |
| `analytics.management.profiles.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}` | Updates an existing view (profile). This method supports patch semantics. |
| `analytics.management.profiles.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}` | Updates an existing view (profile). |
| `analytics.management.remarketingAudience.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}` | Delete a remarketing audience. |
| `analytics.management.remarketingAudience.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}` | Gets a remarketing audience to which the user has access. |
| `analytics.management.remarketingAudience.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences` | Creates a new remarketing audience. |
| `analytics.management.remarketingAudience.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences` | Lists remarketing audiences to which the user has access. |
| `analytics.management.remarketingAudience.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}` | Updates an existing remarketing audience. This method supports patch semantics. |
| `analytics.management.remarketingAudience.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}` | Updates an existing remarketing audience. |
| `analytics.management.segments.list` | GET | `management/segments` | Lists segments to which the user has access. |
| `analytics.management.unsampledReports.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}` | Deletes an unsampled report. |
| `analytics.management.unsampledReports.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}` | Returns a single unsampled report. |
| `analytics.management.unsampledReports.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports` | Create a new unsampled report. |
| `analytics.management.unsampledReports.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports` | Lists unsampled reports to which the user has access. |
| `analytics.management.uploads.deleteUploadData` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/deleteUploadData` | Delete data associated with a previous upload. |
| `analytics.management.uploads.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads/{uploadId}` | List uploads to which the user has access. |
| `analytics.management.uploads.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads` | List uploads to which the user has access. |
| `analytics.management.uploads.uploadData` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads` | Upload data for a custom data source. |
| `analytics.management.webPropertyAdWordsLinks.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}` | Deletes a web property-Google Ads link. |
| `analytics.management.webPropertyAdWordsLinks.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}` | Returns a web property-Google Ads link to which the user has access. |
| `analytics.management.webPropertyAdWordsLinks.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks` | Creates a webProperty-Google Ads link. |
| `analytics.management.webPropertyAdWordsLinks.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks` | Lists webProperty-Google Ads links for a given web property. |
| `analytics.management.webPropertyAdWordsLinks.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}` | Updates an existing webProperty-Google Ads link. This method supports patch semantics. |
| `analytics.management.webPropertyAdWordsLinks.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}` | Updates an existing webProperty-Google Ads link. |
| `analytics.management.webproperties.get` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}` | Gets a web property to which the user has access. |
| `analytics.management.webproperties.insert` | POST | `management/accounts/{accountId}/webproperties` | Create a new property if the account has fewer than 20 properties. Web properties are visible in ... |
| `analytics.management.webproperties.list` | GET | `management/accounts/{accountId}/webproperties` | Lists web properties to which the user has access. |
| `analytics.management.webproperties.patch` | PATCH | `management/accounts/{accountId}/webproperties/{webPropertyId}` | Updates an existing web property. This method supports patch semantics. |
| `analytics.management.webproperties.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}` | Updates an existing web property. |
| `analytics.management.webpropertyUserLinks.delete` | DELETE | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}` | Removes a user from the given web property. |
| `analytics.management.webpropertyUserLinks.insert` | POST | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks` | Adds a new user to the given web property. |
| `analytics.management.webpropertyUserLinks.list` | GET | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks` | Lists webProperty-user links for a given web property. |
| `analytics.management.webpropertyUserLinks.update` | PUT | `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}` | Updates permissions for an existing user on the given web property. |
| `analytics.metadata.columns.list` | GET | `metadata/{reportType}/columns` | Lists all columns for a report type |
| `analytics.provisioning.createAccountTicket` | POST | `provisioning/createAccountTicket` | Creates an account ticket. |
| `analytics.provisioning.createAccountTree` | POST | `provisioning/createAccountTree` | Provision account. |
| `analytics.userDeletion.userDeletionRequest.upsert` | POST | `userDeletion/userDeletionRequests:upsert` | Insert or update a user deletion requests. |

### `analytics.data.ga.get`

**GET** `data/ga`

Returns Analytics data for a view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ids` | `string` | query | Yes | Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (pro... |
| `start-date` | `string` | query | Yes | Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative d... |
| `end-date` | `string` | query | Yes | End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relativ... |
| `metrics` | `string` | query | Yes | A comma-separated list of Analytics metrics. E.g., 'ga:sessions,ga:pageviews'. At least one metric must be specified. |
| `dimensions` | `string` | query | No | A comma-separated list of Analytics dimensions. E.g., 'ga:browser,ga:city'. |
| `filters` | `string` | query | No | A comma-separated list of dimension or metric filters to be applied to Analytics data. |
| `include-empty-rows` | `boolean` | query | No | The response will include empty rows if this parameter is set to true, the default is true |
| `max-results` | `integer` | query | No | The maximum number of entries to include in this feed. |
| `output` | `string` | query | No | The selected format for the response. Default format is JSON. |
| `samplingLevel` | `string` | query | No | The desired sampling level. |
| `segment` | `string` | query | No | An Analytics segment to be applied to data. |
| `sort` | `string` | query | No | A comma-separated list of dimensions or metrics that determine the sort order for Analytics data. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `GaData`

```typescript
const res = await analytics.ga.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.data.mcf.get`

**GET** `data/mcf`

Returns Analytics Multi-Channel Funnels data for a view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ids` | `string` | query | Yes | Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (pro... |
| `start-date` | `string` | query | Yes | Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative d... |
| `end-date` | `string` | query | Yes | End date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative dat... |
| `metrics` | `string` | query | Yes | A comma-separated list of Multi-Channel Funnels metrics. E.g., 'mcf:totalConversions,mcf:totalConversionValue'. At le... |
| `dimensions` | `string` | query | No | A comma-separated list of Multi-Channel Funnels dimensions. E.g., 'mcf:source,mcf:medium'. |
| `filters` | `string` | query | No | A comma-separated list of dimension or metric filters to be applied to the Analytics data. |
| `max-results` | `integer` | query | No | The maximum number of entries to include in this feed. |
| `samplingLevel` | `string` | query | No | The desired sampling level. |
| `sort` | `string` | query | No | A comma-separated list of dimensions or metrics that determine the sort order for the Analytics data. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `McfData`

```typescript
const res = await analytics.mcf.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.data.realtime.get`

**GET** `data/realtime`

Returns real time data for a view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `ids` | `string` | query | Yes | Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (pro... |
| `metrics` | `string` | query | Yes | A comma-separated list of real time metrics. E.g., 'rt:activeUsers'. At least one metric must be specified. |
| `dimensions` | `string` | query | No | A comma-separated list of real time dimensions. E.g., 'rt:medium,rt:city'. |
| `filters` | `string` | query | No | A comma-separated list of dimension or metric filters to be applied to real time data. |
| `max-results` | `integer` | query | No | The maximum number of entries to include in this feed. |
| `sort` | `string` | query | No | A comma-separated list of dimensions or metrics that determine the sort order for real time data. |

**Response**: `RealtimeData`

```typescript
const res = await analytics.realtime.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.accountSummaries.list`

**GET** `management/accountSummaries`

Lists account summaries (lightweight tree comprised of accounts/properties/profiles) to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `max-results` | `integer` | query | No | The maximum number of account summaries to include in this response, where the largest acceptable value is 1000. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `AccountSummaries`

```typescript
const res = await analytics.accountSummaries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.accountUserLinks.delete`

**DELETE** `management/accounts/{accountId}/entityUserLinks/{linkId}`

Removes a user from the given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the user link for. |
| `linkId` | `string` | path | Yes | Link ID to delete the user link for. |

```typescript
const res = await analytics.accountUserLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.accountUserLinks.insert`

**POST** `management/accounts/{accountId}/entityUserLinks`

Adds a new user to the given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.accountUserLinks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.accountUserLinks.list`

**GET** `management/accounts/{accountId}/entityUserLinks`

Lists account-user links for a given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve the user links for. |
| `max-results` | `integer` | query | No | The maximum number of account-user links to include in this response. |
| `start-index` | `integer` | query | No | An index of the first account-user link to retrieve. Use this parameter as a pagination mechanism along with the max-... |

**Response**: `EntityUserLinks`

```typescript
const res = await analytics.accountUserLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`
- `https://www.googleapis.com/auth/analytics.manage.users.readonly`

---

### `analytics.management.accountUserLinks.update`

**PUT** `management/accounts/{accountId}/entityUserLinks/{linkId}`

Updates permissions for an existing user on the given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to update the account-user link for. |
| `linkId` | `string` | path | Yes | Link ID to update the account-user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.accountUserLinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.accounts.list`

**GET** `management/accounts`

Lists all accounts to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `max-results` | `integer` | query | No | The maximum number of accounts to include in this response. |
| `start-index` | `integer` | query | No | An index of the first account to retrieve. Use this parameter as a pagination mechanism along with the max-results pa... |

**Response**: `Accounts`

```typescript
const res = await analytics.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.clientId.hashClientId`

**POST** `management/clientId:hashClientId`

Hashes the given Client ID.

**Request body**: `HashClientIdRequest`

**Response**: `HashClientIdResponse`

```typescript
const res = await analytics.clientId.hashClientId({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customDataSources.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources`

List custom data sources to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account Id for the custom data sources to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property Id for the custom data sources to retrieve. |
| `max-results` | `integer` | query | No | The maximum number of custom data sources to include in this response. |
| `start-index` | `integer` | query | No | A 1-based index of the first custom data source to retrieve. Use this parameter as a pagination mechanism along with ... |

**Response**: `CustomDataSources`

```typescript
const res = await analytics.customDataSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customDimensions.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}`

Get a custom dimension to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom dimension to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimension to retrieve. |
| `customDimensionId` | `string` | path | Yes | The ID of the custom dimension to retrieve. |

**Response**: `CustomDimension`

```typescript
const res = await analytics.customDimensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customDimensions.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions`

Create a new custom dimension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom dimension to create. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimension to create. |

**Request body**: `CustomDimension`

**Response**: `CustomDimension`

```typescript
const res = await analytics.customDimensions.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.customDimensions.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions`

Lists custom dimensions to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom dimensions to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimensions to retrieve. |
| `max-results` | `integer` | query | No | The maximum number of custom dimensions to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `CustomDimensions`

```typescript
const res = await analytics.customDimensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customDimensions.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}`

Updates an existing custom dimension. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom dimension to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimension to update. |
| `customDimensionId` | `string` | path | Yes | Custom dimension ID for the custom dimension to update. |
| `ignoreCustomDataSourceLinks` | `boolean` | query | No | Force the update and ignore any warnings related to the custom dimension being linked to a custom data source / data ... |

**Request body**: `CustomDimension`

**Response**: `CustomDimension`

```typescript
const res = await analytics.customDimensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.customDimensions.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDimensions/{customDimensionId}`

Updates an existing custom dimension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom dimension to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimension to update. |
| `customDimensionId` | `string` | path | Yes | Custom dimension ID for the custom dimension to update. |
| `ignoreCustomDataSourceLinks` | `boolean` | query | No | Force the update and ignore any warnings related to the custom dimension being linked to a custom data source / data ... |

**Request body**: `CustomDimension`

**Response**: `CustomDimension`

```typescript
const res = await analytics.customDimensions.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.customMetrics.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}`

Get a custom metric to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom metric to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom metric to retrieve. |
| `customMetricId` | `string` | path | Yes | The ID of the custom metric to retrieve. |

**Response**: `CustomMetric`

```typescript
const res = await analytics.customMetrics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customMetrics.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics`

Create a new custom metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom metric to create. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom dimension to create. |

**Request body**: `CustomMetric`

**Response**: `CustomMetric`

```typescript
const res = await analytics.customMetrics.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.customMetrics.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics`

Lists custom metrics to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom metrics to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom metrics to retrieve. |
| `max-results` | `integer` | query | No | The maximum number of custom metrics to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `CustomMetrics`

```typescript
const res = await analytics.customMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.customMetrics.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}`

Updates an existing custom metric. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom metric to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom metric to update. |
| `customMetricId` | `string` | path | Yes | Custom metric ID for the custom metric to update. |
| `ignoreCustomDataSourceLinks` | `boolean` | query | No | Force the update and ignore any warnings related to the custom metric being linked to a custom data source / data set. |

**Request body**: `CustomMetric`

**Response**: `CustomMetric`

```typescript
const res = await analytics.customMetrics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.customMetrics.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/customMetrics/{customMetricId}`

Updates an existing custom metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the custom metric to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID for the custom metric to update. |
| `customMetricId` | `string` | path | Yes | Custom metric ID for the custom metric to update. |
| `ignoreCustomDataSourceLinks` | `boolean` | query | No | Force the update and ignore any warnings related to the custom metric being linked to a custom data source / data set. |

**Request body**: `CustomMetric`

**Response**: `CustomMetric`

```typescript
const res = await analytics.customMetrics.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.experiments.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}`

Delete an experiment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the experiment belongs |
| `webPropertyId` | `string` | path | Yes | Web property ID to which the experiment belongs |
| `profileId` | `string` | path | Yes | View (Profile) ID to which the experiment belongs |
| `experimentId` | `string` | path | Yes | ID of the experiment to delete |

```typescript
const res = await analytics.experiments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.experiments.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}`

Returns an experiment to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve the experiment for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the experiment for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve the experiment for. |
| `experimentId` | `string` | path | Yes | Experiment ID to retrieve the experiment for. |

**Response**: `Experiment`

```typescript
const res = await analytics.experiments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.experiments.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments`

Create a new experiment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the experiment for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to create the experiment for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to create the experiment for. |

**Request body**: `Experiment`

**Response**: `Experiment`

```typescript
const res = await analytics.experiments.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.experiments.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments`

Lists experiments to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve experiments for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve experiments for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve experiments for. |
| `max-results` | `integer` | query | No | The maximum number of experiments to include in this response. |
| `start-index` | `integer` | query | No | An index of the first experiment to retrieve. Use this parameter as a pagination mechanism along with the max-results... |

**Response**: `Experiments`

```typescript
const res = await analytics.experiments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.experiments.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}`

Update an existing experiment. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the experiment to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID of the experiment to update. |
| `profileId` | `string` | path | Yes | View (Profile) ID of the experiment to update. |
| `experimentId` | `string` | path | Yes | Experiment ID of the experiment to update. |

**Request body**: `Experiment`

**Response**: `Experiment`

```typescript
const res = await analytics.experiments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.experiments.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}`

Update an existing experiment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID of the experiment to update. |
| `webPropertyId` | `string` | path | Yes | Web property ID of the experiment to update. |
| `profileId` | `string` | path | Yes | View (Profile) ID of the experiment to update. |
| `experimentId` | `string` | path | Yes | Experiment ID of the experiment to update. |

**Request body**: `Experiment`

**Response**: `Experiment`

```typescript
const res = await analytics.experiments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.filters.delete`

**DELETE** `management/accounts/{accountId}/filters/{filterId}`

Delete a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the filter for. |
| `filterId` | `string` | path | Yes | ID of the filter to be deleted. |

**Response**: `Filter`

```typescript
const res = await analytics.filters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.filters.get`

**GET** `management/accounts/{accountId}/filters/{filterId}`

Returns filters to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve filters for. |
| `filterId` | `string` | path | Yes | Filter ID to retrieve filters for. |

**Response**: `Filter`

```typescript
const res = await analytics.filters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.filters.insert`

**POST** `management/accounts/{accountId}/filters`

Create a new filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create filter for. |

**Request body**: `Filter`

**Response**: `Filter`

```typescript
const res = await analytics.filters.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.filters.list`

**GET** `management/accounts/{accountId}/filters`

Lists all filters for an account

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve filters for. |
| `max-results` | `integer` | query | No | The maximum number of filters to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `Filters`

```typescript
const res = await analytics.filters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.filters.patch`

**PATCH** `management/accounts/{accountId}/filters/{filterId}`

Updates an existing filter. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the filter belongs. |
| `filterId` | `string` | path | Yes | ID of the filter to be updated. |

**Request body**: `Filter`

**Response**: `Filter`

```typescript
const res = await analytics.filters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.filters.update`

**PUT** `management/accounts/{accountId}/filters/{filterId}`

Updates an existing filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the filter belongs. |
| `filterId` | `string` | path | Yes | ID of the filter to be updated. |

**Request body**: `Filter`

**Response**: `Filter`

```typescript
const res = await analytics.filters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.goals.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}`

Gets a goal to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve the goal for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the goal for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve the goal for. |
| `goalId` | `string` | path | Yes | Goal ID to retrieve the goal for. |

**Response**: `Goal`

```typescript
const res = await analytics.goals.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.goals.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals`

Create a new goal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the goal for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to create the goal for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to create the goal for. |

**Request body**: `Goal`

**Response**: `Goal`

```typescript
const res = await analytics.goals.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.goals.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals`

Lists goals to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve goals for. Can either be a specific account ID or '~all', which refers to all the accounts tha... |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve goals for. Can either be a specific web property ID or '~all', which refers to all the we... |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve goals for. Can either be a specific view (profile) ID or '~all', which refers to all th... |
| `max-results` | `integer` | query | No | The maximum number of goals to include in this response. |
| `start-index` | `integer` | query | No | An index of the first goal to retrieve. Use this parameter as a pagination mechanism along with the max-results param... |

**Response**: `Goals`

```typescript
const res = await analytics.goals.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.goals.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}`

Updates an existing goal. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to update the goal. |
| `webPropertyId` | `string` | path | Yes | Web property ID to update the goal. |
| `profileId` | `string` | path | Yes | View (Profile) ID to update the goal. |
| `goalId` | `string` | path | Yes | Index of the goal to be updated. |

**Request body**: `Goal`

**Response**: `Goal`

```typescript
const res = await analytics.goals.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.goals.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}`

Updates an existing goal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to update the goal. |
| `webPropertyId` | `string` | path | Yes | Web property ID to update the goal. |
| `profileId` | `string` | path | Yes | View (Profile) ID to update the goal. |
| `goalId` | `string` | path | Yes | Index of the goal to be updated. |

**Request body**: `Goal`

**Response**: `Goal`

```typescript
const res = await analytics.goals.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profileFilterLinks.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}`

Delete a profile filter link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the profile filter link belongs. |
| `webPropertyId` | `string` | path | Yes | Web property Id to which the profile filter link belongs. |
| `profileId` | `string` | path | Yes | Profile ID to which the filter link belongs. |
| `linkId` | `string` | path | Yes | ID of the profile filter link to delete. |

```typescript
const res = await analytics.profileFilterLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profileFilterLinks.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}`

Returns a single profile filter link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve profile filter link for. |
| `webPropertyId` | `string` | path | Yes | Web property Id to retrieve profile filter link for. |
| `profileId` | `string` | path | Yes | Profile ID to retrieve filter link for. |
| `linkId` | `string` | path | Yes | ID of the profile filter link. |

**Response**: `ProfileFilterLink`

```typescript
const res = await analytics.profileFilterLinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.profileFilterLinks.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks`

Create a new profile filter link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create profile filter link for. |
| `webPropertyId` | `string` | path | Yes | Web property Id to create profile filter link for. |
| `profileId` | `string` | path | Yes | Profile ID to create filter link for. |

**Request body**: `ProfileFilterLink`

**Response**: `ProfileFilterLink`

```typescript
const res = await analytics.profileFilterLinks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profileFilterLinks.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks`

Lists all profile filter links for a profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve profile filter links for. |
| `webPropertyId` | `string` | path | Yes | Web property Id for profile filter links for. Can either be a specific web property ID or '~all', which refers to all... |
| `profileId` | `string` | path | Yes | Profile ID to retrieve filter links for. Can either be a specific profile ID or '~all', which refers to all the profi... |
| `max-results` | `integer` | query | No | The maximum number of profile filter links to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `ProfileFilterLinks`

```typescript
const res = await analytics.profileFilterLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.profileFilterLinks.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}`

Update an existing profile filter link. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which profile filter link belongs. |
| `webPropertyId` | `string` | path | Yes | Web property Id to which profile filter link belongs |
| `profileId` | `string` | path | Yes | Profile ID to which filter link belongs |
| `linkId` | `string` | path | Yes | ID of the profile filter link to be updated. |

**Request body**: `ProfileFilterLink`

**Response**: `ProfileFilterLink`

```typescript
const res = await analytics.profileFilterLinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profileFilterLinks.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/profileFilterLinks/{linkId}`

Update an existing profile filter link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which profile filter link belongs. |
| `webPropertyId` | `string` | path | Yes | Web property Id to which profile filter link belongs |
| `profileId` | `string` | path | Yes | Profile ID to which filter link belongs |
| `linkId` | `string` | path | Yes | ID of the profile filter link to be updated. |

**Request body**: `ProfileFilterLink`

**Response**: `ProfileFilterLink`

```typescript
const res = await analytics.profileFilterLinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profileUserLinks.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}`

Removes a user from the given view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the user link for. |
| `webPropertyId` | `string` | path | Yes | Web Property ID to delete the user link for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to delete the user link for. |
| `linkId` | `string` | path | Yes | Link ID to delete the user link for. |

```typescript
const res = await analytics.profileUserLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.profileUserLinks.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks`

Adds a new user to the given view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the user link for. |
| `webPropertyId` | `string` | path | Yes | Web Property ID to create the user link for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to create the user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.profileUserLinks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.profileUserLinks.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks`

Lists profile-user links for a given view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID which the given view (profile) belongs to. |
| `webPropertyId` | `string` | path | Yes | Web Property ID which the given view (profile) belongs to. Can either be a specific web property ID or '~all', which ... |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve the profile-user links for. Can either be a specific profile ID or '~all', which refers... |
| `max-results` | `integer` | query | No | The maximum number of profile-user links to include in this response. |
| `start-index` | `integer` | query | No | An index of the first profile-user link to retrieve. Use this parameter as a pagination mechanism along with the max-... |

**Response**: `EntityUserLinks`

```typescript
const res = await analytics.profileUserLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`
- `https://www.googleapis.com/auth/analytics.manage.users.readonly`

---

### `analytics.management.profileUserLinks.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}`

Updates permissions for an existing user on the given view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to update the user link for. |
| `webPropertyId` | `string` | path | Yes | Web Property ID to update the user link for. |
| `profileId` | `string` | path | Yes | View (Profile ID) to update the user link for. |
| `linkId` | `string` | path | Yes | Link ID to update the user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.profileUserLinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.profiles.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}`

Deletes a view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the view (profile) for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to delete the view (profile) for. |
| `profileId` | `string` | path | Yes | ID of the view (profile) to be deleted. |

```typescript
const res = await analytics.profiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profiles.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}`

Gets a view (profile) to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve the view (profile) for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the view (profile) for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve the view (profile) for. |

**Response**: `Profile`

```typescript
const res = await analytics.profiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.profiles.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles`

Create a new view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the view (profile) for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to create the view (profile) for. |

**Request body**: `Profile`

**Response**: `Profile`

```typescript
const res = await analytics.profiles.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profiles.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles`

Lists views (profiles) to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID for the view (profiles) to retrieve. Can either be a specific account ID or '~all', which refers to all th... |
| `webPropertyId` | `string` | path | Yes | Web property ID for the views (profiles) to retrieve. Can either be a specific web property ID or '~all', which refer... |
| `max-results` | `integer` | query | No | The maximum number of views (profiles) to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `Profiles`

```typescript
const res = await analytics.profiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.profiles.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}`

Updates an existing view (profile). This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the view (profile) belongs |
| `webPropertyId` | `string` | path | Yes | Web property ID to which the view (profile) belongs |
| `profileId` | `string` | path | Yes | ID of the view (profile) to be updated. |

**Request body**: `Profile`

**Response**: `Profile`

```typescript
const res = await analytics.profiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.profiles.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}`

Updates an existing view (profile).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the view (profile) belongs |
| `webPropertyId` | `string` | path | Yes | Web property ID to which the view (profile) belongs |
| `profileId` | `string` | path | Yes | ID of the view (profile) to be updated. |

**Request body**: `Profile`

**Response**: `Profile`

```typescript
const res = await analytics.profiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.remarketingAudience.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}`

Delete a remarketing audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the remarketing audience belongs. |
| `webPropertyId` | `string` | path | Yes | Web property ID to which the remarketing audience belongs. |
| `remarketingAudienceId` | `string` | path | Yes | The ID of the remarketing audience to delete. |

```typescript
const res = await analytics.remarketingAudience.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.remarketingAudience.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}`

Gets a remarketing audience to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account ID of the remarketing audience to retrieve. |
| `webPropertyId` | `string` | path | Yes | The web property ID of the remarketing audience to retrieve. |
| `remarketingAudienceId` | `string` | path | Yes | The ID of the remarketing audience to retrieve. |

**Response**: `RemarketingAudience`

```typescript
const res = await analytics.remarketingAudience.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.remarketingAudience.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences`

Creates a new remarketing audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account ID for which to create the remarketing audience. |
| `webPropertyId` | `string` | path | Yes | Web property ID for which to create the remarketing audience. |

**Request body**: `RemarketingAudience`

**Response**: `RemarketingAudience`

```typescript
const res = await analytics.remarketingAudience.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.remarketingAudience.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences`

Lists remarketing audiences to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account ID of the remarketing audiences to retrieve. |
| `webPropertyId` | `string` | path | Yes | The web property ID of the remarketing audiences to retrieve. |
| `max-results` | `integer` | query | No | The maximum number of remarketing audiences to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |
| `type` | `string` | query | No |  |

**Response**: `RemarketingAudiences`

```typescript
const res = await analytics.remarketingAudience.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.remarketingAudience.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}`

Updates an existing remarketing audience. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account ID of the remarketing audience to update. |
| `webPropertyId` | `string` | path | Yes | The web property ID of the remarketing audience to update. |
| `remarketingAudienceId` | `string` | path | Yes | The ID of the remarketing audience to update. |

**Request body**: `RemarketingAudience`

**Response**: `RemarketingAudience`

```typescript
const res = await analytics.remarketingAudience.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.remarketingAudience.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/remarketingAudiences/{remarketingAudienceId}`

Updates an existing remarketing audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | The account ID of the remarketing audience to update. |
| `webPropertyId` | `string` | path | Yes | The web property ID of the remarketing audience to update. |
| `remarketingAudienceId` | `string` | path | Yes | The ID of the remarketing audience to update. |

**Request body**: `RemarketingAudience`

**Response**: `RemarketingAudience`

```typescript
const res = await analytics.remarketingAudience.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.segments.list`

**GET** `management/segments`

Lists segments to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `max-results` | `integer` | query | No | The maximum number of segments to include in this response. |
| `start-index` | `integer` | query | No | An index of the first segment to retrieve. Use this parameter as a pagination mechanism along with the max-results pa... |

**Response**: `Segments`

```typescript
const res = await analytics.segments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.unsampledReports.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}`

Deletes an unsampled report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the unsampled report for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to delete the unsampled reports for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to delete the unsampled report for. |
| `unsampledReportId` | `string` | path | Yes | ID of the unsampled report to be deleted. |

```typescript
const res = await analytics.unsampledReports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.unsampledReports.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports/{unsampledReportId}`

Returns a single unsampled report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve unsampled report for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve unsampled reports for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve unsampled report for. |
| `unsampledReportId` | `string` | path | Yes | ID of the unsampled report to retrieve. |

**Response**: `UnsampledReport`

```typescript
const res = await analytics.unsampledReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.unsampledReports.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports`

Create a new unsampled report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the unsampled report for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to create the unsampled report for. |
| `profileId` | `string` | path | Yes | View (Profile) ID to create the unsampled report for. |

**Request body**: `UnsampledReport`

**Response**: `UnsampledReport`

```typescript
const res = await analytics.unsampledReports.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.unsampledReports.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/unsampledReports`

Lists unsampled reports to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve unsampled reports for. Must be a specific account ID, ~all is not supported. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve unsampled reports for. Must be a specific web property ID, ~all is not supported. |
| `profileId` | `string` | path | Yes | View (Profile) ID to retrieve unsampled reports for. Must be a specific view (profile) ID, ~all is not supported. |
| `max-results` | `integer` | query | No | The maximum number of unsampled reports to include in this response. |
| `start-index` | `integer` | query | No | An index of the first unsampled report to retrieve. Use this parameter as a pagination mechanism along with the max-r... |

**Response**: `UnsampledReports`

```typescript
const res = await analytics.unsampledReports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.uploads.deleteUploadData`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/deleteUploadData`

Delete data associated with a previous upload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account Id for the uploads to be deleted. |
| `webPropertyId` | `string` | path | Yes | Web property Id for the uploads to be deleted. |
| `customDataSourceId` | `string` | path | Yes | Custom data source Id for the uploads to be deleted. |

**Request body**: `AnalyticsDataimportDeleteUploadDataRequest`

```typescript
const res = await analytics.uploads.deleteUploadData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.uploads.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads/{uploadId}`

List uploads to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account Id for the upload to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property Id for the upload to retrieve. |
| `customDataSourceId` | `string` | path | Yes | Custom data source Id for upload to retrieve. |
| `uploadId` | `string` | path | Yes | Upload Id to retrieve. |

**Response**: `Upload`

```typescript
const res = await analytics.uploads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.uploads.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads`

List uploads to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account Id for the uploads to retrieve. |
| `webPropertyId` | `string` | path | Yes | Web property Id for the uploads to retrieve. |
| `customDataSourceId` | `string` | path | Yes | Custom data source Id for uploads to retrieve. |
| `max-results` | `integer` | query | No | The maximum number of uploads to include in this response. |
| `start-index` | `integer` | query | No | A 1-based index of the first upload to retrieve. Use this parameter as a pagination mechanism along with the max-resu... |

**Response**: `Uploads`

```typescript
const res = await analytics.uploads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.uploads.uploadData`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads`

Upload data for a custom data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account Id associated with the upload. |
| `webPropertyId` | `string` | path | Yes | Web property UA-string associated with the upload. |
| `customDataSourceId` | `string` | path | Yes | Custom data source Id to which the data being uploaded belongs. |

**Response**: `Upload`

```typescript
const res = await analytics.uploads.uploadData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webPropertyAdWordsLinks.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}`

Deletes a web property-Google Ads link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the account which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web property ID to delete the Google Ads link for. |
| `webPropertyAdWordsLinkId` | `string` | path | Yes | Web property Google Ads link ID. |

```typescript
const res = await analytics.webPropertyAdWordsLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webPropertyAdWordsLinks.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}`

Returns a web property-Google Ads link to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the account which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the Google Ads link for. |
| `webPropertyAdWordsLinkId` | `string` | path | Yes | Web property-Google Ads link ID. |

**Response**: `EntityAdWordsLink`

```typescript
const res = await analytics.webPropertyAdWordsLinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.webPropertyAdWordsLinks.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks`

Creates a webProperty-Google Ads link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the Google Analytics account to create the link for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to create the link for. |

**Request body**: `EntityAdWordsLink`

**Response**: `EntityAdWordsLink`

```typescript
const res = await analytics.webPropertyAdWordsLinks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webPropertyAdWordsLinks.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks`

Lists webProperty-Google Ads links for a given web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the account which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the Google Ads links for. |
| `max-results` | `integer` | query | No | The maximum number of webProperty-Google Ads links to include in this response. |
| `start-index` | `integer` | query | No | An index of the first webProperty-Google Ads link to retrieve. Use this parameter as a pagination mechanism along wit... |

**Response**: `EntityAdWordsLinks`

```typescript
const res = await analytics.webPropertyAdWordsLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.webPropertyAdWordsLinks.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}`

Updates an existing webProperty-Google Ads link. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the account which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the Google Ads link for. |
| `webPropertyAdWordsLinkId` | `string` | path | Yes | Web property-Google Ads link ID. |

**Request body**: `EntityAdWordsLink`

**Response**: `EntityAdWordsLink`

```typescript
const res = await analytics.webPropertyAdWordsLinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webPropertyAdWordsLinks.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityAdWordsLinks/{webPropertyAdWordsLinkId}`

Updates an existing webProperty-Google Ads link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | ID of the account which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web property ID to retrieve the Google Ads link for. |
| `webPropertyAdWordsLinkId` | `string` | path | Yes | Web property-Google Ads link ID. |

**Request body**: `EntityAdWordsLink`

**Response**: `EntityAdWordsLink`

```typescript
const res = await analytics.webPropertyAdWordsLinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webproperties.get`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}`

Gets a web property to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve the web property for. |
| `webPropertyId` | `string` | path | Yes | ID to retrieve the web property for. |

**Response**: `Webproperty`

```typescript
const res = await analytics.webproperties.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.webproperties.insert`

**POST** `management/accounts/{accountId}/webproperties`

Create a new property if the account has fewer than 20 properties. Web properties are visible in the Google Analytics interface only if they have at least one profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the web property for. |

**Request body**: `Webproperty`

**Response**: `Webproperty`

```typescript
const res = await analytics.webproperties.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webproperties.list`

**GET** `management/accounts/{accountId}/webproperties`

Lists web properties to which the user has access.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to retrieve web properties for. Can either be a specific account ID or '~all', which refers to all the acc... |
| `max-results` | `integer` | query | No | The maximum number of web properties to include in this response. |
| `start-index` | `integer` | query | No | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results par... |

**Response**: `Webproperties`

```typescript
const res = await analytics.webproperties.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.management.webproperties.patch`

**PATCH** `management/accounts/{accountId}/webproperties/{webPropertyId}`

Updates an existing web property. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the web property belongs |
| `webPropertyId` | `string` | path | Yes | Web property ID |

**Request body**: `Webproperty`

**Response**: `Webproperty`

```typescript
const res = await analytics.webproperties.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webproperties.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}`

Updates an existing web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to which the web property belongs |
| `webPropertyId` | `string` | path | Yes | Web property ID |

**Request body**: `Webproperty`

**Response**: `Webproperty`

```typescript
const res = await analytics.webproperties.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analytics.management.webpropertyUserLinks.delete`

**DELETE** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}`

Removes a user from the given web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to delete the user link for. |
| `webPropertyId` | `string` | path | Yes | Web Property ID to delete the user link for. |
| `linkId` | `string` | path | Yes | Link ID to delete the user link for. |

```typescript
const res = await analytics.webpropertyUserLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.webpropertyUserLinks.insert`

**POST** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks`

Adds a new user to the given web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to create the user link for. |
| `webPropertyId` | `string` | path | Yes | Web Property ID to create the user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.webpropertyUserLinks.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.management.webpropertyUserLinks.list`

**GET** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks`

Lists webProperty-user links for a given web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID which the given web property belongs to. |
| `webPropertyId` | `string` | path | Yes | Web Property ID for the webProperty-user links to retrieve. Can either be a specific web property ID or '~all', which... |
| `max-results` | `integer` | query | No | The maximum number of webProperty-user Links to include in this response. |
| `start-index` | `integer` | query | No | An index of the first webProperty-user link to retrieve. Use this parameter as a pagination mechanism along with the ... |

**Response**: `EntityUserLinks`

```typescript
const res = await analytics.webpropertyUserLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`
- `https://www.googleapis.com/auth/analytics.manage.users.readonly`

---

### `analytics.management.webpropertyUserLinks.update`

**PUT** `management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}`

Updates permissions for an existing user on the given web property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountId` | `string` | path | Yes | Account ID to update the account-user link for. |
| `webPropertyId` | `string` | path | Yes | Web property ID to update the account-user link for. |
| `linkId` | `string` | path | Yes | Link ID to update the account-user link for. |

**Request body**: `EntityUserLink`

**Response**: `EntityUserLink`

```typescript
const res = await analytics.webpropertyUserLinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.manage.users`

---

### `analytics.metadata.columns.list`

**GET** `metadata/{reportType}/columns`

Lists all columns for a report type

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `reportType` | `string` | path | Yes | Report type. Allowed Values: 'ga'. Where 'ga' corresponds to the Core Reporting API |

**Response**: `Columns`

```typescript
const res = await analytics.columns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics`
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analytics.provisioning.createAccountTicket`

**POST** `provisioning/createAccountTicket`

Creates an account ticket.

**Request body**: `AccountTicket`

**Response**: `AccountTicket`

```typescript
const res = await analytics.provisioning.createAccountTicket({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.provision`

---

### `analytics.provisioning.createAccountTree`

**POST** `provisioning/createAccountTree`

Provision account.

**Request body**: `AccountTreeRequest`

**Response**: `AccountTreeResponse`

```typescript
const res = await analytics.provisioning.createAccountTree({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.provision`

---

### `analytics.userDeletion.userDeletionRequest.upsert`

**POST** `userDeletion/userDeletionRequests:upsert`

Insert or update a user deletion requests.

**Request body**: `UserDeletionRequest`

**Response**: `UserDeletionRequest`

```typescript
const res = await analytics.userDeletionRequest.upsert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.user.deletion`

---

## Schemas

### `Account`

JSON template for Analytics account entry.

| Property | Type | Description |
|----------|------|-------------|
| `childLink` | `object` | Child link for an account entry. Points to the list of web properties for this account. |
| `created` | `string` | Time the account was created. |
| `id` | `string` | Account ID. |
| `kind` | `string` | Resource type for Analytics account. |
| `name` | `string` | Account name. |
| `permissions` | `object` | Permissions the user has for this account. |
| `selfLink` | `string` | Link for this account. |
| `starred` | `boolean` | Indicates whether this account is starred or not. |
| `updated` | `string` | Time the account was last modified. |

### `AccountRef`

JSON template for a linked account.

| Property | Type | Description |
|----------|------|-------------|
| `href` | `string` | Link for this account. |
| `id` | `string` | Account ID. |
| `kind` | `string` | Analytics account reference. |
| `name` | `string` | Account name. |

### `AccountSummaries`

An AccountSummary collection lists a summary of accounts, properties and views (profiles) to which the user has access. Each resource in the collection corresponds to a single AccountSummary.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<AccountSummary>` | A list of AccountSummaries. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this AccountSummary collection. |
| `previousLink` | `string` | Link to previous page for this AccountSummary collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `AccountSummary`

JSON template for an Analytics AccountSummary. An AccountSummary is a lightweight tree comprised of properties/profiles.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Account ID. |
| `kind` | `string` | Resource type for Analytics AccountSummary. |
| `name` | `string` | Account name. |
| `starred` | `boolean` | Indicates whether this account is starred or not. |
| `webProperties` | `array<WebPropertySummary>` | List of web properties under this account. |

### `AccountTicket`

JSON template for an Analytics account ticket. The account ticket consists of the ticket ID and the basic information for the account, property and profile.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `Account` | Account for this ticket. |
| `id` | `string` | Account ticket ID used to access the account ticket. |
| `kind` | `string` | Resource type for account ticket. |
| `profile` | `Profile` | View (Profile) for the account. |
| `redirectUri` | `string` | Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in ... |
| `webproperty` | `Webproperty` | Web property for the account. |

### `AccountTreeRequest`

JSON template for an Analytics account tree requests. The account tree request is used in the provisioning api to create an account, property, and view (profile). It contains the basic information required to make these fields.

| Property | Type | Description |
|----------|------|-------------|
| `accountName` | `string` |  |
| `kind` | `string` | Resource type for account ticket. |
| `profileName` | `string` |  |
| `timezone` | `string` |  |
| `webpropertyName` | `string` |  |
| `websiteUrl` | `string` |  |

### `AccountTreeResponse`

JSON template for an Analytics account tree response. The account tree response is used in the provisioning api to return the result of creating an account, property, and view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `account` | `Account` | The account created. |
| `kind` | `string` | Resource type for account ticket. |
| `profile` | `Profile` | View (Profile) for the account. |
| `webproperty` | `Webproperty` | Web property for the account. |

### `Accounts`

An account collection provides a list of Analytics accounts to which a user has access. The account collection is the entry point to all management information. Each resource in the collection corresponds to a single Analytics account.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Account>` | A list of accounts. |
| `itemsPerPage` | `integer` | The maximum number of entries the response can contain, regardless of the actual number of entrie... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Next link for this account collection. |
| `previousLink` | `string` | Previous link for this account collection. |
| `startIndex` | `integer` | The starting index of the entries, which is 1 by default or otherwise specified by the start-inde... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `AdWordsAccount`

JSON template for an Google Ads account.

| Property | Type | Description |
|----------|------|-------------|
| `autoTaggingEnabled` | `boolean` | True if auto-tagging is enabled on the Google Ads account. Read-only after the insert operation. |
| `customerId` | `string` | Customer ID. This field is required when creating a Google Ads link. |
| `kind` | `string` | Resource type for Google Ads account. |

### `AnalyticsDataimportDeleteUploadDataRequest`

Request template for the delete upload data request.

| Property | Type | Description |
|----------|------|-------------|
| `customDataImportUids` | `array<string>` | A list of upload UIDs. |

### `Column`

JSON template for a metadata column.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Map of attribute name and value for this column. |
| `id` | `string` | Column id. |
| `kind` | `string` | Resource type for Analytics column. |

### `Columns`

Lists columns (dimensions and metrics) for a particular report type.

| Property | Type | Description |
|----------|------|-------------|
| `attributeNames` | `array<string>` | List of attributes names returned by columns. |
| `etag` | `string` | Etag of collection. This etag can be compared with the last response etag to check if response ha... |
| `items` | `array<Column>` | List of columns for a report type. |
| `kind` | `string` | Collection type. |
| `totalResults` | `integer` | Total number of columns returned in the response. |

### `CustomDataSource`

JSON template for an Analytics custom data source.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this custom data source belongs. |
| `childLink` | `object` |  |
| `created` | `string` | Time this custom data source was created. |
| `description` | `string` | Description of custom data source. |
| `id` | `string` | Custom data source ID. |
| `importBehavior` | `string` |  |
| `kind` | `string` | Resource type for Analytics custom data source. |
| `name` | `string` | Name of this custom data source. |
| `parentLink` | `object` | Parent link for this custom data source. Points to the web property to which this custom data sou... |
| `profilesLinked` | `array<string>` | IDs of views (profiles) linked to the custom data source. |
| `schema` | `array<string>` | Collection of schema headers of the custom data source. |
| `selfLink` | `string` | Link for this Analytics custom data source. |
| `type` | `string` | Type of the custom data source. |
| `updated` | `string` | Time this custom data source was last modified. |
| `uploadType` | `string` | Upload type of the custom data source. |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY to which this custom data source belongs. |

### `CustomDataSources`

Lists Analytics custom data sources to which the user has access. Each resource in the collection corresponds to a single Analytics custom data source.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<CustomDataSource>` | Collection of custom data sources. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this custom data source collection. |
| `previousLink` | `string` | Link to previous page for this custom data source collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `CustomDimension`

JSON template for Analytics Custom Dimension.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID. |
| `active` | `boolean` | Boolean indicating whether the custom dimension is active. |
| `created` | `string` | Time the custom dimension was created. |
| `id` | `string` | Custom dimension ID. |
| `index` | `integer` | Index of the custom dimension. |
| `kind` | `string` | Kind value for a custom dimension. Set to "analytics#customDimension". It is a read-only field. |
| `name` | `string` | Name of the custom dimension. |
| `parentLink` | `object` | Parent link for the custom dimension. Points to the property to which the custom dimension belongs. |
| `scope` | `string` | Scope of the custom dimension: HIT, SESSION, USER or PRODUCT. |
| `selfLink` | `string` | Link for the custom dimension |
| `updated` | `string` | Time the custom dimension was last modified. |
| `webPropertyId` | `string` | Property ID. |

### `CustomDimensions`

A custom dimension collection lists Analytics custom dimensions to which the user has access. Each resource in the collection corresponds to a single Analytics custom dimension.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<CustomDimension>` | Collection of custom dimensions. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this custom dimension collection. |
| `previousLink` | `string` | Link to previous page for this custom dimension collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `CustomMetric`

JSON template for Analytics Custom Metric.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID. |
| `active` | `boolean` | Boolean indicating whether the custom metric is active. |
| `created` | `string` | Time the custom metric was created. |
| `id` | `string` | Custom metric ID. |
| `index` | `integer` | Index of the custom metric. |
| `kind` | `string` | Kind value for a custom metric. Set to "analytics#customMetric". It is a read-only field. |
| `max_value` | `string` | Max value of custom metric. |
| `min_value` | `string` | Min value of custom metric. |
| `name` | `string` | Name of the custom metric. |
| `parentLink` | `object` | Parent link for the custom metric. Points to the property to which the custom metric belongs. |
| `scope` | `string` | Scope of the custom metric: HIT or PRODUCT. |
| `selfLink` | `string` | Link for the custom metric |
| `type` | `string` | Data type of custom metric. |
| `updated` | `string` | Time the custom metric was last modified. |
| `webPropertyId` | `string` | Property ID. |

### `CustomMetrics`

A custom metric collection lists Analytics custom metrics to which the user has access. Each resource in the collection corresponds to a single Analytics custom metric.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<CustomMetric>` | Collection of custom metrics. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this custom metric collection. |
| `previousLink` | `string` | Link to previous page for this custom metric collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `EntityAdWordsLink`

JSON template for Analytics Entity Google Ads Link.

| Property | Type | Description |
|----------|------|-------------|
| `adWordsAccounts` | `array<AdWordsAccount>` | A list of Google Ads client accounts. These cannot be MCC accounts. This field is required when c... |
| `entity` | `object` | Web property being linked. |
| `id` | `string` | Entity Google Ads link ID |
| `kind` | `string` | Resource type for entity Google Ads link. |
| `name` | `string` | Name of the link. This field is required when creating a Google Ads link. |
| `profileIds` | `array<string>` | IDs of linked Views (Profiles) represented as strings. |
| `selfLink` | `string` | URL link for this Google Analytics - Google Ads link. |

### `EntityAdWordsLinks`

An entity Google Ads link collection provides a list of GA-Google Ads links Each resource in this collection corresponds to a single link.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<EntityAdWordsLink>` | A list of entity Google Ads links. |
| `itemsPerPage` | `integer` | The maximum number of entries the response can contain, regardless of the actual number of entrie... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Next link for this Google Ads link collection. |
| `previousLink` | `string` | Previous link for this Google Ads link collection. |
| `startIndex` | `integer` | The starting index of the entries, which is 1 by default or otherwise specified by the start-inde... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |

### `EntityUserLink`

JSON template for an Analytics Entity-User Link. Returns permissions that a user has for an entity.

| Property | Type | Description |
|----------|------|-------------|
| `entity` | `object` | Entity for this link. It can be an account, a web property, or a view (profile). |
| `id` | `string` | Entity user link ID |
| `kind` | `string` | Resource type for entity user link. |
| `permissions` | `object` | Permissions the user has for this entity. |
| `selfLink` | `string` | Self link for this resource. |
| `userRef` | `UserRef` | User reference. |

### `EntityUserLinks`

An entity user link collection provides a list of Analytics ACL links Each resource in this collection corresponds to a single link.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<EntityUserLink>` | A list of entity user links. |
| `itemsPerPage` | `integer` | The maximum number of entries the response can contain, regardless of the actual number of entrie... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Next link for this account collection. |
| `previousLink` | `string` | Previous link for this account collection. |
| `startIndex` | `integer` | The starting index of the entries, which is 1 by default or otherwise specified by the start-inde... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |

### `Experiment`

JSON template for Analytics experiment resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this experiment belongs. This field is read-only. |
| `created` | `string` | Time the experiment was created. This field is read-only. |
| `description` | `string` | Notes about this experiment. |
| `editableInGaUi` | `boolean` | If true, the end user will be able to edit the experiment via the Google Analytics user interface. |
| `endTime` | `string` | The ending time of the experiment (the time the status changed from RUNNING to ENDED). This field... |
| `equalWeighting` | `boolean` | Boolean specifying whether to distribute traffic evenly across all variations. If the value is Fa... |
| `id` | `string` | Experiment ID. Required for patch and update. Disallowed for create. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this experiment belongs. This field is read-only. |
| `kind` | `string` | Resource type for an Analytics experiment. This field is read-only. |
| `minimumExperimentLengthInDays` | `integer` | An integer number in [3, 90]. Specifies the minimum length of the experiment. Can be changed for ... |
| `name` | `string` | Experiment name. This field may not be changed for an experiment whose status is ENDED. This fiel... |
| `objectiveMetric` | `string` | The metric that the experiment is optimizing. Valid values: "ga:goal(n)Completions", "ga:adsenseA... |
| `optimizationType` | `string` | Whether the objectiveMetric should be minimized or maximized. Possible values: "MAXIMUM", "MINIMU... |
| `parentLink` | `object` | Parent link for an experiment. Points to the view (profile) to which this experiment belongs. |
| `profileId` | `string` | View (Profile) ID to which this experiment belongs. This field is read-only. |
| `reasonExperimentEnded` | `string` | Why the experiment ended. Possible values: "STOPPED_BY_USER", "WINNER_FOUND", "EXPERIMENT_EXPIRED... |
| `rewriteVariationUrlsAsOriginal` | `boolean` | Boolean specifying whether variations URLS are rewritten to match those of the original. This fie... |
| `selfLink` | `string` | Link for this experiment. This field is read-only. |
| `servingFramework` | `string` | The framework used to serve the experiment variations and evaluate the results. One of:   - REDIR... |
| `snippet` | `string` | The snippet of code to include on the control page(s). This field is read-only. |
| `startTime` | `string` | The starting time of the experiment (the time the status changed from READY_TO_RUN to RUNNING). T... |
| `status` | `string` | Experiment status. Possible values: "DRAFT", "READY_TO_RUN", "RUNNING", "ENDED". Experiments can ... |
| `trafficCoverage` | `number` | A floating-point number in (0, 1]. Specifies the fraction of the traffic that participates in the... |
| `updated` | `string` | Time the experiment was last modified. This field is read-only. |
| `variations` | `array<object>` | Array of variations. The first variation in the array is the original. The number of variations m... |
| `webPropertyId` | `string` | Web property ID to which this experiment belongs. The web property ID is of the form UA-XXXXX-YY.... |
| `winnerConfidenceLevel` | `number` | A floating-point number in (0, 1). Specifies the necessary confidence level to choose a winner. T... |
| `winnerFound` | `boolean` | Boolean specifying whether a winner has been found for this experiment. This field is read-only. |

### `Experiments`

An experiment collection lists Analytics experiments to which the user has access. Each view (profile) can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Experiment>` | A list of experiments. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this experiment collection. |
| `previousLink` | `string` | Link to previous page for this experiment collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of resources in the result. |
| `username` | `string` | Email ID of the authenticated user |

### `Filter`

JSON template for an Analytics account filter.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this filter belongs. |
| `advancedDetails` | `object` | Details for the filter of the type ADVANCED. |
| `created` | `string` | Time this filter was created. |
| `excludeDetails` | `FilterExpression` | Details for the filter of the type EXCLUDE. |
| `id` | `string` | Filter ID. |
| `includeDetails` | `FilterExpression` | Details for the filter of the type INCLUDE. |
| `kind` | `string` | Resource type for Analytics filter. |
| `lowercaseDetails` | `object` | Details for the filter of the type LOWER. |
| `name` | `string` | Name of this filter. |
| `parentLink` | `object` | Parent link for this filter. Points to the account to which this filter belongs. |
| `searchAndReplaceDetails` | `object` | Details for the filter of the type SEARCH_AND_REPLACE. |
| `selfLink` | `string` | Link for this filter. |
| `type` | `string` | Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE, SEARCH_AND_REPLA... |
| `updated` | `string` | Time this filter was last modified. |
| `uppercaseDetails` | `object` | Details for the filter of the type UPPER. |

### `FilterExpression`

JSON template for an Analytics filter expression.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | Determines if the filter is case sensitive. |
| `expressionValue` | `string` | Filter expression value |
| `field` | `string` | Field to filter. Possible values:   - Content and Traffic   - PAGE_REQUEST_URI,  - PAGE_HOSTNAME,... |
| `fieldIndex` | `integer` | The Index of the custom dimension. Set only if the field is a is CUSTOM_DIMENSION. |
| `kind` | `string` | Kind value for filter expression |
| `matchType` | `string` | Match type for this filter. Possible values are BEGINS_WITH, EQUAL, ENDS_WITH, CONTAINS, or MATCH... |

### `FilterRef`

JSON template for a profile filter link.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this filter belongs. |
| `href` | `string` | Link for this filter. |
| `id` | `string` | Filter ID. |
| `kind` | `string` | Kind value for filter reference. |
| `name` | `string` | Name of this filter. |

### `Filters`

A filter collection lists filters created by users in an Analytics account. Each resource in the collection corresponds to a filter.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Filter>` | A list of filters. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this filter collection. |
| `previousLink` | `string` | Link to previous page for this filter collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `GaData`

Analytics data for a given view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `columnHeaders` | `array<object>` | Column headers that list dimension names followed by the metric names. The order of dimensions an... |
| `containsSampledData` | `boolean` | Determines if Analytics data contains samples. |
| `dataLastRefreshed` | `string` | The last refreshed time in seconds for Analytics data. |
| `dataTable` | `object` |  |
| `id` | `string` | Unique ID for this data response. |
| `itemsPerPage` | `integer` | The maximum number of rows the response can contain, regardless of the actual number of rows retu... |
| `kind` | `string` | Resource type. |
| `nextLink` | `string` | Link to next page for this Analytics data query. |
| `previousLink` | `string` | Link to previous page for this Analytics data query. |
| `profileInfo` | `object` | Information for the view (profile), for which the Analytics data was requested. |
| `query` | `object` | Analytics data request query parameters. |
| `rows` | `array<array>` | Analytics data rows, where each row contains a list of dimension values followed by the metric va... |
| `sampleSize` | `string` | The number of samples used to calculate the result. |
| `sampleSpace` | `string` | Total size of the sample space from which the samples were selected. |
| `selfLink` | `string` | Link to this page. |
| `totalResults` | `integer` | The total number of rows for the query, regardless of the number of rows in the response. |
| `totalsForAllResults` | `object` | Total values for the requested metrics over all the results, not just the results returned in thi... |

### `Goal`

JSON template for Analytics goal resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this goal belongs. |
| `active` | `boolean` | Determines whether this goal is active. |
| `created` | `string` | Time this goal was created. |
| `eventDetails` | `object` | Details for the goal of the type EVENT. |
| `id` | `string` | Goal ID. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this goal belongs. |
| `kind` | `string` | Resource type for an Analytics goal. |
| `name` | `string` | Goal name. |
| `parentLink` | `object` | Parent link for a goal. Points to the view (profile) to which this goal belongs. |
| `profileId` | `string` | View (Profile) ID to which this goal belongs. |
| `selfLink` | `string` | Link for this goal. |
| `type` | `string` | Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES, AND EVENT. |
| `updated` | `string` | Time this goal was last modified. |
| `urlDestinationDetails` | `object` | Details for the goal of the type URL_DESTINATION. |
| `value` | `number` | Goal value. |
| `visitNumPagesDetails` | `object` | Details for the goal of the type VISIT_NUM_PAGES. |
| `visitTimeOnSiteDetails` | `object` | Details for the goal of the type VISIT_TIME_ON_SITE. |
| `webPropertyId` | `string` | Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY. |

### `Goals`

A goal collection lists Analytics goals to which the user has access. Each view (profile) can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Goal>` | A list of goals. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this goal collection. |
| `previousLink` | `string` | Link to previous page for this goal collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of resources in the result. |
| `username` | `string` | Email ID of the authenticated user |

### `HashClientIdRequest`

JSON template for a hash Client Id request resource.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `kind` | `string` |  |
| `webPropertyId` | `string` |  |

### `HashClientIdResponse`

JSON template for a hash Client Id response resource.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` |  |
| `hashedClientId` | `string` |  |
| `kind` | `string` |  |
| `webPropertyId` | `string` |  |

### `IncludeConditions`

JSON template for an Analytics Remarketing Include Conditions.

| Property | Type | Description |
|----------|------|-------------|
| `daysToLookBack` | `integer` | The look-back window lets you specify a time frame for evaluating the behavior that qualifies use... |
| `isSmartList` | `boolean` | Boolean indicating whether this segment is a smart list. https://support.google.com/analytics/ans... |
| `kind` | `string` | Resource type for include conditions. |
| `membershipDurationDays` | `integer` | Number of days (in the range 1 to 540) a user remains in the audience. |
| `segment` | `string` | The segment condition that will cause a user to be added to an audience. |

### `LinkedForeignAccount`

JSON template for an Analytics Remarketing Audience Foreign Link.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this linked foreign account belongs. |
| `eligibleForSearch` | `boolean` | Boolean indicating whether this is eligible for search. |
| `id` | `string` | Entity ad account link ID. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this linked foreign account belongs. |
| `kind` | `string` | Resource type for linked foreign account. |
| `linkedAccountId` | `string` | The foreign account ID. For example the an Google Ads `linkedAccountId` has the following format ... |
| `remarketingAudienceId` | `string` | Remarketing audience ID to which this linked foreign account belongs. |
| `status` | `string` | The status of this foreign account link. |
| `type` | `string` | The type of the foreign account. For example, `ADWORDS_LINKS`, `DBM_LINKS`, `MCC_LINKS` or `OPTIM... |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY to which this linked foreign account belongs. |

### `McfData`

Multi-Channel Funnels data for a given view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `columnHeaders` | `array<object>` | Column headers that list dimension names followed by the metric names. The order of dimensions an... |
| `containsSampledData` | `boolean` | Determines if the Analytics data contains sampled data. |
| `id` | `string` | Unique ID for this data response. |
| `itemsPerPage` | `integer` | The maximum number of rows the response can contain, regardless of the actual number of rows retu... |
| `kind` | `string` | Resource type. |
| `nextLink` | `string` | Link to next page for this Analytics data query. |
| `previousLink` | `string` | Link to previous page for this Analytics data query. |
| `profileInfo` | `object` | Information for the view (profile), for which the Analytics data was requested. |
| `query` | `object` | Analytics data request query parameters. |
| `rows` | `array<array>` | Analytics data rows, where each row contains a list of dimension values followed by the metric va... |
| `sampleSize` | `string` | The number of samples used to calculate the result. |
| `sampleSpace` | `string` | Total size of the sample space from which the samples were selected. |
| `selfLink` | `string` | Link to this page. |
| `totalResults` | `integer` | The total number of rows for the query, regardless of the number of rows in the response. |
| `totalsForAllResults` | `object` | Total values for the requested metrics over all the results, not just the results returned in thi... |

### `Profile`

JSON template for an Analytics view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this view (profile) belongs. |
| `botFilteringEnabled` | `boolean` | Indicates whether bot filtering is enabled for this view (profile). |
| `childLink` | `object` | Child link for this view (profile). Points to the list of goals for this view (profile). |
| `created` | `string` | Time this view (profile) was created. |
| `currency` | `string` | The currency type associated with this view (profile), defaults to USD. The supported values are:... |
| `defaultPage` | `string` | Default page for this view (profile). |
| `eCommerceTracking` | `boolean` | Indicates whether ecommerce tracking is enabled for this view (profile). |
| `enhancedECommerceTracking` | `boolean` | Indicates whether enhanced ecommerce tracking is enabled for this view (profile). This property c... |
| `excludeQueryParameters` | `string` | The query parameters that are excluded from this view (profile). |
| `id` | `string` | View (Profile) ID. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this view (profile) belongs. |
| `kind` | `string` | Resource type for Analytics view (profile). |
| `name` | `string` | Name of this view (profile). |
| `parentLink` | `object` | Parent link for this view (profile). Points to the web property to which this view (profile) belo... |
| `permissions` | `object` | Permissions the user has for this view (profile). |
| `selfLink` | `string` | Link for this view (profile). |
| `siteSearchCategoryParameters` | `string` | Site search category parameters for this view (profile). |
| `siteSearchQueryParameters` | `string` | The site search query parameters for this view (profile). |
| `starred` | `boolean` | Indicates whether this view (profile) is starred or not. |
| `stripSiteSearchCategoryParameters` | `boolean` | Whether or not Analytics will strip search category parameters from the URLs in your reports. |
| `stripSiteSearchQueryParameters` | `boolean` | Whether or not Analytics will strip search query parameters from the URLs in your reports. |
| `timezone` | `string` | Time zone for which this view (profile) has been configured. Time zones are identified by strings... |
| `type` | `string` | View (Profile) type. Supported types: WEB or APP. |
| `updated` | `string` | Time this view (profile) was last modified. |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs. |
| `websiteUrl` | `string` | Website URL for this view (profile). |

### `ProfileFilterLink`

JSON template for an Analytics profile filter link.

| Property | Type | Description |
|----------|------|-------------|
| `filterRef` | `FilterRef` | Filter for this link. |
| `id` | `string` | Profile filter link ID. |
| `kind` | `string` | Resource type for Analytics filter. |
| `profileRef` | `ProfileRef` | View (Profile) for this link. |
| `rank` | `integer` | The rank of this profile filter link relative to the other filters linked to the same profile. Fo... |
| `selfLink` | `string` | Link for this profile filter link. |

### `ProfileFilterLinks`

A profile filter link collection lists profile filter links between profiles and filters. Each resource in the collection corresponds to a profile filter link.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<ProfileFilterLink>` | A list of profile filter links. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this profile filter link collection. |
| `previousLink` | `string` | Link to previous page for this profile filter link collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `ProfileRef`

JSON template for a linked view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this view (profile) belongs. |
| `href` | `string` | Link for this view (profile). |
| `id` | `string` | View (Profile) ID. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this view (profile) belongs. |
| `kind` | `string` | Analytics view (profile) reference. |
| `name` | `string` | Name of this view (profile). |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs. |

### `ProfileSummary`

JSON template for an Analytics ProfileSummary. ProfileSummary returns basic information (i.e., summary) for a profile.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | View (profile) ID. |
| `kind` | `string` | Resource type for Analytics ProfileSummary. |
| `name` | `string` | View (profile) name. |
| `starred` | `boolean` | Indicates whether this view (profile) is starred or not. |
| `type` | `string` | View (Profile) type. Supported types: WEB or APP. |

### `Profiles`

A view (profile) collection lists Analytics views (profiles) to which the user has access. Each resource in the collection corresponds to a single Analytics view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Profile>` | A list of views (profiles). |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this view (profile) collection. |
| `previousLink` | `string` | Link to previous page for this view (profile) collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `RealtimeData`

Real time data for a given view (profile).

| Property | Type | Description |
|----------|------|-------------|
| `columnHeaders` | `array<object>` | Column headers that list dimension names followed by the metric names. The order of dimensions an... |
| `id` | `string` | Unique ID for this data response. |
| `kind` | `string` | Resource type. |
| `profileInfo` | `object` | Information for the view (profile), for which the real time data was requested. |
| `query` | `object` | Real time data request query parameters. |
| `rows` | `array<array>` | Real time data rows, where each row contains a list of dimension values followed by the metric va... |
| `selfLink` | `string` | Link to this page. |
| `totalResults` | `integer` | The total number of rows for the query, regardless of the number of rows in the response. |
| `totalsForAllResults` | `object` | Total values for the requested metrics over all the results, not just the results returned in thi... |

### `RemarketingAudience`

JSON template for an Analytics remarketing audience.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this remarketing audience belongs. |
| `audienceDefinition` | `object` | The simple audience definition that will cause a user to be added to an audience. |
| `audienceType` | `string` | The type of audience, either SIMPLE or STATE_BASED. |
| `created` | `string` | Time this remarketing audience was created. |
| `description` | `string` | The description of this remarketing audience. |
| `id` | `string` | Remarketing Audience ID. |
| `internalWebPropertyId` | `string` | Internal ID for the web property to which this remarketing audience belongs. |
| `kind` | `string` | Collection type. |
| `linkedAdAccounts` | `array<LinkedForeignAccount>` | The linked ad accounts associated with this remarketing audience. A remarketing audience can have... |
| `linkedViews` | `array<string>` | The views (profiles) that this remarketing audience is linked to. |
| `name` | `string` | The name of this remarketing audience. |
| `stateBasedAudienceDefinition` | `object` | A state based audience definition that will cause a user to be added or removed from an audience. |
| `updated` | `string` | Time this remarketing audience was last modified. |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY to which this remarketing audience belongs. |

### `RemarketingAudiences`

A remarketing audience collection lists Analytics remarketing audiences to which the user has access. Each resource in the collection corresponds to a single Analytics remarketing audience.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<RemarketingAudience>` | A list of remarketing audiences. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this remarketing audience collection. |
| `previousLink` | `string` | Link to previous page for this view (profile) collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `Segment`

JSON template for an Analytics segment.

| Property | Type | Description |
|----------|------|-------------|
| `created` | `string` | Time the segment was created. |
| `definition` | `string` | Segment definition. |
| `id` | `string` | Segment ID. |
| `kind` | `string` | Resource type for Analytics segment. |
| `name` | `string` | Segment name. |
| `segmentId` | `string` | Segment ID. Can be used with the 'segment' parameter in Core Reporting API. |
| `selfLink` | `string` | Link for this segment. |
| `type` | `string` | Type for a segment. Possible values are "BUILT_IN" or "CUSTOM". |
| `updated` | `string` | Time the segment was last modified. |

### `Segments`

An segment collection lists Analytics segments that the user has access to. Each resource in the collection corresponds to a single Analytics segment.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Segment>` | A list of segments. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type for segments. |
| `nextLink` | `string` | Link to next page for this segment collection. |
| `previousLink` | `string` | Link to previous page for this segment collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `UnsampledReport`

JSON template for Analytics unsampled report resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this unsampled report belongs. |
| `cloudStorageDownloadDetails` | `object` | Download details for a file stored in Google Cloud Storage. |
| `created` | `string` | Time this unsampled report was created. |
| `dimensions` | `string` | The dimensions for the unsampled report. |
| `downloadType` | `string` | The type of download you need to use for the report data file. Possible values include `GOOGLE_DR... |
| `driveDownloadDetails` | `object` | Download details for a file stored in Google Drive. |
| `end-date` | `string` | The end date for the unsampled report. |
| `filters` | `string` | The filters for the unsampled report. |
| `id` | `string` | Unsampled report ID. |
| `kind` | `string` | Resource type for an Analytics unsampled report. |
| `metrics` | `string` | The metrics for the unsampled report. |
| `profileId` | `string` | View (Profile) ID to which this unsampled report belongs. |
| `segment` | `string` | The segment for the unsampled report. |
| `selfLink` | `string` | Link for this unsampled report. |
| `start-date` | `string` | The start date for the unsampled report. |
| `status` | `string` | Status of this unsampled report. Possible values are PENDING, COMPLETED, or FAILED. |
| `title` | `string` | Title of the unsampled report. |
| `updated` | `string` | Time this unsampled report was last modified. |
| `webPropertyId` | `string` | Web property ID to which this unsampled report belongs. The web property ID is of the form UA-XXX... |

### `UnsampledReports`

An unsampled report collection lists Analytics unsampled reports to which the user has access. Each view (profile) can have a set of unsampled reports. Each resource in the unsampled report collection corresponds to a single Analytics unsampled report.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<UnsampledReport>` | A list of unsampled reports. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this unsampled report collection. |
| `previousLink` | `string` | Link to previous page for this unsampled report collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of resources in the result. |
| `username` | `string` | Email ID of the authenticated user |

### `Upload`

Metadata returned for an upload operation.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account Id to which this upload belongs. |
| `customDataSourceId` | `string` | Custom data source Id to which this data import belongs. |
| `errors` | `array<string>` | Data import errors collection. |
| `id` | `string` | A unique ID for this upload. |
| `kind` | `string` | Resource type for Analytics upload. |
| `status` | `string` | Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED. |
| `uploadTime` | `string` | Time this file is uploaded. |

### `Uploads`

Upload collection lists Analytics uploads to which the user has access. Each custom data source can have a set of uploads. Each resource in the upload collection corresponds to a single Analytics data upload.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Upload>` | A list of uploads. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this upload collection. |
| `previousLink` | `string` | Link to previous page for this upload collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of resources in the result. |

### `UserDeletionRequest`

JSON template for a user deletion request resource.

| Property | Type | Description |
|----------|------|-------------|
| `deletionRequestTime` | `string` | This marks the point in time for which all user data before should be deleted |
| `firebaseProjectId` | `string` | Firebase Project Id |
| `id` | `object` | User ID. |
| `kind` | `string` | Value is "analytics#userDeletionRequest". |
| `propertyId` | `string` | Property ID |
| `webPropertyId` | `string` | Web property ID of the form UA-XXXXX-YY. |

### `UserRef`

JSON template for a user reference.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email ID of this user. |
| `id` | `string` | User ID. |
| `kind` | `string` |  |

### `WebPropertyRef`

JSON template for a web property reference.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this web property belongs. |
| `href` | `string` | Link for this web property. |
| `id` | `string` | Web property ID of the form UA-XXXXX-YY. |
| `internalWebPropertyId` | `string` | Internal ID for this web property. |
| `kind` | `string` | Analytics web property reference. |
| `name` | `string` | Name of this web property. |

### `WebPropertySummary`

JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Web property ID of the form UA-XXXXX-YY. |
| `internalWebPropertyId` | `string` | Internal ID for this web property. |
| `kind` | `string` | Resource type for Analytics WebPropertySummary. |
| `level` | `string` | Level for this web property. Possible values are STANDARD or PREMIUM. |
| `name` | `string` | Web property name. |
| `profiles` | `array<ProfileSummary>` | List of profiles under this web property. |
| `starred` | `boolean` | Indicates whether this web property is starred or not. |
| `websiteUrl` | `string` | Website url for this web property. |

### `Webproperties`

A web property collection lists Analytics web properties to which the user has access. Each resource in the collection corresponds to a single Analytics web property.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Webproperty>` | A list of web properties. |
| `itemsPerPage` | `integer` | The maximum number of resources the response can contain, regardless of the actual number of reso... |
| `kind` | `string` | Collection type. |
| `nextLink` | `string` | Link to next page for this web property collection. |
| `previousLink` | `string` | Link to previous page for this web property collection. |
| `startIndex` | `integer` | The starting index of the resources, which is 1 by default or otherwise specified by the start-in... |
| `totalResults` | `integer` | The total number of results for the query, regardless of the number of results in the response. |
| `username` | `string` | Email ID of the authenticated user |

### `Webproperty`

JSON template for an Analytics web property.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID to which this web property belongs. |
| `childLink` | `object` | Child link for this web property. Points to the list of views (profiles) for this web property. |
| `created` | `string` | Time this web property was created. |
| `dataRetentionResetOnNewActivity` | `boolean` | Set to true to reset the retention period of the user identifier with each new event from that us... |
| `dataRetentionTtl` | `string` | The length of time for which user and event data is retained. This property cannot be set on insert. |
| `defaultProfileId` | `string` | Default view (profile) ID. |
| `id` | `string` | Web property ID of the form UA-XXXXX-YY. |
| `industryVertical` | `string` | The industry vertical/category selected for this web property. |
| `internalWebPropertyId` | `string` | Internal ID for this web property. |
| `kind` | `string` | Resource type for Analytics WebProperty. |
| `level` | `string` | Level for this web property. Possible values are STANDARD or PREMIUM. |
| `name` | `string` | Name of this web property. |
| `parentLink` | `object` | Parent link for this web property. Points to the account to which this web property belongs. |
| `permissions` | `object` | Permissions the user has for this web property. |
| `profileCount` | `integer` | View (Profile) count for this web property. |
| `selfLink` | `string` | Link for this web property. |
| `starred` | `boolean` | Indicates whether this web property is starred or not. |
| `updated` | `string` | Time this web property was last modified. |
| `websiteUrl` | `string` | Website url for this web property. |

