# Policy Analyzer API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 3

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `policyanalyzer.organizations.locations.activityTypes.activities.query` | GET | `v1/{+parent}/activities:query` | Queries policy activities on Google Cloud resources. |
| `policyanalyzer.projects.locations.activityTypes.activities.query` | GET | `v1/{+parent}/activities:query` | Queries policy activities on Google Cloud resources. |
| `policyanalyzer.folders.locations.activityTypes.activities.query` | GET | `v1/{+parent}/activities:query` | Queries policy activities on Google Cloud resources. |

### `policyanalyzer.organizations.locations.activityTypes.activities.query`

**GET** `v1/{+parent}/activities:query`

Queries policy activities on Google Cloud resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: `projects/[PROJECT_ID|PROJECT_N... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the activities returned. For serviceAccountLastAuthentication activities, sup... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Max limit is 1000. Non-positive values are ignor... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. `pageToken` mus... |

**Response**: `GoogleCloudPolicyanalyzerV1QueryActivityResponse`

```typescript
const res = await policyanalyzer.activities.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policyanalyzer.projects.locations.activityTypes.activities.query`

**GET** `v1/{+parent}/activities:query`

Queries policy activities on Google Cloud resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: `projects/[PROJECT_ID|PROJECT_N... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the activities returned. For serviceAccountLastAuthentication activities, sup... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Max limit is 1000. Non-positive values are ignor... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. `pageToken` mus... |

**Response**: `GoogleCloudPolicyanalyzerV1QueryActivityResponse`

```typescript
const res = await policyanalyzer.activities.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policyanalyzer.folders.locations.activityTypes.activities.query`

**GET** `v1/{+parent}/activities:query`

Queries policy activities on Google Cloud resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The container resource on which to execute the request. Acceptable formats: `projects/[PROJECT_ID|PROJECT_N... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the activities returned. For serviceAccountLastAuthentication activities, sup... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Max limit is 1000. Non-positive values are ignor... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. `pageToken` mus... |

**Response**: `GoogleCloudPolicyanalyzerV1QueryActivityResponse`

```typescript
const res = await policyanalyzer.activities.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudPolicyanalyzerV1Activity`

Represents Activity on a GCP resource over specific observation period.

| Property | Type | Description |
|----------|------|-------------|
| `activity` | `object` | A struct of custom fields to explain the activity. |
| `activityType` | `string` | The type of the activity. |
| `fullResourceName` | `string` | The full resource name that identifies the resource. For examples of full resource names for Goog... |
| `observationPeriod` | `GoogleCloudPolicyanalyzerV1ObservationPeriod` | The data observation period to build the activity. |

### `GoogleCloudPolicyanalyzerV1ObservationPeriod`

Represents data observation period.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The observation end time. The time in this timestamp is always `07:00:00Z`. |
| `startTime` | `string` | The observation start time. The time in this timestamp is always `07:00:00Z`. |

### `GoogleCloudPolicyanalyzerV1QueryActivityResponse`

Response to the `QueryActivity` method.

| Property | Type | Description |
|----------|------|-------------|
| `activities` | `array<GoogleCloudPolicyanalyzerV1Activity>` | The set of activities that match the filter included in the request. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `nextPageToken` is inc... |

