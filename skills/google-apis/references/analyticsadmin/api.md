# Google Analytics Admin API - API Reference

**Version**: `v1beta` | **Methods**: 55 | **Schemas**: 65

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `analyticsadmin.accounts.get` | GET | `v1beta/{+name}` | Lookup for a single Account. |
| `analyticsadmin.accounts.list` | GET | `v1beta/accounts` | Returns all accounts accessible by the caller. Note that these accounts might not currently have ... |
| `analyticsadmin.accounts.delete` | DELETE | `v1beta/{+name}` | Marks target Account as soft-deleted (ie: "trashed") and returns it. This API does not have a met... |
| `analyticsadmin.accounts.patch` | PATCH | `v1beta/{+name}` | Updates an account. |
| `analyticsadmin.accounts.provisionAccountTicket` | POST | `v1beta/accounts:provisionAccountTicket` | Requests a ticket for creating an account. |
| `analyticsadmin.accounts.getDataSharingSettings` | GET | `v1beta/{+name}` | Get data sharing settings on an account. Data sharing settings are singletons. |
| `analyticsadmin.accounts.searchChangeHistoryEvents` | POST | `v1beta/{+account}:searchChangeHistoryEvents` | Searches through all changes to an account or its children given the specified set of filters. On... |
| `analyticsadmin.accounts.runAccessReport` | POST | `v1beta/{+entity}:runAccessReport` | Returns a customized report of data access records. The report provides records of each time a us... |
| `analyticsadmin.accountSummaries.list` | GET | `v1beta/accountSummaries` | Returns summaries of all accounts accessible by the caller. |
| `analyticsadmin.properties.get` | GET | `v1beta/{+name}` | Lookup for a single GA Property. |
| `analyticsadmin.properties.list` | GET | `v1beta/properties` | Returns child Properties under the specified parent Account. Properties will be excluded if the c... |
| `analyticsadmin.properties.create` | POST | `v1beta/properties` | Creates a Google Analytics property with the specified location and attributes. |
| `analyticsadmin.properties.delete` | DELETE | `v1beta/{+name}` | Marks target Property as soft-deleted (ie: "trashed") and returns it. This API does not have a me... |
| `analyticsadmin.properties.patch` | PATCH | `v1beta/{+name}` | Updates a property. |
| `analyticsadmin.properties.acknowledgeUserDataCollection` | POST | `v1beta/{+property}:acknowledgeUserDataCollection` | Acknowledges the terms of user data collection for the specified property. This acknowledgement m... |
| `analyticsadmin.properties.getDataRetentionSettings` | GET | `v1beta/{+name}` | Returns the singleton data retention settings for this property. |
| `analyticsadmin.properties.updateDataRetentionSettings` | PATCH | `v1beta/{+name}` | Updates the singleton data retention settings for this property. |
| `analyticsadmin.properties.runAccessReport` | POST | `v1beta/{+entity}:runAccessReport` | Returns a customized report of data access records. The report provides records of each time a us... |
| `analyticsadmin.properties.firebaseLinks.create` | POST | `v1beta/{+parent}/firebaseLinks` | Creates a FirebaseLink. Properties can have at most one FirebaseLink. |
| `analyticsadmin.properties.firebaseLinks.delete` | DELETE | `v1beta/{+name}` | Deletes a FirebaseLink on a property |
| `analyticsadmin.properties.firebaseLinks.list` | GET | `v1beta/{+parent}/firebaseLinks` | Lists FirebaseLinks on a property. Properties can have at most one FirebaseLink. |
| `analyticsadmin.properties.googleAdsLinks.create` | POST | `v1beta/{+parent}/googleAdsLinks` | Creates a GoogleAdsLink. |
| `analyticsadmin.properties.googleAdsLinks.patch` | PATCH | `v1beta/{+name}` | Updates a GoogleAdsLink on a property |
| `analyticsadmin.properties.googleAdsLinks.delete` | DELETE | `v1beta/{+name}` | Deletes a GoogleAdsLink on a property |
| `analyticsadmin.properties.googleAdsLinks.list` | GET | `v1beta/{+parent}/googleAdsLinks` | Lists GoogleAdsLinks on a property. |
| `analyticsadmin.properties.conversionEvents.create` | POST | `v1beta/{+parent}/conversionEvents` | Deprecated: Use `CreateKeyEvent` instead. Creates a conversion event with the specified attributes. |
| `analyticsadmin.properties.conversionEvents.patch` | PATCH | `v1beta/{+name}` | Deprecated: Use `UpdateKeyEvent` instead. Updates a conversion event with the specified attributes. |
| `analyticsadmin.properties.conversionEvents.get` | GET | `v1beta/{+name}` | Deprecated: Use `GetKeyEvent` instead. Retrieve a single conversion event. |
| `analyticsadmin.properties.conversionEvents.delete` | DELETE | `v1beta/{+name}` | Deprecated: Use `DeleteKeyEvent` instead. Deletes a conversion event in a property. |
| `analyticsadmin.properties.conversionEvents.list` | GET | `v1beta/{+parent}/conversionEvents` | Deprecated: Use `ListKeyEvents` instead. Returns a list of conversion events in the specified par... |
| `analyticsadmin.properties.keyEvents.create` | POST | `v1beta/{+parent}/keyEvents` | Creates a Key Event. |
| `analyticsadmin.properties.keyEvents.patch` | PATCH | `v1beta/{+name}` | Updates a Key Event. |
| `analyticsadmin.properties.keyEvents.get` | GET | `v1beta/{+name}` | Retrieve a single Key Event. |
| `analyticsadmin.properties.keyEvents.delete` | DELETE | `v1beta/{+name}` | Deletes a Key Event. |
| `analyticsadmin.properties.keyEvents.list` | GET | `v1beta/{+parent}/keyEvents` | Returns a list of Key Events in the specified parent property. Returns an empty list if no Key Ev... |
| `analyticsadmin.properties.customDimensions.create` | POST | `v1beta/{+parent}/customDimensions` | Creates a CustomDimension. |
| `analyticsadmin.properties.customDimensions.patch` | PATCH | `v1beta/{+name}` | Updates a CustomDimension on a property. |
| `analyticsadmin.properties.customDimensions.list` | GET | `v1beta/{+parent}/customDimensions` | Lists CustomDimensions on a property. |
| `analyticsadmin.properties.customDimensions.archive` | POST | `v1beta/{+name}:archive` | Archives a CustomDimension on a property. |
| `analyticsadmin.properties.customDimensions.get` | GET | `v1beta/{+name}` | Lookup for a single CustomDimension. |
| `analyticsadmin.properties.customMetrics.create` | POST | `v1beta/{+parent}/customMetrics` | Creates a CustomMetric. |
| `analyticsadmin.properties.customMetrics.patch` | PATCH | `v1beta/{+name}` | Updates a CustomMetric on a property. |
| `analyticsadmin.properties.customMetrics.list` | GET | `v1beta/{+parent}/customMetrics` | Lists CustomMetrics on a property. |
| `analyticsadmin.properties.customMetrics.archive` | POST | `v1beta/{+name}:archive` | Archives a CustomMetric on a property. |
| `analyticsadmin.properties.customMetrics.get` | GET | `v1beta/{+name}` | Lookup for a single CustomMetric. |
| `analyticsadmin.properties.dataStreams.create` | POST | `v1beta/{+parent}/dataStreams` | Creates a DataStream. |
| `analyticsadmin.properties.dataStreams.delete` | DELETE | `v1beta/{+name}` | Deletes a DataStream on a property. |
| `analyticsadmin.properties.dataStreams.patch` | PATCH | `v1beta/{+name}` | Updates a DataStream on a property. |
| `analyticsadmin.properties.dataStreams.list` | GET | `v1beta/{+parent}/dataStreams` | Lists DataStreams on a property. |
| `analyticsadmin.properties.dataStreams.get` | GET | `v1beta/{+name}` | Lookup for a single DataStream. |
| `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.get` | GET | `v1beta/{+name}` | Lookup for a single MeasurementProtocolSecret. |
| `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.list` | GET | `v1beta/{+parent}/measurementProtocolSecrets` | Returns child MeasurementProtocolSecrets under the specified parent Property. |
| `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.create` | POST | `v1beta/{+parent}/measurementProtocolSecrets` | Creates a measurement protocol secret. |
| `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.delete` | DELETE | `v1beta/{+name}` | Deletes target MeasurementProtocolSecret. |
| `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.patch` | PATCH | `v1beta/{+name}` | Updates a measurement protocol secret. |

### `analyticsadmin.accounts.get`

**GET** `v1beta/{+name}`

Lookup for a single Account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the account to lookup. Format: accounts/{account} Example: "accounts/100" |

**Response**: `GoogleAnalyticsAdminV1betaAccount`

```typescript
const res = await analyticsadmin.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.accounts.list`

**GET** `v1beta/accounts`

Returns all accounts accessible by the caller. Note that these accounts might not currently have GA properties. Soft-deleted (ie: "trashed") accounts are excluded by default. Returns an empty list if no relevant accounts are found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of resources to return. The service may return fewer than this value, even if there are additional... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAccounts` call. Provide this to retrieve the subsequent page. When pagina... |
| `showDeleted` | `boolean` | query | No | Whether to include soft-deleted (ie: "trashed") Accounts in the results. Accounts can be inspected to determine wheth... |

**Response**: `GoogleAnalyticsAdminV1betaListAccountsResponse`

```typescript
const res = await analyticsadmin.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.accounts.delete`

**DELETE** `v1beta/{+name}`

Marks target Account as soft-deleted (ie: "trashed") and returns it. This API does not have a method to restore soft-deleted accounts. However, they can be restored using the Trash Can UI. If the accounts are not restored before the expiration time, the account and all child resources (eg: Properties, GoogleAdsLinks, Streams, AccessBindings) will be permanently purged. https://support.google.com/analytics/answer/6154772 Returns an error if the target is not found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Account to soft-delete. Format: accounts/{account} Example: "accounts/100" |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.accounts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.accounts.patch`

**PATCH** `v1beta/{+name}`

Updates an account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this account. Format: accounts/{account} Example: "accounts/100" |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (for example, "field_to_update"). Omitt... |

**Request body**: `GoogleAnalyticsAdminV1betaAccount`

**Response**: `GoogleAnalyticsAdminV1betaAccount`

```typescript
const res = await analyticsadmin.accounts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.accounts.provisionAccountTicket`

**POST** `v1beta/accounts:provisionAccountTicket`

Requests a ticket for creating an account.

**Request body**: `GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest`

**Response**: `GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse`

```typescript
const res = await analyticsadmin.accounts.provisionAccountTicket({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.accounts.getDataSharingSettings`

**GET** `v1beta/{+name}`

Get data sharing settings on an account. Data sharing settings are singletons.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the settings to lookup. Format: accounts/{account}/dataSharingSettings Example: `accounts/1000/... |

**Response**: `GoogleAnalyticsAdminV1betaDataSharingSettings`

```typescript
const res = await analyticsadmin.accounts.getDataSharingSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.accounts.searchChangeHistoryEvents`

**POST** `v1beta/{+account}:searchChangeHistoryEvents`

Searches through all changes to an account or its children given the specified set of filters. Only returns the subset of changes supported by the API. The UI may return additional changes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `account` | `string` | path | Yes | Required. The account resource for which to return change history resources. Format: accounts/{account} Example: `acc... |

**Request body**: `GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest`

**Response**: `GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse`

```typescript
const res = await analyticsadmin.accounts.searchChangeHistoryEvents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.accounts.runAccessReport`

**POST** `v1beta/{+entity}:runAccessReport`

Returns a customized report of data access records. The report provides records of each time a user reads Google Analytics reporting data. Access records are retained for up to 2 years. Data Access Reports can be requested for a property. Reports may be requested for any property, but dimensions that aren't related to quota can only be requested on Google Analytics 360 properties. This method is only available to Administrators. These data access records include GA UI Reporting, GA UI Explorations, GA Data API, and other products like Firebase & Admob that can retrieve data from Google Analytics through a linkage. These records don't include property configuration changes like adding a stream or changing a property's time zone. For configuration change history, see [searchChangeHistoryEvents](https://developers.google.com/analytics/devguides/config/admin/v1/rest/v1alpha/accounts/searchChangeHistoryEvents). To give your feedback on this API, complete the [Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `entity` | `string` | path | Yes | The Data Access Report supports requesting at the property level or account level. If requested at the account level,... |

**Request body**: `GoogleAnalyticsAdminV1betaRunAccessReportRequest`

**Response**: `GoogleAnalyticsAdminV1betaRunAccessReportResponse`

```typescript
const res = await analyticsadmin.accounts.runAccessReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.accountSummaries.list`

**GET** `v1beta/accountSummaries`

Returns summaries of all accounts accessible by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | The maximum number of AccountSummary resources to return. The service may return fewer than this value, even if there... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAccountSummaries` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleAnalyticsAdminV1betaListAccountSummariesResponse`

```typescript
const res = await analyticsadmin.accountSummaries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.get`

**GET** `v1beta/{+name}`

Lookup for a single GA Property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the property to lookup. Format: properties/{property_id} Example: "properties/1000" |

**Response**: `GoogleAnalyticsAdminV1betaProperty`

```typescript
const res = await analyticsadmin.properties.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.list`

**GET** `v1beta/properties`

Returns child Properties under the specified parent Account. Properties will be excluded if the caller does not have access. Soft-deleted (ie: "trashed") properties are excluded by default. Returns an empty list if no relevant properties are found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Required. An expression for filtering the results of the request. Fields eligible for filtering are: `parent:`(The re... |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. The service may return fewer than this value, even if there are additional... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListProperties` call. Provide this to retrieve the subsequent page. When pagi... |
| `showDeleted` | `boolean` | query | No | Whether to include soft-deleted (ie: "trashed") Properties in the results. Properties can be inspected to determine w... |

**Response**: `GoogleAnalyticsAdminV1betaListPropertiesResponse`

```typescript
const res = await analyticsadmin.properties.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.create`

**POST** `v1beta/properties`

Creates a Google Analytics property with the specified location and attributes.

**Request body**: `GoogleAnalyticsAdminV1betaProperty`

**Response**: `GoogleAnalyticsAdminV1betaProperty`

```typescript
const res = await analyticsadmin.properties.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.delete`

**DELETE** `v1beta/{+name}`

Marks target Property as soft-deleted (ie: "trashed") and returns it. This API does not have a method to restore soft-deleted properties. However, they can be restored using the Trash Can UI. If the properties are not restored before the expiration time, the Property and all child resources (eg: GoogleAdsLinks, Streams, AccessBindings) will be permanently purged. https://support.google.com/analytics/answer/6154772 Returns an error if the target is not found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Property to soft-delete. Format: properties/{property_id} Example: "properties/1000" |

**Response**: `GoogleAnalyticsAdminV1betaProperty`

```typescript
const res = await analyticsadmin.properties.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.patch`

**PATCH** `v1beta/{+name}`

Updates a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this property. Format: properties/{property_id} Example: "properties/1000" |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (e.g., "field_to_update"). Omitted fiel... |

**Request body**: `GoogleAnalyticsAdminV1betaProperty`

**Response**: `GoogleAnalyticsAdminV1betaProperty`

```typescript
const res = await analyticsadmin.properties.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.acknowledgeUserDataCollection`

**POST** `v1beta/{+property}:acknowledgeUserDataCollection`

Acknowledges the terms of user data collection for the specified property. This acknowledgement must be completed (either in the Google Analytics UI or through this API) before MeasurementProtocolSecret resources may be created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `property` | `string` | path | Yes | Required. The property for which to acknowledge user data collection. |

**Request body**: `GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest`

**Response**: `GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse`

```typescript
const res = await analyticsadmin.properties.acknowledgeUserDataCollection({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.getDataRetentionSettings`

**GET** `v1beta/{+name}`

Returns the singleton data retention settings for this property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the settings to lookup. Format: properties/{property}/dataRetentionSettings Example: "propertie... |

**Response**: `GoogleAnalyticsAdminV1betaDataRetentionSettings`

```typescript
const res = await analyticsadmin.properties.getDataRetentionSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.updateDataRetentionSettings`

**PATCH** `v1beta/{+name}`

Updates the singleton data retention settings for this property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name for this DataRetentionSetting resource. Format: properties/{property}/dataRetentionSettings |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (e.g., "field_to_update"). Omitted fiel... |

**Request body**: `GoogleAnalyticsAdminV1betaDataRetentionSettings`

**Response**: `GoogleAnalyticsAdminV1betaDataRetentionSettings`

```typescript
const res = await analyticsadmin.properties.updateDataRetentionSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.runAccessReport`

**POST** `v1beta/{+entity}:runAccessReport`

Returns a customized report of data access records. The report provides records of each time a user reads Google Analytics reporting data. Access records are retained for up to 2 years. Data Access Reports can be requested for a property. Reports may be requested for any property, but dimensions that aren't related to quota can only be requested on Google Analytics 360 properties. This method is only available to Administrators. These data access records include GA UI Reporting, GA UI Explorations, GA Data API, and other products like Firebase & Admob that can retrieve data from Google Analytics through a linkage. These records don't include property configuration changes like adding a stream or changing a property's time zone. For configuration change history, see [searchChangeHistoryEvents](https://developers.google.com/analytics/devguides/config/admin/v1/rest/v1alpha/accounts/searchChangeHistoryEvents). To give your feedback on this API, complete the [Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform) form.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `entity` | `string` | path | Yes | The Data Access Report supports requesting at the property level or account level. If requested at the account level,... |

**Request body**: `GoogleAnalyticsAdminV1betaRunAccessReportRequest`

**Response**: `GoogleAnalyticsAdminV1betaRunAccessReportResponse`

```typescript
const res = await analyticsadmin.properties.runAccessReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.firebaseLinks.create`

**POST** `v1beta/{+parent}/firebaseLinks`

Creates a FirebaseLink. Properties can have at most one FirebaseLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: properties/{property_id} Example: `properties/1234` |

**Request body**: `GoogleAnalyticsAdminV1betaFirebaseLink`

**Response**: `GoogleAnalyticsAdminV1betaFirebaseLink`

```typescript
const res = await analyticsadmin.firebaseLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.firebaseLinks.delete`

**DELETE** `v1beta/{+name}`

Deletes a FirebaseLink on a property

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: properties/{property_id}/firebaseLinks/{firebase_link_id} Example: `properties/1234/firebaseLinks/5... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.firebaseLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.firebaseLinks.list`

**GET** `v1beta/{+parent}/firebaseLinks`

Lists FirebaseLinks on a property. Properties can have at most one FirebaseLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: properties/{property_id} Example: `properties/1234` |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. The service may return fewer than this value, even if there are additional... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListFirebaseLinks` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `GoogleAnalyticsAdminV1betaListFirebaseLinksResponse`

```typescript
const res = await analyticsadmin.firebaseLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.googleAdsLinks.create`

**POST** `v1beta/{+parent}/googleAdsLinks`

Creates a GoogleAdsLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |

**Request body**: `GoogleAnalyticsAdminV1betaGoogleAdsLink`

**Response**: `GoogleAnalyticsAdminV1betaGoogleAdsLink`

```typescript
const res = await analyticsadmin.googleAdsLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.googleAdsLinks.patch`

**PATCH** `v1beta/{+name}`

Updates a GoogleAdsLink on a property

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note: googleAdsLinkId is not the Google... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (e.g., "field_to_update"). Omitted fiel... |

**Request body**: `GoogleAnalyticsAdminV1betaGoogleAdsLink`

**Response**: `GoogleAnalyticsAdminV1betaGoogleAdsLink`

```typescript
const res = await analyticsadmin.googleAdsLinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.googleAdsLinks.delete`

**DELETE** `v1beta/{+name}`

Deletes a GoogleAdsLink on a property

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Example format: properties/1234/googleAdsLinks/5678 |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.googleAdsLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.googleAdsLinks.list`

**GET** `v1beta/{+parent}/googleAdsLinks`

Lists GoogleAdsLinks on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListGoogleAdsLinks` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse`

```typescript
const res = await analyticsadmin.googleAdsLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.conversionEvents.create`

**POST** `v1beta/{+parent}/conversionEvents`

Deprecated: Use `CreateKeyEvent` instead. Creates a conversion event with the specified attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent property where this conversion event will be created. Format: properties/123 |

**Request body**: `GoogleAnalyticsAdminV1betaConversionEvent`

**Response**: `GoogleAnalyticsAdminV1betaConversionEvent`

```typescript
const res = await analyticsadmin.conversionEvents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.conversionEvents.patch`

**PATCH** `v1beta/{+name}`

Deprecated: Use `UpdateKeyEvent` instead. Updates a conversion event with the specified attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this conversion event. Format: properties/{property}/conversionEvents/{conversion_event} |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (e.g., "field_to_update"). Omitted fiel... |

**Request body**: `GoogleAnalyticsAdminV1betaConversionEvent`

**Response**: `GoogleAnalyticsAdminV1betaConversionEvent`

```typescript
const res = await analyticsadmin.conversionEvents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.conversionEvents.get`

**GET** `v1beta/{+name}`

Deprecated: Use `GetKeyEvent` instead. Retrieve a single conversion event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the conversion event to retrieve. Format: properties/{property}/conversionEvents/{conv... |

**Response**: `GoogleAnalyticsAdminV1betaConversionEvent`

```typescript
const res = await analyticsadmin.conversionEvents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.conversionEvents.delete`

**DELETE** `v1beta/{+name}`

Deprecated: Use `DeleteKeyEvent` instead. Deletes a conversion event in a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the conversion event to delete. Format: properties/{property}/conversionEvents/{conver... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.conversionEvents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.conversionEvents.list`

**GET** `v1beta/{+parent}/conversionEvents`

Deprecated: Use `ListKeyEvents` instead. Returns a list of conversion events in the specified parent property. Returns an empty list if no conversion events are found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent property. Example: 'properties/123' |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListConversionEvents` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleAnalyticsAdminV1betaListConversionEventsResponse`

```typescript
const res = await analyticsadmin.conversionEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.keyEvents.create`

**POST** `v1beta/{+parent}/keyEvents`

Creates a Key Event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent property where this Key Event will be created. Format: properties/123 |

**Request body**: `GoogleAnalyticsAdminV1betaKeyEvent`

**Response**: `GoogleAnalyticsAdminV1betaKeyEvent`

```typescript
const res = await analyticsadmin.keyEvents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.keyEvents.patch`

**PATCH** `v1beta/{+name}`

Updates a Key Event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this key event. Format: properties/{property}/keyEvents/{key_event} |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Field names must be in snake case (e.g., "field_to_update"). Omitted fiel... |

**Request body**: `GoogleAnalyticsAdminV1betaKeyEvent`

**Response**: `GoogleAnalyticsAdminV1betaKeyEvent`

```typescript
const res = await analyticsadmin.keyEvents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.keyEvents.get`

**GET** `v1beta/{+name}`

Retrieve a single Key Event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Key Event to retrieve. Format: properties/{property}/keyEvents/{key_event} Example... |

**Response**: `GoogleAnalyticsAdminV1betaKeyEvent`

```typescript
const res = await analyticsadmin.keyEvents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.keyEvents.delete`

**DELETE** `v1beta/{+name}`

Deletes a Key Event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Key Event to delete. Format: properties/{property}/keyEvents/{key_event} Example: ... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.keyEvents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.keyEvents.list`

**GET** `v1beta/{+parent}/keyEvents`

Returns a list of Key Events in the specified parent property. Returns an empty list if no Key Events are found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent property. Example: 'properties/123' |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListKeyEvents` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `GoogleAnalyticsAdminV1betaListKeyEventsResponse`

```typescript
const res = await analyticsadmin.keyEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.customDimensions.create`

**POST** `v1beta/{+parent}/customDimensions`

Creates a CustomDimension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |

**Request body**: `GoogleAnalyticsAdminV1betaCustomDimension`

**Response**: `GoogleAnalyticsAdminV1betaCustomDimension`

```typescript
const res = await analyticsadmin.customDimensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customDimensions.patch`

**PATCH** `v1beta/{+name}`

Updates a CustomDimension on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name for this CustomDimension resource. Format: properties/{property}/customDimensions/{customD... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Omitted fields will not be updated. To replace the entire entity, use one... |

**Request body**: `GoogleAnalyticsAdminV1betaCustomDimension`

**Response**: `GoogleAnalyticsAdminV1betaCustomDimension`

```typescript
const res = await analyticsadmin.customDimensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customDimensions.list`

**GET** `v1beta/{+parent}/customDimensions`

Lists CustomDimensions on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCustomDimensions` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleAnalyticsAdminV1betaListCustomDimensionsResponse`

```typescript
const res = await analyticsadmin.customDimensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.customDimensions.archive`

**POST** `v1beta/{+name}:archive`

Archives a CustomDimension on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CustomDimension to archive. Example format: properties/1234/customDimensions/5678 |

**Request body**: `GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.customDimensions.archive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customDimensions.get`

**GET** `v1beta/{+name}`

Lookup for a single CustomDimension.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CustomDimension to get. Example format: properties/1234/customDimensions/5678 |

**Response**: `GoogleAnalyticsAdminV1betaCustomDimension`

```typescript
const res = await analyticsadmin.customDimensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.customMetrics.create`

**POST** `v1beta/{+parent}/customMetrics`

Creates a CustomMetric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |

**Request body**: `GoogleAnalyticsAdminV1betaCustomMetric`

**Response**: `GoogleAnalyticsAdminV1betaCustomMetric`

```typescript
const res = await analyticsadmin.customMetrics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customMetrics.patch`

**PATCH** `v1beta/{+name}`

Updates a CustomMetric on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name for this CustomMetric resource. Format: properties/{property}/customMetrics/{customMetric} |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Omitted fields will not be updated. To replace the entire entity, use one... |

**Request body**: `GoogleAnalyticsAdminV1betaCustomMetric`

**Response**: `GoogleAnalyticsAdminV1betaCustomMetric`

```typescript
const res = await analyticsadmin.customMetrics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customMetrics.list`

**GET** `v1beta/{+parent}/customMetrics`

Lists CustomMetrics on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCustomMetrics` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `GoogleAnalyticsAdminV1betaListCustomMetricsResponse`

```typescript
const res = await analyticsadmin.customMetrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.customMetrics.archive`

**POST** `v1beta/{+name}:archive`

Archives a CustomMetric on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CustomMetric to archive. Example format: properties/1234/customMetrics/5678 |

**Request body**: `GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.customMetrics.archive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.customMetrics.get`

**GET** `v1beta/{+name}`

Lookup for a single CustomMetric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CustomMetric to get. Example format: properties/1234/customMetrics/5678 |

**Response**: `GoogleAnalyticsAdminV1betaCustomMetric`

```typescript
const res = await analyticsadmin.customMetrics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.dataStreams.create`

**POST** `v1beta/{+parent}/dataStreams`

Creates a DataStream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |

**Request body**: `GoogleAnalyticsAdminV1betaDataStream`

**Response**: `GoogleAnalyticsAdminV1betaDataStream`

```typescript
const res = await analyticsadmin.dataStreams.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.dataStreams.delete`

**DELETE** `v1beta/{+name}`

Deletes a DataStream on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DataStream to delete. Example format: properties/1234/dataStreams/5678 |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.dataStreams.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.dataStreams.patch`

**PATCH** `v1beta/{+name}`

Updates a DataStream on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this Data Stream. Format: properties/{property_id}/dataStreams/{stream_id} Example: "pr... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Omitted fields will not be updated. To replace the entire entity, use one... |

**Request body**: `GoogleAnalyticsAdminV1betaDataStream`

**Response**: `GoogleAnalyticsAdminV1betaDataStream`

```typescript
const res = await analyticsadmin.dataStreams.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.dataStreams.list`

**GET** `v1beta/{+parent}/dataStreams`

Lists DataStreams on a property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example format: properties/1234 |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 50 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDataStreams` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `GoogleAnalyticsAdminV1betaListDataStreamsResponse`

```typescript
const res = await analyticsadmin.dataStreams.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.dataStreams.get`

**GET** `v1beta/{+name}`

Lookup for a single DataStream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DataStream to get. Example format: properties/1234/dataStreams/5678 |

**Response**: `GoogleAnalyticsAdminV1betaDataStream`

```typescript
const res = await analyticsadmin.dataStreams.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.get`

**GET** `v1beta/{+name}`

Lookup for a single MeasurementProtocolSecret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the measurement protocol secret to lookup. Format: properties/{property}/dataStreams/{dataStrea... |

**Response**: `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

```typescript
const res = await analyticsadmin.measurementProtocolSecrets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.list`

**GET** `v1beta/{+parent}/measurementProtocolSecrets`

Returns child MeasurementProtocolSecrets under the specified parent Property.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent stream. Format: properties/{property}/dataStreams/{dataStream}/measurementP... |
| `pageSize` | `integer` | query | No | The maximum number of resources to return. If unspecified, at most 10 resources will be returned. The maximum value i... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListMeasurementProtocolSecrets` call. Provide this to retrieve the subsequent... |

**Response**: `GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse`

```typescript
const res = await analyticsadmin.measurementProtocolSecrets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`
- `https://www.googleapis.com/auth/analytics.readonly`

---

### `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.create`

**POST** `v1beta/{+parent}/measurementProtocolSecrets`

Creates a measurement protocol secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this secret will be created. Format: properties/{property}/dataStreams/{dataStream} |

**Request body**: `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

**Response**: `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

```typescript
const res = await analyticsadmin.measurementProtocolSecrets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.delete`

**DELETE** `v1beta/{+name}`

Deletes target MeasurementProtocolSecret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the MeasurementProtocolSecret to delete. Format: properties/{property}/dataStreams/{dataStream}... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await analyticsadmin.measurementProtocolSecrets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

### `analyticsadmin.properties.dataStreams.measurementProtocolSecrets.patch`

**PATCH** `v1beta/{+name}`

Updates a measurement protocol secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of this secret. This secret may be a child of any type of stream. Format: properties/{prop... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. Omitted fields will not be updated. |

**Request body**: `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

**Response**: `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

```typescript
const res = await analyticsadmin.measurementProtocolSecrets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/analytics.edit`

---

## Schemas

### `GoogleAnalyticsAdminV1betaAccessBetweenFilter`

To express that the result needs to be between two numbers (inclusive).

| Property | Type | Description |
|----------|------|-------------|
| `fromValue` | `GoogleAnalyticsAdminV1betaNumericValue` | Begins with this number. |
| `toValue` | `GoogleAnalyticsAdminV1betaNumericValue` | Ends with this number. |

### `GoogleAnalyticsAdminV1betaAccessDateRange`

A contiguous range of days: startDate, startDate + 1, ..., endDate.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` | The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot be before `startDate`. Th... |
| `startDate` | `string` | The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot be after `endDate`. The... |

### `GoogleAnalyticsAdminV1betaAccessDimension`

Dimensions are attributes of your data. For example, the dimension `userEmail` indicates the email of the user that accessed reporting data. Dimension values in report responses are strings.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | The API name of the dimension. See [Data Access Schema](https://developers.google.com/analytics/d... |

### `GoogleAnalyticsAdminV1betaAccessDimensionHeader`

Describes a dimension column in the report. Dimensions requested in a report produce column entries within rows and DimensionHeaders. However, dimensions used exclusively within filters or expressions do not produce columns in a report; correspondingly, those dimensions do not produce headers.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | The dimension's name; for example 'userEmail'. |

### `GoogleAnalyticsAdminV1betaAccessDimensionValue`

The value of a dimension.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The dimension value. For example, this value may be 'France' for the 'country' dimension. |

### `GoogleAnalyticsAdminV1betaAccessFilter`

An expression to filter dimension or metric values.

| Property | Type | Description |
|----------|------|-------------|
| `betweenFilter` | `GoogleAnalyticsAdminV1betaAccessBetweenFilter` | A filter for two values. |
| `fieldName` | `string` | The dimension name or metric name. |
| `inListFilter` | `GoogleAnalyticsAdminV1betaAccessInListFilter` | A filter for in list values. |
| `numericFilter` | `GoogleAnalyticsAdminV1betaAccessNumericFilter` | A filter for numeric or date values. |
| `stringFilter` | `GoogleAnalyticsAdminV1betaAccessStringFilter` | Strings related filter. |

### `GoogleAnalyticsAdminV1betaAccessFilterExpression`

Expresses dimension or metric filters. The fields in the same expression need to be either all dimensions or all metrics.

| Property | Type | Description |
|----------|------|-------------|
| `accessFilter` | `GoogleAnalyticsAdminV1betaAccessFilter` | A primitive filter. In the same FilterExpression, all of the filter's field names need to be eith... |
| `andGroup` | `GoogleAnalyticsAdminV1betaAccessFilterExpressionList` | Each of the FilterExpressions in the and_group has an AND relationship. |
| `notExpression` | `GoogleAnalyticsAdminV1betaAccessFilterExpression` | The FilterExpression is NOT of not_expression. |
| `orGroup` | `GoogleAnalyticsAdminV1betaAccessFilterExpressionList` | Each of the FilterExpressions in the or_group has an OR relationship. |

### `GoogleAnalyticsAdminV1betaAccessFilterExpressionList`

A list of filter expressions.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `array<GoogleAnalyticsAdminV1betaAccessFilterExpression>` | A list of filter expressions. |

### `GoogleAnalyticsAdminV1betaAccessInListFilter`

The result needs to be in a list of string values.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | If true, the string value is case sensitive. |
| `values` | `array<string>` | The list of string values. Must be non-empty. |

### `GoogleAnalyticsAdminV1betaAccessMetric`

The quantitative measurements of a report. For example, the metric `accessCount` is the total number of data access records.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | The API name of the metric. See [Data Access Schema](https://developers.google.com/analytics/devg... |

### `GoogleAnalyticsAdminV1betaAccessMetricHeader`

Describes a metric column in the report. Visible metrics requested in a report produce column entries within rows and MetricHeaders. However, metrics used exclusively within filters or expressions do not produce columns in a report; correspondingly, those metrics do not produce headers.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | The metric's name; for example 'accessCount'. |

### `GoogleAnalyticsAdminV1betaAccessMetricValue`

The value of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | The measurement value. For example, this value may be '13'. |

### `GoogleAnalyticsAdminV1betaAccessNumericFilter`

Filters for numeric or date values.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | The operation type for this filter. |
| `value` | `GoogleAnalyticsAdminV1betaNumericValue` | A numeric value or a date value. |

### `GoogleAnalyticsAdminV1betaAccessOrderBy`

Order bys define how rows will be sorted in the response. For example, ordering rows by descending access count is one ordering, and ordering rows by the country string is a different ordering.

| Property | Type | Description |
|----------|------|-------------|
| `desc` | `boolean` | If true, sorts by descending order. If false or unspecified, sorts in ascending order. |
| `dimension` | `GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy` | Sorts results by a dimension's values. |
| `metric` | `GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy` | Sorts results by a metric's values. |

### `GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy`

Sorts by dimension values.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | A dimension name in the request to order by. |
| `orderType` | `string` | Controls the rule for dimension value ordering. |

### `GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy`

Sorts by metric values.

| Property | Type | Description |
|----------|------|-------------|
| `metricName` | `string` | A metric name in the request to order by. |

### `GoogleAnalyticsAdminV1betaAccessQuota`

Current state of all quotas for this Analytics property. If any quota for a property is exhausted, all requests to that property will return Resource Exhausted errors.

| Property | Type | Description |
|----------|------|-------------|
| `concurrentRequests` | `GoogleAnalyticsAdminV1betaAccessQuotaStatus` | Properties can use up to 50 concurrent requests. |
| `serverErrorsPerProjectPerHour` | `GoogleAnalyticsAdminV1betaAccessQuotaStatus` | Properties and cloud project pairs can have up to 50 server errors per hour. |
| `tokensPerDay` | `GoogleAnalyticsAdminV1betaAccessQuotaStatus` | Properties can use 250,000 tokens per day. Most requests consume fewer than 10 tokens. |
| `tokensPerHour` | `GoogleAnalyticsAdminV1betaAccessQuotaStatus` | Properties can use 50,000 tokens per hour. An API request consumes a single number of tokens, and... |
| `tokensPerProjectPerHour` | `GoogleAnalyticsAdminV1betaAccessQuotaStatus` | Properties can use up to 25% of their tokens per project per hour. This amounts to Analytics 360 ... |

### `GoogleAnalyticsAdminV1betaAccessQuotaStatus`

Current state for a particular quota group.

| Property | Type | Description |
|----------|------|-------------|
| `consumed` | `integer` | Quota consumed by this request. |
| `remaining` | `integer` | Quota remaining after this request. |

### `GoogleAnalyticsAdminV1betaAccessRow`

Access report data for each row.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionValues` | `array<GoogleAnalyticsAdminV1betaAccessDimensionValue>` | List of dimension values. These values are in the same order as specified in the request. |
| `metricValues` | `array<GoogleAnalyticsAdminV1betaAccessMetricValue>` | List of metric values. These values are in the same order as specified in the request. |

### `GoogleAnalyticsAdminV1betaAccessStringFilter`

The filter for strings.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | If true, the string value is case sensitive. |
| `matchType` | `string` | The match type for this filter. |
| `value` | `string` | The string value used for the matching. |

### `GoogleAnalyticsAdminV1betaAccount`

A resource message representing a Google Analytics account.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when this account was originally created. |
| `deleted` | `boolean` | Output only. Indicates whether this Account is soft-deleted or not. Deleted accounts are excluded... |
| `displayName` | `string` | Required. Human-readable display name for this account. |
| `gmpOrganization` | `string` | Output only. The URI for a Google Marketing Platform organization resource. Only set when this ac... |
| `name` | `string` | Output only. Resource name of this account. Format: accounts/{account} Example: "accounts/100" |
| `regionCode` | `string` | Country of business. Must be a Unicode CLDR region code. |
| `updateTime` | `string` | Output only. Time when account payload fields were last updated. |

### `GoogleAnalyticsAdminV1betaAccountSummary`

A virtual resource representing an overview of an account and all its child Google Analytics properties.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `string` | Resource name of account referred to by this account summary Format: accounts/{account_id} Exampl... |
| `displayName` | `string` | Display name for the account referred to in this account summary. |
| `name` | `string` | Resource name for this account summary. Format: accountSummaries/{account_id} Example: "accountSu... |
| `propertySummaries` | `array<GoogleAnalyticsAdminV1betaPropertySummary>` | List of summaries for child accounts of this account. |

### `GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest`

Request message for AcknowledgeUserDataCollection RPC.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgement` | `string` | Required. An acknowledgement that the caller of this method understands the terms of user data co... |

### `GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse`

Response message for AcknowledgeUserDataCollection RPC.

### `GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest`

Request message for ArchiveCustomDimension RPC.

### `GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest`

Request message for ArchiveCustomMetric RPC.

### `GoogleAnalyticsAdminV1betaChangeHistoryChange`

A description of a change to a single Google Analytics resource.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The type of action that changed this resource. |
| `resource` | `string` | Resource name of the resource whose changes are described by this entry. |
| `resourceAfterChange` | `GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource` | Resource contents from after the change was made. If this resource was deleted in this change, th... |
| `resourceBeforeChange` | `GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource` | Resource contents from before the change was made. If this resource was created in this change, t... |

### `GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource`

A snapshot of a resource as before or after the result of a change in change history.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `GoogleAnalyticsAdminV1betaAccount` | A snapshot of an Account resource in change history. |
| `conversionEvent` | `GoogleAnalyticsAdminV1betaConversionEvent` | A snapshot of a ConversionEvent resource in change history. |
| `dataRetentionSettings` | `GoogleAnalyticsAdminV1betaDataRetentionSettings` | A snapshot of a data retention settings resource in change history. |
| `dataStream` | `GoogleAnalyticsAdminV1betaDataStream` | A snapshot of a DataStream resource in change history. |
| `firebaseLink` | `GoogleAnalyticsAdminV1betaFirebaseLink` | A snapshot of a FirebaseLink resource in change history. |
| `googleAdsLink` | `GoogleAnalyticsAdminV1betaGoogleAdsLink` | A snapshot of a GoogleAdsLink resource in change history. |
| `measurementProtocolSecret` | `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret` | A snapshot of a MeasurementProtocolSecret resource in change history. |
| `property` | `GoogleAnalyticsAdminV1betaProperty` | A snapshot of a Property resource in change history. |

### `GoogleAnalyticsAdminV1betaChangeHistoryEvent`

A set of changes within a Google Analytics account or its child properties that resulted from the same cause. Common causes would be updates made in the Google Analytics UI, changes from customer support, or automatic Google Analytics system changes.

| Property | Type | Description |
|----------|------|-------------|
| `actorType` | `string` | The type of actor that made this change. |
| `changeTime` | `string` | Time when change was made. |
| `changes` | `array<GoogleAnalyticsAdminV1betaChangeHistoryChange>` | A list of changes made in this change history event that fit the filters specified in SearchChang... |
| `changesFiltered` | `boolean` | If true, then the list of changes returned was filtered, and does not represent all changes that ... |
| `id` | `string` | ID of this change history event. This ID is unique across Google Analytics. |
| `userActorEmail` | `string` | Email address of the Google account that made the change. This will be a valid email address if t... |

### `GoogleAnalyticsAdminV1betaConversionEvent`

A conversion event in a Google Analytics property.

| Property | Type | Description |
|----------|------|-------------|
| `countingMethod` | `string` | Optional. The method by which conversions will be counted across multiple events within a session... |
| `createTime` | `string` | Output only. Time when this conversion event was created in the property. |
| `custom` | `boolean` | Output only. If set to true, this conversion event refers to a custom event. If set to false, thi... |
| `defaultConversionValue` | `GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue` | Optional. Defines a default value/currency for a conversion event. |
| `deletable` | `boolean` | Output only. If set, this event can currently be deleted with DeleteConversionEvent. |
| `eventName` | `string` | Immutable. The event name for this conversion event. Examples: 'click', 'purchase' |
| `name` | `string` | Output only. Resource name of this conversion event. Format: properties/{property}/conversionEven... |

### `GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue`

Defines a default value/currency for a conversion event. Both value and currency must be provided.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | When a conversion event for this event_name has no set currency, this currency will be applied as... |
| `value` | `number` | This value will be used to populate the value for all conversions of the specified event_name whe... |

### `GoogleAnalyticsAdminV1betaCustomDimension`

A definition for a CustomDimension.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description for this custom dimension. Max length of 150 characters. |
| `disallowAdsPersonalization` | `boolean` | Optional. If set to true, sets this dimension as NPA and excludes it from ads personalization. Th... |
| `displayName` | `string` | Required. Display name for this custom dimension as shown in the Analytics UI. Max length of 82 c... |
| `name` | `string` | Output only. Resource name for this CustomDimension resource. Format: properties/{property}/custo... |
| `parameterName` | `string` | Required. Immutable. Tagging parameter name for this custom dimension. If this is a user-scoped d... |
| `scope` | `string` | Required. Immutable. The scope of this dimension. |

### `GoogleAnalyticsAdminV1betaCustomMetric`

A definition for a custom metric.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description for this custom dimension. Max length of 150 characters. |
| `displayName` | `string` | Required. Display name for this custom metric as shown in the Analytics UI. Max length of 82 char... |
| `measurementUnit` | `string` | Required. The type for the custom metric's value. |
| `name` | `string` | Output only. Resource name for this CustomMetric resource. Format: properties/{property}/customMe... |
| `parameterName` | `string` | Required. Immutable. Tagging name for this custom metric. If this is an event-scoped metric, then... |
| `restrictedMetricType` | `array<string>` | Optional. Types of restricted data that this metric may contain. Required for metrics with CURREN... |
| `scope` | `string` | Required. Immutable. The scope of this custom metric. |

### `GoogleAnalyticsAdminV1betaDataRetentionSettings`

Settings values for data retention. This is a singleton resource.

| Property | Type | Description |
|----------|------|-------------|
| `eventDataRetention` | `string` | Required. The length of time that event-level data is retained. |
| `name` | `string` | Output only. Resource name for this DataRetentionSetting resource. Format: properties/{property}/... |
| `resetUserDataOnNewActivity` | `boolean` | If true, reset the retention period for the user identifier with every event from that user. |
| `userDataRetention` | `string` | Required. The length of time that user-level data is retained. |

### `GoogleAnalyticsAdminV1betaDataSharingSettings`

A resource message representing data sharing settings of a Google Analytics account.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name. Format: accounts/{account}/dataSharingSettings Example: "accounts/100... |
| `sharingWithGoogleAnySalesEnabled` | `boolean` | Deprecated. This field is no longer used and always returns false. |
| `sharingWithGoogleAssignedSalesEnabled` | `boolean` | Allows Google access to your Google Analytics account data, including account usage and configura... |
| `sharingWithGoogleProductsEnabled` | `boolean` | Allows Google to use the data to improve other Google products or services. This fields maps to t... |
| `sharingWithGoogleSupportEnabled` | `boolean` | Allows Google technical support representatives access to your Google Analytics data and account ... |
| `sharingWithOthersEnabled` | `boolean` | Enable features like predictions, modeled data, and benchmarking that can provide you with richer... |

### `GoogleAnalyticsAdminV1betaDataStream`

A resource message representing a data stream.

| Property | Type | Description |
|----------|------|-------------|
| `androidAppStreamData` | `GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData` | Data specific to Android app streams. Must be populated if type is ANDROID_APP_DATA_STREAM. |
| `createTime` | `string` | Output only. Time when this stream was originally created. |
| `displayName` | `string` | Human-readable display name for the Data Stream. Required for web data streams. The max allowed d... |
| `iosAppStreamData` | `GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData` | Data specific to iOS app streams. Must be populated if type is IOS_APP_DATA_STREAM. |
| `name` | `string` | Output only. Resource name of this Data Stream. Format: properties/{property_id}/dataStreams/{str... |
| `type` | `string` | Required. Immutable. The type of this DataStream resource. |
| `updateTime` | `string` | Output only. Time when stream payload fields were last updated. |
| `webStreamData` | `GoogleAnalyticsAdminV1betaDataStreamWebStreamData` | Data specific to web streams. Must be populated if type is WEB_DATA_STREAM. |

### `GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData`

Data specific to Android app streams.

| Property | Type | Description |
|----------|------|-------------|
| `firebaseAppId` | `string` | Output only. ID of the corresponding Android app in Firebase, if any. This ID can change if the A... |
| `packageName` | `string` | Immutable. The package name for the app being measured. Example: "com.example.myandroidapp" |

### `GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData`

Data specific to iOS app streams.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | Required. Immutable. The Apple App Store Bundle ID for the app Example: "com.example.myiosapp" |
| `firebaseAppId` | `string` | Output only. ID of the corresponding iOS app in Firebase, if any. This ID can change if the iOS a... |

### `GoogleAnalyticsAdminV1betaDataStreamWebStreamData`

Data specific to web streams.

| Property | Type | Description |
|----------|------|-------------|
| `defaultUri` | `string` | Domain name of the web app being measured, or empty. Example: "http://www.google.com", "https://w... |
| `firebaseAppId` | `string` | Output only. ID of the corresponding web app in Firebase, if any. This ID can change if the web a... |
| `measurementId` | `string` | Output only. Analytics Measurement ID. Example: "G-1A2BCD345E" |

### `GoogleAnalyticsAdminV1betaFirebaseLink`

A link between a Google Analytics property and a Firebase project.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when this FirebaseLink was originally created. |
| `name` | `string` | Output only. Example format: properties/1234/firebaseLinks/5678 |
| `project` | `string` | Immutable. Firebase project resource name. When creating a FirebaseLink, you may provide this res... |

### `GoogleAnalyticsAdminV1betaGoogleAdsLink`

A link between a Google Analytics property and a Google Ads account.

| Property | Type | Description |
|----------|------|-------------|
| `adsPersonalizationEnabled` | `boolean` | Enable personalized advertising features with this integration. Automatically publish my Google A... |
| `canManageClients` | `boolean` | Output only. If true, this link is for a Google Ads manager account. |
| `createTime` | `string` | Output only. Time when this link was originally created. |
| `creatorEmailAddress` | `string` | Output only. Email address of the user that created the link. An empty string will be returned if... |
| `customerId` | `string` | Immutable. Google Ads customer ID. |
| `name` | `string` | Output only. Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note: googleAdsLink... |
| `updateTime` | `string` | Output only. Time when this link was last updated. |

### `GoogleAnalyticsAdminV1betaKeyEvent`

A key event in a Google Analytics property.

| Property | Type | Description |
|----------|------|-------------|
| `countingMethod` | `string` | Required. The method by which Key Events will be counted across multiple events within a session. |
| `createTime` | `string` | Output only. Time when this key event was created in the property. |
| `custom` | `boolean` | Output only. If set to true, this key event refers to a custom event. If set to false, this key e... |
| `defaultValue` | `GoogleAnalyticsAdminV1betaKeyEventDefaultValue` | Optional. Defines a default value/currency for a key event. |
| `deletable` | `boolean` | Output only. If set to true, this event can be deleted. |
| `eventName` | `string` | Immutable. The event name for this key event. Examples: 'click', 'purchase' |
| `name` | `string` | Output only. Resource name of this key event. Format: properties/{property}/keyEvents/{key_event} |

### `GoogleAnalyticsAdminV1betaKeyEventDefaultValue`

Defines a default value/currency for a key event.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Required. When an occurrence of this Key Event (specified by event_name) has no set currency this... |
| `numericValue` | `number` | Required. This will be used to populate the "value" parameter for all occurrences of this Key Eve... |

### `GoogleAnalyticsAdminV1betaListAccountSummariesResponse`

Response message for ListAccountSummaries RPC.

| Property | Type | Description |
|----------|------|-------------|
| `accountSummaries` | `array<GoogleAnalyticsAdminV1betaAccountSummary>` | Account summaries of all accounts the caller has access to. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListAccountsResponse`

Request message for ListAccounts RPC.

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<GoogleAnalyticsAdminV1betaAccount>` | Results that were accessible to the caller. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListConversionEventsResponse`

Response message for ListConversionEvents RPC.

| Property | Type | Description |
|----------|------|-------------|
| `conversionEvents` | `array<GoogleAnalyticsAdminV1betaConversionEvent>` | The requested conversion events |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListCustomDimensionsResponse`

Response message for ListCustomDimensions RPC.

| Property | Type | Description |
|----------|------|-------------|
| `customDimensions` | `array<GoogleAnalyticsAdminV1betaCustomDimension>` | List of CustomDimensions. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListCustomMetricsResponse`

Response message for ListCustomMetrics RPC.

| Property | Type | Description |
|----------|------|-------------|
| `customMetrics` | `array<GoogleAnalyticsAdminV1betaCustomMetric>` | List of CustomMetrics. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListDataStreamsResponse`

Response message for ListDataStreams RPC.

| Property | Type | Description |
|----------|------|-------------|
| `dataStreams` | `array<GoogleAnalyticsAdminV1betaDataStream>` | List of DataStreams. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListFirebaseLinksResponse`

Response message for ListFirebaseLinks RPC

| Property | Type | Description |
|----------|------|-------------|
| `firebaseLinks` | `array<GoogleAnalyticsAdminV1betaFirebaseLink>` | List of FirebaseLinks. This will have at most one value. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse`

Response message for ListGoogleAdsLinks RPC.

| Property | Type | Description |
|----------|------|-------------|
| `googleAdsLinks` | `array<GoogleAnalyticsAdminV1betaGoogleAdsLink>` | List of GoogleAdsLinks. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListKeyEventsResponse`

Response message for ListKeyEvents RPC.

| Property | Type | Description |
|----------|------|-------------|
| `keyEvents` | `array<GoogleAnalyticsAdminV1betaKeyEvent>` | The requested Key Events |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse`

Response message for ListMeasurementProtocolSecret RPC

| Property | Type | Description |
|----------|------|-------------|
| `measurementProtocolSecrets` | `array<GoogleAnalyticsAdminV1betaMeasurementProtocolSecret>` | A list of secrets for the parent stream specified in the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleAnalyticsAdminV1betaListPropertiesResponse`

Response message for ListProperties RPC.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `properties` | `array<GoogleAnalyticsAdminV1betaProperty>` | Results that matched the filter criteria and were accessible to the caller. |

### `GoogleAnalyticsAdminV1betaMeasurementProtocolSecret`

A secret value used for sending hits to Measurement Protocol.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. Human-readable display name for this secret. |
| `name` | `string` | Output only. Resource name of this secret. This secret may be a child of any type of stream. Form... |
| `secretValue` | `string` | Output only. The measurement protocol secret value. Pass this value to the api_secret field of th... |

### `GoogleAnalyticsAdminV1betaNumericValue`

To represent a number.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | Double value |
| `int64Value` | `string` | Integer value |

### `GoogleAnalyticsAdminV1betaProperty`

A resource message representing a Google Analytics property.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `string` | Immutable. The resource name of the parent account Format: accounts/{account_id} Example: "accoun... |
| `createTime` | `string` | Output only. Time when the entity was originally created. |
| `currencyCode` | `string` | The currency type used in reports involving monetary values. Format: https://en.wikipedia.org/wik... |
| `deleteTime` | `string` | Output only. If set, the time at which this property was trashed. If not set, then this property ... |
| `displayName` | `string` | Required. Human-readable display name for this property. The max allowed display name length is 1... |
| `expireTime` | `string` | Output only. If set, the time at which this trashed property will be permanently deleted. If not ... |
| `industryCategory` | `string` | Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK |
| `name` | `string` | Output only. Resource name of this property. Format: properties/{property_id} Example: "propertie... |
| `parent` | `string` | Immutable. Resource name of this property's logical parent. Note: The Property-Moving UI can be u... |
| `propertyType` | `string` | Immutable. The property type for this Property resource. When creating a property, if the type is... |
| `serviceLevel` | `string` | Output only. The Google Analytics service level that applies to this property. |
| `timeZone` | `string` | Required. Reporting Time Zone, used as the day boundary for reports, regardless of where the data... |
| `updateTime` | `string` | Output only. Time when entity payload fields were last updated. |

### `GoogleAnalyticsAdminV1betaPropertySummary`

A virtual resource representing metadata for a Google Analytics property.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name for the property referred to in this property summary. |
| `parent` | `string` | Resource name of this property's logical parent. Note: The Property-Moving UI can be used to chan... |
| `property` | `string` | Resource name of property referred to by this property summary Format: properties/{property_id} E... |
| `propertyType` | `string` | The property's property type. |

### `GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest`

Request message for ProvisionAccountTicket RPC.

| Property | Type | Description |
|----------|------|-------------|
| `account` | `GoogleAnalyticsAdminV1betaAccount` | The account to create. |
| `redirectUri` | `string` | Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in ... |

### `GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse`

Response message for ProvisionAccountTicket RPC.

| Property | Type | Description |
|----------|------|-------------|
| `accountTicketId` | `string` | The param to be passed in the ToS link. |

### `GoogleAnalyticsAdminV1betaRunAccessReportRequest`

The request for a Data Access Record Report.

| Property | Type | Description |
|----------|------|-------------|
| `dateRanges` | `array<GoogleAnalyticsAdminV1betaAccessDateRange>` | Date ranges of access records to read. If multiple date ranges are requested, each response row w... |
| `dimensionFilter` | `GoogleAnalyticsAdminV1betaAccessFilterExpression` | Dimension filters let you restrict report response to specific dimension values which match the f... |
| `dimensions` | `array<GoogleAnalyticsAdminV1betaAccessDimension>` | The dimensions requested and displayed in the response. Requests are allowed up to 9 dimensions. |
| `expandGroups` | `boolean` | Optional. Decides whether to return the users within user groups. This field works only when incl... |
| `includeAllUsers` | `boolean` | Optional. Determines whether to include users who have never made an API call in the response. If... |
| `limit` | `string` | The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum... |
| `metricFilter` | `GoogleAnalyticsAdminV1betaAccessFilterExpression` | Metric filters allow you to restrict report response to specific metric values which match the fi... |
| `metrics` | `array<GoogleAnalyticsAdminV1betaAccessMetric>` | The metrics requested and displayed in the response. Requests are allowed up to 10 metrics. |
| `offset` | `string` | The row count of the start row. The first row is counted as row 0. If offset is unspecified, it i... |
| `orderBys` | `array<GoogleAnalyticsAdminV1betaAccessOrderBy>` | Specifies how rows are ordered in the response. |
| `returnEntityQuota` | `boolean` | Toggles whether to return the current state of this Analytics Property's quota. Quota is returned... |
| `timeZone` | `string` | This request's time zone if specified. If unspecified, the property's time zone is used. The requ... |

### `GoogleAnalyticsAdminV1betaRunAccessReportResponse`

The customized Data Access Record Report response.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionHeaders` | `array<GoogleAnalyticsAdminV1betaAccessDimensionHeader>` | The header for a column in the report that corresponds to a specific dimension. The number of Dim... |
| `metricHeaders` | `array<GoogleAnalyticsAdminV1betaAccessMetricHeader>` | The header for a column in the report that corresponds to a specific metric. The number of Metric... |
| `quota` | `GoogleAnalyticsAdminV1betaAccessQuota` | The quota state for this Analytics property including this request. This field doesn't work with ... |
| `rowCount` | `integer` | The total number of rows in the query result. `rowCount` is independent of the number of rows ret... |
| `rows` | `array<GoogleAnalyticsAdminV1betaAccessRow>` | Rows of dimension value combinations and metric values in the report. |

### `GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest`

Request message for SearchChangeHistoryEvents RPC.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `array<string>` | Optional. If set, only return changes that match one or more of these types of actions. |
| `actorEmail` | `array<string>` | Optional. If set, only return changes if they are made by a user in this list. |
| `earliestChangeTime` | `string` | Optional. If set, only return changes made after this time (inclusive). |
| `latestChangeTime` | `string` | Optional. If set, only return changes made before this time (inclusive). |
| `pageSize` | `integer` | Optional. The maximum number of ChangeHistoryEvent items to return. If unspecified, at most 50 it... |
| `pageToken` | `string` | Optional. A page token, received from a previous `SearchChangeHistoryEvents` call. Provide this t... |
| `property` | `string` | Optional. Resource name for a child property. If set, only return changes made to this property o... |
| `resourceType` | `array<string>` | Optional. If set, only return changes if they are for a resource that matches at least one of the... |

### `GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse`

Response message for SearchAccounts RPC.

| Property | Type | Description |
|----------|------|-------------|
| `changeHistoryEvents` | `array<GoogleAnalyticsAdminV1betaChangeHistoryEvent>` | Results that were accessible to the caller. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

