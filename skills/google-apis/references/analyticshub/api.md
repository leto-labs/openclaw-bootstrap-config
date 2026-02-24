# Analytics Hub API - API Reference

**Version**: `v1` | **Methods**: 35 | **Schemas**: 71

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `analyticshub.organizations.locations.dataExchanges.list` | GET | `v1/{+organization}/dataExchanges` | Lists all data exchanges from projects in a given organization and location. |
| `analyticshub.projects.locations.dataExchanges.get` | GET | `v1/{+name}` | Gets the details of a data exchange. |
| `analyticshub.projects.locations.dataExchanges.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy. |
| `analyticshub.projects.locations.dataExchanges.patch` | PATCH | `v1/{+name}` | Updates an existing data exchange. |
| `analyticshub.projects.locations.dataExchanges.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy. |
| `analyticshub.projects.locations.dataExchanges.create` | POST | `v1/{+parent}/dataExchanges` | Creates a new data exchange. |
| `analyticshub.projects.locations.dataExchanges.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has. |
| `analyticshub.projects.locations.dataExchanges.list` | GET | `v1/{+parent}/dataExchanges` | Lists all data exchanges in a given project and location. |
| `analyticshub.projects.locations.dataExchanges.subscribe` | POST | `v1/{+name}:subscribe` | Creates a Subscription to a Data Clean Room. This is a long-running operation as it will create o... |
| `analyticshub.projects.locations.dataExchanges.listSubscriptions` | GET | `v1/{+resource}:listSubscriptions` | Lists all subscriptions on a given Data Exchange or Listing. |
| `analyticshub.projects.locations.dataExchanges.delete` | DELETE | `v1/{+name}` | Deletes an existing data exchange. |
| `analyticshub.projects.locations.dataExchanges.listings.delete` | DELETE | `v1/{+name}` | Deletes a listing. |
| `analyticshub.projects.locations.dataExchanges.listings.list` | GET | `v1/{+parent}/listings` | Lists all listings in a given project and location. |
| `analyticshub.projects.locations.dataExchanges.listings.subscribe` | POST | `v1/{+name}:subscribe` | Subscribes to a listing. Currently, with Analytics Hub, you can create listings that reference on... |
| `analyticshub.projects.locations.dataExchanges.listings.patch` | PATCH | `v1/{+name}` | Updates an existing listing. |
| `analyticshub.projects.locations.dataExchanges.listings.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the permissions that a caller has. |
| `analyticshub.projects.locations.dataExchanges.listings.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy. |
| `analyticshub.projects.locations.dataExchanges.listings.create` | POST | `v1/{+parent}/listings` | Creates a new listing. |
| `analyticshub.projects.locations.dataExchanges.listings.listSubscriptions` | GET | `v1/{+resource}:listSubscriptions` | Lists all subscriptions on a given Data Exchange or Listing. |
| `analyticshub.projects.locations.dataExchanges.listings.get` | GET | `v1/{+name}` | Gets the details of a listing. |
| `analyticshub.projects.locations.dataExchanges.listings.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy. |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.create` | POST | `v1/{+parent}/queryTemplates` | Creates a new QueryTemplate |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.approve` | POST | `v1/{+name}:approve` | Approves a query template. |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.delete` | DELETE | `v1/{+name}` | Deletes a query template. |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.patch` | PATCH | `v1/{+name}` | Updates an existing QueryTemplate |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.submit` | POST | `v1/{+name}:submit` | Submits a query template for approval. |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.get` | GET | `v1/{+name}` | Gets a QueryTemplate |
| `analyticshub.projects.locations.dataExchanges.queryTemplates.list` | GET | `v1/{+parent}/queryTemplates` | Lists all QueryTemplates in a given project and location. |
| `analyticshub.projects.locations.subscriptions.get` | GET | `v1/{+name}` | Gets the details of a Subscription. |
| `analyticshub.projects.locations.subscriptions.delete` | DELETE | `v1/{+name}` | Deletes a subscription. |
| `analyticshub.projects.locations.subscriptions.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy. |
| `analyticshub.projects.locations.subscriptions.revoke` | POST | `v1/{+name}:revoke` | Revokes a given subscription. |
| `analyticshub.projects.locations.subscriptions.refresh` | POST | `v1/{+name}:refresh` | Refreshes a Subscription to a Data Exchange. A Data Exchange can become stale when a publisher ad... |
| `analyticshub.projects.locations.subscriptions.list` | GET | `v1/{+parent}/subscriptions` | Lists all subscriptions in a given project and location. |
| `analyticshub.projects.locations.subscriptions.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy. |

### `analyticshub.organizations.locations.dataExchanges.list`

**GET** `v1/{+organization}/dataExchanges`

Lists all data exchanges from projects in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `organization` | `string` | path | Yes | Required. The organization resource path of the projects containing DataExchanges. e.g. `organizations/myorg/location... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |

**Response**: `ListOrgDataExchangesResponse`

```typescript
const res = await analyticshub.dataExchanges.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.get`

**GET** `v1/{+name}`

Gets the details of a data exchange.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the data exchange. e.g. `projects/myproject/locations/us/dataExchanges/123`. |

**Response**: `DataExchange`

```typescript
const res = await analyticshub.dataExchanges.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.dataExchanges.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.patch`

**PATCH** `v1/{+name}`

Updates an existing data exchange.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the data exchange. e.g. `projects/myproject/locations/us/dataExchanges/123`. |
| `updateMask` | `string` | query | No | Required. Field mask specifies the fields to update in the data exchange resource. The fields specified in the `updat... |

**Request body**: `DataExchange`

**Response**: `DataExchange`

```typescript
const res = await analyticshub.dataExchanges.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.dataExchanges.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.create`

**POST** `v1/{+parent}/dataExchanges`

Creates a new data exchange.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the data exchange. e.g. `projects/myproject/locations/us`. |
| `dataExchangeId` | `string` | query | No | Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Max length:... |

**Request body**: `DataExchange`

**Response**: `DataExchange`

```typescript
const res = await analyticshub.dataExchanges.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await analyticshub.dataExchanges.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.list`

**GET** `v1/{+parent}/dataExchanges`

Lists all data exchanges in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the data exchanges. e.g. `projects/myproject/locations/us`. |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |

**Response**: `ListDataExchangesResponse`

```typescript
const res = await analyticshub.dataExchanges.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.subscribe`

**POST** `v1/{+name}:subscribe`

Creates a Subscription to a Data Clean Room. This is a long-running operation as it will create one or more linked datasets. Throws a Bad Request error if the Data Exchange does not contain any listings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Data Exchange. e.g. `projects/publisherproject/locations/us/dataExchanges/123` |

**Request body**: `SubscribeDataExchangeRequest`

**Response**: `Operation`

```typescript
const res = await analyticshub.dataExchanges.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listSubscriptions`

**GET** `v1/{+resource}:listSubscriptions`

Lists all subscriptions on a given Data Exchange or Listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. Resource name of the requested target. This resource may be either a Listing or a DataExchange. e.g. projec... |
| `includeDeletedSubscriptions` | `boolean` | query | No | If selected, includes deleted subscriptions in the response (up to 63 days after deletion). |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. |
| `pageToken` | `string` | query | No | Page token, returned by a previous call. |

**Response**: `ListSharedResourceSubscriptionsResponse`

```typescript
const res = await analyticshub.dataExchanges.listSubscriptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.delete`

**DELETE** `v1/{+name}`

Deletes an existing data exchange.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full name of the data exchange resource that you want to delete. For example, `projects/myproject/locat... |

**Response**: `Empty`

```typescript
const res = await analyticshub.dataExchanges.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.delete`

**DELETE** `v1/{+name}`

Deletes a listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the listing to delete. e.g. `projects/myproject/locations/us/dataExchanges/123/listings/456`. |
| `deleteCommercial` | `boolean` | query | No | Optional. If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts ... |

**Response**: `Empty`

```typescript
const res = await analyticshub.listings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.list`

**GET** `v1/{+parent}/listings`

Lists all listings in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the listing. e.g. `projects/myproject/locations/us/dataExchanges/123`. |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the en... |
| `pageToken` | `string` | query | No | Page token, returned by a previous call, to request the next page of results. |

**Response**: `ListListingsResponse`

```typescript
const res = await analyticshub.listings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.subscribe`

**POST** `v1/{+name}:subscribe`

Subscribes to a listing. Currently, with Analytics Hub, you can create listings that reference only BigQuery datasets. Upon subscription to a listing for a BigQuery dataset, Analytics Hub creates a linked dataset in the subscriber's project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the listing that you want to subscribe to. e.g. `projects/myproject/locations/us/dataExcha... |

**Request body**: `SubscribeListingRequest`

**Response**: `SubscribeListingResponse`

```typescript
const res = await analyticshub.listings.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.patch`

**PATCH** `v1/{+name}`

Updates an existing listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the listing. e.g. `projects/myproject/locations/us/dataExchanges/123/listings/456` |
| `updateMask` | `string` | query | No | Required. Field mask specifies the fields to update in the listing resource. The fields specified in the `updateMask`... |

**Request body**: `Listing`

**Response**: `Listing`

```typescript
const res = await analyticshub.listings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the permissions that a caller has.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await analyticshub.listings.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.listings.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.create`

**POST** `v1/{+parent}/listings`

Creates a new listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the listing. e.g. `projects/myproject/locations/us/dataExchanges/123`. |
| `listingId` | `string` | query | No | Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Max len... |

**Request body**: `Listing`

**Response**: `Listing`

```typescript
const res = await analyticshub.listings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.listSubscriptions`

**GET** `v1/{+resource}:listSubscriptions`

Lists all subscriptions on a given Data Exchange or Listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. Resource name of the requested target. This resource may be either a Listing or a DataExchange. e.g. projec... |
| `includeDeletedSubscriptions` | `boolean` | query | No | If selected, includes deleted subscriptions in the response (up to 63 days after deletion). |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. |
| `pageToken` | `string` | query | No | Page token, returned by a previous call. |

**Response**: `ListSharedResourceSubscriptionsResponse`

```typescript
const res = await analyticshub.listings.listSubscriptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.get`

**GET** `v1/{+name}`

Gets the details of a listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the listing. e.g. `projects/myproject/locations/us/dataExchanges/123/listings/456`. |

**Response**: `Listing`

```typescript
const res = await analyticshub.listings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.listings.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.listings.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.create`

**POST** `v1/{+parent}/queryTemplates`

Creates a new QueryTemplate

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/quer... |
| `queryTemplateId` | `string` | query | No | Required. The ID of the QueryTemplate to create. Must contain only Unicode letters, numbers (0-9), underscores (_). M... |

**Request body**: `QueryTemplate`

**Response**: `QueryTemplate`

```typescript
const res = await analyticshub.queryTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.approve`

**POST** `v1/{+name}:approve`

Approves a query template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource path of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/queryTempla... |

**Request body**: `ApproveQueryTemplateRequest`

**Response**: `QueryTemplate`

```typescript
const res = await analyticshub.queryTemplates.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a query template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource path of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/queryTempla... |

**Response**: `Empty`

```typescript
const res = await analyticshub.queryTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.patch`

**PATCH** `v1/{+name}`

Updates an existing QueryTemplate

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/queryTem... |
| `updateMask` | `string` | query | No | Optional. Field mask specifies the fields to update in the query template resource. The fields specified in the `upda... |

**Request body**: `QueryTemplate`

**Response**: `QueryTemplate`

```typescript
const res = await analyticshub.queryTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.submit`

**POST** `v1/{+name}:submit`

Submits a query template for approval.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource path of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/queryTempla... |

**Request body**: `SubmitQueryTemplateRequest`

**Response**: `QueryTemplate`

```typescript
const res = await analyticshub.queryTemplates.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.get`

**GET** `v1/{+name}`

Gets a QueryTemplate

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The parent resource path of the QueryTemplate. e.g. `projects/myproject/locations/us/dataExchanges/123/quer... |

**Response**: `QueryTemplate`

```typescript
const res = await analyticshub.queryTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.dataExchanges.queryTemplates.list`

**GET** `v1/{+parent}/queryTemplates`

Lists all QueryTemplates in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the QueryTemplates. e.g. `projects/myproject/locations/us/dataExchanges/123`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return in a single response page. Leverage the page tokens to iterate thro... |
| `pageToken` | `string` | query | No | Optional. Page token, returned by a previous call, to request the next page of results. |

**Response**: `ListQueryTemplatesResponse`

```typescript
const res = await analyticshub.queryTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.get`

**GET** `v1/{+name}`

Gets the details of a Subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription. e.g. projects/123/locations/us/subscriptions/456 |

**Response**: `Subscription`

```typescript
const res = await analyticshub.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.delete`

**DELETE** `v1/{+name}`

Deletes a subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription to delete. e.g. projects/123/locations/us/subscriptions/456 |

**Response**: `Operation`

```typescript
const res = await analyticshub.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.subscriptions.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.revoke`

**POST** `v1/{+name}:revoke`

Revokes a given subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription to revoke. e.g. projects/123/locations/us/subscriptions/456 |

**Request body**: `RevokeSubscriptionRequest`

**Response**: `RevokeSubscriptionResponse`

```typescript
const res = await analyticshub.subscriptions.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.refresh`

**POST** `v1/{+name}:refresh`

Refreshes a Subscription to a Data Exchange. A Data Exchange can become stale when a publisher adds or removes data. This is a long-running operation as it may create many linked datasets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the Subscription to refresh. e.g. `projects/subscriberproject/locations/us/subscriptions/123` |

**Request body**: `RefreshSubscriptionRequest`

**Response**: `Operation`

```typescript
const res = await analyticshub.subscriptions.refresh({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.list`

**GET** `v1/{+parent}/subscriptions`

Lists all subscriptions in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource path of the subscription. e.g. projects/myproject/locations/us |
| `filter` | `string` | query | No | An expression for filtering the results of the request. Eligible fields for filtering are: + `listing` + `data_exchan... |
| `pageSize` | `integer` | query | No | The maximum number of results to return in a single response page. |
| `pageToken` | `string` | query | No | Page token, returned by a previous call. |

**Response**: `ListSubscriptionsResponse`

```typescript
const res = await analyticshub.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `analyticshub.projects.locations.subscriptions.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await analyticshub.subscriptions.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AIInference`

Configuration for making inference requests against Vertex AI models.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `string` | Required. An endpoint to a Vertex AI model of the form `projects/{project}/locations/{location}/e... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to make prediction requests against endpoints. The resource ... |
| `unstructuredInference` | `UnstructuredInference` | Optional. Requests and responses can be any arbitrary JSON object. |

### `ApproveQueryTemplateRequest`

Message for approving a QueryTemplate.

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

### `AvroConfig`

Configuration for writing message data in Avro format. Message payloads and metadata will be written to files as an Avro binary.

| Property | Type | Description |
|----------|------|-------------|
| `useTopicSchema` | `boolean` | Optional. When true, the output Cloud Storage file will be serialized using the topic schema, if ... |
| `writeMetadata` | `boolean` | Optional. When true, write the subscription name, message_id, publish_time, attributes, and order... |

### `BigQueryConfig`

Configuration for a BigQuery subscription.

| Property | Type | Description |
|----------|------|-------------|
| `dropUnknownFields` | `boolean` | Optional. When true and use_topic_schema is true, any fields that are a part of the topic schema ... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to write to BigQuery. The subscription creator or updater th... |
| `table` | `string` | Optional. The name of the table to which to write data, of the form {projectId}.{datasetId}.{tabl... |
| `useTableSchema` | `boolean` | Optional. When true, use the BigQuery table's schema as the columns to write to in BigQuery. `use... |
| `useTopicSchema` | `boolean` | Optional. When true, use the topic's schema as the columns to write to in BigQuery, if it exists.... |
| `writeMetadata` | `boolean` | Optional. When true, write the subscription name, message_id, publish_time, attributes, and order... |

### `BigQueryDatasetSource`

A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Optional. Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets... |
| `effectiveReplicas` | `array<Replica>` | Output only. Server-owned effective state of replicas. Contains both primary and secondary replic... |
| `replicaLocations` | `array<string>` | Optional. A list of regions where the publisher has created shared dataset replicas. |
| `restrictedExportPolicy` | `RestrictedExportPolicy` | Optional. If set, restricted export policy will be propagated and enforced on the linked dataset. |
| `selectedResources` | `array<SelectedResource>` | Optional. Resource in this dataset that is selectively shared. This field is required for data cl... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CloudStorageConfig`

Configuration for a Cloud Storage subscription.

| Property | Type | Description |
|----------|------|-------------|
| `avroConfig` | `AvroConfig` | Optional. If set, message data will be written to Cloud Storage in Avro format. |
| `bucket` | `string` | Required. User-provided name for the Cloud Storage bucket. The bucket must be created by the user... |
| `filenameDatetimeFormat` | `string` | Optional. User-provided format string specifying how to represent datetimes in Cloud Storage file... |
| `filenamePrefix` | `string` | Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](h... |
| `filenameSuffix` | `string` | Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](h... |
| `maxBytes` | `string` | Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is crea... |
| `maxDuration` | `string` | Optional. File batching settings. If no max_duration setting is specified, a max_duration of 5 mi... |
| `maxMessages` | `string` | Optional. The maximum number of messages that can be written to a Cloud Storage file before a new... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to write to Cloud Storage. The subscription creator or updat... |
| `textConfig` | `TextConfig` | Optional. If set, message data will be written to Cloud Storage in text format. |

### `DataExchange`

A data exchange is a container that lets you share data. Along with the descriptive information about the data exchange, it contains listings that reference shared datasets.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the data exchange. The description must not contain Unicode non-characte... |
| `discoveryType` | `string` | Optional. Type of discovery on the discovery page for all the listings under this exchange. Updat... |
| `displayName` | `string` | Required. Human-readable display name of the data exchange. The display name must contain only Un... |
| `documentation` | `string` | Optional. Documentation describing the data exchange. |
| `icon` | `string` | Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image di... |
| `listingCount` | `integer` | Output only. Number of listings contained in the data exchange. |
| `logLinkedDatasetQueryUserEmail` | `boolean` | Optional. By default, false. If true, the DataExchange has an email sharing mandate enabled. |
| `name` | `string` | Output only. The resource name of the data exchange. e.g. `projects/myproject/locations/us/dataEx... |
| `primaryContact` | `string` | Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes. |
| `sharingEnvironmentConfig` | `SharingEnvironmentConfig` | Optional. Configurable data sharing environment option for a data exchange. |

### `DataProvider`

Contains details of the data provider.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the data provider. |
| `primaryContact` | `string` | Optional. Email or URL of the data provider. Max Length: 1000 bytes. |

### `DcrExchangeConfig`

Data Clean Room (DCR), used for privacy-safe and secured data sharing.

| Property | Type | Description |
|----------|------|-------------|
| `singleLinkedDatasetPerCleanroom` | `boolean` | Output only. If True, when subscribing to this DCR, it will create only one linked dataset contai... |
| `singleSelectedResourceSharingRestriction` | `boolean` | Output only. If True, this DCR restricts the contributors to sharing only a single resource in a ... |

### `DeadLetterPolicy`

Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail.

| Property | Type | Description |
|----------|------|-------------|
| `deadLetterTopic` | `string` | Optional. The name of the topic to which dead letter messages should be published. Format is `pro... |
| `maxDeliveryAttempts` | `integer` | Optional. The maximum number of delivery attempts for any message. The value must be between 5 an... |

### `DefaultExchangeConfig`

Default Analytics Hub data exchange, used for secured data sharing.

### `DestinationDataset`

Defines the destination bigquery dataset.

| Property | Type | Description |
|----------|------|-------------|
| `datasetReference` | `DestinationDatasetReference` | Required. A reference that identifies the destination dataset. |
| `description` | `string` | Optional. A user-friendly description of the dataset. |
| `friendlyName` | `string` | Optional. A descriptive name for the dataset. |
| `labels` | `object` | Optional. The labels associated with this dataset. You can use these to organize and group your d... |
| `location` | `string` | Required. The geographic location where the dataset should reside. See https://cloud.google.com/b... |
| `replicaLocations` | `array<string>` | Optional. The geographic locations where the dataset should be replicated. See [BigQuery location... |

### `DestinationDatasetReference`

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Required. A unique ID for this dataset, without the project name. The ID must contain only letter... |
| `projectId` | `string` | Required. The ID of the project containing this dataset. |

### `DestinationPubSubSubscription`

Defines the destination Pub/Sub subscription.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubSubscription` | `GooglePubsubV1Subscription` | Required. Destination Pub/Sub subscription resource. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExpirationPolicy`

A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).

| Property | Type | Description |
|----------|------|-------------|
| `ttl` | `string` | Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo`

Commercial info contains the information about the commercial data products associated with the listing.

| Property | Type | Description |
|----------|------|-------------|
| `cloudMarketplace` | `GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo` | Output only. Details of the Marketplace Data Product associated with the Listing. |

### `GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo`

Specifies the details of the Marketplace Data Product associated with the Listing.

| Property | Type | Description |
|----------|------|-------------|
| `commercialState` | `string` | Output only. Commercial state of the Marketplace Data Product. |
| `service` | `string` | Output only. Resource name of the commercial service associated with the Marketplace Data Product... |

### `GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo`

Commercial info metadata for this subscription.

| Property | Type | Description |
|----------|------|-------------|
| `cloudMarketplace` | `GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo` | Output only. This is set when the subscription is commercialised via Cloud Marketplace. |

### `GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo`

Cloud Marketplace commercial metadata for this subscription.

| Property | Type | Description |
|----------|------|-------------|
| `order` | `string` | Resource name of the Marketplace Order. |

### `GooglePubsubV1Subscription`

Defines the destination Pub/Sub subscription. If none of `push_config`, `bigquery_config`, `cloud_storage_config`, `pubsub_export_config`, or `pubsublite_export_config` is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set.

| Property | Type | Description |
|----------|------|-------------|
| `ackDeadlineSeconds` | `integer` | Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscribe... |
| `bigqueryConfig` | `BigQueryConfig` | Optional. If delivery to BigQuery is used with this subscription, this field is used to configure... |
| `cloudStorageConfig` | `CloudStorageConfig` | Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used ... |
| `deadLetterPolicy` | `DeadLetterPolicy` | Optional. A policy that specifies the conditions for dead lettering messages in this subscription... |
| `detached` | `boolean` | Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions d... |
| `enableExactlyOnceDelivery` | `boolean` | Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a... |
| `enableMessageOrdering` | `boolean` | Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be del... |
| `expirationPolicy` | `ExpirationPolicy` | Optional. A policy that specifies the conditions for this subscription's expiration. A subscripti... |
| `filter` | `string` | Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/... |
| `labels` | `object` | Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels). |
| `messageRetentionDuration` | `string` | Optional. How long to retain unacknowledged messages in the subscription's backlog, from the mome... |
| `messageTransforms` | `array<MessageTransform>` | Optional. Transforms to be applied to messages before they are delivered to subscribers. Transfor... |
| `name` | `string` | Required. Identifier. Name of the subscription. Format is `projects/{project}/subscriptions/{sub}`. |
| `pushConfig` | `PushConfig` | Optional. If push delivery is used with this subscription, this field is used to configure it. |
| `retainAckedMessages` | `boolean` | Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expun... |
| `retryPolicy` | `RetryPolicy` | Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If ... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |

### `JavaScriptUDF`

User-defined JavaScript function that can transform or filter a Pub/Sub message.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. JavaScript code that contains a function `function_name` with the below signature: ``` ... |
| `functionName` | `string` | Required. Name of the JavasScript function that should applied to Pub/Sub messages. |

### `LinkedResource`

Reference to a linked resource tracked by this Subscription.

| Property | Type | Description |
|----------|------|-------------|
| `linkedDataset` | `string` | Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linked_dataset |
| `linkedPubsubSubscription` | `string` | Output only. Name of the Pub/Sub subscription, e.g. projects/subscriberproject/subscriptions/subs... |
| `listing` | `string` | Output only. Listing for which linked resource is created. |

### `ListDataExchangesResponse`

Message for response to the list of data exchanges.

| Property | Type | Description |
|----------|------|-------------|
| `dataExchanges` | `array<DataExchange>` | The list of data exchanges. |
| `nextPageToken` | `string` | A token to request the next page of results. |

### `ListListingsResponse`

Message for response to the list of Listings.

| Property | Type | Description |
|----------|------|-------------|
| `listings` | `array<Listing>` | The list of Listing. |
| `nextPageToken` | `string` | A token to request the next page of results. |

### `ListOrgDataExchangesResponse`

Message for response to listing data exchanges in an organization and location.

| Property | Type | Description |
|----------|------|-------------|
| `dataExchanges` | `array<DataExchange>` | The list of data exchanges. |
| `nextPageToken` | `string` | A token to request the next page of results. |

### `ListQueryTemplatesResponse`

Message for response to the list of QueryTemplates.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of results. |
| `queryTemplates` | `array<QueryTemplate>` | The list of QueryTemplates. |

### `ListSharedResourceSubscriptionsResponse`

Message for response to the listing of shared resource subscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page token. |
| `sharedResourceSubscriptions` | `array<Subscription>` | The list of subscriptions. |

### `ListSubscriptionsResponse`

Message for response to the listing of subscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Next page token. |
| `subscriptions` | `array<Subscription>` | The list of subscriptions. |

### `Listing`

A listing is what gets published into a data exchange that a subscriber can subscribe to. It contains a reference to the data source along with descriptive information that will help subscribers find and subscribe the data.

| Property | Type | Description |
|----------|------|-------------|
| `allowOnlyMetadataSharing` | `boolean` | Optional. If true, the listing is only available to get the resource metadata. Listing is non sub... |
| `bigqueryDataset` | `BigQueryDatasetSource` | Shared dataset i.e. BigQuery dataset source. |
| `categories` | `array<string>` | Optional. Categories of the listing. Up to five categories are allowed. |
| `commercialInfo` | `GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo` | Output only. Commercial info contains the information about the commercial data products associat... |
| `dataProvider` | `DataProvider` | Optional. Details of the data provider who owns the source data. |
| `description` | `string` | Optional. Short description of the listing. The description must not contain Unicode non-characte... |
| `discoveryType` | `string` | Optional. Type of discovery of the listing on the discovery page. |
| `displayName` | `string` | Required. Human-readable display name of the listing. The display name must contain only Unicode ... |
| `documentation` | `string` | Optional. Documentation describing the listing. |
| `icon` | `string` | Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensio... |
| `logLinkedDatasetQueryUserEmail` | `boolean` | Optional. By default, false. If true, the Listing has an email sharing mandate enabled. |
| `name` | `string` | Output only. The resource name of the listing. e.g. `projects/myproject/locations/us/dataExchange... |
| `primaryContact` | `string` | Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes. |
| `publisher` | `Publisher` | Optional. Details of the publisher who owns the listing and who can share the source data. |
| `pubsubTopic` | `PubSubTopicSource` | Pub/Sub topic source. |
| `requestAccess` | `string` | Optional. Email or URL of the request access of the listing. Subscribers can use this reference t... |
| `resourceType` | `string` | Output only. Listing shared asset type. |
| `restrictedExportConfig` | `RestrictedExportConfig` | Optional. If set, restricted export configuration will be propagated and enforced on the linked d... |
| `state` | `string` | Output only. Current state of the listing. |
| `storedProcedureConfig` | `StoredProcedureConfig` | Optional. If set, stored procedure configuration will be propagated and enforced on the linked da... |

### `MessageTransform`

All supported message transforms types.

| Property | Type | Description |
|----------|------|-------------|
| `aiInference` | `AIInference` | Optional. AI Inference. Specifies the Vertex AI endpoint that inference requests built from the P... |
| `disabled` | `boolean` | Optional. If true, the transform is disabled and will not be applied to messages. Defaults to `fa... |
| `enabled` | `boolean` | Optional. This field is deprecated, use the `disabled` field to disable transforms. |
| `javascriptUdf` | `JavaScriptUDF` | Optional. JavaScript User Defined Function. If multiple JavaScriptUDF's are specified on a resour... |

### `NoWrapper`

Sets the `data` field as the HTTP body for delivery.

| Property | Type | Description |
|----------|------|-------------|
| `writeMetadata` | `boolean` | Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP... |

### `OidcToken`

Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Optional. Audience to be used when generating OIDC token. The audience claim identifies the recip... |
| `serviceAccountEmail` | `string` | Optional. [Service account email](https://cloud.google.com/iam/docs/service-accounts) used for ge... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of a long-running operation in Analytics Hub.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PubSubTopicSource`

Pub/Sub topic source.

| Property | Type | Description |
|----------|------|-------------|
| `dataAffinityRegions` | `array<string>` | Optional. Region hint on where the data might be published. Data affinity regions are modifiable.... |
| `topic` | `string` | Required. Resource name of the Pub/Sub topic source for this listing. e.g. projects/myproject/top... |

### `Publisher`

Contains details of the listing publisher.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the listing publisher. |
| `primaryContact` | `string` | Optional. Email or URL of the listing publisher. Max Length: 1000 bytes. |

### `PubsubWrapper`

The payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).

### `PushConfig`

Configuration for a push delivery endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Endpoint configuration attributes that can be used to control different aspects of the ... |
| `noWrapper` | `NoWrapper` | Optional. When set, the payload to the push endpoint is not wrapped. |
| `oidcToken` | `OidcToken` | Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` ... |
| `pubsubWrapper` | `PubsubWrapper` | Optional. When set, the payload to the push endpoint is in the form of the JSON representation of... |
| `pushEndpoint` | `string` | Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook ... |

### `QueryTemplate`

A query template is a container for sharing table-valued functions defined by contributors in a data clean room.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the QueryTemplate was created. |
| `description` | `string` | Optional. Short description of the QueryTemplate. The description must not contain Unicode non-ch... |
| `displayName` | `string` | Required. Human-readable display name of the QueryTemplate. The display name must contain only Un... |
| `documentation` | `string` | Optional. Documentation describing the QueryTemplate. |
| `name` | `string` | Output only. The resource name of the QueryTemplate. e.g. `projects/myproject/locations/us/dataEx... |
| `primaryContact` | `string` | Optional. Email or URL of the primary point of contact of the QueryTemplate. Max Length: 1000 bytes. |
| `proposer` | `string` | Optional. Will be deprecated. Email or URL of the primary point of contact of the QueryTemplate. ... |
| `routine` | `Routine` | Optional. The routine associated with the QueryTemplate. |
| `state` | `string` | Output only. The QueryTemplate lifecycle state. |
| `updateTime` | `string` | Output only. Timestamp when the QueryTemplate was last modified. |

### `RefreshSubscriptionRequest`

Message for refreshing a subscription.

### `RefreshSubscriptionResponse`

Message for response when you refresh a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | The refreshed subscription resource. |

### `Replica`

Represents the state of a replica of a shared dataset. It includes the geographic location of the replica and system-computed, output-only fields indicating its replication state and whether it is the primary replica.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The geographic location where the replica resides. See [BigQuery locations](https://... |
| `primaryState` | `string` | Output only. Indicates that this replica is the primary replica. |
| `replicaState` | `string` | Output only. Assigned by Analytics Hub based on real BigQuery replication state. |

### `RestrictedExportConfig`

Restricted export config, used to configure restricted export on linked dataset.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. If true, enable restricted export. |
| `restrictDirectTableAccess` | `boolean` | Output only. If true, restrict direct table access(read api/tabledata.list) on linked table. |
| `restrictQueryResult` | `boolean` | Optional. If true, restrict export of query result derived from restricted linked dataset table. |

### `RestrictedExportPolicy`

Restricted export policy used to configure restricted export on linked dataset.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. If true, enable restricted export. |
| `restrictDirectTableAccess` | `boolean` | Optional. If true, restrict direct table access (read api/tabledata.list) on linked table. |
| `restrictQueryResult` | `boolean` | Optional. If true, restrict export of query result derived from restricted linked dataset table. |

### `RetryPolicy`

A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.

| Property | Type | Description |
|----------|------|-------------|
| `maximumBackoff` | `string` | Optional. The maximum delay between consecutive deliveries of a given message. Value should be be... |
| `minimumBackoff` | `string` | Optional. The minimum delay between consecutive deliveries of a given message. Value should be be... |

### `RevokeSubscriptionRequest`

Message for revoking a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `revokeCommercial` | `boolean` | Optional. If the subscription is commercial then this field must be set to true, otherwise a fail... |

### `RevokeSubscriptionResponse`

Message for response when you revoke a subscription. Empty for now.

### `Routine`

Represents a bigquery routine.

| Property | Type | Description |
|----------|------|-------------|
| `definitionBody` | `string` | Optional. The definition body of the routine. |
| `routineType` | `string` | Required. The type of routine. |

### `SelectedResource`

Resource in this dataset that is selectively shared.

| Property | Type | Description |
|----------|------|-------------|
| `routine` | `string` | Optional. Format: For routine: `projects/{projectId}/datasets/{datasetId}/routines/{routineId}` E... |
| `table` | `string` | Optional. Format: For table: `projects/{projectId}/datasets/{datasetId}/tables/{tableId}` Example... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SharingEnvironmentConfig`

Sharing environment is a behavior model for sharing data within a data exchange. This option is configurable for a data exchange.

| Property | Type | Description |
|----------|------|-------------|
| `dcrExchangeConfig` | `DcrExchangeConfig` | Data Clean Room (DCR), used for privacy-safe and secured data sharing. |
| `defaultExchangeConfig` | `DefaultExchangeConfig` | Default Analytics Hub data exchange, used for secured data sharing. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StoredProcedureConfig`

Stored procedure configuration, used to configure stored procedure sharing on linked dataset.

| Property | Type | Description |
|----------|------|-------------|
| `allowedStoredProcedureTypes` | `array<string>` | Output only. Types of stored procedure supported to share. |
| `enabled` | `boolean` | Optional. If true, enable sharing of stored procedure. |

### `SubmitQueryTemplateRequest`

Message for submitting a QueryTemplate.

### `SubscribeDataExchangeRequest`

Message for subscribing to a Data Exchange.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. The parent resource path of the Subscription. e.g. `projects/subscriberproject/location... |
| `destinationDataset` | `DestinationDataset` | Optional. BigQuery destination dataset to create for the subscriber. |
| `subscriberContact` | `string` | Email of the subscriber. |
| `subscription` | `string` | Required. Name of the subscription to create. e.g. `subscription1` |

### `SubscribeDataExchangeResponse`

Message for response when you subscribe to a Data Exchange.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | Subscription object created from this subscribe action. |

### `SubscribeListingRequest`

Message for subscribing to a listing.

| Property | Type | Description |
|----------|------|-------------|
| `destinationDataset` | `DestinationDataset` | Input only. BigQuery destination dataset to create for the subscriber. |
| `destinationPubsubSubscription` | `DestinationPubSubSubscription` | Input only. Destination Pub/Sub subscription to create for the subscriber. |

### `SubscribeListingResponse`

Message for response when you subscribe to a listing.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | Subscription object created from this subscribe action. |

### `Subscription`

A subscription represents a subscribers' access to a particular set of published data. It contains references to associated listings, data exchanges, and linked datasets.

| Property | Type | Description |
|----------|------|-------------|
| `commercialInfo` | `GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo` | Output only. This is set if this is a commercial subscription i.e. if this subscription was creat... |
| `creationTime` | `string` | Output only. Timestamp when the subscription was created. |
| `dataExchange` | `string` | Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchan... |
| `destinationDataset` | `DestinationDataset` | Optional. BigQuery destination dataset to create for the subscriber. |
| `lastModifyTime` | `string` | Output only. Timestamp when the subscription was last modified. |
| `linkedDatasetMap` | `object` | Output only. Map of listing resource names to associated linked resource, e.g. projects/123/locat... |
| `linkedResources` | `array<LinkedResource>` | Output only. Linked resources created in the subscription. Only contains values if state = STATE_... |
| `listing` | `string` | Output only. Resource name of the source Listing. e.g. projects/123/locations/us/dataExchanges/45... |
| `logLinkedDatasetQueryUserEmail` | `boolean` | Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that ... |
| `name` | `string` | Output only. The resource name of the subscription. e.g. `projects/myproject/locations/us/subscri... |
| `organizationDisplayName` | `string` | Output only. Display name of the project of this subscription. |
| `organizationId` | `string` | Output only. Organization of the project this subscription belongs to. |
| `resourceType` | `string` | Output only. Listing shared asset type. |
| `state` | `string` | Output only. Current state of the subscription. |
| `subscriberContact` | `string` | Output only. Email of the subscriber. |

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

### `TextConfig`

Configuration for writing message data in text format. Message payloads will be written to files as raw text, separated by a newline.

### `UnstructuredInference`

Configuration for making inferences using arbitrary JSON payloads.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` | Optional. A parameters object to be included in each inference request. The parameters object is ... |

