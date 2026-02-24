# Checks API - API Reference

**Version**: `v1alpha` | **Methods**: 15 | **Schemas**: 64

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `checks.accounts.apps.get` | GET | `v1alpha/{+name}` | Gets an app. |
| `checks.accounts.apps.list` | GET | `v1alpha/{+parent}/apps` | Lists the apps under the given account. |
| `checks.accounts.apps.operations.list` | GET | `v1alpha/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `checks.accounts.apps.operations.get` | GET | `v1alpha/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `checks.accounts.apps.operations.delete` | DELETE | `v1alpha/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `checks.accounts.apps.operations.cancel` | POST | `v1alpha/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `checks.accounts.apps.operations.wait` | POST | `v1alpha/{+name}:wait` | Waits until the specified long-running operation is done or reaches at most a specified timeout, ... |
| `checks.accounts.apps.reports.get` | GET | `v1alpha/{+name}` | Gets a report. By default, only the name and results_uri fields are returned. You can include oth... |
| `checks.accounts.apps.reports.list` | GET | `v1alpha/{+parent}/reports` | Lists reports for the specified app. By default, only the name and results_uri fields are returne... |
| `checks.accounts.repos.operations.get` | GET | `v1alpha/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `checks.accounts.repos.scans.generate` | POST | `v1alpha/{+parent}/scans:generate` | Uploads the results of local Code Compliance analysis and generates a scan of privacy issues. Ret... |
| `checks.accounts.repos.scans.get` | GET | `v1alpha/{+name}` | Gets a repo scan. By default, only the name and results_uri fields are returned. You can include ... |
| `checks.accounts.repos.scans.list` | GET | `v1alpha/{+parent}/scans` | Lists repo scans for the specified repo. |
| `checks.aisafety.classifyContent` | POST | `v1alpha/aisafety:classifyContent` | Analyze a piece of content with the provided set of policies. |
| `checks.media.upload` | POST | `v1alpha/{+parent}/reports:analyzeUpload` | Analyzes the uploaded app bundle and returns a google.longrunning.Operation containing the genera... |

### `checks.accounts.apps.get`

**GET** `v1alpha/{+name}`

Gets an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the app. Example: `accounts/123/apps/456` |

**Response**: `GoogleChecksAccountV1alphaApp`

```typescript
const res = await checks.apps.get({
  // parameters
});
```

---

### `checks.accounts.apps.list`

**GET** `v1alpha/{+parent}/apps`

Lists the apps under the given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent account. Example: `accounts/123` |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. The server may further constrain the maximum number of results ret... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous `ListApps` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleChecksAccountV1alphaListAppsResponse`

```typescript
const res = await checks.apps.list({
  // parameters
});
```

---

### `checks.accounts.apps.operations.list`

**GET** `v1alpha/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await checks.operations.list({
  // parameters
});
```

---

### `checks.accounts.apps.operations.get`

**GET** `v1alpha/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await checks.operations.get({
  // parameters
});
```

---

### `checks.accounts.apps.operations.delete`

**DELETE** `v1alpha/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await checks.operations.delete({
  // parameters
});
```

---

### `checks.accounts.apps.operations.cancel`

**POST** `v1alpha/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await checks.operations.cancel({
  // parameters
});
```

---

### `checks.accounts.apps.operations.wait`

**POST** `v1alpha/{+name}:wait`

Waits until the specified long-running operation is done or reaches at most a specified timeout, returning the latest state. If the operation is already done, the latest state is immediately returned. If the timeout specified is greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If the server does not support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return the latest state before the specified timeout (including immediately), meaning even an immediate response is no guarantee that the operation is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to wait on. |

**Request body**: `WaitOperationRequest`

**Response**: `Operation`

```typescript
const res = await checks.operations.wait({
  // parameters
});
```

---

### `checks.accounts.apps.reports.get`

**GET** `v1alpha/{+name}`

Gets a report. By default, only the name and results_uri fields are returned. You can include other fields by listing them in the `fields` URL query parameter. For example, `?fields=name,checks` will return the name and checks fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the report. Example: `accounts/123/apps/456/reports/789` |
| `checksFilter` | `string` | query | No | Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter checks within the report. Only checks that... |

**Response**: `GoogleChecksReportV1alphaReport`

```typescript
const res = await checks.reports.get({
  // parameters
});
```

---

### `checks.accounts.apps.reports.list`

**GET** `v1alpha/{+parent}/reports`

Lists reports for the specified app. By default, only the name and results_uri fields are returned. You can include other fields by listing them in the `fields` URL query parameter. For example, `?fields=reports(name,checks)` will return the name and checks fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the app. Example: `accounts/123/apps/456` |
| `checksFilter` | `string` | query | No | Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter checks within reports. Only checks that ma... |
| `filter` | `string` | query | No | Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter reports. Example: `appBundle.releaseType =... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of reports to return. If unspecified, at most 10 reports will be returned. The maximum v... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous `ListReports` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleChecksReportV1alphaListReportsResponse`

```typescript
const res = await checks.reports.list({
  // parameters
});
```

---

### `checks.accounts.repos.operations.get`

**GET** `v1alpha/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await checks.operations.get({
  // parameters
});
```

---

### `checks.accounts.repos.scans.generate`

**POST** `v1alpha/{+parent}/scans:generate`

Uploads the results of local Code Compliance analysis and generates a scan of privacy issues. Returns a google.longrunning.Operation containing analysis and findings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the repo. Example: `accounts/123/repos/456` |

**Request body**: `GoogleChecksRepoScanV1alphaGenerateScanRequest`

**Response**: `Operation`

```typescript
const res = await checks.scans.generate({
  // parameters
});
```

---

### `checks.accounts.repos.scans.get`

**GET** `v1alpha/{+name}`

Gets a repo scan. By default, only the name and results_uri fields are returned. You can include other fields by listing them in the `fields` URL query parameter. For example, `?fields=name,sources` will return the name and sources fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the repo scan. Example: `accounts/123/repos/456/scans/789` |

**Response**: `GoogleChecksRepoScanV1alphaRepoScan`

```typescript
const res = await checks.scans.get({
  // parameters
});
```

---

### `checks.accounts.repos.scans.list`

**GET** `v1alpha/{+parent}/scans`

Lists repo scans for the specified repo.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the repo. Example: `accounts/123/repos/456` |
| `filter` | `string` | query | No | Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter repo scans. Example: `scmMetadata.branch =... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of repo scans to return. If unspecified, at most 10 repo scans will be returned. The max... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous `ListRepoScans` call. Provide this to retrieve the subsequent page. W... |

**Response**: `GoogleChecksRepoScanV1alphaListRepoScansResponse`

```typescript
const res = await checks.scans.list({
  // parameters
});
```

---

### `checks.aisafety.classifyContent`

**POST** `v1alpha/aisafety:classifyContent`

Analyze a piece of content with the provided set of policies.

**Request body**: `GoogleChecksAisafetyV1alphaClassifyContentRequest`

**Response**: `GoogleChecksAisafetyV1alphaClassifyContentResponse`

```typescript
const res = await checks.aisafety.classifyContent({
  // parameters
});
```

---

### `checks.media.upload`

**POST** `v1alpha/{+parent}/reports:analyzeUpload`

Analyzes the uploaded app bundle and returns a google.longrunning.Operation containing the generated Report. ## Example (upload only) Send a regular POST request with the header `X-Goog-Upload-Protocol: raw`. ``` POST https://checks.googleapis.com/upload/v1alpha/{parent=accounts/*/apps/*}/reports:analyzeUpload HTTP/1.1 X-Goog-Upload-Protocol: raw Content-Length: Content-Type: application/octet-stream ``` ## Example (upload with metadata) Send a multipart POST request where the first body part contains the metadata JSON and the second body part contains the binary upload. Include the header `X-Goog-Upload-Protocol: multipart`. ``` POST https://checks.googleapis.com/upload/v1alpha/{parent=accounts/*/apps/*}/reports:analyzeUpload HTTP/1.1 X-Goog-Upload-Protocol: multipart Content-Length: ? Content-Type: multipart/related; boundary=BOUNDARY --BOUNDARY Content-Type: application/json {"code_reference_id":"db5bcc20f94055fb5bc08cbb9b0e7a5530308786"} --BOUNDARY --BOUNDARY-- ``` *Note:* Metadata-only requests are not supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the app. Example: `accounts/123/apps/456` |

**Request body**: `GoogleChecksReportV1alphaAnalyzeUploadRequest`

**Response**: `Operation`

```typescript
const res = await checks.media.upload({
  // parameters
});
```

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleChecksAccountV1alphaApp`

Represents an app in Checks.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the app. Example: `accounts/123/apps/456` |
| `title` | `string` | The app's title. |

### `GoogleChecksAccountV1alphaListAppsResponse`

The response message for AccountService.ListApps.

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<GoogleChecksAccountV1alphaApp>` | The apps. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |

### `GoogleChecksAisafetyV1alphaClassifyContentRequest`

Request proto for ClassifyContent RPC.

| Property | Type | Description |
|----------|------|-------------|
| `classifierVersion` | `string` | Optional. Version of the classifier to use. If not specified, the latest version will be used. |
| `context` | `GoogleChecksAisafetyV1alphaClassifyContentRequestContext` | Optional. Context about the input that will be used to help on the classification. |
| `input` | `GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent` | Required. Content to be classified. |
| `policies` | `array<GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig>` | Required. List of policies to classify against. |

### `GoogleChecksAisafetyV1alphaClassifyContentRequestContext`

Context about the input that will be used to help on the classification.

| Property | Type | Description |
|----------|------|-------------|
| `prompt` | `string` | Optional. Prompt that generated the model response. |

### `GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent`

Content to be classified.

| Property | Type | Description |
|----------|------|-------------|
| `textInput` | `GoogleChecksAisafetyV1alphaTextInput` | Content in text format. |

### `GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig`

List of policies to classify against.

| Property | Type | Description |
|----------|------|-------------|
| `policyType` | `string` | Required. Type of the policy. |
| `threshold` | `number` | Optional. Score threshold to use when deciding if the content is violative or non-violative. If n... |

### `GoogleChecksAisafetyV1alphaClassifyContentResponse`

Response proto for ClassifyContent RPC.

| Property | Type | Description |
|----------|------|-------------|
| `policyResults` | `array<GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult>` | Results of the classification for each policy. |

### `GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult`

Result for one policy against the corresponding input.

| Property | Type | Description |
|----------|------|-------------|
| `policyType` | `string` | Type of the policy. |
| `score` | `number` | Final score for the results of this policy. |
| `violationResult` | `string` | Result of the classification for the policy. |

### `GoogleChecksAisafetyV1alphaTextInput`

Text input to be classified.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Actual piece of text to be classified. |
| `languageCode` | `string` | Optional. Language of the text in ISO 639-1 format. If the language is invalid or not specified, ... |

### `GoogleChecksRepoScanV1alphaCliAnalysis`

The results of a Code Compliance CLI analysis.

| Property | Type | Description |
|----------|------|-------------|
| `codeScans` | `array<GoogleChecksRepoScanV1alphaCodeScan>` | Optional. Requested code scans resulting from preliminary CLI analysis. |
| `sources` | `array<GoogleChecksRepoScanV1alphaSource>` | Optional. Data sources detected in the scan. |

### `GoogleChecksRepoScanV1alphaCodeAttribution`

Source code attribution.

| Property | Type | Description |
|----------|------|-------------|
| `codeExcerpt` | `string` | Optional. Code excerpt where the source was detected along with surrounding code. |
| `lineNumber` | `integer` | Required. Line number (1-based). |
| `path` | `string` | Required. Path of the file. |
| `startLineNumber` | `integer` | Optional. Start line number of the code excerpt (1-based). |

### `GoogleChecksRepoScanV1alphaCodeScan`

A requested analysis of source code. Contains the source code and processing state.

| Property | Type | Description |
|----------|------|-------------|
| `dataTypeClassifications` | `array<GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification>` | Optional. Data type classification requests. |
| `sourceCode` | `GoogleChecksRepoScanV1alphaSourceCode` | Required. Source code to analyze. |

### `GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification`

A request to classify data types.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Required. Candidate data type. |
| `lineNumber` | `integer` | Required. Line number (1-based). |

### `GoogleChecksRepoScanV1alphaGenerateScanRequest`

The request message for RepoScanService.GenerateScan.

| Property | Type | Description |
|----------|------|-------------|
| `cliAnalysis` | `GoogleChecksRepoScanV1alphaCliAnalysis` | Required. CLI analysis results. |
| `cliVersion` | `string` | Required. CLI version. |
| `localScanPath` | `string` | Required. Local scan path. |
| `scmMetadata` | `GoogleChecksRepoScanV1alphaScmMetadata` | Required. SCM metadata. |

### `GoogleChecksRepoScanV1alphaListRepoScansResponse`

The response message for RepoScanService.ListRepoScans.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `repoScans` | `array<GoogleChecksRepoScanV1alphaRepoScan>` | The repo scans for the specified app. |

### `GoogleChecksRepoScanV1alphaPullRequest`

Pull request info.

| Property | Type | Description |
|----------|------|-------------|
| `baseBranch` | `string` | Required. For PR analysis, we compare against the most recent scan of the base branch to highligh... |
| `prNumber` | `string` | Required. This can be supplied by the user or parsed automatically from predefined CI environment... |

### `GoogleChecksRepoScanV1alphaRepoScan`

Repo scan.

| Property | Type | Description |
|----------|------|-------------|
| `cliVersion` | `string` | CLI version. |
| `localScanPath` | `string` | Local scan path. |
| `name` | `string` | Identifier. Resource name of the scan. |
| `resultsUri` | `string` | A URL to view results. |
| `scmMetadata` | `GoogleChecksRepoScanV1alphaScmMetadata` | SCM metadata. |
| `sources` | `array<GoogleChecksRepoScanV1alphaSource>` | Data sources detected. |

### `GoogleChecksRepoScanV1alphaScmMetadata`

SCM metadata.

| Property | Type | Description |
|----------|------|-------------|
| `branch` | `string` | Required. Branch name. |
| `pullRequest` | `GoogleChecksRepoScanV1alphaPullRequest` | Optional. Contains info about the associated pull request. This is only populated for pull reques... |
| `remoteUri` | `string` | Required. Git remote URL. |
| `revisionId` | `string` | Required. Revision ID, e.g. Git commit hash. |

### `GoogleChecksRepoScanV1alphaSource`

Represents a data source finding.

| Property | Type | Description |
|----------|------|-------------|
| `codeAttribution` | `GoogleChecksRepoScanV1alphaCodeAttribution` | Optional. Source code attribution for the finding. |
| `dataType` | `string` | Required. Data type. |
| `falsePositive` | `boolean` | Optional. Whether the finding was marked as a false positive. |

### `GoogleChecksRepoScanV1alphaSourceCode`

Contains source code from a repo.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. Source code. |
| `endLine` | `integer` | Required. End line number (1-based). |
| `path` | `string` | Required. Path of the file. |
| `startLine` | `integer` | Required. Start line number (1-based). |

### `GoogleChecksReportV1alphaAnalyzeUploadRequest`

The request message for ReportService.AnalyzeUpload.

| Property | Type | Description |
|----------|------|-------------|
| `appBinaryFileType` | `string` | Optional. The type of the uploaded app binary. If not provided, the server assumes APK file for A... |
| `codeReferenceId` | `string` | Optional. Git commit hash or changelist number associated with the upload. |

### `GoogleChecksReportV1alphaAppBundle`

Information about the analyzed app bundle.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | Unique id of the bundle. For example: "com.google.Gmail". |
| `codeReferenceId` | `string` | Git commit hash or changelist number associated with the release. |
| `releaseType` | `string` | Identifies the type of release. |
| `version` | `string` | The user-visible version of the bundle such as the Android `versionName` or iOS `CFBundleShortVer... |
| `versionId` | `string` | The version used throughout the operating system and store to identify the build such as the Andr... |

### `GoogleChecksReportV1alphaCheck`

A check that was run on your app.

| Property | Type | Description |
|----------|------|-------------|
| `citations` | `array<GoogleChecksReportV1alphaCheckCitation>` | Regulations and policies that serve as the legal basis for the check. |
| `evidence` | `GoogleChecksReportV1alphaCheckEvidence` | Evidence that substantiates the check result. |
| `regionCodes` | `array<string>` | Regions that are impacted by the check. For more info, see https://google.aip.dev/143#countries-a... |
| `severity` | `string` | The urgency or risk level of the check. |
| `state` | `string` | The result after running the check. |
| `stateMetadata` | `GoogleChecksReportV1alphaCheckStateMetadata` | Additional information about the check state in relation to past reports. |
| `type` | `string` | The type of check that was run. A type will only appear once in a report's list of checks. |

### `GoogleChecksReportV1alphaCheckCitation`

Regulation or policy that serves as the legal basis for the check.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Citation type. |

### `GoogleChecksReportV1alphaCheckDataSecurityEvidence`

Evidence concerning data security.

| Property | Type | Description |
|----------|------|-------------|
| `dataInTransitInfo` | `array<GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo>` | Evidence related to data in transit. |

### `GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo`

Evidence related to data in transit detected in your app.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | The URL contacted by your app. This includes the protocol, domain, and URL parameters. |

### `GoogleChecksReportV1alphaCheckDataTypeEvidence`

Evidence concerning a data type that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | The data type that was found in your app. |
| `dataTypeEvidence` | `GoogleChecksReportV1alphaDataTypeEvidence` | Evidence collected about the data type. |

### `GoogleChecksReportV1alphaCheckEndpointEvidence`

Evidence concerning an endpoint that was contacted by your app.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `GoogleChecksReportV1alphaEndpoint` | The endpoint that was contacted by your app. |

### `GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence`

Evidence collected from endpoint restriction violation analysis.

| Property | Type | Description |
|----------|------|-------------|
| `endpointDetails` | `array<GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails>` | Endpoints in violation. |

### `GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails`

Details of the endpoint in violation.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `GoogleChecksReportV1alphaEndpoint` | The endpoint in violation. |

### `GoogleChecksReportV1alphaCheckEvidence`

Evidence for a check.

| Property | Type | Description |
|----------|------|-------------|
| `dataSecurity` | `GoogleChecksReportV1alphaCheckDataSecurityEvidence` | Evidence concerning data security. |
| `dataTypes` | `array<GoogleChecksReportV1alphaCheckDataTypeEvidence>` | Evidence concerning data types found in your app. |
| `endpointRestrictionViolations` | `array<GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence>` | Evidence collected from endpoint restriction violation analysis. |
| `endpoints` | `array<GoogleChecksReportV1alphaCheckEndpointEvidence>` | Evidence concerning endpoints that were contacted by your app. |
| `permissionRestrictionViolations` | `array<GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence>` | Evidence collected from permission restriction violation analysis. |
| `permissions` | `array<GoogleChecksReportV1alphaCheckPermissionEvidence>` | Evidence concerning permissions that were found in your app. |
| `privacyPolicyTexts` | `array<GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence>` | Evidence collected from your privacy policy(s). |
| `sdkIssues` | `array<GoogleChecksReportV1alphaCheckSdkIssueEvidence>` | Evidence concerning SDK issues. |
| `sdkRestrictionViolations` | `array<GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence>` | Evidence collected from SDK restriction violation analysis. |
| `sdks` | `array<GoogleChecksReportV1alphaCheckSdkEvidence>` | Evidence concerning SDKs that were found in your app. |

### `GoogleChecksReportV1alphaCheckPermissionEvidence`

Evidence concerning a permission that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `GoogleChecksReportV1alphaPermission` | The permission that was found in your app. |

### `GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence`

Evidence collected from permission restriction violation analysis.

| Property | Type | Description |
|----------|------|-------------|
| `permissionDetails` | `array<GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails>` | Permissions in violation. |

### `GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails`

Details of the permission in violation.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `GoogleChecksReportV1alphaPermission` | The permission in violation. |

### `GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence`

Evidence collected from your privacy policy(s).

| Property | Type | Description |
|----------|------|-------------|
| `policyFragment` | `GoogleChecksReportV1alphaPolicyFragment` | The privacy policy fragment that was used during the check. |

### `GoogleChecksReportV1alphaCheckSdkEvidence`

Evidence conerning an SDK that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `sdk` | `GoogleChecksReportV1alphaSdk` | The SDK that was found in your app. |

### `GoogleChecksReportV1alphaCheckSdkIssueEvidence`

Evidence concerning an SDK issue.

| Property | Type | Description |
|----------|------|-------------|
| `sdk` | `GoogleChecksReportV1alphaSdk` | The SDK with an issue. |
| `sdkVersion` | `string` | The SDK version. |

### `GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence`

Evidence collected from SDK restriction violation analysis.

| Property | Type | Description |
|----------|------|-------------|
| `sdkDetails` | `array<GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails>` | SDKs in violation. |

### `GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails`

Details of the SDK in violation.

| Property | Type | Description |
|----------|------|-------------|
| `sdk` | `GoogleChecksReportV1alphaSdk` | The SDK in violation. |

### `GoogleChecksReportV1alphaCheckStateMetadata`

Additional information about the check state in relation to past reports.

| Property | Type | Description |
|----------|------|-------------|
| `badges` | `array<string>` | Indicators related to the check state. |
| `firstFailingTime` | `string` | The time when the check first started failing. |
| `lastFailingTime` | `string` | The last time the check failed. |

### `GoogleChecksReportV1alphaDataMonitoring`

Represents the data monitoring section of the report.

| Property | Type | Description |
|----------|------|-------------|
| `dataTypes` | `array<GoogleChecksReportV1alphaDataMonitoringDataTypeResult>` | Data types that your app shares or collects. |
| `endpoints` | `array<GoogleChecksReportV1alphaDataMonitoringEndpointResult>` | Endpoints that were found by dynamic analysis of your app. |
| `permissions` | `array<GoogleChecksReportV1alphaDataMonitoringPermissionResult>` | Permissions that your app uses. |
| `sdks` | `array<GoogleChecksReportV1alphaDataMonitoringSdkResult>` | SDKs that your app uses. |

### `GoogleChecksReportV1alphaDataMonitoringDataTypeResult`

Information about a data type that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | The data type that was shared or collected by your app. |
| `dataTypeEvidence` | `GoogleChecksReportV1alphaDataTypeEvidence` | Evidence collected about the data type. |
| `metadata` | `GoogleChecksReportV1alphaDataMonitoringResultMetadata` | Metadata about the result. |

### `GoogleChecksReportV1alphaDataMonitoringEndpointResult`

Information about an endpoint that was contacted by your app.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `GoogleChecksReportV1alphaEndpoint` | The endpoint that was contacted by your app. |
| `hitCount` | `integer` | The number of times this endpoint was contacted by your app. |
| `metadata` | `GoogleChecksReportV1alphaDataMonitoringResultMetadata` | Metadata about the result. |

### `GoogleChecksReportV1alphaDataMonitoringPermissionResult`

Information about a permission that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `GoogleChecksReportV1alphaDataMonitoringResultMetadata` | Metadata about the result. |
| `permission` | `GoogleChecksReportV1alphaPermission` | The permission that was found in your app. |

### `GoogleChecksReportV1alphaDataMonitoringResultMetadata`

Information about a data monitoring result.

| Property | Type | Description |
|----------|------|-------------|
| `badges` | `array<string>` | Badges that apply to this result. |
| `firstDetectedTime` | `string` | The timestamp when this result was first detected within the last 8 weeks. If not set, it wasn't ... |
| `lastDetectedAppVersion` | `string` | Your app's version name when this result was last detected within the last 8 weeks. If not set, i... |
| `lastDetectedTime` | `string` | The timestamp when this result was last detected within the last 8 weeks. If not set, it wasn't d... |

### `GoogleChecksReportV1alphaDataMonitoringSdkResult`

Information about an SDK that was found in your app.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `GoogleChecksReportV1alphaDataMonitoringResultMetadata` | Metadata about the result. |
| `sdk` | `GoogleChecksReportV1alphaSdk` | The SDK that was found in your app. |

### `GoogleChecksReportV1alphaDataTypeEndpointEvidence`

Evidence based on an endpoint that data was sent to.

| Property | Type | Description |
|----------|------|-------------|
| `attributedSdks` | `array<GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk>` | Set of SDKs that are attributed to the exfiltration. |
| `endpointDetails` | `array<GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails>` | Endpoints the data type was sent to. |
| `exfiltratedDataType` | `string` | Type of data that was exfiltrated. |

### `GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk`

Details of SDK that is attributed to the exfiltration.

| Property | Type | Description |
|----------|------|-------------|
| `sdk` | `GoogleChecksReportV1alphaSdk` | SDK that is attributed to the exfiltration. |

### `GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails`

Details of the endpoint the data type was sent to.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `GoogleChecksReportV1alphaEndpoint` | Endpoint the data type was sent to. |

### `GoogleChecksReportV1alphaDataTypeEvidence`

Evidence collected about a data type.

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<GoogleChecksReportV1alphaDataTypeEndpointEvidence>` | List of endpoints the data type was sent to. |
| `permissions` | `array<GoogleChecksReportV1alphaDataTypePermissionEvidence>` | List of included permissions that imply collection of the data type. |
| `privacyPolicyTexts` | `array<GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence>` | List of privacy policy texts that imply collection of the data type. |

### `GoogleChecksReportV1alphaDataTypePermissionEvidence`

Evidence based on the inclusion of a permission.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `GoogleChecksReportV1alphaPermission` | Permission declared by your app. |

### `GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence`

Evidence based on information from the privacy policy.

| Property | Type | Description |
|----------|------|-------------|
| `policyFragment` | `GoogleChecksReportV1alphaPolicyFragment` | The privacy policy fragment that implies collection of the data type. |

### `GoogleChecksReportV1alphaEndpoint`

Information about an endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain name (e.g. ads.google.com). |

### `GoogleChecksReportV1alphaListReportsResponse`

The response message for ReportService.ListReports.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `reports` | `array<GoogleChecksReportV1alphaReport>` | The reports for the specified app. |

### `GoogleChecksReportV1alphaPermission`

Information about a permission.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Permission identifier. |

### `GoogleChecksReportV1alphaPolicyFragment`

Information about a policy fragment.

| Property | Type | Description |
|----------|------|-------------|
| `htmlContent` | `string` | HTML content. |
| `sourceUri` | `string` | Policy URL. |

### `GoogleChecksReportV1alphaReport`

Privacy report.

| Property | Type | Description |
|----------|------|-------------|
| `appBundle` | `GoogleChecksReportV1alphaAppBundle` | Information about the analyzed app bundle. |
| `checks` | `array<GoogleChecksReportV1alphaCheck>` | List of checks that were run on the app bundle. |
| `dataMonitoring` | `GoogleChecksReportV1alphaDataMonitoring` | Information related to data monitoring. |
| `name` | `string` | Resource name of the report. |
| `resultsUri` | `string` | A URL to view results. |

### `GoogleChecksReportV1alphaSdk`

Information about an SDK.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | SDK identifier. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `WaitOperationRequest`

The request message for Operations.WaitOperation.

| Property | Type | Description |
|----------|------|-------------|
| `timeout` | `string` | The maximum duration to wait before timing out. If left blank, the wait will be at most the time ... |

