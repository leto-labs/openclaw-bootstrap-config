# Cloud Asset API - API Reference

**Version**: `v1` | **Methods**: 24 | **Schemas**: 141

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudasset.analyzeIamPolicy` | GET | `v1/{+scope}:analyzeIamPolicy` | Analyzes IAM policies to answer which identities have what accesses on which resources. |
| `cloudasset.analyzeOrgPolicyGovernedAssets` | GET | `v1/{+scope}:analyzeOrgPolicyGovernedAssets` | Analyzes organization policies governed assets (Google Cloud resources or policies) under a scope... |
| `cloudasset.queryAssets` | POST | `v1/{+parent}:queryAssets` | Issue a job that queries assets using a SQL statement compatible with [BigQuery SQL](https://clou... |
| `cloudasset.analyzeOrgPolicies` | GET | `v1/{+scope}:analyzeOrgPolicies` | Analyzes organization policies under a scope. |
| `cloudasset.analyzeIamPolicyLongrunning` | POST | `v1/{+scope}:analyzeIamPolicyLongrunning` | Analyzes IAM policies asynchronously to answer which identities have what accesses on which resou... |
| `cloudasset.analyzeMove` | GET | `v1/{+resource}:analyzeMove` | Analyze moving a resource to a specified destination without kicking off the actual move. The ana... |
| `cloudasset.searchAllIamPolicies` | GET | `v1/{+scope}:searchAllIamPolicies` | Searches all IAM policies within the specified scope, such as a project, folder, or organization.... |
| `cloudasset.searchAllResources` | GET | `v1/{+scope}:searchAllResources` | Searches all Google Cloud resources within the specified scope, such as a project, folder, or org... |
| `cloudasset.batchGetAssetsHistory` | GET | `v1/{+parent}:batchGetAssetsHistory` | Batch gets the update history of assets that overlap a time window. For IAM_POLICY content, this ... |
| `cloudasset.analyzeOrgPolicyGovernedContainers` | GET | `v1/{+scope}:analyzeOrgPolicyGovernedContainers` | Analyzes organization policies governed containers (projects, folders or organization) under a sc... |
| `cloudasset.exportAssets` | POST | `v1/{+parent}:exportAssets` | Exports assets with time and resource types to a given Cloud Storage location/BigQuery table. For... |
| `cloudasset.assets.list` | GET | `v1/{+parent}/assets` | Lists assets with time and resource types and returns paged results in response. |
| `cloudasset.feeds.get` | GET | `v1/{+name}` | Gets details about an asset feed. |
| `cloudasset.feeds.create` | POST | `v1/{+parent}/feeds` | Creates a feed in a parent project/folder/organization to listen to its asset updates. |
| `cloudasset.feeds.patch` | PATCH | `v1/{+name}` | Updates an asset feed configuration. |
| `cloudasset.feeds.list` | GET | `v1/{+parent}/feeds` | Lists all asset feeds in a parent project/folder/organization. |
| `cloudasset.feeds.delete` | DELETE | `v1/{+name}` | Deletes an asset feed. |
| `cloudasset.savedQueries.list` | GET | `v1/{+parent}/savedQueries` | Lists all saved queries in a parent project/folder/organization. |
| `cloudasset.savedQueries.create` | POST | `v1/{+parent}/savedQueries` | Creates a saved query in a parent project/folder/organization. |
| `cloudasset.savedQueries.delete` | DELETE | `v1/{+name}` | Deletes a saved query. |
| `cloudasset.savedQueries.get` | GET | `v1/{+name}` | Gets details about a saved query. |
| `cloudasset.savedQueries.patch` | PATCH | `v1/{+name}` | Updates a saved query. |
| `cloudasset.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudasset.effectiveIamPolicies.batchGet` | GET | `v1/{+scope}/effectiveIamPolicies:batchGet` | Gets effective IAM policies for a batch of resources. |

### `cloudasset.analyzeIamPolicy`

**GET** `v1/{+scope}:analyzeIamPolicy`

Analyzes IAM policies to answer which identities have what accesses on which resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. Thi... |
| `analysisQuery.accessSelector.permissions` | `string` | query | No | Optional. The permissions to appear in result. |
| `analysisQuery.accessSelector.roles` | `string` | query | No | Optional. The roles to appear in result. |
| `analysisQuery.conditionContext.accessTime` | `string` | query | No | The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the curre... |
| `analysisQuery.identitySelector.identity` | `string` | query | No | Required. The identity appear in the form of principals in [IAM policy binding](https://cloud.google.com/iam/referenc... |
| `analysisQuery.options.analyzeServiceAccountImpersonation` | `boolean` | query | No | Optional. If true, the response will include access analysis from identities to resources via service account imperso... |
| `analysisQuery.options.expandGroups` | `boolean` | query | No | Optional. If true, the identities section of the result will expand any Google groups appearing in an IAM policy bind... |
| `analysisQuery.options.expandResources` | `boolean` | query | No | Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource section of the result w... |
| `analysisQuery.options.expandRoles` | `boolean` | query | No | Optional. If true, the access section of result will expand any roles appearing in IAM policy bindings to include the... |
| `analysisQuery.options.outputGroupEdges` | `boolean` | query | No | Optional. If true, the result will output the relevant membership relationships between groups and other groups, and ... |
| `analysisQuery.options.outputResourceEdges` | `boolean` | query | No | Optional. If true, the result will output the relevant parent/child relationships between resources. Default is false. |
| `analysisQuery.resourceSelector.fullResourceName` | `string` | query | No | Required. The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of a resource... |
| `executionTimeout` | `string` | query | No | Optional. Amount of time executable has to complete. See JSON representation of [Duration](https://developers.google.... |
| `savedAnalysisQuery` | `string` | query | No | Optional. The name of a saved query, which must be in the format of: * projects/project_number/savedQueries/saved_que... |

**Response**: `AnalyzeIamPolicyResponse`

```typescript
const res = await cloudasset.analyzeIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.analyzeOrgPolicyGovernedAssets`

**GET** `v1/{+scope}:analyzeOrgPolicyGovernedAssets`

Analyzes organization policies governed assets (Google Cloud resources or policies) under a scope. This RPC supports custom constraints and the following canned constraints: * constraints/ainotebooks.accessMode * constraints/ainotebooks.disableFileDownloads * constraints/ainotebooks.disableRootAccess * constraints/ainotebooks.disableTerminal * constraints/ainotebooks.environmentOptions * constraints/ainotebooks.requireAutoUpgradeSchedule * constraints/ainotebooks.restrictVpcNetworks * constraints/compute.disableGuestAttributesAccess * constraints/compute.disableInstanceDataAccessApis * constraints/compute.disableNestedVirtualization * constraints/compute.disableSerialPortAccess * constraints/compute.disableSerialPortLogging * constraints/compute.disableVpcExternalIpv6 * constraints/compute.requireOsLogin * constraints/compute.requireShieldedVm * constraints/compute.restrictLoadBalancerCreationForTypes * constraints/compute.restrictProtocolForwardingCreationForTypes * constraints/compute.restrictXpnProjectLienRemoval * constraints/compute.setNewProjectDefaultToZonalDNSOnly * constraints/compute.skipDefaultNetworkCreation * constraints/compute.trustedImageProjects * constraints/compute.vmCanIpForward * constraints/compute.vmExternalIpAccess * constraints/gcp.detailedAuditLoggingMode * constraints/gcp.resourceLocations * constraints/iam.allowedPolicyMemberDomains * constraints/iam.automaticIamGrantsForDefaultServiceAccounts * constraints/iam.disableServiceAccountCreation * constraints/iam.disableServiceAccountKeyCreation * constraints/iam.disableServiceAccountKeyUpload * constraints/iam.restrictCrossProjectServiceAccountLienRemoval * constraints/iam.serviceAccountKeyExpiryHours * constraints/resourcemanager.accessBoundaries * constraints/resourcemanager.allowedExportDestinations * constraints/sql.restrictAuthorizedNetworks * constraints/sql.restrictNoncompliantDiagnosticDataAccess * constraints/sql.restrictNoncompliantResourceCreation * constraints/sql.restrictPublicIp * constraints/storage.publicAccessPrevention * constraints/storage.restrictAuthTypes * constraints/storage.uniformBucketLevelAccess This RPC only returns either resources of types [supported by search APIs](https://cloud.google.com/asset-inventory/docs/supported-asset-types) or IAM policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. The organization to scope the request. Only organization policies within the scope will be analyzed. The ou... |
| `constraint` | `string` | query | No | Required. The name of the constraint to analyze governed assets for. The analysis only contains analyzed organization... |
| `filter` | `string` | query | No | The expression to filter AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets. For governed resources, filtering is... |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. If unspecified, AnalyzeOrgPolicyGovernedAssetsResponse.governed_asset... |
| `pageToken` | `string` | query | No | The pagination token to retrieve the next page. |

**Response**: `AnalyzeOrgPolicyGovernedAssetsResponse`

```typescript
const res = await cloudasset.analyzeOrgPolicyGovernedAssets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.queryAssets`

**POST** `v1/{+parent}:queryAssets`

Issue a job that queries assets using a SQL statement compatible with [BigQuery SQL](https://cloud.google.com/bigquery/docs/introduction-sql). If the query execution finishes within timeout and there's no pagination, the full query results will be returned in the `QueryAssetsResponse`. Otherwise, full query results can be obtained by issuing extra requests with the `job_reference` from the a previous `QueryAssets` call. Note, the query result has approximately 10 GB limitation enforced by [BigQuery](https://cloud.google.com/bigquery/docs/best-practices-performance-output). Queries return larger results will result in errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative name of the root asset. This can only be an organization number (such as "organizations/123"),... |

**Request body**: `QueryAssetsRequest`

**Response**: `QueryAssetsResponse`

```typescript
const res = await cloudasset.queryAssets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.analyzeOrgPolicies`

**GET** `v1/{+scope}:analyzeOrgPolicies`

Analyzes organization policies under a scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. The organization to scope the request. Only organization policies within the scope will be analyzed. * orga... |
| `constraint` | `string` | query | No | Required. The name of the constraint to analyze organization policies for. The response only contains analyzed organi... |
| `filter` | `string` | query | No | The expression to filter AnalyzeOrgPoliciesResponse.org_policy_results. Filtering is currently available for bare lit... |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. If unspecified, AnalyzeOrgPoliciesResponse.org_policy_results will co... |
| `pageToken` | `string` | query | No | The pagination token to retrieve the next page. |

**Response**: `AnalyzeOrgPoliciesResponse`

```typescript
const res = await cloudasset.analyzeOrgPolicies({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.analyzeIamPolicyLongrunning`

**POST** `v1/{+scope}:analyzeIamPolicyLongrunning`

Analyzes IAM policies asynchronously to answer which identities have what accesses on which resources, and writes the analysis results to a Google Cloud Storage or a BigQuery destination. For Cloud Storage destination, the output format is the JSON format that represents a AnalyzeIamPolicyResponse. This method implements the google.longrunning.Operation, which allows you to track the operation status. We recommend intervals of at least 2 seconds with exponential backoff retry to poll the operation result. The metadata contains the metadata for the long-running operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. Thi... |

**Request body**: `AnalyzeIamPolicyLongrunningRequest`

**Response**: `Operation`

```typescript
const res = await cloudasset.analyzeIamPolicyLongrunning({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.analyzeMove`

**GET** `v1/{+resource}:analyzeMove`

Analyze moving a resource to a specified destination without kicking off the actual move. The analysis is best effort depending on the user's permissions of viewing different hierarchical policies and configurations. The policies and configuration are subject to change before the actual resource migration takes place.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | Required. Name of the resource to perform the analysis against. Only Google Cloud projects are supported as of today.... |
| `destinationParent` | `string` | query | No | Required. Name of the Google Cloud folder or organization to reparent the target resource. The analysis will be perfo... |
| `view` | `string` | query | No | Analysis view indicating what information should be included in the analysis response. If unspecified, the default vi... |

**Response**: `AnalyzeMoveResponse`

```typescript
const res = await cloudasset.analyzeMove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.searchAllIamPolicies`

**GET** `v1/{+scope}:searchAllIamPolicies`

Searches all IAM policies within the specified scope, such as a project, folder, or organization. The caller must be granted the `cloudasset.assets.searchAllIamPolicies` permission on the desired scope, otherwise the request will be rejected.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. A scope can be a project, a folder, or an organization. The search is limited to the IAM policies within th... |
| `assetTypes` | `string` | query | No | Optional. A list of asset types that the IAM policies are attached to. If empty, it will search the IAM policies that... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields specifying the sorting order of the results. The default order is ascendin... |
| `pageSize` | `integer` | query | No | Optional. The page size for search result pagination. Page size is capped at 500 even if a larger value is given. If ... |
| `pageToken` | `string` | query | No | Optional. If present, retrieve the next batch of results from the preceding call to this method. `page_token` must be... |
| `query` | `string` | query | No | Optional. The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching... |

**Response**: `SearchAllIamPoliciesResponse`

```typescript
const res = await cloudasset.searchAllIamPolicies({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.searchAllResources`

**GET** `v1/{+scope}:searchAllResources`

Searches all Google Cloud resources within the specified scope, such as a project, folder, or organization. The caller must be granted the `cloudasset.assets.searchAllResources` permission on the desired scope, otherwise the request will be rejected.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. A scope can be a project, a folder, or an organization. The search is limited to the resources within the `... |
| `assetTypes` | `string` | query | No | Optional. A list of asset types that this request searches for. If empty, it will search all the asset types [support... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields specifying the sorting order of the results. The default order is ascendin... |
| `pageSize` | `integer` | query | No | Optional. The page size for search result pagination. Page size is capped at 500 even if a larger value is given. If ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. `page_token` mu... |
| `query` | `string` | query | No | Optional. The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching... |
| `readMask` | `string` | query | No | Optional. A comma-separated list of fields that you want returned in the results. The following fields are returned b... |

**Response**: `SearchAllResourcesResponse`

```typescript
const res = await cloudasset.searchAllResources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.batchGetAssetsHistory`

**GET** `v1/{+parent}:batchGetAssetsHistory`

Batch gets the update history of assets that overlap a time window. For IAM_POLICY content, this API outputs history when the asset and its attached IAM POLICY both exist. This can create gaps in the output history. Otherwise, this API outputs history with asset in both non-delete or deleted status. If a specified asset does not exist, this API returns an INVALID_ARGUMENT error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative name of the root asset. It can only be an organization number (such as "organizations/123"), a... |
| `assetNames` | `string` | query | No | A list of the full names of the assets. See: https://cloud.google.com/asset-inventory/docs/resource-name-format Examp... |
| `contentType` | `string` | query | No | Optional. The content type. |
| `readTimeWindow.endTime` | `string` | query | No | End time of the time window (inclusive). If not specified, the current timestamp is used instead. |
| `readTimeWindow.startTime` | `string` | query | No | Start time of the time window (exclusive). |
| `relationshipTypes` | `string` | query | No | Optional. A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be... |

**Response**: `BatchGetAssetsHistoryResponse`

```typescript
const res = await cloudasset.batchGetAssetsHistory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.analyzeOrgPolicyGovernedContainers`

**GET** `v1/{+scope}:analyzeOrgPolicyGovernedContainers`

Analyzes organization policies governed containers (projects, folders or organization) under a scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. The organization to scope the request. Only organization policies within the scope will be analyzed. The ou... |
| `constraint` | `string` | query | No | Required. The name of the constraint to analyze governed containers for. The analysis only contains organization poli... |
| `filter` | `string` | query | No | The expression to filter AnalyzeOrgPolicyGovernedContainersResponse.governed_containers. Filtering is currently avail... |
| `pageSize` | `integer` | query | No | The maximum number of items to return per page. If unspecified, AnalyzeOrgPolicyGovernedContainersResponse.governed_c... |
| `pageToken` | `string` | query | No | The pagination token to retrieve the next page. |

**Response**: `AnalyzeOrgPolicyGovernedContainersResponse`

```typescript
const res = await cloudasset.analyzeOrgPolicyGovernedContainers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.exportAssets`

**POST** `v1/{+parent}:exportAssets`

Exports assets with time and resource types to a given Cloud Storage location/BigQuery table. For Cloud Storage location destinations, the output format is newline-delimited JSON. Each line represents a google.cloud.asset.v1.Asset in the JSON format; for BigQuery table destinations, the output table stores the fields in asset Protobuf as columns. This API implements the google.longrunning.Operation API, which allows you to keep track of the export. We recommend intervals of at least 2 seconds with exponential retry to poll the export operation result. For regular-size resource parent, the export operation usually finishes within 5 minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative name of the root asset. This can only be an organization number (such as "organizations/123"),... |

**Request body**: `ExportAssetsRequest`

**Response**: `Operation`

```typescript
const res = await cloudasset.exportAssets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.assets.list`

**GET** `v1/{+parent}/assets`

Lists assets with time and resource types and returns paged results in response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the organization, folder, or project the assets belong to. Format: "organizations/[organization-num... |
| `assetTypes` | `string` | query | No | A list of asset types to take a snapshot for. For example: "compute.googleapis.com/Disk". Regular expression is also ... |
| `contentType` | `string` | query | No | Asset content type. If not specified, no content but the asset name will be returned. |
| `pageSize` | `integer` | query | No | The maximum number of assets to be returned in a single response. Default is 100, minimum is 1, and maximum is 1000. |
| `pageToken` | `string` | query | No | The `next_page_token` returned from the previous `ListAssetsResponse`, or unspecified for the first `ListAssetsReques... |
| `readTime` | `string` | query | No | Timestamp to take an asset snapshot. This can only be set to a timestamp between the current time and the current tim... |
| `relationshipTypes` | `string` | query | No | A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified... |

**Response**: `ListAssetsResponse`

```typescript
const res = await cloudasset.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.feeds.get`

**GET** `v1/{+name}`

Gets details about an asset feed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Feed and it must be in the format of: projects/project_number/feeds/feed_id folders/folder_... |

**Response**: `Feed`

```typescript
const res = await cloudasset.feeds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.feeds.create`

**POST** `v1/{+parent}/feeds`

Creates a feed in a parent project/folder/organization to listen to its asset updates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project/folder/organization where this feed should be created in. It can only be an organiz... |

**Request body**: `CreateFeedRequest`

**Response**: `Feed`

```typescript
const res = await cloudasset.feeds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.feeds.patch`

**PATCH** `v1/{+name}`

Updates an asset feed configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_num... |

**Request body**: `UpdateFeedRequest`

**Response**: `Feed`

```typescript
const res = await cloudasset.feeds.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.feeds.list`

**GET** `v1/{+parent}/feeds`

Lists all asset feeds in a parent project/folder/organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project/folder/organization whose feeds are to be listed. It can only be using project/folder/or... |

**Response**: `ListFeedsResponse`

```typescript
const res = await cloudasset.feeds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.feeds.delete`

**DELETE** `v1/{+name}`

Deletes an asset feed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feed and it must be in the format of: projects/project_number/feeds/feed_id folders/folder_... |

**Response**: `Empty`

```typescript
const res = await cloudasset.feeds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.savedQueries.list`

**GET** `v1/{+parent}/savedQueries`

Lists all saved queries in a parent project/folder/organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project/folder/organization whose savedQueries are to be listed. It can only be using project/fo... |
| `filter` | `string` | query | No | Optional. The expression to filter resources. The expression is a list of zero or more restrictions combined via logi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of saved queries to return per page. The service may return fewer than this value. If un... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSavedQueries` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await cloudasset.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.savedQueries.create`

**POST** `v1/{+parent}/savedQueries`

Creates a saved query in a parent project/folder/organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project/folder/organization where this saved_query should be created in. It can only be an ... |
| `savedQueryId` | `string` | query | No | Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final c... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await cloudasset.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.savedQueries.delete`

**DELETE** `v1/{+name}`

Deletes a saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the saved query to delete. It must be in the format of: * projects/project_number/savedQueries/... |

**Response**: `Empty`

```typescript
const res = await cloudasset.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.savedQueries.get`

**GET** `v1/{+name}`

Gets details about a saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the saved query and it must be in the format of: * projects/project_number/savedQueries/saved_q... |

**Response**: `SavedQuery`

```typescript
const res = await cloudasset.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.savedQueries.patch`

**PATCH** `v1/{+name}`

Updates a saved query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * fol... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await cloudasset.savedQueries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudasset.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudasset.effectiveIamPolicies.batchGet`

**GET** `v1/{+scope}/effectiveIamPolicies:batchGet`

Gets effective IAM policies for a batch of resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `scope` | `string` | path | Yes | Required. Only IAM policies on or below the scope will be returned. This can only be an organization number (such as ... |
| `names` | `string` | query | No | Required. The names refer to the [full_resource_names] (https://cloud.google.com/asset-inventory/docs/resource-name-f... |

**Response**: `BatchGetEffectiveIamPoliciesResponse`

```typescript
const res = await cloudasset.effectiveIamPolicies.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessSelector`

Specifies roles and/or permissions to analyze, to determine both the identities possessing them and the resources they control. If multiple values are specified, results will include roles or permissions matching any of them. The total number of roles and permissions should be equal or less than 10.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | Optional. The permissions to appear in result. |
| `roles` | `array<string>` | Optional. The roles to appear in result. |

### `AnalyzeIamPolicyLongrunningMetadata`

Represents the metadata of the longrunning operation for the AnalyzeIamPolicyLongrunning RPC.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |

### `AnalyzeIamPolicyLongrunningRequest`

A request message for AssetService.AnalyzeIamPolicyLongrunning.

| Property | Type | Description |
|----------|------|-------------|
| `analysisQuery` | `IamPolicyAnalysisQuery` | Required. The request query. |
| `outputConfig` | `IamPolicyAnalysisOutputConfig` | Required. Output configuration indicating where the results will be output to. |
| `savedAnalysisQuery` | `string` | Optional. The name of a saved query, which must be in the format of: * projects/project_number/sa... |

### `AnalyzeIamPolicyLongrunningResponse`

A response message for AssetService.AnalyzeIamPolicyLongrunning.

### `AnalyzeIamPolicyResponse`

A response message for AssetService.AnalyzeIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `fullyExplored` | `boolean` | Represents whether all entries in the main_analysis and service_account_impersonation_analysis ha... |
| `mainAnalysis` | `IamPolicyAnalysis` | The main analysis that matches the original request. |
| `serviceAccountImpersonationAnalysis` | `array<IamPolicyAnalysis>` | The service account impersonation analysis if IamPolicyAnalysisQuery.Options.analyze_service_acco... |

### `AnalyzeMoveResponse`

The response message for resource move analysis.

| Property | Type | Description |
|----------|------|-------------|
| `moveAnalysis` | `array<MoveAnalysis>` | The list of analyses returned from performing the intended resource move analysis. The analysis i... |

### `AnalyzeOrgPoliciesResponse`

The response message for AssetService.AnalyzeOrgPolicies.

| Property | Type | Description |
|----------|------|-------------|
| `constraint` | `AnalyzerOrgPolicyConstraint` | The definition of the constraint in the request. |
| `nextPageToken` | `string` | The page token to fetch the next page for AnalyzeOrgPoliciesResponse.org_policy_results. |
| `orgPolicyResults` | `array<OrgPolicyResult>` | The organization policies under the AnalyzeOrgPoliciesRequest.scope with the AnalyzeOrgPoliciesRe... |

### `AnalyzeOrgPolicyGovernedAssetsResponse`

The response message for AssetService.AnalyzeOrgPolicyGovernedAssets.

| Property | Type | Description |
|----------|------|-------------|
| `constraint` | `AnalyzerOrgPolicyConstraint` | The definition of the constraint in the request. |
| `governedAssets` | `array<GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset>` | The list of the analyzed governed assets. |
| `nextPageToken` | `string` | The page token to fetch the next page for AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets. |

### `AnalyzeOrgPolicyGovernedContainersResponse`

The response message for AssetService.AnalyzeOrgPolicyGovernedContainers.

| Property | Type | Description |
|----------|------|-------------|
| `constraint` | `AnalyzerOrgPolicyConstraint` | The definition of the constraint in the request. |
| `governedContainers` | `array<GoogleCloudAssetV1GovernedContainer>` | The list of the analyzed governed containers. |
| `nextPageToken` | `string` | The page token to fetch the next page for AnalyzeOrgPolicyGovernedContainersResponse.governed_con... |

### `AnalyzerOrgPolicy`

This organization policy message is a modified version of the one defined in the Organization Policy system. This message contains several fields defined in the original organization policy with some new fields for analysis purpose.

| Property | Type | Description |
|----------|------|-------------|
| `appliedResource` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `attachedResource` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `inheritFromParent` | `boolean` | If `inherit_from_parent` is true, Rules set higher up in the hierarchy (up to the closest root) a... |
| `reset` | `boolean` | Ignores policies set above this resource and restores the default behavior of the constraint at t... |
| `rules` | `array<GoogleCloudAssetV1Rule>` | List of rules for this organization policy. |

### `AnalyzerOrgPolicyConstraint`

The organization policy constraint definition.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraint` | `GoogleCloudAssetV1CustomConstraint` | The definition of the custom constraint. |
| `googleDefinedConstraint` | `GoogleCloudAssetV1Constraint` | The definition of the canned constraint defined by Google. |

### `Asset`

An asset in Google Cloud. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP relationship). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `GoogleIdentityAccesscontextmanagerV1AccessLevel` | Also refer to the [access level user guide](https://cloud.google.com/access-context-manager/docs/... |
| `accessPolicy` | `GoogleIdentityAccesscontextmanagerV1AccessPolicy` | Also refer to the [access policy user guide](https://cloud.google.com/access-context-manager/docs... |
| `ancestors` | `array<string>` | The ancestry path of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resou... |
| `assetExceptions` | `array<AssetException>` | The exceptions of a resource. |
| `assetType` | `string` | The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https:/... |
| `iamPolicy` | `Policy` | A representation of the IAM policy set on a Google Cloud resource. There can be a maximum of one ... |
| `name` | `string` | The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone... |
| `orgPolicy` | `array<GoogleCloudOrgpolicyV1Policy>` | A representation of an [organization policy](https://cloud.google.com/resource-manager/docs/organ... |
| `osInventory` | `Inventory` | A representation of runtime OS Inventory information. See [this topic](https://cloud.google.com/c... |
| `relatedAsset` | `RelatedAsset` | One related asset of the current asset. |
| `relatedAssets` | `RelatedAssets` | DEPRECATED. This field only presents for the purpose of backward-compatibility. The server will n... |
| `resource` | `Resource` | A representation of the resource. |
| `servicePerimeter` | `GoogleIdentityAccesscontextmanagerV1ServicePerimeter` | Also refer to the [service perimeter user guide](https://cloud.google.com/vpc-service-controls/do... |
| `updateTime` | `string` | The last update timestamp of an asset. update_time is updated when create/update/delete operation... |

### `AssetEnrichment`

The enhanced metadata information for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceOwners` | `ResourceOwners` | The resource owners for a resource. Note that this field only contains the members that have "rol... |

### `AssetException`

An exception of an asset.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | The details of the exception. |
| `exceptionType` | `string` | The type of exception. |

### `AttachedResource`

Attached resource representation, which is defined by the corresponding service provider. It represents an attached resource's payload.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The type of this attached resource. Example: `osconfig.googleapis.com/Inventory` You can find the... |
| `versionedResources` | `array<VersionedResource>` | Versioned resource representations of this attached resource. This is repeated because there coul... |

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

### `BatchGetAssetsHistoryResponse`

Batch get assets history response.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<TemporalAsset>` | A list of assets with valid time windows. |

### `BatchGetEffectiveIamPoliciesResponse`

A response message for AssetService.BatchGetEffectiveIamPolicies.

| Property | Type | Description |
|----------|------|-------------|
| `policyResults` | `array<EffectiveIamPolicy>` | The effective policies for a batch of resources. Note that the results order is the same as the o... |

### `BigQueryDestination`

A BigQuery destination for exporting assets to.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The BigQuery dataset in format "projects/projectId/datasets/datasetId", to which the sn... |
| `force` | `boolean` | If the destination table already exists and this flag is `TRUE`, the table will be overwritten by... |
| `partitionSpec` | `PartitionSpec` | [partition_spec] determines whether to export to partitioned table(s) and how to partition the da... |
| `separateTablesPerAssetType` | `boolean` | If this flag is `TRUE`, the snapshot results will be written to one or multiple tables, each of w... |
| `table` | `string` | Required. The BigQuery table to which the snapshot result should be written. If this table does n... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ConditionContext`

The IAM conditions context.

| Property | Type | Description |
|----------|------|-------------|
| `accessTime` | `string` | The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be ea... |

### `ConditionEvaluation`

The condition evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationValue` | `string` | The evaluation result. |

### `CreateFeedRequest`

Create asset feed request.

| Property | Type | Description |
|----------|------|-------------|
| `feed` | `Feed` | Required. The feed details. The field `name` must be empty and it will be generated in the format... |
| `feedId` | `string` | Required. This is the client-assigned asset feed identifier and it needs to be unique under a spe... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `EffectiveIamPolicy`

The effective IAM policies on one resource.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | The [full_resource_name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) for... |
| `policies` | `array<PolicyInfo>` | The effective policies for the full_resource_name. These policies include the policy set on the f... |

### `EffectiveTagDetails`

The effective tags and the ancestor resources from which they were inherited.

| Property | Type | Description |
|----------|------|-------------|
| `attachedResource` | `string` | The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format) of t... |
| `effectiveTags` | `array<Tag>` | The effective tags inherited from the attached_resource. Note that tags with the same key but dif... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Explanation`

Explanation about the IAM policy search result.

| Property | Type | Description |
|----------|------|-------------|
| `matchedPermissions` | `object` | The map from roles to their included permissions that match the permission query (i.e., a query c... |

### `ExportAssetsRequest`

Export asset request.

| Property | Type | Description |
|----------|------|-------------|
| `assetTypes` | `array<string>` | A list of asset types to take a snapshot for. For example: "compute.googleapis.com/Disk". Regular... |
| `contentType` | `string` | Asset content type. If not specified, no content but the asset name will be returned. |
| `outputConfig` | `OutputConfig` | Required. Output configuration indicating where the results will be output to. |
| `readTime` | `string` | Timestamp to take an asset snapshot. This can only be set to a timestamp between the current time... |
| `relationshipTypes` | `array<string>` | A list of relationship types to export, for example: `INSTANCE_TO_INSTANCEGROUP`. This field shou... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Feed`

An asset feed used to export asset updates to a destinations. An asset feed filter controls what updates are exported. The asset feed must be created within a project, organization, or folder. Supported destinations are: Pub/Sub topics.

| Property | Type | Description |
|----------|------|-------------|
| `assetNames` | `array<string>` | A list of the full names of the assets to receive updates. You must specify either or both of ass... |
| `assetTypes` | `array<string>` | A list of types of the assets to receive updates. You must specify either or both of asset_names ... |
| `condition` | `Expr` | A condition which determines whether an asset update should be published. If specified, an asset ... |
| `contentType` | `string` | Asset content type. If not specified, no content but the asset name and type will be returned. |
| `feedOutputConfig` | `FeedOutputConfig` | Required. Feed output configuration defining where the asset updates are published to. |
| `name` | `string` | Required. The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or... |
| `relationshipTypes` | `array<string>` | A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field shou... |

### `FeedOutputConfig`

Output configuration for asset feed destination.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubDestination` | `PubsubDestination` | Destination on Pub/Sub. |

### `GcsDestination`

A Cloud Storage location.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | The URI of the Cloud Storage object. It's the same URI that is used by gsutil. Example: "gs://buc... |
| `uriPrefix` | `string` | The URI prefix of all generated Cloud Storage objects. Example: "gs://bucket_name/object_name_pre... |

### `GoogleCloudAssetV1Access`

An IAM role or permission under analysis.

| Property | Type | Description |
|----------|------|-------------|
| `analysisState` | `IamPolicyAnalysisState` | The analysis state of this access. |
| `permission` | `string` | The permission. |
| `role` | `string` | The role. |

### `GoogleCloudAssetV1AccessControlList`

An access control list, derived from the above IAM policy binding, which contains a set of resources and accesses. May include one item from each set to compose an access control entry. NOTICE that there could be multiple access control lists for one IAM policy binding. The access control lists are created based on resource and access combinations. For example, assume we have the following cases in one IAM policy binding: - Permission P1 and P2 apply to resource R1 and R2; - Permission P3 applies to resource R2 and R3; This will result in the following access control lists: - AccessControlList 1: [R1, R2], [P1, P2] - AccessControlList 2: [R2, R3], [P3]

| Property | Type | Description |
|----------|------|-------------|
| `accesses` | `array<GoogleCloudAssetV1Access>` | The accesses that match one of the following conditions: - The access_selector, if it is specifie... |
| `conditionEvaluation` | `ConditionEvaluation` | Condition evaluation for this AccessControlList, if there is a condition defined in the above IAM... |
| `resourceEdges` | `array<GoogleCloudAssetV1Edge>` | Resource edges of the graph starting from the policy attached resource to any descendant resource... |
| `resources` | `array<GoogleCloudAssetV1Resource>` | The resources that match one of the following conditions: - The resource_selector, if it is speci... |

### `GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset`

Represents a Google Cloud asset(resource or IAM policy) governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.

| Property | Type | Description |
|----------|------|-------------|
| `consolidatedPolicy` | `AnalyzerOrgPolicy` | The consolidated policy for the analyzed asset. The consolidated policy is computed by merging an... |
| `governedIamPolicy` | `GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy` | An IAM policy governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.... |
| `governedResource` | `GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource` | A Google Cloud resource governed by the organization policies of the AnalyzeOrgPolicyGovernedAsse... |
| `policyBundle` | `array<AnalyzerOrgPolicy>` | The ordered list of all organization policies from the consolidated_policy.attached_resource to t... |

### `GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy`

The IAM policies governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The asset type of the AnalyzeOrgPolicyGovernedAssetsResponse.GovernedIamPolicy.attached_resource.... |
| `attachedResource` | `string` | The full resource name of the resource on which this IAM policy is set. Example: `//compute.googl... |
| `folders` | `array<string>` | The folder(s) that this IAM policy belongs to, in the format of folders/{FOLDER_NUMBER}. This fie... |
| `organization` | `string` | The organization that this IAM policy belongs to, in the format of organizations/{ORGANIZATION_NU... |
| `policy` | `Policy` | The IAM policy directly set on the given resource. |
| `project` | `string` | The project that this IAM policy belongs to, in the format of projects/{PROJECT_NUMBER}. This fie... |

### `GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource`

The Google Cloud resources governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The asset type of the AnalyzeOrgPolicyGovernedAssetsResponse.GovernedResource.full_resource_name ... |
| `effectiveTags` | `array<EffectiveTagDetails>` | The effective tags on this resource. |
| `folders` | `array<string>` | The folder(s) that this resource belongs to, in the format of folders/{FOLDER_NUMBER}. This field... |
| `fullResourceName` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `organization` | `string` | The organization that this resource belongs to, in the format of organizations/{ORGANIZATION_NUMB... |
| `parent` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `project` | `string` | The project that this resource belongs to, in the format of projects/{PROJECT_NUMBER}. This field... |

### `GoogleCloudAssetV1BigQueryDestination`

A BigQuery destination.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The BigQuery dataset in format "projects/projectId/datasets/datasetId", to which the an... |
| `partitionKey` | `string` | The partition key for BigQuery partitioned table. |
| `tablePrefix` | `string` | Required. The prefix of the BigQuery tables to which the analysis results will be written. Tables... |
| `writeDisposition` | `string` | Optional. Specifies the action that occurs if the destination table or partition already exists. ... |

### `GoogleCloudAssetV1BooleanConstraint`

A `Constraint` that is either enforced or not. For example a constraint `constraints/compute.disableSerialPortAccess`. If it is enforced on a VM instance, serial port connections will not be opened to that instance.

### `GoogleCloudAssetV1Constraint`

The definition of a constraint.

| Property | Type | Description |
|----------|------|-------------|
| `booleanConstraint` | `GoogleCloudAssetV1BooleanConstraint` | Defines this constraint as being a BooleanConstraint. |
| `constraintDefault` | `string` | The evaluation behavior of this constraint in the absence of 'Policy'. |
| `description` | `string` | Detailed description of what this `Constraint` controls as well as how and where it is enforced. |
| `displayName` | `string` | The human readable name of the constraint. |
| `listConstraint` | `GoogleCloudAssetV1ListConstraint` | Defines this constraint as being a ListConstraint. |
| `name` | `string` | The unique name of the constraint. Format of the name should be * `constraints/{constraint_name}`... |

### `GoogleCloudAssetV1CustomConstraint`

The definition of a custom constraint.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Allow or deny type. |
| `condition` | `string` | Organization Policy condition/expression. For example: `resource.instanceName.matches("(productio... |
| `description` | `string` | Detailed information about this custom policy constraint. |
| `displayName` | `string` | One line display name for the UI. |
| `methodTypes` | `array<string>` | All the operations being applied for this constraint. |
| `name` | `string` | Name of the constraint. This is unique within the organization. Format of the name should be * `o... |
| `resourceTypes` | `array<string>` | The Resource Instance type on which this policy applies to. Format will be of the form : "/" Exam... |

### `GoogleCloudAssetV1Edge`

A directional edge.

| Property | Type | Description |
|----------|------|-------------|
| `sourceNode` | `string` | The source node of the edge. For example, it could be a full resource name for a resource node or... |
| `targetNode` | `string` | The target node of the edge. For example, it could be a full resource name for a resource node or... |

### `GoogleCloudAssetV1GcsDestination`

A Cloud Storage location.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. The URI of the Cloud Storage object. It's the same URI that is used by gsutil. Example:... |

### `GoogleCloudAssetV1GovernedContainer`

The organization/folder/project resource governed by organization policies of AnalyzeOrgPolicyGovernedContainersRequest.constraint.

| Property | Type | Description |
|----------|------|-------------|
| `consolidatedPolicy` | `AnalyzerOrgPolicy` | The consolidated organization policy for the analyzed resource. The consolidated organization pol... |
| `effectiveTags` | `array<EffectiveTagDetails>` | The effective tags on this resource. |
| `folders` | `array<string>` | The folder(s) that this resource belongs to, in the format of folders/{FOLDER_NUMBER}. This field... |
| `fullResourceName` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `organization` | `string` | The organization that this resource belongs to, in the format of organizations/{ORGANIZATION_NUMB... |
| `parent` | `string` | The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of ... |
| `policyBundle` | `array<AnalyzerOrgPolicy>` | The ordered list of all organization policies from the consolidated_policy.attached_resource. to ... |
| `project` | `string` | The project that this resource belongs to, in the format of projects/{PROJECT_NUMBER}. This field... |

### `GoogleCloudAssetV1Identity`

An identity under analysis.

| Property | Type | Description |
|----------|------|-------------|
| `analysisState` | `IamPolicyAnalysisState` | The analysis state of this identity. |
| `name` | `string` | The identity of members, formatted as appear in an [IAM policy binding](https://cloud.google.com/... |

### `GoogleCloudAssetV1IdentityList`

The identities and group edges.

| Property | Type | Description |
|----------|------|-------------|
| `groupEdges` | `array<GoogleCloudAssetV1Edge>` | Group identity edges of the graph starting from the binding's group members to any node of the id... |
| `identities` | `array<GoogleCloudAssetV1Identity>` | Only the identities that match one of the following conditions will be presented: - The identity_... |

### `GoogleCloudAssetV1ListConstraint`

A `Constraint` that allows or disallows a list of string values, which are configured by an organization's policy administrator with a `Policy`.

| Property | Type | Description |
|----------|------|-------------|
| `supportsIn` | `boolean` | Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Poli... |
| `supportsUnder` | `boolean` | Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be used in `Policy.al... |

### `GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination`

BigQuery destination.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The BigQuery dataset where the query results will be saved. It has the format of "proje... |
| `table` | `string` | Required. The BigQuery table where the query results will be saved. If this table does not exist,... |
| `writeDisposition` | `string` | Specifies the action that occurs if the destination table or partition already exists. The follow... |

### `GoogleCloudAssetV1Resource`

A Google Cloud resource under analysis.

| Property | Type | Description |
|----------|------|-------------|
| `analysisState` | `IamPolicyAnalysisState` | The analysis state of this resource. |
| `fullResourceName` | `string` | The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format) |

### `GoogleCloudAssetV1Rule`

This rule message is a customized version of the one defined in the Organization Policy system. In addition to the fields defined in the original organization policy, it contains additional field(s) under specific circumstances to support analysis results.

| Property | Type | Description |
|----------|------|-------------|
| `allowAll` | `boolean` | Setting this to true means that all values are allowed. This field can be set only in Policies fo... |
| `condition` | `Expr` | The evaluating condition for this rule. |
| `conditionEvaluation` | `ConditionEvaluation` | The condition evaluation result for this rule. Only populated if it meets all the following crite... |
| `denyAll` | `boolean` | Setting this to true means that all values are denied. This field can be set only in Policies for... |
| `enforce` | `boolean` | If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. This ... |
| `values` | `GoogleCloudAssetV1StringValues` | List of values to be used for this policy rule. This field can be set only in policies for list c... |

### `GoogleCloudAssetV1StringValues`

The string values for the list constraints.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | List of values allowed at this resource. |
| `deniedValues` | `array<string>` | List of values denied at this resource. |

### `GoogleCloudAssetV1p7beta1Asset`

An asset in Google Cloud. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `GoogleIdentityAccesscontextmanagerV1AccessLevel` | Please also refer to the [access level user guide](https://cloud.google.com/access-context-manage... |
| `accessPolicy` | `GoogleIdentityAccesscontextmanagerV1AccessPolicy` | Please also refer to the [access policy user guide](https://cloud.google.com/access-context-manag... |
| `ancestors` | `array<string>` | The ancestry path of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resou... |
| `assetType` | `string` | The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https:/... |
| `iamPolicy` | `Policy` | A representation of the IAM policy set on a Google Cloud resource. There can be a maximum of one ... |
| `name` | `string` | The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone... |
| `orgPolicy` | `array<GoogleCloudOrgpolicyV1Policy>` | A representation of an [organization policy](https://cloud.google.com/resource-manager/docs/organ... |
| `relatedAssets` | `GoogleCloudAssetV1p7beta1RelatedAssets` | The related assets of the asset of one relationship type. One asset only represents one type of r... |
| `resource` | `GoogleCloudAssetV1p7beta1Resource` | A representation of the resource. |
| `servicePerimeter` | `GoogleIdentityAccesscontextmanagerV1ServicePerimeter` | Please also refer to the [service perimeter user guide](https://cloud.google.com/vpc-service-cont... |
| `updateTime` | `string` | The last update timestamp of an asset. update_time is updated when create/update/delete operation... |

### `GoogleCloudAssetV1p7beta1RelatedAsset`

An asset identify in Google Cloud which contains its name, type and ancestors. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `ancestors` | `array<string>` | The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-... |
| `asset` | `string` | The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone... |
| `assetType` | `string` | The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https:/... |

### `GoogleCloudAssetV1p7beta1RelatedAssets`

The detailed related assets with the `relationship_type`.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<GoogleCloudAssetV1p7beta1RelatedAsset>` | The peer resources of the relationship. |
| `relationshipAttributes` | `GoogleCloudAssetV1p7beta1RelationshipAttributes` | The detailed relation attributes. |

### `GoogleCloudAssetV1p7beta1RelationshipAttributes`

The relationship attributes which include `type`, `source_resource_type`, `target_resource_type` and `action`.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The detail of the relationship, e.g. `contains`, `attaches` |
| `sourceResourceType` | `string` | The source asset type. Example: `compute.googleapis.com/Instance` |
| `targetResourceType` | `string` | The target asset type. Example: `compute.googleapis.com/Disk` |
| `type` | `string` | The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP` |

### `GoogleCloudAssetV1p7beta1Resource`

A representation of a Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The content of the resource, in which some sensitive fields are removed and may not be present. |
| `discoveryDocumentUri` | `string` | The URL of the discovery document containing the resource's JSON schema. Example: `https://www.go... |
| `discoveryName` | `string` | The JSON schema name listed in the discovery document. Example: `Project` This value is unspecifi... |
| `location` | `string` | The location of the resource in Google Cloud, such as its zone and region. For more information, ... |
| `parent` | `string` | The full name of the immediate parent of this resource. See [Resource Names](https://cloud.google... |
| `resourceUrl` | `string` | The REST URL for accessing the resource. An HTTP `GET` request using this URL returns the resourc... |
| `version` | `string` | The API version. Example: `v1` |

### `GoogleCloudOrgpolicyV1BooleanPolicy`

Used in `policy_type` to specify how `boolean_policy` will behave at this resource.

| Property | Type | Description |
|----------|------|-------------|
| `enforced` | `boolean` | If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. Suppo... |

### `GoogleCloudOrgpolicyV1ListPolicy`

Used in `policy_type` to specify how `list_policy` behaves at this resource. `ListPolicy` can define specific values and subtrees of Cloud Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied by setting the `allowed_values` and `denied_values` fields. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a ":". Values prefixed with "is:" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/", e.g. "organizations/1234" The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used. You can set `allowed_values` and `denied_values` in the same `Policy` if `all_values` is `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values` and `denied_values` must be unset.

| Property | Type | Description |
|----------|------|-------------|
| `allValues` | `string` | The policy all_values state. |
| `allowedValues` | `array<string>` | List of values allowed at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UN... |
| `deniedValues` | `array<string>` | List of values denied at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UNS... |
| `inheritFromParent` | `boolean` | Determines the inheritance behavior for this `Policy`. By default, a `ListPolicy` set at a resour... |
| `suggestedValue` | `string` | Optional. The Google Cloud Console will try to default to a configuration that matches the value ... |

### `GoogleCloudOrgpolicyV1Policy`

Defines a Cloud Organization `Policy` which is used to specify `Constraints` for configurations of Cloud Platform resources.

| Property | Type | Description |
|----------|------|-------------|
| `booleanPolicy` | `GoogleCloudOrgpolicyV1BooleanPolicy` | For boolean `Constraints`, whether to enforce the `Constraint` or not. |
| `constraint` | `string` | The name of the `Constraint` the `Policy` is configuring, for example, `constraints/serviceuser.s... |
| `etag` | `string` | An opaque tag indicating the current version of the `Policy`, used for concurrency control. When ... |
| `listPolicy` | `GoogleCloudOrgpolicyV1ListPolicy` | List of values either allowed or disallowed. |
| `restoreDefault` | `GoogleCloudOrgpolicyV1RestoreDefault` | Restores the default behavior of the constraint; independent of `Constraint` type. |
| `updateTime` | `string` | The time stamp the `Policy` was previously updated. This is set by the server, not specified by t... |
| `version` | `integer` | Version of the `Policy`. Default version is 0; |

### `GoogleCloudOrgpolicyV1RestoreDefault`

Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. Suppose that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/serviceuser.services`. Suppose that organization foo.com sets a `Policy` at their Organization resource node that restricts the allowed service activations to deny all service activations. They could then set a `Policy` with the `policy_type` `restore_default` on several experimental projects, restoring the `constraint_default` enforcement of the `Constraint` for only those projects, allowing those projects to have all services activated.

### `GoogleIdentityAccesscontextmanagerV1AccessLevel`

An `AccessLevel` is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.

| Property | Type | Description |
|----------|------|-------------|
| `basic` | `GoogleIdentityAccesscontextmanagerV1BasicLevel` | A `BasicLevel` composed of `Conditions`. |
| `custom` | `GoogleIdentityAccesscontextmanagerV1CustomLevel` | A `CustomLevel` written in the Common Expression Language. |
| `description` | `string` | Description of the `AccessLevel` and its use. Does not affect behavior. |
| `name` | `string` | Identifier. Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLe... |
| `title` | `string` | Human readable title. Must be unique within the Policy. |

### `GoogleIdentityAccesscontextmanagerV1AccessPolicy`

`AccessPolicy` is a container for `AccessLevels` (which define the necessary attributes to use Google Cloud services) and `ServicePerimeters` (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Output only. An opaque identifier for the current version of the `AccessPolicy`. This will always... |
| `name` | `string` | Output only. Identifier. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_pol... |
| `parent` | `string` | Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable ... |
| `scopes` | `array<string>` | The scopes of the AccessPolicy. Scopes define which resources a policy can restrict and where its... |
| `title` | `string` | Required. Human readable title. Does not affect behavior. |

### `GoogleIdentityAccesscontextmanagerV1ApiOperation`

Identification for an API Operation.

| Property | Type | Description |
|----------|------|-------------|
| `methodSelectors` | `array<GoogleIdentityAccesscontextmanagerV1MethodSelector>` | API methods or permissions to allow. Method or permission must belong to the service specified by... |
| `serviceName` | `string` | The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow.... |

### `GoogleIdentityAccesscontextmanagerV1BasicLevel`

`BasicLevel` is an `AccessLevel` using a set of recommended features.

| Property | Type | Description |
|----------|------|-------------|
| `combiningFunction` | `string` | How the `conditions` list should be combined to determine if a request is granted this `AccessLev... |
| `conditions` | `array<GoogleIdentityAccesscontextmanagerV1Condition>` | Required. A list of requirements for the `AccessLevel` to be granted. |

### `GoogleIdentityAccesscontextmanagerV1Condition`

A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.

| Property | Type | Description |
|----------|------|-------------|
| `devicePolicy` | `GoogleIdentityAccesscontextmanagerV1DevicePolicy` | Device specific restrictions, all restrictions must hold for the Condition to be true. If not spe... |
| `ipSubnetworks` | `array<string>` | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address bloc... |
| `members` | `array<string>` | The request must be made by one of the provided user or service accounts. Groups are not supporte... |
| `negate` | `boolean` | Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields.... |
| `regions` | `array<string>` | The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 a... |
| `requiredAccessLevels` | `array<string>` | A list of other access levels defined in the same `Policy`, referenced by resource name. Referenc... |
| `vpcNetworkSources` | `array<GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>` | The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify ... |

### `GoogleIdentityAccesscontextmanagerV1CustomLevel`

`CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec

| Property | Type | Description |
|----------|------|-------------|
| `expr` | `Expr` | Required. A Cloud CEL expression evaluating to a boolean. |

### `GoogleIdentityAccesscontextmanagerV1DevicePolicy`

`DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.

| Property | Type | Description |
|----------|------|-------------|
| `allowedDeviceManagementLevels` | `array<string>` | Allowed device management levels, an empty list allows all management levels. |
| `allowedEncryptionStatuses` | `array<string>` | Allowed encryptions statuses, an empty list allows all statuses. |
| `osConstraints` | `array<GoogleIdentityAccesscontextmanagerV1OsConstraint>` | Allowed OS versions, an empty list allows all types and all versions. |
| `requireAdminApproval` | `boolean` | Whether the device needs to be approved by the customer admin. |
| `requireCorpOwned` | `boolean` | Whether the device needs to be corp owned. |
| `requireScreenlock` | `boolean` | Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`. |

### `GoogleIdentityAccesscontextmanagerV1EgressFrom`

Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.

| Property | Type | Description |
|----------|------|-------------|
| `identities` | `array<string>` | A list of identities that are allowed access through [EgressPolicy]. Identities can be an individ... |
| `identityType` | `string` | Specifies the type of identities that are allowed access to outside the perimeter. If left unspec... |
| `sourceRestriction` | `string` | Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-... |
| `sources` | `array<GoogleIdentityAccesscontextmanagerV1EgressSource>` | Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_r... |

### `GoogleIdentityAccesscontextmanagerV1EgressPolicy`

Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.

| Property | Type | Description |
|----------|------|-------------|
| `egressFrom` | `GoogleIdentityAccesscontextmanagerV1EgressFrom` | Defines conditions on the source of a request causing this EgressPolicy to apply. |
| `egressTo` | `GoogleIdentityAccesscontextmanagerV1EgressTo` | Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy... |
| `title` | `string` | Optional. Human-readable title for the egress rule. The title must be unique within the perimeter... |

### `GoogleIdentityAccesscontextmanagerV1EgressSource`

The source that EgressPolicy authorizes access from inside the ServicePerimeter to somewhere outside the ServicePerimeter boundaries.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `string` | An AccessLevel resource name that allows protected resources inside the ServicePerimeters to acce... |
| `resource` | `string` | A Google Cloud resource from the service perimeter that you want to allow to access data outside ... |

### `GoogleIdentityAccesscontextmanagerV1EgressTo`

Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.

| Property | Type | Description |
|----------|------|-------------|
| `externalResources` | `array<string>` | A list of external resources that are allowed to be accessed. Only AWS and Azure resources are su... |
| `operations` | `array<GoogleIdentityAccesscontextmanagerV1ApiOperation>` | A list of ApiOperations allowed to be performed by the sources specified in the corresponding Egr... |
| `resources` | `array<string>` | A list of resources, currently only projects in the form `projects/`, that are allowed to be acce... |
| `roles` | `array<string>` | IAM roles that represent the set of operations that the sources specified in the corresponding Eg... |

### `GoogleIdentityAccesscontextmanagerV1IngressFrom`

Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.

| Property | Type | Description |
|----------|------|-------------|
| `identities` | `array<string>` | A list of identities that are allowed access through [IngressPolicy]. Identities can be an indivi... |
| `identityType` | `string` | Specifies the type of identities that are allowed access from outside the perimeter. If left unsp... |
| `sources` | `array<GoogleIdentityAccesscontextmanagerV1IngressSource>` | Sources that this IngressPolicy authorizes access from. |

### `GoogleIdentityAccesscontextmanagerV1IngressPolicy`

Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.

| Property | Type | Description |
|----------|------|-------------|
| `ingressFrom` | `GoogleIdentityAccesscontextmanagerV1IngressFrom` | Defines the conditions on the source of a request causing this IngressPolicy to apply. |
| `ingressTo` | `GoogleIdentityAccesscontextmanagerV1IngressTo` | Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy ... |
| `title` | `string` | Optional. Human-readable title for the ingress rule. The title must be unique within the perimete... |

### `GoogleIdentityAccesscontextmanagerV1IngressSource`

The source that IngressPolicy authorizes access from.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `string` | An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed fro... |
| `resource` | `string` | A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources w... |

### `GoogleIdentityAccesscontextmanagerV1IngressTo`

Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.

| Property | Type | Description |
|----------|------|-------------|
| `operations` | `array<GoogleIdentityAccesscontextmanagerV1ApiOperation>` | A list of ApiOperations allowed to be performed by the sources specified in corresponding Ingress... |
| `resources` | `array<string>` | A list of resources, currently only projects in the form `projects/`, protected by this ServicePe... |
| `roles` | `array<string>` | IAM roles that represent the set of operations that the sources specified in the corresponding In... |

### `GoogleIdentityAccesscontextmanagerV1MethodSelector`

An allowed method or permission of a service specified in ApiOperation.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | A valid method name for the corresponding `service_name` in ApiOperation. If `*` is used as the v... |
| `permission` | `string` | A valid Cloud IAM permission for the corresponding `service_name` in ApiOperation. |

### `GoogleIdentityAccesscontextmanagerV1OsConstraint`

A restriction on the OS type and version of devices making requests.

| Property | Type | Description |
|----------|------|-------------|
| `minimumVersion` | `string` | The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Form... |
| `osType` | `string` | Required. The allowed OS type. |
| `requireVerifiedChromeOs` | `boolean` | Only allows requests from devices with a verified Chrome OS. Verifications includes requirements ... |

### `GoogleIdentityAccesscontextmanagerV1ServicePerimeter`

`ServicePerimeter` describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the `ServicePerimeter`. If a request with a source within this `ServicePerimeter` has a target outside of the `ServicePerimeter`, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project or VPC network can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the `ServicePerimeter` and its use. Does not affect behavior. |
| `etag` | `string` | Optional. An opaque identifier for the current version of the `ServicePerimeter`. This identifier... |
| `name` | `string` | Identifier. Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/ser... |
| `perimeterType` | `string` | Perimeter type indicator. A single project or VPC network is allowed to be a member of single reg... |
| `spec` | `GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig` | Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and te... |
| `status` | `GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig` | Current ServicePerimeter configuration. Specifies sets of resources, restricted services and acce... |
| `title` | `string` | Human readable title. Must be unique within the Policy. |
| `useExplicitDryRunSpec` | `boolean` | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Peri... |

### `GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig`

`ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<string>` | A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be a... |
| `egressPolicies` | `array<GoogleIdentityAccesscontextmanagerV1EgressPolicy>` | List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, e... |
| `ingressPolicies` | `array<GoogleIdentityAccesscontextmanagerV1IngressPolicy>` | List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies,... |
| `resources` | `array<string>` | A list of Google Cloud resources that are inside of the service perimeter. Currently only project... |
| `restrictedServices` | `array<string>` | Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `st... |
| `vpcAccessibleServices` | `GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices` | Configuration for APIs allowed within Perimeter. |

### `GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices`

Specifies how APIs are allowed to communicate within the Service Perimeter.

| Property | Type | Description |
|----------|------|-------------|
| `allowedServices` | `array<string>` | The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' i... |
| `enableRestriction` | `boolean` | Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allo... |

### `GoogleIdentityAccesscontextmanagerV1VpcNetworkSource`

The originating network source in Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `vpcSubnetwork` | `GoogleIdentityAccesscontextmanagerV1VpcSubNetwork` | Sub-segment ranges of a VPC network. |

### `GoogleIdentityAccesscontextmanagerV1VpcSubNetwork`

Sub-segment ranges inside of a VPC Network.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. Network name. If the network is not part of the organization, the `compute.network.get`... |
| `vpcIpSubnetworks` | `array<string>` | CIDR block IP subnetwork specification. The IP address must be an IPv4 address and can be a publi... |

### `IamPolicyAnalysis`

An analysis message to group the query and results.

| Property | Type | Description |
|----------|------|-------------|
| `analysisQuery` | `IamPolicyAnalysisQuery` | The analysis query. |
| `analysisResults` | `array<IamPolicyAnalysisResult>` | A list of IamPolicyAnalysisResult that matches the analysis query, or empty if no result is found. |
| `fullyExplored` | `boolean` | Represents whether all entries in the analysis_results have been fully explored to answer the query. |
| `nonCriticalErrors` | `array<IamPolicyAnalysisState>` | A list of non-critical errors happened during the query handling. |

### `IamPolicyAnalysisOutputConfig`

Output configuration for export IAM policy analysis destination.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudAssetV1BigQueryDestination` | Destination on BigQuery. |
| `gcsDestination` | `GoogleCloudAssetV1GcsDestination` | Destination on Cloud Storage. |

### `IamPolicyAnalysisQuery`

IAM policy analysis query message.

| Property | Type | Description |
|----------|------|-------------|
| `accessSelector` | `AccessSelector` | Optional. Specifies roles or permissions for analysis. This is optional. |
| `conditionContext` | `ConditionContext` | Optional. The hypothetical context for IAM conditions evaluation. |
| `identitySelector` | `IdentitySelector` | Optional. Specifies an identity for analysis. |
| `options` | `Options` | Optional. The query options. |
| `resourceSelector` | `ResourceSelector` | Optional. Specifies a resource for analysis. |
| `scope` | `string` | Required. The relative name of the root asset. Only resources and IAM policies within the scope w... |

### `IamPolicyAnalysisResult`

IAM Policy analysis result, consisting of one IAM policy binding and derived access control lists.

| Property | Type | Description |
|----------|------|-------------|
| `accessControlLists` | `array<GoogleCloudAssetV1AccessControlList>` | The access control lists derived from the iam_binding that match or potentially match resource an... |
| `attachedResourceFullName` | `string` | The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format) of t... |
| `fullyExplored` | `boolean` | Represents whether all analyses on the iam_binding have successfully finished. |
| `iamBinding` | `Binding` | The IAM policy binding under analysis. |
| `identityList` | `GoogleCloudAssetV1IdentityList` | The identity list derived from members of the iam_binding that match or potentially match identit... |

### `IamPolicyAnalysisState`

Represents the detailed state of an entity under analysis, such as a resource, an identity or an access.

| Property | Type | Description |
|----------|------|-------------|
| `cause` | `string` | The human-readable description of the cause of failure. |
| `code` | `string` | The Google standard error code that best describes the state. For example: - OK means the analysi... |

### `IamPolicySearchResult`

A result of IAM Policy search, containing information of an IAM policy.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The type of the resource associated with this IAM policy. Example: `compute.googleapis.com/Disk`.... |
| `explanation` | `Explanation` | Explanation about the IAM policy search result. It contains additional information to explain why... |
| `folders` | `array<string>` | The folder(s) that the IAM policy belongs to, in the form of folders/{FOLDER_NUMBER}. This field ... |
| `organization` | `string` | The organization that the IAM policy belongs to, in the form of organizations/{ORGANIZATION_NUMBE... |
| `policy` | `Policy` | The IAM policy directly set on the given resource. Note that the original IAM policy can contain ... |
| `project` | `string` | The project that the associated Google Cloud resource belongs to, in the form of projects/{PROJEC... |
| `resource` | `string` | The full resource name of the resource associated with this IAM policy. Example: `//compute.googl... |

### `IdentitySelector`

Specifies an identity for which to determine resource access, based on roles assigned either directly to them or to the groups they belong to, directly or indirectly.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `string` | Required. The identity appear in the form of principals in [IAM policy binding](https://cloud.goo... |

### `Inventory`

This API resource represents the available inventory data for a Compute Engine virtual machine (VM) instance at a given point in time. You can use this API resource to determine the inventory data of your VM. For more information, see [Information provided by OS inventory management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).

| Property | Type | Description |
|----------|------|-------------|
| `items` | `object` | Inventory items related to the VM keyed by an opaque unique identifier for each inventory item. T... |
| `name` | `string` | Output only. The `Inventory` API resource name. Format: `projects/{project_number}/locations/{loc... |
| `osInfo` | `OsInfo` | Base level operating system information for the VM. |
| `updateTime` | `string` | Output only. Timestamp of the last reported inventory for the VM. |

### `Item`

A single piece of inventory on a VM.

| Property | Type | Description |
|----------|------|-------------|
| `availablePackage` | `SoftwarePackage` | Software package available to be installed on the VM instance. |
| `createTime` | `string` | When this inventory item was first detected. |
| `id` | `string` | Identifier for this item, unique across items for this VM. |
| `installedPackage` | `SoftwarePackage` | Software package present on the VM instance. |
| `originType` | `string` | The origin of this inventory item. |
| `type` | `string` | The specific type of inventory, correlating to its specific details. |
| `updateTime` | `string` | When this inventory item was last modified. |

### `ListAssetsResponse`

ListAssets response.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<Asset>` | Assets. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. It expires 72 hours after the page token for the firs... |
| `readTime` | `string` | Time the snapshot was taken. |

### `ListFeedsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `feeds` | `array<Feed>` | A list of feeds. |

### `ListSavedQueriesResponse`

Response of listing saved queries.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `savedQueries` | `array<SavedQuery>` | A list of savedQueries. |

### `MoveAnalysis`

A message to group the analysis information.

| Property | Type | Description |
|----------|------|-------------|
| `analysis` | `MoveAnalysisResult` | Analysis result of moving the target resource. |
| `displayName` | `string` | The user friendly display name of the analysis. E.g. IAM, organization policy etc. |
| `error` | `Status` | Description of error encountered when performing the analysis. |

### `MoveAnalysisResult`

An analysis result including blockers and warnings.

| Property | Type | Description |
|----------|------|-------------|
| `blockers` | `array<MoveImpact>` | Blocking information that would prevent the target resource from moving to the specified destinat... |
| `warnings` | `array<MoveImpact>` | Warning information indicating that moving the target resource to the specified destination might... |

### `MoveImpact`

A message to group impacts of moving the target resource.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | User friendly impact detail in a free form message. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Options`

Contains query options.

| Property | Type | Description |
|----------|------|-------------|
| `analyzeServiceAccountImpersonation` | `boolean` | Optional. If true, the response will include access analysis from identities to resources via ser... |
| `expandGroups` | `boolean` | Optional. If true, the identities section of the result will expand any Google groups appearing i... |
| `expandResources` | `boolean` | Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource sec... |
| `expandRoles` | `boolean` | Optional. If true, the access section of result will expand any roles appearing in IAM policy bin... |
| `outputGroupEdges` | `boolean` | Optional. If true, the result will output the relevant membership relationships between groups an... |
| `outputResourceEdges` | `boolean` | Optional. If true, the result will output the relevant parent/child relationships between resourc... |

### `OrgPolicyResult`

The organization policy result to the query.

| Property | Type | Description |
|----------|------|-------------|
| `consolidatedPolicy` | `AnalyzerOrgPolicy` | The consolidated organization policy for the analyzed resource. The consolidated organization pol... |
| `folders` | `array<string>` | The folder(s) that this consolidated policy belongs to, in the format of folders/{FOLDER_NUMBER}.... |
| `organization` | `string` | The organization that this consolidated policy belongs to, in the format of organizations/{ORGANI... |
| `policyBundle` | `array<AnalyzerOrgPolicy>` | The ordered list of all organization policies from the consolidated_policy.attached_resource. to ... |
| `project` | `string` | The project that this consolidated policy belongs to, in the format of projects/{PROJECT_NUMBER}.... |

### `OsInfo`

Operating system information for the VM.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The system architecture of the operating system. |
| `hostname` | `string` | The VM hostname. |
| `kernelRelease` | `string` | The kernel release of the operating system. |
| `kernelVersion` | `string` | The kernel version of the operating system. |
| `longName` | `string` | The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019... |
| `osconfigAgentVersion` | `string` | The current version of the OS Config agent running on the VM. |
| `shortName` | `string` | The operating system short name. For example, 'windows' or 'debian'. |
| `version` | `string` | The version of the operating system. |

### `OutputConfig`

Output configuration for export assets destination.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `BigQueryDestination` | Destination on BigQuery. The output table stores the fields in asset Protobuf as columns in BigQu... |
| `gcsDestination` | `GcsDestination` | Destination on Cloud Storage. |

### `PartitionSpec`

Specifications of BigQuery partitioned table as export destination.

| Property | Type | Description |
|----------|------|-------------|
| `partitionKey` | `string` | The partition key for BigQuery partitioned table. |

### `Permissions`

IAM permissions

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A list of permissions. A sample permission string: `compute.disk.get`. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyInfo`

The IAM policy and its attached resource.

| Property | Type | Description |
|----------|------|-------------|
| `attachedResource` | `string` | The full resource name the policy is directly attached to. |
| `policy` | `Policy` | The IAM policy that's directly attached to the attached_resource. |

### `PubsubDestination`

A Pub/Sub destination.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `string` | The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`. |

### `QueryAssetsOutputConfig`

Output configuration query assets.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination` | BigQuery destination where the query results will be saved. |

### `QueryAssetsRequest`

QueryAssets request.

| Property | Type | Description |
|----------|------|-------------|
| `jobReference` | `string` | Optional. Reference to the query job, which is from the `QueryAssetsResponse` of previous `QueryA... |
| `outputConfig` | `QueryAssetsOutputConfig` | Optional. Destination where the query results will be saved. When this field is specified, the qu... |
| `pageSize` | `integer` | Optional. The maximum number of rows to return in the results. Responses are limited to 10 MB and... |
| `pageToken` | `string` | Optional. A page token received from previous `QueryAssets`. The field will be ignored when [outp... |
| `readTime` | `string` | Optional. Queries cloud assets as they appeared at the specified point in time. |
| `readTimeWindow` | `TimeWindow` | Optional. [start_time] is required. [start_time] must be less than [end_time] Defaults [end_time]... |
| `statement` | `string` | Optional. A SQL statement that's compatible with [BigQuery SQL](https://cloud.google.com/bigquery... |
| `timeout` | `string` | Optional. Specifies the maximum amount of time that the client is willing to wait for the query t... |

### `QueryAssetsResponse`

QueryAssets response.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | The query response, which can be either an `error` or a valid `response`. If `done` == `false` an... |
| `error` | `Status` | Error status. |
| `jobReference` | `string` | Reference to a query job. |
| `outputConfig` | `QueryAssetsOutputConfig` | Output configuration, which indicates that instead of being returned in an API response on the fl... |
| `queryResult` | `QueryResult` | Result of the query. |

### `QueryContent`

The query content.

| Property | Type | Description |
|----------|------|-------------|
| `iamPolicyAnalysisQuery` | `IamPolicyAnalysisQuery` | An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the... |

### `QueryResult`

Execution results of the query. The result is formatted as rows represented by BigQuery compatible [schema]. When pagination is necessary, it will contains the page token to retrieve the results of following pages.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of the results. |
| `rows` | `array<object>` | Each row hold a query result in the format of `Struct`. |
| `schema` | `TableSchema` | Describes the format of the [rows]. |
| `totalRows` | `string` | Total rows of the whole query results. |

### `RelatedAsset`

An asset identifier in Google Cloud which contains its name, type and ancestors. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `ancestors` | `array<string>` | The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-... |
| `asset` | `string` | The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone... |
| `assetType` | `string` | The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https:/... |
| `relationshipType` | `string` | The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP` |

### `RelatedAssets`

DEPRECATED. This message only presents for the purpose of backward-compatibility. The server will never populate this message in responses. The detailed related assets with the `relationship_type`.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<RelatedAsset>` | The peer resources of the relationship. |
| `relationshipAttributes` | `RelationshipAttributes` | The detailed relationship attributes. |

### `RelatedResource`

The detailed related resource.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The type of the asset. Example: `compute.googleapis.com/Instance` |
| `fullResourceName` | `string` | The full resource name of the related resource. Example: `//compute.googleapis.com/projects/my_pr... |

### `RelatedResources`

The related resources of the primary resource.

| Property | Type | Description |
|----------|------|-------------|
| `relatedResources` | `array<RelatedResource>` | The detailed related resources of the primary resource. |

### `RelationshipAttributes`

DEPRECATED. This message only presents for the purpose of backward-compatibility. The server will never populate this message in responses. The relationship attributes which include `type`, `source_resource_type`, `target_resource_type` and `action`.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The detail of the relationship, e.g. `contains`, `attaches` |
| `sourceResourceType` | `string` | The source asset type. Example: `compute.googleapis.com/Instance` |
| `targetResourceType` | `string` | The target asset type. Example: `compute.googleapis.com/Disk` |
| `type` | `string` | The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP` |

### `Resource`

A representation of a Google Cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The content of the resource, in which some sensitive fields are removed and may not be present. |
| `discoveryDocumentUri` | `string` | The URL of the discovery document containing the resource's JSON schema. Example: `https://www.go... |
| `discoveryName` | `string` | The JSON schema name listed in the discovery document. Example: `Project` This value is unspecifi... |
| `location` | `string` | The location of the resource in Google Cloud, such as its zone and region. For more information, ... |
| `parent` | `string` | The full name of the immediate parent of this resource. See [Resource Names](https://cloud.google... |
| `resourceUrl` | `string` | The REST URL for accessing the resource. An HTTP `GET` request using this URL returns the resourc... |
| `version` | `string` | The API version. Example: `v1` |

### `ResourceOwners`

The resource owners information.

| Property | Type | Description |
|----------|------|-------------|
| `resourceOwners` | `array<string>` | List of resource owners. |

### `ResourceSearchResult`

A result of Resource Search, containing information of a cloud resource.

| Property | Type | Description |
|----------|------|-------------|
| `additionalAttributes` | `object` | The additional searchable attributes of this resource. The attributes may vary from one resource ... |
| `assetType` | `string` | The type of this resource. Example: `compute.googleapis.com/Disk`. To search against the `asset_t... |
| `attachedResources` | `array<AttachedResource>` | Attached resources of this resource. For example, an OSConfig Inventory is an attached resource o... |
| `createTime` | `string` | The create timestamp of this resource, at which the resource was created. The granularity is in s... |
| `description` | `string` | One or more paragraphs of text description of this resource. Maximum length could be up to 1M byt... |
| `displayName` | `string` | The display name of this resource. This field is available only when the resource's Protobuf cont... |
| `effectiveTags` | `array<EffectiveTagDetails>` | The effective tags on this resource. All of the tags that are both attached to and inherited by a... |
| `enrichments` | `array<AssetEnrichment>` | Enrichments of the asset. Currently supported enrichment types with SearchAllResources API: * RES... |
| `folders` | `array<string>` | The folder(s) that this resource belongs to, in the form of folders/{FOLDER_NUMBER}. This field i... |
| `kmsKey` | `string` | The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.... |
| `kmsKeys` | `array<string>` | The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.... |
| `labels` | `object` | User labels associated with this resource. See [Labelling and grouping Google Cloud resources](ht... |
| `location` | `string` | Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`. This field is ava... |
| `name` | `string` | The full resource name of this resource. Example: `//compute.googleapis.com/projects/my_project_1... |
| `networkTags` | `array<string>` | Network tags associated with this resource. Like labels, network tags are a type of annotations u... |
| `organization` | `string` | The organization that this resource belongs to, in the form of organizations/{ORGANIZATION_NUMBER... |
| `parentAssetType` | `string` | The type of this resource's immediate parent, if there is one. To search against the `parent_asse... |
| `parentFullResourceName` | `string` | The full resource name of this resource's parent, if it has one. To search against the `parent_fu... |
| `project` | `string` | The project that this resource belongs to, in the form of projects/{PROJECT_NUMBER}. This field i... |
| `relationships` | `object` | A map of related resources of this resource, keyed by the relationship type. A relationship type ... |
| `sccSecurityMarks` | `object` | The actual content of Security Command Center security marks associated with the asset. To search... |
| `state` | `string` | The state of this resource. Different resources types have different state definitions that are m... |
| `tagKeys` | `array<string>` | This field is only present for the purpose of backward compatibility. Use the `tags` field instea... |
| `tagValueIds` | `array<string>` | This field is only present for the purpose of backward compatibility. Use the `tags` field instea... |
| `tagValues` | `array<string>` | This field is only present for the purpose of backward compatibility. Use the `tags` field instea... |
| `tags` | `array<Tag>` | The tags directly attached to this resource. To search against the `tags`: * Use a field query. E... |
| `updateTime` | `string` | The last update timestamp of this resource, at which the resource was last modified or deleted. T... |
| `versionedResources` | `array<VersionedResource>` | Versioned resource representations of this resource. This is repeated because there could be mult... |

### `ResourceSelector`

Specifies the resource to analyze for access policies, which may be set directly on the resource, or on ancestors such as organizations, folders or projects.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-f... |

### `SavedQuery`

A saved query which can be shared with others or used later.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `QueryContent` | The query content. |
| `createTime` | `string` | Output only. The create time of this saved query. |
| `creator` | `string` | Output only. The account's email address who has created this saved query. |
| `description` | `string` | The description of this saved query. This value should be fewer than 255 characters. |
| `labels` | `object` | Labels applied on the resource. This value should not contain more than 10 entries. The key and v... |
| `lastUpdateTime` | `string` | Output only. The last update time of this saved query. |
| `lastUpdater` | `string` | Output only. The account's email address who has updated this saved query most recently. |
| `name` | `string` | The resource name of the saved query. The format must be: * projects/project_number/savedQueries/... |

### `SearchAllIamPoliciesResponse`

Search all IAM policies response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Set if there are more results than those appearing in this response; to get the next set of resul... |
| `results` | `array<IamPolicySearchResult>` | A list of IAM policies that match the search query. Related information such as the associated re... |

### `SearchAllResourcesResponse`

Search all resources response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there are more results than those appearing in this response, then `next_page_token` is includ... |
| `results` | `array<ResourceSearchResult>` | A list of Resources that match the search query. It contains the resource standard metadata infor... |

### `SoftwarePackage`

Software package information of the operating system.

| Property | Type | Description |
|----------|------|-------------|
| `aptPackage` | `VersionedPackage` | Details of an APT package. For details about the apt package manager, see https://wiki.debian.org... |
| `cosPackage` | `VersionedPackage` | Details of a COS package. |
| `googetPackage` | `VersionedPackage` | Details of a Googet package. For details about the googet package manager, see https://github.com... |
| `qfePackage` | `WindowsQuickFixEngineeringPackage` | Details of a Windows Quick Fix engineering package. See https://docs.microsoft.com/en-us/windows/... |
| `windowsApplication` | `WindowsApplication` | Details of Windows Application. |
| `wuaPackage` | `WindowsUpdatePackage` | Details of a Windows Update package. See https://docs.microsoft.com/en-us/windows/win32/api/_wua/... |
| `yumPackage` | `VersionedPackage` | Yum package info. For details about the yum package manager, see https://access.redhat.com/docume... |
| `zypperPackage` | `VersionedPackage` | Details of a Zypper package. For details about the Zypper package manager, see https://en.opensus... |
| `zypperPatch` | `ZypperPatch` | Details of a Zypper patch. For details about the Zypper package manager, see https://en.opensuse.... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TableFieldSchema`

A field in TableSchema.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_),... |
| `fields` | `array<TableFieldSchema>` | Describes the nested schema fields if the type property is set to RECORD. |
| `mode` | `string` | The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NUL... |
| `type` | `string` | The field data type. Possible values include * STRING * BYTES * INTEGER * FLOAT * BOOLEAN * TIMES... |

### `TableSchema`

BigQuery Compatible table schema.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<TableFieldSchema>` | Describes the fields in a table. |

### `Tag`

The key and value for a [tag](https://cloud.google.com/resource-manager/docs/tags/tags-overview).

| Property | Type | Description |
|----------|------|-------------|
| `tagKey` | `string` | TagKey namespaced name, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}. |
| `tagKeyId` | `string` | TagKey ID, in the format of tagKeys/{TAG_KEY_ID}. |
| `tagValue` | `string` | TagValue namespaced name, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}/{TAG_VALUE_SHORT_NAME}. |
| `tagValueId` | `string` | TagValue ID, in the format of tagValues/{TAG_VALUE_ID}. |

### `TemporalAsset`

An asset in Google Cloud and its temporal metadata, including the time window when it was observed and its status during that window.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `Asset` | An asset in Google Cloud. |
| `deleted` | `boolean` | Whether the asset has been deleted or not. |
| `priorAsset` | `Asset` | Prior copy of the asset. Populated if prior_asset_state is PRESENT. Currently this is only set fo... |
| `priorAssetState` | `string` | State of prior_asset. |
| `window` | `TimeWindow` | The time window when the asset data and state was observed. |

### `TimeWindow`

A time window specified by its `start_time` and `end_time`.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of the time window (inclusive). If not specified, the current timestamp is used instead. |
| `startTime` | `string` | Start time of the time window (exclusive). |

### `UpdateFeedRequest`

Update asset feed request.

| Property | Type | Description |
|----------|------|-------------|
| `feed` | `Feed` | Required. The new values of feed details. It must match an existing feed and the field `name` mus... |
| `updateMask` | `string` | Required. Only updates the `feed` fields indicated by this mask. The field mask must not be empty... |

### `VersionedPackage`

Information related to the a standard versioned package. This includes package info for APT, Yum, Zypper, and Googet package managers.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The system architecture this package is intended for. |
| `packageName` | `string` | The name of the package. |
| `version` | `string` | The version of the package. |

### `VersionedResource`

Resource representation as defined by the corresponding service providing the resource for a given API version.

| Property | Type | Description |
|----------|------|-------------|
| `assetExceptions` | `array<AssetException>` | The exceptions of a resource. |
| `resource` | `object` | JSON representation of the resource as defined by the corresponding service providing this resour... |
| `version` | `string` | API version of the resource. Example: If the resource is an instance provided by Compute Engine v... |

### `WindowsApplication`

Contains information about a Windows application that is retrieved from the Windows Registry. For more information about these fields, see: https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The name of the application or product. |
| `displayVersion` | `string` | The version of the product or application in string format. |
| `helpLink` | `string` | The internet address for technical support. |
| `installDate` | `Date` | The last time this product received service. The value of this property is replaced each time a p... |
| `publisher` | `string` | The name of the manufacturer for the product or application. |

### `WindowsQuickFixEngineeringPackage`

Information related to a Quick Fix Engineering package. Fields are taken from Windows QuickFixEngineering Interface and match the source names: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering

| Property | Type | Description |
|----------|------|-------------|
| `caption` | `string` | A short textual description of the QFE update. |
| `description` | `string` | A textual description of the QFE update. |
| `hotFixId` | `string` | Unique identifier associated with a particular QFE update. |
| `installTime` | `string` | Date that the QFE update was installed. Mapped from installed_on field. |

### `WindowsUpdateCategory`

Categories specified by the Windows Update.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The identifier of the windows update category. |
| `name` | `string` | The name of the windows update category. |

### `WindowsUpdatePackage`

Details related to a Windows Update package. Field data and names are taken from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/windows/win32/api/_wua/ Descriptive fields like title, and description are localized based on the locale of the VM being updated.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<WindowsUpdateCategory>` | The categories that are associated with this update package. |
| `description` | `string` | The localized description of the update package. |
| `kbArticleIds` | `array<string>` | A collection of Microsoft Knowledge Base article IDs that are associated with the update package. |
| `lastDeploymentChangeTime` | `string` | The last published date of the update, in (UTC) date and time. |
| `moreInfoUrls` | `array<string>` | A collection of URLs that provide more information about the update package. |
| `revisionNumber` | `integer` | The revision number of this update package. |
| `supportUrl` | `string` | A hyperlink to the language-specific support information for the update. |
| `title` | `string` | The localized title of the update package. |
| `updateId` | `string` | Gets the identifier of an update package. Stays the same across revisions. |

### `ZypperPatch`

Details related to a Zypper Patch.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The category of the patch. |
| `patchName` | `string` | The name of the patch. |
| `severity` | `string` | The severity specified for this patch |
| `summary` | `string` | Any summary information provided about this patch. |

