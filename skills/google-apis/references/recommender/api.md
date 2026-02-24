# Recommender API - API Reference

**Version**: `v1` | **Methods**: 48 | **Schemas**: 27

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `recommender.folders.locations.recommenders.recommendations.list` | GET | `v1/{+parent}/recommendations` | Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permi... |
| `recommender.folders.locations.recommenders.recommendations.markSucceeded` | POST | `v1/{+name}:markSucceeded` | Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recomme... |
| `recommender.folders.locations.recommenders.recommendations.get` | GET | `v1/{+name}` | Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specifie... |
| `recommender.folders.locations.recommenders.recommendations.markDismissed` | POST | `v1/{+name}:markDismissed` | Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommen... |
| `recommender.folders.locations.recommenders.recommendations.markClaimed` | POST | `v1/{+name}:markClaimed` | Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommend... |
| `recommender.folders.locations.recommenders.recommendations.markFailed` | POST | `v1/{+name}:markFailed` | Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommende... |
| `recommender.folders.locations.insightTypes.insights.list` | GET | `v1/{+parent}/insights` | Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission f... |
| `recommender.folders.locations.insightTypes.insights.markAccepted` | POST | `v1/{+name}:markAccepted` | Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API... |
| `recommender.folders.locations.insightTypes.insights.get` | GET | `v1/{+name}` | Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insig... |
| `recommender.organizations.locations.recommenders.getConfig` | GET | `v1/{+name}` | Gets the requested Recommender Config. There is only one instance of the config for each Recommen... |
| `recommender.organizations.locations.recommenders.updateConfig` | PATCH | `v1/{+name}` | Updates a Recommender Config. This will create a new revision of the config. |
| `recommender.organizations.locations.recommenders.recommendations.markDismissed` | POST | `v1/{+name}:markDismissed` | Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommen... |
| `recommender.organizations.locations.recommenders.recommendations.get` | GET | `v1/{+name}` | Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specifie... |
| `recommender.organizations.locations.recommenders.recommendations.markClaimed` | POST | `v1/{+name}:markClaimed` | Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommend... |
| `recommender.organizations.locations.recommenders.recommendations.markFailed` | POST | `v1/{+name}:markFailed` | Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommende... |
| `recommender.organizations.locations.recommenders.recommendations.markSucceeded` | POST | `v1/{+name}:markSucceeded` | Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recomme... |
| `recommender.organizations.locations.recommenders.recommendations.list` | GET | `v1/{+parent}/recommendations` | Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permi... |
| `recommender.organizations.locations.insightTypes.updateConfig` | PATCH | `v1/{+name}` | Updates an InsightTypeConfig change. This will create a new revision of the config. |
| `recommender.organizations.locations.insightTypes.getConfig` | GET | `v1/{+name}` | Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType. |
| `recommender.organizations.locations.insightTypes.insights.markAccepted` | POST | `v1/{+name}:markAccepted` | Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API... |
| `recommender.organizations.locations.insightTypes.insights.get` | GET | `v1/{+name}` | Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insig... |
| `recommender.organizations.locations.insightTypes.insights.list` | GET | `v1/{+parent}/insights` | Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission f... |
| `recommender.projects.locations.recommenders.updateConfig` | PATCH | `v1/{+name}` | Updates a Recommender Config. This will create a new revision of the config. |
| `recommender.projects.locations.recommenders.getConfig` | GET | `v1/{+name}` | Gets the requested Recommender Config. There is only one instance of the config for each Recommen... |
| `recommender.projects.locations.recommenders.recommendations.markSucceeded` | POST | `v1/{+name}:markSucceeded` | Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recomme... |
| `recommender.projects.locations.recommenders.recommendations.get` | GET | `v1/{+name}` | Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specifie... |
| `recommender.projects.locations.recommenders.recommendations.markDismissed` | POST | `v1/{+name}:markDismissed` | Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommen... |
| `recommender.projects.locations.recommenders.recommendations.list` | GET | `v1/{+parent}/recommendations` | Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permi... |
| `recommender.projects.locations.recommenders.recommendations.markClaimed` | POST | `v1/{+name}:markClaimed` | Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommend... |
| `recommender.projects.locations.recommenders.recommendations.markFailed` | POST | `v1/{+name}:markFailed` | Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommende... |
| `recommender.projects.locations.insightTypes.updateConfig` | PATCH | `v1/{+name}` | Updates an InsightTypeConfig change. This will create a new revision of the config. |
| `recommender.projects.locations.insightTypes.getConfig` | GET | `v1/{+name}` | Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType. |
| `recommender.projects.locations.insightTypes.insights.markAccepted` | POST | `v1/{+name}:markAccepted` | Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API... |
| `recommender.projects.locations.insightTypes.insights.list` | GET | `v1/{+parent}/insights` | Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission f... |
| `recommender.projects.locations.insightTypes.insights.get` | GET | `v1/{+name}` | Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insig... |
| `recommender.billingAccounts.locations.recommenders.getConfig` | GET | `v1/{+name}` | Gets the requested Recommender Config. There is only one instance of the config for each Recommen... |
| `recommender.billingAccounts.locations.recommenders.updateConfig` | PATCH | `v1/{+name}` | Updates a Recommender Config. This will create a new revision of the config. |
| `recommender.billingAccounts.locations.recommenders.recommendations.get` | GET | `v1/{+name}` | Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specifie... |
| `recommender.billingAccounts.locations.recommenders.recommendations.markFailed` | POST | `v1/{+name}:markFailed` | Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommende... |
| `recommender.billingAccounts.locations.recommenders.recommendations.markDismissed` | POST | `v1/{+name}:markDismissed` | Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommen... |
| `recommender.billingAccounts.locations.recommenders.recommendations.list` | GET | `v1/{+parent}/recommendations` | Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permi... |
| `recommender.billingAccounts.locations.recommenders.recommendations.markSucceeded` | POST | `v1/{+name}:markSucceeded` | Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recomme... |
| `recommender.billingAccounts.locations.recommenders.recommendations.markClaimed` | POST | `v1/{+name}:markClaimed` | Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommend... |
| `recommender.billingAccounts.locations.insightTypes.getConfig` | GET | `v1/{+name}` | Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType. |
| `recommender.billingAccounts.locations.insightTypes.updateConfig` | PATCH | `v1/{+name}` | Updates an InsightTypeConfig change. This will create a new revision of the config. |
| `recommender.billingAccounts.locations.insightTypes.insights.markAccepted` | POST | `v1/{+name}:markAccepted` | Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API... |
| `recommender.billingAccounts.locations.insightTypes.insights.list` | GET | `v1/{+parent}/insights` | Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission f... |
| `recommender.billingAccounts.locations.insightTypes.insights.get` | GET | `v1/{+name}` | Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insig... |

### `recommender.folders.locations.recommenders.recommendations.list`

**GET** `v1/{+parent}/recommendations`

Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommen... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListRecommendationsResponse`

```typescript
const res = await recommender.recommendations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.recommenders.recommendations.markSucceeded`

**POST** `v1/{+name}:markSucceeded`

Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationSucceededRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markSucceeded({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.recommenders.recommendations.get`

**GET** `v1/{+name}`

Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.recommenders.recommendations.markDismissed`

**POST** `v1/{+name}:markDismissed`

Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationDismissedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markDismissed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.recommenders.recommendations.markClaimed`

**POST** `v1/{+name}:markClaimed`

Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationClaimedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markClaimed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.recommenders.recommendations.markFailed`

**POST** `v1/{+name}:markFailed`

Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationFailedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markFailed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.insightTypes.insights.list`

**GET** `v1/{+parent}/insights`

Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insigh... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListInsightsResponse`

```typescript
const res = await recommender.insights.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.insightTypes.insights.markAccepted`

**POST** `v1/{+name}:markAccepted`

Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Request body**: `GoogleCloudRecommenderV1MarkInsightAcceptedRequest`

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.markAccepted({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.folders.locations.insightTypes.insights.get`

**GET** `v1/{+name}`

Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.getConfig`

**GET** `v1/{+name}`

Gets the requested Recommender Config. There is only one instance of the config for each Recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCAT... |

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.updateConfig`

**PATCH** `v1/{+name}`

Updates a Recommender Config. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1RecommenderConfig`

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.markDismissed`

**POST** `v1/{+name}:markDismissed`

Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationDismissedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markDismissed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.get`

**GET** `v1/{+name}`

Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.markClaimed`

**POST** `v1/{+name}:markClaimed`

Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationClaimedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markClaimed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.markFailed`

**POST** `v1/{+name}:markFailed`

Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationFailedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markFailed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.markSucceeded`

**POST** `v1/{+name}:markSucceeded`

Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationSucceededRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markSucceeded({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.recommenders.recommendations.list`

**GET** `v1/{+parent}/recommendations`

Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommen... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListRecommendationsResponse`

```typescript
const res = await recommender.recommendations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.insightTypes.updateConfig`

**PATCH** `v1/{+name}`

Updates an InsightTypeConfig change. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYP... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1InsightTypeConfig`

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.insightTypes.getConfig`

**GET** `v1/{+name}`

Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]... |

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.insightTypes.insights.markAccepted`

**POST** `v1/{+name}:markAccepted`

Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Request body**: `GoogleCloudRecommenderV1MarkInsightAcceptedRequest`

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.markAccepted({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.insightTypes.insights.get`

**GET** `v1/{+name}`

Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.organizations.locations.insightTypes.insights.list`

**GET** `v1/{+parent}/insights`

Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insigh... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListInsightsResponse`

```typescript
const res = await recommender.insights.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.updateConfig`

**PATCH** `v1/{+name}`

Updates a Recommender Config. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1RecommenderConfig`

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.getConfig`

**GET** `v1/{+name}`

Gets the requested Recommender Config. There is only one instance of the config for each Recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCAT... |

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.markSucceeded`

**POST** `v1/{+name}:markSucceeded`

Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationSucceededRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markSucceeded({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.get`

**GET** `v1/{+name}`

Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.markDismissed`

**POST** `v1/{+name}:markDismissed`

Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationDismissedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markDismissed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.list`

**GET** `v1/{+parent}/recommendations`

Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommen... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListRecommendationsResponse`

```typescript
const res = await recommender.recommendations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.markClaimed`

**POST** `v1/{+name}:markClaimed`

Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationClaimedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markClaimed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.recommenders.recommendations.markFailed`

**POST** `v1/{+name}:markFailed`

Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationFailedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markFailed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.insightTypes.updateConfig`

**PATCH** `v1/{+name}`

Updates an InsightTypeConfig change. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYP... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1InsightTypeConfig`

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.insightTypes.getConfig`

**GET** `v1/{+name}`

Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]... |

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.insightTypes.insights.markAccepted`

**POST** `v1/{+name}:markAccepted`

Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Request body**: `GoogleCloudRecommenderV1MarkInsightAcceptedRequest`

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.markAccepted({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.insightTypes.insights.list`

**GET** `v1/{+parent}/insights`

Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insigh... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListInsightsResponse`

```typescript
const res = await recommender.insights.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.projects.locations.insightTypes.insights.get`

**GET** `v1/{+name}`

Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.getConfig`

**GET** `v1/{+name}`

Gets the requested Recommender Config. There is only one instance of the config for each Recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Recommendation Config to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCAT... |

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.updateConfig`

**PATCH** `v1/{+name}`

Updates a Recommender Config. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1RecommenderConfig`

**Response**: `GoogleCloudRecommenderV1RecommenderConfig`

```typescript
const res = await recommender.recommenders.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.get`

**GET** `v1/{+name}`

Gets the requested recommendation. Requires the recommender.*.get IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.markFailed`

**POST** `v1/{+name}:markFailed`

Marks the Recommendation State as Failed. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation failed. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationFailed can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationFailedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markFailed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.markDismissed`

**POST** `v1/{+name}:markDismissed`

Mark the Recommendation State as Dismissed. Users can use this method to indicate to the Recommender API that an ACTIVE recommendation has to be marked back as DISMISSED. MarkRecommendationDismissed can be applied to recommendations in ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationDismissedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markDismissed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.list`

**GET** `v1/{+parent}/recommendations`

Lists recommendations for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Filter expression to restrict the recommendations returned. Supported filter fields: * `state_info.state` * `recommen... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListRecommendationsResponse`

```typescript
const res = await recommender.recommendations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.markSucceeded`

**POST** `v1/{+name}:markSucceeded`

Marks the Recommendation State as Succeeded. Users can use this method to indicate to the Recommender API that they have applied the recommendation themselves, and the operation was successful. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationSucceeded can be applied to recommendations in ACTIVE, CLAIMED, SUCCEEDED, or FAILED state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationSucceededRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markSucceeded({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.recommenders.recommendations.markClaimed`

**POST** `v1/{+name}:markClaimed`

Marks the Recommendation State as Claimed. Users can use this method to indicate to the Recommender API that they are starting to apply the recommendation themselves. This stops the recommendation content from being updated. Associated insights are frozen and placed in the ACCEPTED state. MarkRecommendationClaimed can be applied to recommendations in CLAIMED, SUCCEEDED, FAILED, or ACTIVE state. Requires the recommender.*.update IAM permission for the specified recommender.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the recommendation. |

**Request body**: `GoogleCloudRecommenderV1MarkRecommendationClaimedRequest`

**Response**: `GoogleCloudRecommenderV1Recommendation`

```typescript
const res = await recommender.recommendations.markClaimed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.insightTypes.getConfig`

**GET** `v1/{+name}`

Gets the requested InsightTypeConfig. There is only one instance of the config for each InsightType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the InsightTypeConfig to get. Acceptable formats: * `projects/[PROJECT_NUMBER]/locations/[LOCATION]... |

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.insightTypes.updateConfig`

**PATCH** `v1/{+name}`

Updates an InsightTypeConfig change. This will create a new revision of the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYP... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | If true, validate the request and preview the change, but do not actually update it. |

**Request body**: `GoogleCloudRecommenderV1InsightTypeConfig`

**Response**: `GoogleCloudRecommenderV1InsightTypeConfig`

```typescript
const res = await recommender.insightTypes.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.insightTypes.insights.markAccepted`

**POST** `v1/{+name}:markAccepted`

Marks the Insight State as Accepted. Users can use this method to indicate to the Recommender API that they have applied some action based on the insight. This stops the insight content from being updated. MarkInsightAccepted can be applied to insights in ACTIVE state. Requires the recommender.*.update IAM permission for the specified insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Request body**: `GoogleCloudRecommenderV1MarkInsightAcceptedRequest`

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.markAccepted({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.insightTypes.insights.list`

**GET** `v1/{+parent}/insights`

Lists insights for the specified Cloud Resource. Requires the recommender.*.list IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: * `projects/[PROJECT_NUMBER]/lo... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the insights returned. Supported filter fields: * `stateInfo.state` * `insigh... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. If not specifie... |
| `pageToken` | `string` | query | No | Optional. If present, retrieves the next batch of results from the preceding call to this method. `page_token` must b... |

**Response**: `GoogleCloudRecommenderV1ListInsightsResponse`

```typescript
const res = await recommender.insights.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recommender.billingAccounts.locations.insightTypes.insights.get`

**GET** `v1/{+name}`

Gets the requested insight. Requires the recommender.*.get IAM permission for the specified insight type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the insight. |

**Response**: `GoogleCloudRecommenderV1Insight`

```typescript
const res = await recommender.insights.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudRecommenderV1CostProjection`

Contains metadata about how much money a recommendation can save or incur.

| Property | Type | Description |
|----------|------|-------------|
| `cost` | `GoogleTypeMoney` | An approximate projection on amount saved or amount incurred. Negative cost units indicate cost s... |
| `costInLocalCurrency` | `GoogleTypeMoney` | The approximate cost savings in the billing account's local currency. |
| `duration` | `string` | Duration for which this cost applies. |

### `GoogleCloudRecommenderV1Impact`

Contains the impact a recommendation can have for a given category.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Category that is being targeted. |
| `costProjection` | `GoogleCloudRecommenderV1CostProjection` | Use with CategoryType.COST |
| `reliabilityProjection` | `GoogleCloudRecommenderV1ReliabilityProjection` | Use with CategoryType.RELIABILITY |
| `securityProjection` | `GoogleCloudRecommenderV1SecurityProjection` | Use with CategoryType.SECURITY |
| `service` | `string` | The service that this impact is associated with. |
| `sustainabilityProjection` | `GoogleCloudRecommenderV1SustainabilityProjection` | Use with CategoryType.SUSTAINABILITY |

### `GoogleCloudRecommenderV1Insight`

An insight along with the information used to derive the insight. The insight may have associated recommendations as well.

| Property | Type | Description |
|----------|------|-------------|
| `associatedRecommendations` | `array<GoogleCloudRecommenderV1InsightRecommendationReference>` | Recommendations derived from this insight. |
| `category` | `string` | Category being targeted by the insight. |
| `content` | `object` | A struct of custom fields to explain the insight. Example: "grantedPermissionsCount": "1000" |
| `description` | `string` | Free-form human readable summary in English. The maximum length is 500 characters. |
| `etag` | `string` | Fingerprint of the Insight. Provides optimistic locking when updating states. |
| `insightSubtype` | `string` | Insight subtype. Insight content schema will be stable for a given subtype. |
| `lastRefreshTime` | `string` | Timestamp of the latest data used to generate the insight. |
| `name` | `string` | Identifier. Name of the insight. |
| `observationPeriod` | `string` | Observation period that led to the insight. The source data used to generate the insight ends at ... |
| `severity` | `string` | Insight's severity. |
| `stateInfo` | `GoogleCloudRecommenderV1InsightStateInfo` | Information state and metadata. |
| `targetResources` | `array<string>` | Fully qualified resource names that this insight is targeting. |

### `GoogleCloudRecommenderV1InsightRecommendationReference`

Reference to an associated recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `recommendation` | `string` | Recommendation resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[R... |

### `GoogleCloudRecommenderV1InsightStateInfo`

Information related to insight state.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Insight state. |
| `stateMetadata` | `object` | A map of metadata for the state, provided by user or automations systems. |

### `GoogleCloudRecommenderV1InsightTypeConfig`

Configuration for an InsightType.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Allows clients to store small amounts of arbitrary data. Annotations must follow the Kubernetes s... |
| `displayName` | `string` | A user-settable field to provide a human-readable name to be used in user interfaces. |
| `etag` | `string` | Fingerprint of the InsightTypeConfig. Provides optimistic locking when updating. |
| `insightTypeGenerationConfig` | `GoogleCloudRecommenderV1InsightTypeGenerationConfig` | InsightTypeGenerationConfig which configures the generation of insights for this insight type. |
| `name` | `string` | Identifier. Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insig... |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the config. A new revision is committed whenever the c... |
| `updateTime` | `string` | Last time when the config was updated. |

### `GoogleCloudRecommenderV1InsightTypeGenerationConfig`

A configuration to customize the generation of insights. Eg, customizing the lookback period considered when generating a insight.

| Property | Type | Description |
|----------|------|-------------|
| `params` | `object` | Parameters for this InsightTypeGenerationConfig. These configs can be used by or are applied to a... |

### `GoogleCloudRecommenderV1ListInsightsResponse`

Response to the `ListInsights` method.

| Property | Type | Description |
|----------|------|-------------|
| `insights` | `array<GoogleCloudRecommenderV1Insight>` | The set of insights for the `parent` resource. |
| `nextPageToken` | `string` | A token that can be used to request the next page of results. This field is empty if there are no... |

### `GoogleCloudRecommenderV1ListRecommendationsResponse`

Response to the `ListRecommendations` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be used to request the next page of results. This field is empty if there are no... |
| `recommendations` | `array<GoogleCloudRecommenderV1Recommendation>` | The set of recommendations for the `parent` resource. |

### `GoogleCloudRecommenderV1MarkInsightAcceptedRequest`

Request for the `MarkInsightAccepted` method.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Required. Fingerprint of the Insight. Provides optimistic locking. |
| `stateMetadata` | `object` | Optional. State properties user wish to include with this state. Full replace of the current stat... |

### `GoogleCloudRecommenderV1MarkRecommendationClaimedRequest`

Request for the `MarkRecommendationClaimed` Method.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Required. Fingerprint of the Recommendation. Provides optimistic locking. |
| `stateMetadata` | `object` | State properties to include with this state. Overwrites any existing `state_metadata`. Keys must ... |

### `GoogleCloudRecommenderV1MarkRecommendationDismissedRequest`

Request for the `MarkRecommendationDismissed` Method.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Fingerprint of the Recommendation. Provides optimistic locking. |

### `GoogleCloudRecommenderV1MarkRecommendationFailedRequest`

Request for the `MarkRecommendationFailed` Method.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Required. Fingerprint of the Recommendation. Provides optimistic locking. |
| `stateMetadata` | `object` | State properties to include with this state. Overwrites any existing `state_metadata`. Keys must ... |

### `GoogleCloudRecommenderV1MarkRecommendationSucceededRequest`

Request for the `MarkRecommendationSucceeded` Method.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Required. Fingerprint of the Recommendation. Provides optimistic locking. |
| `stateMetadata` | `object` | State properties to include with this state. Overwrites any existing `state_metadata`. Keys must ... |

### `GoogleCloudRecommenderV1Operation`

Contains an operation for a resource loosely based on the JSON-PATCH format with support for: * Custom filters for describing partial array patch. * Extended path values for describing nested arrays. * Custom fields for describing the resource for which the operation is being described. * Allows extension to custom operations not natively supported by RFC6902. See https://tools.ietf.org/html/rfc6902 for details on the original RFC.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Type of this operation. Contains one of 'add', 'remove', 'replace', 'move', 'copy', 'test' and cu... |
| `path` | `string` | Path to the target field being operated on. If the operation is at the resource level, then path ... |
| `pathFilters` | `object` | Set of filters to apply if `path` refers to array elements or nested array elements in order to n... |
| `pathValueMatchers` | `object` | Similar to path_filters, this contains set of filters to apply if `path` field refers to array el... |
| `resource` | `string` | Contains the fully qualified resource name. This field is always populated. ex: //cloudresourcema... |
| `resourceType` | `string` | Type of GCP resource being modified/tested. This field is always populated. Example: cloudresourc... |
| `sourcePath` | `string` | Can be set with action 'copy' or 'move' to indicate the source field within resource or source_re... |
| `sourceResource` | `string` | Can be set with action 'copy' to copy resource configuration across different resources of the sa... |
| `value` | `any` | Value for the `path` field. Will be set for actions:'add'/'replace'. Maybe set for action: 'test'... |
| `valueMatcher` | `GoogleCloudRecommenderV1ValueMatcher` | Can be set for action 'test' for advanced matching for the value of 'path' field. Either this or ... |

### `GoogleCloudRecommenderV1OperationGroup`

Group of operations that need to be performed atomically.

| Property | Type | Description |
|----------|------|-------------|
| `operations` | `array<GoogleCloudRecommenderV1Operation>` | List of operations across one or more resources that belong to this group. Loosely based on RFC69... |

### `GoogleCloudRecommenderV1Recommendation`

A recommendation along with a suggested action. E.g., a rightsizing recommendation for an underutilized VM, IAM role recommendations, etc

| Property | Type | Description |
|----------|------|-------------|
| `additionalImpact` | `array<GoogleCloudRecommenderV1Impact>` | Optional set of additional impact that this recommendation may have when trying to optimize for t... |
| `associatedInsights` | `array<GoogleCloudRecommenderV1RecommendationInsightReference>` | Insights that led to this recommendation. |
| `content` | `GoogleCloudRecommenderV1RecommendationContent` | Content of the recommendation describing recommended changes to resources. |
| `description` | `string` | Free-form human readable summary in English. The maximum length is 500 characters. |
| `etag` | `string` | Fingerprint of the Recommendation. Provides optimistic locking when updating states. |
| `lastRefreshTime` | `string` | Last time this recommendation was refreshed by the system that created it in the first place. |
| `name` | `string` | Identifier. Name of recommendation. |
| `primaryImpact` | `GoogleCloudRecommenderV1Impact` | The primary impact that this recommendation can have while trying to optimize for one category. |
| `priority` | `string` | Recommendation's priority. |
| `recommenderSubtype` | `string` | Contains an identifier for a subtype of recommendations produced for the same recommender. Subtyp... |
| `stateInfo` | `GoogleCloudRecommenderV1RecommendationStateInfo` | Information for state. Contains state and metadata. |
| `targetResources` | `array<string>` | Fully qualified resource names that this recommendation is targeting. |
| `xorGroupId` | `string` | Corresponds to a mutually exclusive group ID within a recommender. A non-empty ID indicates that ... |

### `GoogleCloudRecommenderV1RecommendationContent`

Contains what resources are changing and how they are changing.

| Property | Type | Description |
|----------|------|-------------|
| `operationGroups` | `array<GoogleCloudRecommenderV1OperationGroup>` | Operations to one or more Google Cloud resources grouped in such a way that, all operations withi... |
| `overview` | `object` | Condensed overview information about the recommendation. |

### `GoogleCloudRecommenderV1RecommendationInsightReference`

Reference to an associated insight.

| Property | Type | Description |
|----------|------|-------------|
| `insight` | `string` | Insight resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_... |

### `GoogleCloudRecommenderV1RecommendationStateInfo`

Information for state. Contains state and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | The state of the recommendation, Eg ACTIVE, SUCCEEDED, FAILED. |
| `stateMetadata` | `object` | A map of metadata for the state, provided by user or automations systems. |

### `GoogleCloudRecommenderV1RecommenderConfig`

Configuration for a Recommender.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Allows clients to store small amounts of arbitrary data. Annotations must follow the Kubernetes s... |
| `displayName` | `string` | A user-settable field to provide a human-readable name to be used in user interfaces. |
| `etag` | `string` | Fingerprint of the RecommenderConfig. Provides optimistic locking when updating. |
| `name` | `string` | Identifier. Name of recommender config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/recomm... |
| `recommenderGenerationConfig` | `GoogleCloudRecommenderV1RecommenderGenerationConfig` | RecommenderGenerationConfig which configures the Generation of recommendations for this recommender. |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the config. A new revision is committed whenever the c... |
| `updateTime` | `string` | Last time when the config was updated. |

### `GoogleCloudRecommenderV1RecommenderGenerationConfig`

A Configuration to customize the generation of recommendations. Eg, customizing the lookback period considered when generating a recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `params` | `object` | Parameters for this RecommenderGenerationConfig. These configs can be used by or are applied to a... |

### `GoogleCloudRecommenderV1ReliabilityProjection`

Contains information on the impact of a reliability recommendation.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Per-recommender projection. |
| `risks` | `array<string>` | Reliability risks mitigated by this recommendation. |

### `GoogleCloudRecommenderV1SecurityProjection`

Contains various ways of describing the impact on Security.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Additional security impact details that is provided by the recommender. |

### `GoogleCloudRecommenderV1SustainabilityProjection`

Contains metadata about how much sustainability a recommendation can save or incur.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Duration for which this sustainability applies. |
| `kgCO2e` | `number` | Carbon Footprint generated in kg of CO2 equivalent. Chose kg_c_o2e so that the name renders corre... |

### `GoogleCloudRecommenderV1ValueMatcher`

Contains various matching options for values for a GCP resource field.

| Property | Type | Description |
|----------|------|-------------|
| `matchesPattern` | `string` | To be used for full regex matching. The regular expression is using the Google RE2 syntax (https:... |

### `GoogleTypeMoney`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

