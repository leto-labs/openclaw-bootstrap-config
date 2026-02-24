# Policy Simulator API - API Reference

**Version**: `v1` | **Methods**: 27 | **Schemas**: 44

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `policysimulator.folders.locations.orgPolicyViolationsPreviews.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.folders.locations.accessPolicySimulations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.folders.locations.replays.get` | GET | `v1/{+name}` | Gets the specified Replay. Each `Replay` is available for at least 7 days. |
| `policysimulator.folders.locations.replays.create` | POST | `v1/{+parent}/replays` | Creates and starts a Replay using the given ReplayConfig. |
| `policysimulator.folders.locations.replays.results.list` | GET | `v1/{+parent}/results` | Lists the results of running a Replay. |
| `policysimulator.folders.locations.replays.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.folders.locations.replays.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `policysimulator.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `policysimulator.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.organizations.locations.orgPolicyViolationsPreviews.get` | GET | `v1/{+name}` | GetOrgPolicyViolationsPreview gets the specified OrgPolicyViolationsPreview. Each OrgPolicyViolat... |
| `policysimulator.organizations.locations.orgPolicyViolationsPreviews.list` | GET | `v1/{+parent}/orgPolicyViolationsPreviews` | ListOrgPolicyViolationsPreviews lists each OrgPolicyViolationsPreview in an organization. Each Or... |
| `policysimulator.organizations.locations.orgPolicyViolationsPreviews.create` | POST | `v1/{+parent}/orgPolicyViolationsPreviews` | CreateOrgPolicyViolationsPreview creates an OrgPolicyViolationsPreview for the proposed changes i... |
| `policysimulator.organizations.locations.orgPolicyViolationsPreviews.orgPolicyViolations.list` | GET | `v1/{+parent}/orgPolicyViolations` | ListOrgPolicyViolations lists the OrgPolicyViolations that are present in an OrgPolicyViolationsP... |
| `policysimulator.organizations.locations.orgPolicyViolationsPreviews.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.organizations.locations.accessPolicySimulations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.organizations.locations.replays.get` | GET | `v1/{+name}` | Gets the specified Replay. Each `Replay` is available for at least 7 days. |
| `policysimulator.organizations.locations.replays.create` | POST | `v1/{+parent}/replays` | Creates and starts a Replay using the given ReplayConfig. |
| `policysimulator.organizations.locations.replays.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.organizations.locations.replays.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `policysimulator.organizations.locations.replays.results.list` | GET | `v1/{+parent}/results` | Lists the results of running a Replay. |
| `policysimulator.projects.locations.replays.get` | GET | `v1/{+name}` | Gets the specified Replay. Each `Replay` is available for at least 7 days. |
| `policysimulator.projects.locations.replays.create` | POST | `v1/{+parent}/replays` | Creates and starts a Replay using the given ReplayConfig. |
| `policysimulator.projects.locations.replays.results.list` | GET | `v1/{+parent}/results` | Lists the results of running a Replay. |
| `policysimulator.projects.locations.replays.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.projects.locations.replays.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `policysimulator.projects.locations.accessPolicySimulations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `policysimulator.projects.locations.orgPolicyViolationsPreviews.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `policysimulator.folders.locations.orgPolicyViolationsPreviews.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.accessPolicySimulations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.replays.get`

**GET** `v1/{+name}`

Gets the specified Replay. Each `Replay` is available for at least 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Replay to retrieve, in the following format: `{projects|folders|organizations}/{resource-id... |

**Response**: `GoogleCloudPolicysimulatorV1Replay`

```typescript
const res = await policysimulator.replays.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.replays.create`

**POST** `v1/{+parent}/replays`

Creates and starts a Replay using the given ReplayConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this Replay will be created. This resource must be a project, folder, or organiza... |

**Request body**: `GoogleCloudPolicysimulatorV1Replay`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.replays.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.replays.results.list`

**GET** `v1/{+parent}/results`

Lists the results of running a Replay.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Replay whose results are listed, in the following format: `{projects|folders|organizations}/{resource-i... |
| `pageSize` | `integer` | query | No | The maximum number of ReplayResult objects to return. Defaults to 5000. The maximum value is 5000; values above 5000 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous Simulator.ListReplayResults call. Provide this token to retrieve the next page... |

**Response**: `GoogleCloudPolicysimulatorV1ListReplayResultsResponse`

```typescript
const res = await policysimulator.results.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.replays.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.folders.locations.replays.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await policysimulator.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await policysimulator.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.orgPolicyViolationsPreviews.get`

**GET** `v1/{+name}`

GetOrgPolicyViolationsPreview gets the specified OrgPolicyViolationsPreview. Each OrgPolicyViolationsPreview is available for at least 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the OrgPolicyViolationsPreview to get. |

**Response**: `GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview`

```typescript
const res = await policysimulator.orgPolicyViolationsPreviews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.orgPolicyViolationsPreviews.list`

**GET** `v1/{+parent}/orgPolicyViolationsPreviews`

ListOrgPolicyViolationsPreviews lists each OrgPolicyViolationsPreview in an organization. Each OrgPolicyViolationsPreview is available for at least 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent the violations are scoped to. Format: `organizations/{organization}/locations/{location}` Exampl... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent page. When paginating,... |

**Response**: `GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse`

```typescript
const res = await policysimulator.orgPolicyViolationsPreviews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.orgPolicyViolationsPreviews.create`

**POST** `v1/{+parent}/orgPolicyViolationsPreviews`

CreateOrgPolicyViolationsPreview creates an OrgPolicyViolationsPreview for the proposed changes in the provided OrgPolicyViolationsPreview.OrgPolicyOverlay. The changes to OrgPolicy are specified by this `OrgPolicyOverlay`. The resources to scan are inferred from these specified changes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The organization under which this OrgPolicyViolationsPreview will be created. Example: `organizations/my-ex... |
| `orgPolicyViolationsPreviewId` | `string` | query | No | Optional. An optional user-specified ID for the OrgPolicyViolationsPreview. If not provided, a random ID will be gene... |

**Request body**: `GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.orgPolicyViolationsPreviews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.orgPolicyViolationsPreviews.orgPolicyViolations.list`

**GET** `v1/{+parent}/orgPolicyViolations`

ListOrgPolicyViolations lists the OrgPolicyViolations that are present in an OrgPolicyViolationsPreview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The OrgPolicyViolationsPreview to get OrgPolicyViolations from. Format: organizations/{organization}/locati... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call. Provide this to retrieve the subsequent page. When paginating,... |

**Response**: `GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse`

```typescript
const res = await policysimulator.orgPolicyViolations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.orgPolicyViolationsPreviews.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.accessPolicySimulations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.replays.get`

**GET** `v1/{+name}`

Gets the specified Replay. Each `Replay` is available for at least 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Replay to retrieve, in the following format: `{projects|folders|organizations}/{resource-id... |

**Response**: `GoogleCloudPolicysimulatorV1Replay`

```typescript
const res = await policysimulator.replays.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.replays.create`

**POST** `v1/{+parent}/replays`

Creates and starts a Replay using the given ReplayConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this Replay will be created. This resource must be a project, folder, or organiza... |

**Request body**: `GoogleCloudPolicysimulatorV1Replay`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.replays.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.replays.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.replays.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await policysimulator.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.organizations.locations.replays.results.list`

**GET** `v1/{+parent}/results`

Lists the results of running a Replay.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Replay whose results are listed, in the following format: `{projects|folders|organizations}/{resource-i... |
| `pageSize` | `integer` | query | No | The maximum number of ReplayResult objects to return. Defaults to 5000. The maximum value is 5000; values above 5000 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous Simulator.ListReplayResults call. Provide this token to retrieve the next page... |

**Response**: `GoogleCloudPolicysimulatorV1ListReplayResultsResponse`

```typescript
const res = await policysimulator.results.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.replays.get`

**GET** `v1/{+name}`

Gets the specified Replay. Each `Replay` is available for at least 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Replay to retrieve, in the following format: `{projects|folders|organizations}/{resource-id... |

**Response**: `GoogleCloudPolicysimulatorV1Replay`

```typescript
const res = await policysimulator.replays.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.replays.create`

**POST** `v1/{+parent}/replays`

Creates and starts a Replay using the given ReplayConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this Replay will be created. This resource must be a project, folder, or organiza... |

**Request body**: `GoogleCloudPolicysimulatorV1Replay`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.replays.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.replays.results.list`

**GET** `v1/{+parent}/results`

Lists the results of running a Replay.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Replay whose results are listed, in the following format: `{projects|folders|organizations}/{resource-i... |
| `pageSize` | `integer` | query | No | The maximum number of ReplayResult objects to return. Defaults to 5000. The maximum value is 5000; values above 5000 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous Simulator.ListReplayResults call. Provide this token to retrieve the next page... |

**Response**: `GoogleCloudPolicysimulatorV1ListReplayResultsResponse`

```typescript
const res = await policysimulator.results.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.replays.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.replays.operations.list`

**GET** `v1/{+name}`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await policysimulator.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.accessPolicySimulations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `policysimulator.projects.locations.orgPolicyViolationsPreviews.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await policysimulator.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudOrgpolicyV2AlternatePolicySpec`

Similar to PolicySpec but with an extra 'launch' field for launch reference. The PolicySpec here is specific for dry-run.

| Property | Type | Description |
|----------|------|-------------|
| `launch` | `string` | Reference to the launch that will be used while audit logging and to control the launch. Should b... |
| `spec` | `GoogleCloudOrgpolicyV2PolicySpec` | Specify constraint for configurations of Google Cloud resources. |

### `GoogleCloudOrgpolicyV2CustomConstraint`

A custom constraint defined by customers which can *only* be applied to the given resource types and organization. By creating a custom constraint, customers can apply policies of this custom constraint. *Creating a custom constraint itself does NOT apply any policy enforcement*.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Allow or deny type. |
| `condition` | `string` | A Common Expression Language (CEL) condition which is used in the evaluation of the constraint. F... |
| `description` | `string` | Detailed information about this custom policy constraint. The max length of the description is 20... |
| `displayName` | `string` | One line display name for the UI. The max length of the display_name is 200 characters. |
| `methodTypes` | `array<string>` | All the operations being applied for this constraint. |
| `name` | `string` | Immutable. Name of the constraint. This is unique within the organization. Format of the name sho... |
| `resourceTypes` | `array<string>` | Immutable. The resource instance type on which this policy applies. Format will be of the form : ... |
| `updateTime` | `string` | Output only. The last time this custom constraint was updated. This represents the last time that... |

### `GoogleCloudOrgpolicyV2Policy`

Defines an organization policy which is used to specify constraints for configurations of Google Cloud resources.

| Property | Type | Description |
|----------|------|-------------|
| `alternate` | `GoogleCloudOrgpolicyV2AlternatePolicySpec` | Deprecated. |
| `dryRunSpec` | `GoogleCloudOrgpolicyV2PolicySpec` | Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the ... |
| `etag` | `string` | Optional. An opaque tag indicating the current state of the policy, used for concurrency control.... |
| `name` | `string` | Immutable. The resource name of the policy. Must be one of the following forms, where `constraint... |
| `spec` | `GoogleCloudOrgpolicyV2PolicySpec` | Basic information about the organization policy. |

### `GoogleCloudOrgpolicyV2PolicySpec`

Defines a Google Cloud policy specification which is used to specify constraints for configurations of Google Cloud resources.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | An opaque tag indicating the current version of the policySpec, used for concurrency control. Thi... |
| `inheritFromParent` | `boolean` | Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rul... |
| `reset` | `boolean` | Ignores policies set above this resource and restores the `constraint_default` enforcement behavi... |
| `rules` | `array<GoogleCloudOrgpolicyV2PolicySpecPolicyRule>` | In policies for boolean constraints, the following requirements apply: - There must be one and on... |
| `updateTime` | `string` | Output only. The time stamp this was previously updated. This represents the last time a call to ... |

### `GoogleCloudOrgpolicyV2PolicySpecPolicyRule`

A rule used to express this policy.

| Property | Type | Description |
|----------|------|-------------|
| `allowAll` | `boolean` | Setting this to true means that all values are allowed. This field can be set only in policies fo... |
| `condition` | `GoogleTypeExpr` | A condition that determines whether this rule is used to evaluate the policy. When set, the googl... |
| `denyAll` | `boolean` | Setting this to true means that all values are denied. This field can be set only in policies for... |
| `enforce` | `boolean` | If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This fi... |
| `parameters` | `object` | Optional. Required for managed constraints if parameters are defined. Passes parameter values whe... |
| `values` | `GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues` | List of values to be used for this policy rule. This field can be set only in policies for list c... |

### `GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues`

A message that holds specific allowed and denied values. This message can define specific values and subtrees of the Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a ":". Values prefixed with "is:" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - `projects/` (for example, `projects/tokyo-rain-123`) - `folders/` (for example, `folders/1234`) - `organizations/` (for example, `organizations/1234`) The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | List of values allowed at this resource. |
| `deniedValues` | `array<string>` | List of values denied at this resource. |

### `GoogleCloudPolicysimulatorV1AccessStateDiff`

A summary and comparison of the principal's access under the current (baseline) policies and the proposed (simulated) policies for a single access tuple.

| Property | Type | Description |
|----------|------|-------------|
| `accessChange` | `string` | How the principal's access, specified in the AccessState field, changed between the current (base... |
| `baseline` | `GoogleCloudPolicysimulatorV1ExplainedAccess` | The results of evaluating the access tuple under the current (baseline) policies. If the AccessSt... |
| `simulated` | `GoogleCloudPolicysimulatorV1ExplainedAccess` | The results of evaluating the access tuple under the proposed (simulated) policies. If the Access... |

### `GoogleCloudPolicysimulatorV1AccessTuple`

Information about the principal, resource, and permission to check.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. The full resource name that identifies the resource. For example, `//compute.googleapis... |
| `permission` | `string` | Required. The IAM permission to check for the specified principal and resource. For a complete li... |
| `principal` | `string` | Required. The principal whose access you want to check, in the form of the email address that rep... |

### `GoogleCloudPolicysimulatorV1BindingExplanation`

Details about how a binding in a policy affects a principal's ability to use a permission.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `string` | Required. Indicates whether _this binding_ provides the specified permission to the specified pri... |
| `condition` | `GoogleTypeExpr` | A condition expression that prevents this binding from granting access unless the expression eval... |
| `memberships` | `object` | Indicates whether each principal in the binding includes the principal specified in the request, ... |
| `relevance` | `string` | The relevance of this binding to the overall determination for the entire policy. |
| `role` | `string` | The role that this binding grants. For example, `roles/compute.serviceAgent`. For a complete list... |
| `rolePermission` | `string` | Indicates whether the role granted by this binding contains the specified permission. |
| `rolePermissionRelevance` | `string` | The relevance of the permission's existence, or nonexistence, in the role to the overall determin... |

### `GoogleCloudPolicysimulatorV1BindingExplanationAnnotatedMembership`

Details about whether the binding includes the principal.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Indicates whether the binding includes the principal. |
| `relevance` | `string` | The relevance of the principal's status to the overall determination for the binding. |

### `GoogleCloudPolicysimulatorV1ExplainedAccess`

Details about how a set of policies, listed in ExplainedPolicy, resulted in a certain AccessState when replaying an access tuple.

| Property | Type | Description |
|----------|------|-------------|
| `accessState` | `string` | Whether the principal in the access tuple has permission to access the resource in the access tup... |
| `errors` | `array<GoogleRpcStatus>` | If the AccessState is `UNKNOWN`, this field contains a list of errors explaining why the result i... |
| `policies` | `array<GoogleCloudPolicysimulatorV1ExplainedPolicy>` | If the AccessState is `UNKNOWN`, this field contains the policies that led to that result. If the... |

### `GoogleCloudPolicysimulatorV1ExplainedPolicy`

Details about how a specific IAM Policy contributed to the access check.

| Property | Type | Description |
|----------|------|-------------|
| `access` | `string` | Indicates whether _this policy_ provides the specified permission to the specified principal for ... |
| `bindingExplanations` | `array<GoogleCloudPolicysimulatorV1BindingExplanation>` | Details about how each binding in the policy affects the principal's ability, or inability, to us... |
| `fullResourceName` | `string` | The full resource name that identifies the resource. For example, `//compute.googleapis.com/proje... |
| `policy` | `GoogleIamV1Policy` | The IAM policy attached to the resource. If the user who created the Replay does not have access ... |
| `relevance` | `string` | The relevance of this policy to the overall determination in the TroubleshootIamPolicyResponse. I... |

### `GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsPreviewsResponse`

ListOrgPolicyViolationsPreviewsResponse is the response message for OrgPolicyViolationsPreviewService.ListOrgPolicyViolationsPreviews.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that you can use to retrieve the next page of results. If this field is omitted, there ar... |
| `orgPolicyViolationsPreviews` | `array<GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview>` | The list of OrgPolicyViolationsPreview |

### `GoogleCloudPolicysimulatorV1ListOrgPolicyViolationsResponse`

ListOrgPolicyViolationsResponse is the response message for OrgPolicyViolationsPreviewService.ListOrgPolicyViolations

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that you can use to retrieve the next page of results. If this field is omitted, there ar... |
| `orgPolicyViolations` | `array<GoogleCloudPolicysimulatorV1OrgPolicyViolation>` | The list of OrgPolicyViolations |

### `GoogleCloudPolicysimulatorV1ListReplayResultsResponse`

Response message for Simulator.ListReplayResults.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that you can use to retrieve the next page of ReplayResult objects. If this field is omit... |
| `replayResults` | `array<GoogleCloudPolicysimulatorV1ReplayResult>` | The results of running a Replay. |

### `GoogleCloudPolicysimulatorV1OrgPolicyOverlay`

The proposed changes to OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraints` | `array<GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay>` | Optional. The OrgPolicy CustomConstraint changes to preview violations for. Any existing CustomCo... |
| `policies` | `array<GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay>` | Optional. The OrgPolicy changes to preview violations for. Any existing OrgPolicies with the same... |

### `GoogleCloudPolicysimulatorV1OrgPolicyOverlayCustomConstraintOverlay`

A change to an OrgPolicy custom constraint.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraint` | `GoogleCloudOrgpolicyV2CustomConstraint` | Optional. The new or updated custom constraint. |
| `customConstraintParent` | `string` | Optional. Resource the constraint is attached to. Example: "organization/987654" |

### `GoogleCloudPolicysimulatorV1OrgPolicyOverlayPolicyOverlay`

A change to an OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleCloudOrgpolicyV2Policy` | Optional. The new or updated OrgPolicy. |
| `policyParent` | `string` | Optional. The parent of the policy we are attaching to. Example: "projects/123456" |

### `GoogleCloudPolicysimulatorV1OrgPolicyViolation`

OrgPolicyViolation is a resource representing a single resource violating a single OrgPolicy constraint.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraint` | `GoogleCloudOrgpolicyV2CustomConstraint` | The custom constraint being violated. |
| `error` | `GoogleRpcStatus` | Any error encountered during the evaluation. |
| `name` | `string` | The name of the `OrgPolicyViolation`. Example: organizations/my-example-org/locations/global/orgP... |
| `resource` | `GoogleCloudPolicysimulatorV1ResourceContext` | The resource violating the constraint. |

### `GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreview`

OrgPolicyViolationsPreview is a resource providing a preview of the violations that will exist if an OrgPolicy change is made. The list of violations are modeled as child resources and retrieved via a ListOrgPolicyViolations API call. There are potentially more OrgPolicyViolations than could fit in an embedded field. Thus, the use of a child resource instead of a field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when this `OrgPolicyViolationsPreview` was created. |
| `customConstraints` | `array<string>` | Output only. The names of the constraints against which all `OrgPolicyViolations` were evaluated.... |
| `name` | `string` | Output only. The resource name of the `OrgPolicyViolationsPreview`. It has the following format: ... |
| `overlay` | `GoogleCloudPolicysimulatorV1OrgPolicyOverlay` | Required. The proposed changes we are previewing violations for. |
| `resourceCounts` | `GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts` | Output only. A summary of the state of all resources scanned for compliance with the changed OrgP... |
| `state` | `string` | Output only. The state of the `OrgPolicyViolationsPreview`. |
| `violationsCount` | `integer` | Output only. The number of OrgPolicyViolations in this `OrgPolicyViolationsPreview`. This count m... |

### `GoogleCloudPolicysimulatorV1OrgPolicyViolationsPreviewResourceCounts`

A summary of the state of all resources scanned for compliance with the changed OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `compliant` | `integer` | Output only. Number of scanned resources with zero violations. |
| `errors` | `integer` | Output only. Number of resources that returned an error when scanned. |
| `noncompliant` | `integer` | Output only. Number of scanned resources with at least one violation. |
| `scanned` | `integer` | Output only. Number of resources checked for compliance. Must equal: unenforced + noncompliant + ... |
| `unenforced` | `integer` | Output only. Number of resources where the constraint was not enforced, i.e. the Policy set `enfo... |

### `GoogleCloudPolicysimulatorV1Replay`

A resource describing a `Replay`, or simulation.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudPolicysimulatorV1ReplayConfig` | Required. The configuration used for the `Replay`. |
| `name` | `string` | Output only. The resource name of the `Replay`, which has the following format: `{projects|folder... |
| `resultsSummary` | `GoogleCloudPolicysimulatorV1ReplayResultsSummary` | Output only. Summary statistics about the replayed log entries. |
| `state` | `string` | Output only. The current state of the `Replay`. |

### `GoogleCloudPolicysimulatorV1ReplayConfig`

The configuration used for a Replay.

| Property | Type | Description |
|----------|------|-------------|
| `logSource` | `string` | The logs to use as input for the Replay. |
| `policyOverlay` | `object` | A mapping of the resources that you want to simulate policies for and the policies that you want ... |

### `GoogleCloudPolicysimulatorV1ReplayDiff`

The difference between the results of evaluating an access tuple under the current (baseline) policies and under the proposed (simulated) policies. This difference explains how a principal's access could change if the proposed policies were applied.

| Property | Type | Description |
|----------|------|-------------|
| `accessDiff` | `GoogleCloudPolicysimulatorV1AccessStateDiff` | A summary and comparison of the principal's access under the current (baseline) policies and the ... |

### `GoogleCloudPolicysimulatorV1ReplayOperationMetadata`

Metadata about a Replay operation.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Time when the request was received. |

### `GoogleCloudPolicysimulatorV1ReplayResult`

The result of replaying a single access tuple against a simulated state.

| Property | Type | Description |
|----------|------|-------------|
| `accessTuple` | `GoogleCloudPolicysimulatorV1AccessTuple` | The access tuple that was replayed. This field includes information about the principal, resource... |
| `diff` | `GoogleCloudPolicysimulatorV1ReplayDiff` | The difference between the principal's access under the current (baseline) policies and the princ... |
| `error` | `GoogleRpcStatus` | The error that caused the access tuple replay to fail. This field is only included for access tup... |
| `lastSeenDate` | `GoogleTypeDate` | The latest date this access tuple was seen in the logs. |
| `name` | `string` | The resource name of the `ReplayResult`, in the following format: `{projects|folders|organization... |
| `parent` | `string` | The Replay that the access tuple was included in. |

### `GoogleCloudPolicysimulatorV1ReplayResultsSummary`

Summary statistics about the replayed log entries.

| Property | Type | Description |
|----------|------|-------------|
| `differenceCount` | `integer` | The number of replayed log entries with a difference between baseline and simulated policies. |
| `errorCount` | `integer` | The number of log entries that could not be replayed. |
| `logCount` | `integer` | The total number of log entries replayed. |
| `newestDate` | `GoogleTypeDate` | The date of the newest log entry replayed. |
| `oldestDate` | `GoogleTypeDate` | The date of the oldest log entry replayed. |
| `unchangedCount` | `integer` | The number of replayed log entries with no difference between baseline and simulated policies. |

### `GoogleCloudPolicysimulatorV1ResourceContext`

ResourceContext provides the context we know about a resource. It is similar in concept to google.cloud.asset.v1.Resource, but focuses on the information specifically used by Simulator.

| Property | Type | Description |
|----------|------|-------------|
| `ancestors` | `array<string>` | The ancestry path of the resource in Google Cloud [resource hierarchy](https://cloud.google.com/r... |
| `assetType` | `string` | The asset type of the resource as defined by CAIS. Example: `compute.googleapis.com/Firewall` See... |
| `resource` | `string` | The full name of the resource. Example: `//compute.googleapis.com/projects/my_project_123/zones/z... |

### `GoogleCloudPolicysimulatorV1betaCreateOrgPolicyViolationsPreviewOperationMetadata`

CreateOrgPolicyViolationsPreviewOperationMetadata is metadata about an OrgPolicyViolationsPreview generations operation.

| Property | Type | Description |
|----------|------|-------------|
| `requestTime` | `string` | Time when the request was received. |
| `resourcesFound` | `integer` | Total number of resources that need scanning. Should equal resource_scanned + resources_pending |
| `resourcesPending` | `integer` | Number of resources still to scan. |
| `resourcesScanned` | `integer` | Number of resources already scanned. |
| `startTime` | `string` | Time when the request started processing, i.e., when the state was set to RUNNING. |
| `state` | `string` | Output only. The current state of the operation. |

### `GoogleCloudPolicysimulatorV1betaGenerateOrgPolicyViolationsPreviewOperationMetadata`

GenerateOrgPolicyViolationsPreviewOperationMetadata is metadata about an OrgPolicyViolationsPreview generations operation.

| Property | Type | Description |
|----------|------|-------------|
| `requestTime` | `string` | Time when the request was received. |
| `resourcesFound` | `integer` | Total number of resources that need scanning. Should equal resource_scanned + resources_pending |
| `resourcesPending` | `integer` | Number of resources still to scan. |
| `resourcesScanned` | `integer` | Number of resources already scanned. |
| `startTime` | `string` | Time when the request started processing, i.e. when the state was set to RUNNING. |
| `state` | `string` | The current state of the operation. |

### `GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay`

The proposed changes to OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraints` | `array<GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay>` | Optional. The OrgPolicy CustomConstraint changes to preview violations for. Any existing CustomCo... |
| `policies` | `array<GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay>` | Optional. The OrgPolicy changes to preview violations for. Any existing OrgPolicies with the same... |

### `GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay`

A change to an OrgPolicy custom constraint.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraint` | `GoogleCloudOrgpolicyV2CustomConstraint` | Optional. The new or updated custom constraint. |
| `customConstraintParent` | `string` | Optional. Resource the constraint is attached to. Example: "organization/987654" |

### `GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay`

A change to an OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleCloudOrgpolicyV2Policy` | Optional. The new or updated OrgPolicy. |
| `policyParent` | `string` | Optional. The parent of the policy we are attaching to. Example: "projects/123456" |

### `GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreview`

OrgPolicyViolationsPreview is a resource providing a preview of the violations that will exist if an OrgPolicy change is made. The list of violations are modeled as child resources and retrieved via a ListOrgPolicyViolations API call. There are potentially more OrgPolicyViolations than could fit in an embedded field. Thus, the use of a child resource instead of a field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when this `OrgPolicyViolationsPreview` was created. |
| `customConstraints` | `array<string>` | Output only. The names of the constraints against which all `OrgPolicyViolations` were evaluated.... |
| `name` | `string` | Output only. The resource name of the `OrgPolicyViolationsPreview`. It has the following format: ... |
| `overlay` | `GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay` | Required. The proposed changes we are previewing violations for. |
| `resourceCounts` | `GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts` | Output only. A summary of the state of all resources scanned for compliance with the changed OrgP... |
| `state` | `string` | Output only. The state of the `OrgPolicyViolationsPreview`. |
| `violationsCount` | `integer` | Output only. The number of OrgPolicyViolations in this `OrgPolicyViolationsPreview`. This count m... |

### `GoogleCloudPolicysimulatorV1betaOrgPolicyViolationsPreviewResourceCounts`

A summary of the state of all resources scanned for compliance with the changed OrgPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `compliant` | `integer` | Output only. Number of scanned resources with zero violations. |
| `errors` | `integer` | Output only. Number of resources that returned an error when scanned. |
| `noncompliant` | `integer` | Output only. Number of scanned resources with at least one violation. |
| `scanned` | `integer` | Output only. Number of resources checked for compliance. Must equal: unenforced + noncompliant + ... |
| `unenforced` | `integer` | Output only. Number of resources where the constraint was not enforced, i.e. the Policy set `enfo... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

