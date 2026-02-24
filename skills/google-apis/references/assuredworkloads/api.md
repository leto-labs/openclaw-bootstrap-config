# Assured Workloads API - API Reference

**Version**: `v1` | **Methods**: 17 | **Schemas**: 44

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `assuredworkloads.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `assuredworkloads.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `assuredworkloads.organizations.locations.workloads.enableComplianceUpdates` | PUT | `v1/{+name}:enableComplianceUpdates` | This endpoint enables Assured Workloads service to offer compliance updates for the folder based ... |
| `assuredworkloads.organizations.locations.workloads.delete` | DELETE | `v1/{+name}` | Deletes the workload. Make sure that workload's direct children are already in a deleted state, o... |
| `assuredworkloads.organizations.locations.workloads.patch` | PATCH | `v1/{+name}` | Updates an existing workload. Currently allows updating of workload display_name and labels. For ... |
| `assuredworkloads.organizations.locations.workloads.list` | GET | `v1/{+parent}/workloads` | Lists Assured Workloads under a CRM Node. |
| `assuredworkloads.organizations.locations.workloads.mutatePartnerPermissions` | PATCH | `v1/{+name}:mutatePartnerPermissions` | Update the permissions settings for an existing partner workload. For force updates don't set eta... |
| `assuredworkloads.organizations.locations.workloads.analyzeWorkloadMove` | GET | `v1/{+target}:analyzeWorkloadMove` | Analyzes a hypothetical move of a source resource to a target workload to surface compliance risk... |
| `assuredworkloads.organizations.locations.workloads.get` | GET | `v1/{+name}` | Gets Assured Workload associated with a CRM Node |
| `assuredworkloads.organizations.locations.workloads.restrictAllowedResources` | POST | `v1/{+name}:restrictAllowedResources` | Restrict the list of resources allowed in the Workload environment. The current list of allowed p... |
| `assuredworkloads.organizations.locations.workloads.enableResourceMonitoring` | POST | `v1/{+name}:enableResourceMonitoring` | Enable resource violation monitoring for a workload. |
| `assuredworkloads.organizations.locations.workloads.create` | POST | `v1/{+parent}/workloads` | Creates Assured Workload. |
| `assuredworkloads.organizations.locations.workloads.violations.acknowledge` | POST | `v1/{+name}:acknowledge` | Acknowledges an existing violation. By acknowledging a violation, users acknowledge the existence... |
| `assuredworkloads.organizations.locations.workloads.violations.list` | GET | `v1/{+parent}/violations` | Lists the Violations in the AssuredWorkload Environment. Callers may also choose to read across m... |
| `assuredworkloads.organizations.locations.workloads.violations.get` | GET | `v1/{+name}` | Retrieves Assured Workload Violation based on ID. |
| `assuredworkloads.organizations.locations.workloads.updates.apply` | POST | `v1/{+name}:apply` | This endpoint creates a new operation to apply the given update. |
| `assuredworkloads.organizations.locations.workloads.updates.list` | GET | `v1/{+parent}/updates` | This endpoint lists all updates for the given workload. |

### `assuredworkloads.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await assuredworkloads.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.operations.list`

**GET** `v1/{+name}/operations`

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
const res = await assuredworkloads.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.enableComplianceUpdates`

**PUT** `v1/{+name}:enableComplianceUpdates`

This endpoint enables Assured Workloads service to offer compliance updates for the folder based assured workload. It sets up an Assured Workloads Service Agent, having permissions to read compliance controls (for example: Org Policies) applied on the workload. The caller must have `resourcemanager.folders.getIamPolicy` and `resourcemanager.folders.setIamPolicy` permissions on the assured workload folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/w... |

**Response**: `GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse`

```typescript
const res = await assuredworkloads.workloads.enableComplianceUpdates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.delete`

**DELETE** `v1/{+name}`

Deletes the workload. Make sure that workload's direct children are already in a deleted state, otherwise the request will fail with a FAILED_PRECONDITION error. In addition to assuredworkloads.workload.delete permission, the user should also have orgpolicy.policy.set permission on the deleted folder to remove Assured Workloads OrgPolicies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/w... |
| `etag` | `string` | query | No | Optional. The etag of the workload. If this is provided, it must match the server's etag. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await assuredworkloads.workloads.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.patch`

**PATCH** `v1/{+name}`

Updates an existing workload. Currently allows updating of workload display_name and labels. For force updates don't set etag field in the Workload. Only one update operation per workload can be in progress.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{wor... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudAssuredworkloadsV1Workload`

**Response**: `GoogleCloudAssuredworkloadsV1Workload`

```typescript
const res = await assuredworkloads.workloads.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.list`

**GET** `v1/{+parent}/workloads`

Lists Assured Workloads under a CRM Node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent Resource to list workloads from. Must be of the form `organizations/{org_id}/locations/{location}`. |
| `filter` | `string` | query | No | A custom filter for filtering by properties of a workload. At this time, only filtering by labels is supported. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token returned from previous request. Page token contains context from previous request. Page token needs to be ... |

**Response**: `GoogleCloudAssuredworkloadsV1ListWorkloadsResponse`

```typescript
const res = await assuredworkloads.workloads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.mutatePartnerPermissions`

**PATCH** `v1/{+name}:mutatePartnerPermissions`

Update the permissions settings for an existing partner workload. For force updates don't set etag field in the Workload. Only one update operation per workload can be in progress.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/w... |

**Request body**: `GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest`

**Response**: `GoogleCloudAssuredworkloadsV1Workload`

```typescript
const res = await assuredworkloads.workloads.mutatePartnerPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.analyzeWorkloadMove`

**GET** `v1/{+target}:analyzeWorkloadMove`

Analyzes a hypothetical move of a source resource to a target workload to surface compliance risks. The analysis is best effort and is not guaranteed to be exhaustive.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `target` | `string` | path | Yes | Required. The resource ID of the folder-based destination workload. This workload is where the source resource will h... |
| `assetTypes` | `string` | query | No | Optional. List of asset types to be analyzed, including and under the source resource. If empty, all assets are analy... |
| `pageSize` | `integer` | query | No | Optional. Page size. If a value is not specified, the default value of 10 is used. The maximum value is 50. |
| `pageToken` | `string` | query | No | Optional. The page token from the previous response. It needs to be passed in the second and following requests. |
| `project` | `string` | query | No | The source type is a project. Specify the project's relative resource name, formatted as either a project number or a... |

**Response**: `GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse`

```typescript
const res = await assuredworkloads.workloads.analyzeWorkloadMove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.get`

**GET** `v1/{+name}`

Gets Assured Workload associated with a CRM Node

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Workload to fetch. This is the workloads's relative path in the API, formatted as ... |

**Response**: `GoogleCloudAssuredworkloadsV1Workload`

```typescript
const res = await assuredworkloads.workloads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.restrictAllowedResources`

**POST** `v1/{+name}:restrictAllowedResources`

Restrict the list of resources allowed in the Workload environment. The current list of allowed products can be found at https://cloud.google.com/assured-workloads/docs/supported-products In addition to assuredworkloads.workload.update permission, the user should also have orgpolicy.policy.set permission on the folder resource to use this functionality.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Workload. This is the workloads's relative path in the API, formatted as "organiza... |

**Request body**: `GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest`

**Response**: `GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse`

```typescript
const res = await assuredworkloads.workloads.restrictAllowedResources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.enableResourceMonitoring`

**POST** `v1/{+name}:enableResourceMonitoring`

Enable resource violation monitoring for a workload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `name` field is used to identify the workload. Format: organizations/{org_id}/locations/{location_id}/w... |

**Response**: `GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse`

```typescript
const res = await assuredworkloads.workloads.enableResourceMonitoring({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.create`

**POST** `v1/{+parent}/workloads`

Creates Assured Workload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the new Workload's parent. Must be of the form `organizations/{org_id}/locations/{loca... |
| `externalId` | `string` | query | No | Optional. A identifier associated with the workload and underlying projects which allows for the break down of billin... |

**Request body**: `GoogleCloudAssuredworkloadsV1Workload`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await assuredworkloads.workloads.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.violations.acknowledge`

**POST** `v1/{+name}:acknowledge`

Acknowledges an existing violation. By acknowledging a violation, users acknowledge the existence of a compliance violation in their workload and decide to ignore it due to a valid business justification. Acknowledgement is a permanent operation and it cannot be reverted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Violation to acknowledge. Format: organizations/{organization}/locations/{location... |

**Request body**: `GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest`

**Response**: `GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse`

```typescript
const res = await assuredworkloads.violations.acknowledge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.violations.list`

**GET** `v1/{+parent}/violations`

Lists the Violations in the AssuredWorkload Environment. Callers may also choose to read across multiple Workloads as per [AIP-159](https://google.aip.dev/159) by using '-' (the hyphen or dash character) as a wildcard character instead of workload-id in the parent. Format `organizations/{org_id}/locations/{location}/workloads/-`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Workload name. Format `organizations/{org_id}/locations/{location}/workloads/{workload}`. |
| `filter` | `string` | query | No | Optional. A custom filter for filtering by the Violations properties. |
| `interval.endTime` | `string` | query | No | The end of the time window. |
| `interval.startTime` | `string` | query | No | The start of the time window. |
| `pageSize` | `integer` | query | No | Optional. Page size. |
| `pageToken` | `string` | query | No | Optional. Page token returned from previous request. |

**Response**: `GoogleCloudAssuredworkloadsV1ListViolationsResponse`

```typescript
const res = await assuredworkloads.violations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.violations.get`

**GET** `v1/{+name}`

Retrieves Assured Workload Violation based on ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Violation to fetch (ie. Violation.name). Format: organizations/{organization}/loca... |

**Response**: `GoogleCloudAssuredworkloadsV1Violation`

```typescript
const res = await assuredworkloads.violations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.updates.apply`

**POST** `v1/{+name}:apply`

This endpoint creates a new operation to apply the given update.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the update. Format: organizations/{org_id}/locations/{location_id}/workloads/{workload... |

**Request body**: `GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await assuredworkloads.updates.apply({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `assuredworkloads.organizations.locations.workloads.updates.list`

**GET** `v1/{+parent}/updates`

This endpoint lists all updates for the given workload.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. organizations/{org_id}/locations/{location_id}/workloads/{workload_id} |
| `pageSize` | `integer` | query | No | Page size. The default value is 20 and the max allowed value is 100. |
| `pageToken` | `string` | query | No | Page token returned from previous request. |

**Response**: `GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse`

```typescript
const res = await assuredworkloads.updates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest`

Request for acknowledging the violation

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgeType` | `string` | Optional. Acknowledge type of specified violation. |
| `comment` | `string` | Required. Business justification explaining the need for violation acknowledgement |
| `nonCompliantOrgPolicy` | `string` | Optional. This field is deprecated and will be removed in future version of the API. Name of the ... |

### `GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse`

Response for violation acknowledgement

### `GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse`

Response containing the analysis results for the hypothetical resource move.

| Property | Type | Description |
|----------|------|-------------|
| `assetMoveAnalyses` | `array<GoogleCloudAssuredworkloadsV1AssetMoveAnalysis>` | List of analysis results for each asset in scope. |
| `nextPageToken` | `string` | The next page token. Is empty if the last page is reached. |

### `GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateOperationMetadata`

Operation metadata to give request details of ApplyWorkloadUpdate.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Optional. The time the operation was created. |
| `createTime` | `string` | Optional. Output only. The time the operation was created. |
| `updateName` | `string` | Required. The resource name of the update |

### `GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest`

Request to apply update to a workload.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action to be performed on the update. |

### `GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateResponse`

Response for ApplyWorkloadUpdate endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `appliedUpdate` | `GoogleCloudAssuredworkloadsV1WorkloadUpdate` | The update that was applied. |

### `GoogleCloudAssuredworkloadsV1AssetMoveAnalysis`

Represents move analysis results for an asset.

| Property | Type | Description |
|----------|------|-------------|
| `analysisGroups` | `array<GoogleCloudAssuredworkloadsV1MoveAnalysisGroup>` | List of eligible analyses performed for the asset. |
| `asset` | `string` | The full resource name of the asset being analyzed. Example: //compute.googleapis.com/projects/my... |
| `assetType` | `string` | Type of the asset being analyzed. Possible values will be among the ones listed [here](https://cl... |

### `GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata`

Operation metadata to give request details of CreateWorkload.

| Property | Type | Description |
|----------|------|-------------|
| `complianceRegime` | `string` | Optional. Compliance controls that should be applied to the resources managed by the workload. |
| `createTime` | `string` | Optional. Time when the operation was created. |
| `displayName` | `string` | Optional. The display name of the workload. |
| `parent` | `string` | Optional. The parent of the workload. |

### `GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse`

Response for EnableComplianceUpdates endpoint.

### `GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse`

Response for EnableResourceMonitoring endpoint.

### `GoogleCloudAssuredworkloadsV1ListViolationsResponse`

Response of ListViolations endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token. Returns empty if reached the last page. |
| `violations` | `array<GoogleCloudAssuredworkloadsV1Violation>` | List of Violations under a Workload. |

### `GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse`

Response of listing the compliance updates per workload with pagination.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token. Return empty if reached the last page. |
| `workloadUpdates` | `array<GoogleCloudAssuredworkloadsV1WorkloadUpdate>` | The list of workload updates for a given workload. |

### `GoogleCloudAssuredworkloadsV1ListWorkloadsResponse`

Response of ListWorkloads endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token. Return empty if reached the last page. |
| `workloads` | `array<GoogleCloudAssuredworkloadsV1Workload>` | List of Workloads under a given parent. |

### `GoogleCloudAssuredworkloadsV1MoveAnalysisGroup`

Represents a logical group of checks performed for an asset. If successful, the group contains the analysis result, otherwise it contains an error with the failure reason.

| Property | Type | Description |
|----------|------|-------------|
| `analysisResult` | `GoogleCloudAssuredworkloadsV1MoveAnalysisResult` | Result of a successful analysis. |
| `displayName` | `string` | Name of the analysis group. |
| `error` | `GoogleRpcStatus` | Error details for a failed analysis. |

### `GoogleCloudAssuredworkloadsV1MoveAnalysisResult`

Represents the successful move analysis results for a group.

| Property | Type | Description |
|----------|------|-------------|
| `blockers` | `array<GoogleCloudAssuredworkloadsV1MoveImpact>` | List of blockers. If not resolved, these will result in compliance violations in the target. |
| `warnings` | `array<GoogleCloudAssuredworkloadsV1MoveImpact>` | List of warnings. These are risks that may or may not result in compliance violations. |

### `GoogleCloudAssuredworkloadsV1MoveImpact`

Represents the impact of moving the asset to the target.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Explanation of the impact. |

### `GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest`

Request for updating permission settings for a partner workload.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag of the workload. If this is provided, it must match the server's etag. |
| `partnerPermissions` | `GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions` | Required. The partner permissions to be updated. |
| `updateMask` | `string` | Required. The list of fields to be updated. E.g. update_mask { paths: "partner_permissions.data_l... |

### `GoogleCloudAssuredworkloadsV1OrgPolicy`

This assured workload service object is used to represent the org policy attached to a resource. It servces the same purpose as the orgpolicy.v2.Policy object but with functionality that is limited to what is supported by Assured Workloads(e.g. only one rule under one OrgPolicy object, no conditions, etc).

| Property | Type | Description |
|----------|------|-------------|
| `constraint` | `string` | The constraint name of the OrgPolicy. e.g. "constraints/gcp.resourceLocations". |
| `inherit` | `boolean` | If `inherit` is true, policy rules of the lowest ancestor in the resource hierarchy chain are inh... |
| `reset` | `boolean` | Ignores policies set above this resource and restores to the `constraint_default` value. `reset` ... |
| `resource` | `string` | Resource that the OrgPolicy attaches to. Format: folders/123" projects/123". |
| `rule` | `GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule` | The rule of the OrgPolicy. |

### `GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule`

A rule used to express this policy.

| Property | Type | Description |
|----------|------|-------------|
| `allowAll` | `boolean` | ListPolicy only when all values are allowed. |
| `denyAll` | `boolean` | ListPolicy only when all values are denied. |
| `enforce` | `boolean` | BooleanPolicy only. |
| `values` | `GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues` | ListPolicy only when custom values are specified. |

### `GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues`

The values allowed for a ListPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | List of values allowed at this resource. |
| `deniedValues` | `array<string>` | List of values denied at this resource. |

### `GoogleCloudAssuredworkloadsV1OrgPolicyUpdate`

Represents an update for an org policy control applied on an Assured Workload resource. The inherited org policy is not considered.

| Property | Type | Description |
|----------|------|-------------|
| `appliedPolicy` | `GoogleCloudAssuredworkloadsV1OrgPolicy` | The org policy currently applied on the assured workload resource. |
| `suggestedPolicy` | `GoogleCloudAssuredworkloadsV1OrgPolicy` | The suggested org policy that replaces the applied policy. |

### `GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest`

Request for restricting list of available resources in Workload environment.

| Property | Type | Description |
|----------|------|-------------|
| `restrictionType` | `string` | Required. The type of restriction for using gcp products in the Workload environment. |

### `GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse`

Response for restricting the list of allowed resources.

### `GoogleCloudAssuredworkloadsV1UpdateDetails`

The details of the update.

| Property | Type | Description |
|----------|------|-------------|
| `orgPolicyUpdate` | `GoogleCloudAssuredworkloadsV1OrgPolicyUpdate` | Update to one org policy, e.g. gcp.resourceLocation. |

### `GoogleCloudAssuredworkloadsV1Violation`

Workload monitoring Violation.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledged` | `boolean` | A boolean that indicates if the violation is acknowledged |
| `acknowledgementTime` | `string` | Optional. Timestamp when this violation was acknowledged first. Check exception_contexts to find ... |
| `associatedOrgPolicyViolationId` | `string` | Optional. Output only. Violation Id of the org-policy violation due to which the resource violati... |
| `auditLogLink` | `string` | Output only. Immutable. Audit Log Link for violated resource Format: https://console.cloud.google... |
| `beginTime` | `string` | Output only. Time of the event which triggered the Violation. |
| `category` | `string` | Output only. Category under which this violation is mapped. e.g. Location, Service Usage, Access,... |
| `description` | `string` | Output only. Description for the Violation. e.g. OrgPolicy gcp.resourceLocations has non complian... |
| `exceptionAuditLogLink` | `string` | Output only. Immutable. Audit Log link to find business justification provided for violation exce... |
| `exceptionContexts` | `array<GoogleCloudAssuredworkloadsV1ViolationExceptionContext>` | Output only. List of all the exception detail added for the violation. |
| `name` | `string` | Output only. Immutable. Name of the Violation. Format: organizations/{organization}/locations/{lo... |
| `nonCompliantOrgPolicy` | `string` | Output only. Immutable. Name of the OrgPolicy which was modified with non-compliant change and re... |
| `orgPolicyConstraint` | `string` | Output only. Immutable. The org-policy-constraint that was incorrectly changed, which resulted in... |
| `parentProjectNumber` | `string` | Optional. Output only. Parent project number where resource is present. Empty for org-policy viol... |
| `remediation` | `GoogleCloudAssuredworkloadsV1ViolationRemediation` | Output only. Compliance violation remediation |
| `resolveTime` | `string` | Output only. Time of the event which fixed the Violation. If the violation is ACTIVE this will be... |
| `resourceName` | `string` | Optional. Output only. Name of the resource like //storage.googleapis.com/myprojectxyz-testbucket... |
| `resourceType` | `string` | Optional. Output only. Type of the resource like compute.googleapis.com/Disk, etc. Empty for org-... |
| `state` | `string` | Output only. State of the violation |
| `updateTime` | `string` | Output only. The last time when the Violation record was updated. |
| `violationType` | `string` | Output only. Type of the violation |

### `GoogleCloudAssuredworkloadsV1ViolationExceptionContext`

Violation exception detail.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementTime` | `string` | Timestamp when the violation was acknowledged. |
| `comment` | `string` | Business justification provided towards the acknowledgement of the violation. |
| `userName` | `string` | Name of the user (or service account) who acknowledged the violation. |

### `GoogleCloudAssuredworkloadsV1ViolationRemediation`

Represents remediation guidance to resolve compliance violation for AssuredWorkload

| Property | Type | Description |
|----------|------|-------------|
| `compliantValues` | `array<string>` | Values that can resolve the violation For example: for list org policy violations, this will eith... |
| `instructions` | `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions` | Required. Remediation instructions to resolve violations |
| `remediationType` | `string` | Output only. Reemediation type based on the type of org policy values violated |

### `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions`

Instructions to remediate violation

| Property | Type | Description |
|----------|------|-------------|
| `consoleInstructions` | `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole` | Remediation instructions to resolve violation via cloud console |
| `gcloudInstructions` | `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud` | Remediation instructions to resolve violation via gcloud cli |

### `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole`

Remediation instructions to resolve violation via cloud console

| Property | Type | Description |
|----------|------|-------------|
| `additionalLinks` | `array<string>` | Additional urls for more information about steps |
| `consoleUris` | `array<string>` | Link to console page where violations can be resolved |
| `steps` | `array<string>` | Steps to resolve violation via cloud console |

### `GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud`

Remediation instructions to resolve violation via gcloud cli

| Property | Type | Description |
|----------|------|-------------|
| `additionalLinks` | `array<string>` | Additional urls for more information about steps |
| `gcloudCommands` | `array<string>` | Gcloud command to resolve violation |
| `steps` | `array<string>` | Steps to resolve violation via gcloud cli |

### `GoogleCloudAssuredworkloadsV1Workload`

A Workload object for managing highly regulated workloads of cloud customers.

| Property | Type | Description |
|----------|------|-------------|
| `billingAccount` | `string` | Optional. The billing account used for the resources which are direct children of workload. This ... |
| `complianceRegime` | `string` | Required. Immutable. Compliance Regime associated with this workload. |
| `complianceStatus` | `GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus` | Output only. Count of active Violations in the Workload. |
| `compliantButDisallowedServices` | `array<string>` | Output only. Urls for services which are compliant for this Assured Workload, but which are curre... |
| `createTime` | `string` | Output only. Immutable. The Workload creation timestamp. |
| `displayName` | `string` | Required. The user-assigned display name of the Workload. When present it must be between 4 to 30... |
| `ekmProvisioningResponse` | `GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse` | Output only. Represents the Ekm Provisioning State of the given workload. |
| `enableSovereignControls` | `boolean` | Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by E... |
| `etag` | `string` | Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will b... |
| `kajEnrollmentState` | `string` | Output only. Represents the KAJ enrollment state of the given workload. |
| `kmsSettings` | `GoogleCloudAssuredworkloadsV1WorkloadKMSSettings` | Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is... |
| `labels` | `object` | Optional. Labels applied to the workload. |
| `name` | `string` | Optional. The resource name of the workload. Format: organizations/{organization}/locations/{loca... |
| `partner` | `string` | Optional. Partner regime associated with this workload. |
| `partnerPermissions` | `GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions` | Optional. Permissions granted to the AW Partner SA account for the customer workload |
| `partnerServicesBillingAccount` | `string` | Optional. Billing account necessary for purchasing services from Sovereign Partners. This field i... |
| `provisionedResourcesParent` | `string` | Input only. The parent resource for the resources managed by this Assured Workload. May be either... |
| `resourceMonitoringEnabled` | `boolean` | Output only. Indicates whether resource monitoring is enabled for workload or not. It is true whe... |
| `resourceSettings` | `array<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>` | Input only. Resource properties that are used to customize workload resources. These properties (... |
| `resources` | `array<GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>` | Output only. The resources associated with this workload. These resources will be created when cr... |
| `saaEnrollmentResponse` | `GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse` | Output only. Represents the SAA enrollment response of the given workload. SAA enrollment respons... |
| `violationNotificationsEnabled` | `boolean` | Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. Th... |
| `workloadOptions` | `GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions` | Optional. Options to be set for the given created workload. |

### `GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus`

Represents the Compliance Status of this workload

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgedResourceViolationCount` | `integer` | Number of current resource violations which are not acknowledged. |
| `acknowledgedViolationCount` | `integer` | Number of current orgPolicy violations which are acknowledged. |
| `activeResourceViolationCount` | `integer` | Number of current resource violations which are acknowledged. |
| `activeViolationCount` | `integer` | Number of current orgPolicy violations which are not acknowledged. |

### `GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse`

External key management systems(EKM) Provisioning response

| Property | Type | Description |
|----------|------|-------------|
| `ekmProvisioningErrorDomain` | `string` | Indicates Ekm provisioning error if any. |
| `ekmProvisioningErrorMapping` | `string` | Detailed error message if Ekm provisioning fails |
| `ekmProvisioningState` | `string` | Output only. Indicates Ekm enrollment Provisioning of a given workload. |

### `GoogleCloudAssuredworkloadsV1WorkloadKMSSettings`

Settings specific to the Key Management Service.

| Property | Type | Description |
|----------|------|-------------|
| `nextRotationTime` | `string` | Required. Input only. Immutable. The time at which the Key Management Service will automatically ... |
| `rotationPeriod` | `string` | Required. Input only. Immutable. [next_rotation_time] will be advanced by this period when the Ke... |

### `GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions`

Permissions granted to the AW Partner SA account for the customer workload

| Property | Type | Description |
|----------|------|-------------|
| `accessTransparencyLogsSupportCaseViewer` | `boolean` | Optional. Allow partner to view support case details for an AXT log |
| `assuredWorkloadsMonitoring` | `boolean` | Optional. Allow partner to view violation alerts. |
| `dataLogsViewer` | `boolean` | Optional. Allow the partner to view inspectability logs and monitoring violations. |
| `serviceAccessApprover` | `boolean` | Optional. Allow partner to view access approval logs. |

### `GoogleCloudAssuredworkloadsV1WorkloadResourceInfo`

Represent the resources that are children of this Workload.

| Property | Type | Description |
|----------|------|-------------|
| `resourceId` | `string` | Output only. Resource identifier. For a project this represents project_number. |
| `resourceType` | `string` | Indicates the type of resource. |

### `GoogleCloudAssuredworkloadsV1WorkloadResourceSettings`

Represent the custom settings for the resources to be created.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | User-assigned resource display name. If not empty it will be used to create a resource with the s... |
| `resourceId` | `string` | Resource identifier. For a project this represents project_id. If the project is already taken, t... |
| `resourceType` | `string` | Indicates the type of resource. This field should be specified to correspond the id to the right ... |

### `GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse`

Signed Access Approvals (SAA) enrollment response.

| Property | Type | Description |
|----------|------|-------------|
| `setupErrors` | `array<string>` | Indicates SAA enrollment setup error if any. |
| `setupStatus` | `string` | Output only. Indicates SAA enrollment status of a given workload. |

### `GoogleCloudAssuredworkloadsV1WorkloadUpdate`

A workload update is a change to the workload's compliance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the update was created. |
| `details` | `GoogleCloudAssuredworkloadsV1UpdateDetails` | The details of the update. |
| `name` | `string` | Output only. Immutable. Identifier. Resource name of the WorkloadUpdate. Format: organizations/{o... |
| `state` | `string` | Output only. The state of the update. |
| `updateTime` | `string` | The time the update was last updated. |

### `GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions`

Options to be set for the given created workload.

| Property | Type | Description |
|----------|------|-------------|
| `kajEnrollmentType` | `string` | Optional. Specifies type of KAJ Enrollment if provided. |

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

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

