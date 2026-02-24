# Web Security Scanner API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `websecurityscanner.projects.scanConfigs.list` | GET | `v1/{+parent}/scanConfigs` | Lists ScanConfigs under a given project. |
| `websecurityscanner.projects.scanConfigs.create` | POST | `v1/{+parent}/scanConfigs` | Creates a new ScanConfig. |
| `websecurityscanner.projects.scanConfigs.get` | GET | `v1/{+name}` | Gets a ScanConfig. |
| `websecurityscanner.projects.scanConfigs.patch` | PATCH | `v1/{+name}` | Updates a ScanConfig. This method support partial update of a ScanConfig. |
| `websecurityscanner.projects.scanConfigs.delete` | DELETE | `v1/{+name}` | Deletes an existing ScanConfig and its child resources. |
| `websecurityscanner.projects.scanConfigs.start` | POST | `v1/{+name}:start` | Start a ScanRun according to the given ScanConfig. |
| `websecurityscanner.projects.scanConfigs.scanRuns.stop` | POST | `v1/{+name}:stop` | Stops a ScanRun. The stopped ScanRun is returned. |
| `websecurityscanner.projects.scanConfigs.scanRuns.list` | GET | `v1/{+parent}/scanRuns` | Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time. |
| `websecurityscanner.projects.scanConfigs.scanRuns.get` | GET | `v1/{+name}` | Gets a ScanRun. |
| `websecurityscanner.projects.scanConfigs.scanRuns.findings.list` | GET | `v1/{+parent}/findings` | List Findings under a given ScanRun. |
| `websecurityscanner.projects.scanConfigs.scanRuns.findings.get` | GET | `v1/{+name}` | Gets a Finding. |
| `websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list` | GET | `v1/{+parent}/findingTypeStats` | List all FindingTypeStats under a given ScanRun. |
| `websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list` | GET | `v1/{+parent}/crawledUrls` | List CrawledUrls under a given ScanRun. |

### `websecurityscanner.projects.scanConfigs.list`

**GET** `v1/{+parent}/scanConfigs`

Lists ScanConfigs under a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which should be a project resource name in the format 'projects/{projectId}'. |
| `pageSize` | `integer` | query | No | The maximum number of ScanConfigs to return, can be limited by server. If not specified or not positive, the implemen... |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previo... |

**Response**: `ListScanConfigsResponse`

```typescript
const res = await websecurityscanner.scanConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.create`

**POST** `v1/{+parent}/scanConfigs`

Creates a new ScanConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name where the scan is created, which should be a project resource name in the format '... |

**Request body**: `ScanConfig`

**Response**: `ScanConfig`

```typescript
const res = await websecurityscanner.scanConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.get`

**GET** `v1/{+name}`

Gets a ScanConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ScanConfig to be returned. The name follows the format of 'projects/{projectId}/sc... |

**Response**: `ScanConfig`

```typescript
const res = await websecurityscanner.scanConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.patch`

**PATCH** `v1/{+name}`

Updates a ScanConfig. This method support partial update of a ScanConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the ScanConfig. The name follows the format of 'projects/{projectId}/scanConfigs/{sc... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `ScanConfig`

**Response**: `ScanConfig`

```typescript
const res = await websecurityscanner.scanConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.delete`

**DELETE** `v1/{+name}`

Deletes an existing ScanConfig and its child resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ScanConfig to be deleted. The name follows the format of 'projects/{projectId}/sca... |

**Response**: `Empty`

```typescript
const res = await websecurityscanner.scanConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.start`

**POST** `v1/{+name}:start`

Start a ScanRun according to the given ScanConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ScanConfig to be used. The name follows the format of 'projects/{projectId}/scanCo... |

**Request body**: `StartScanRunRequest`

**Response**: `ScanRun`

```typescript
const res = await websecurityscanner.scanConfigs.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.stop`

**POST** `v1/{+name}:stop`

Stops a ScanRun. The stopped ScanRun is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ScanRun to be stopped. The name follows the format of 'projects/{projectId}/scanCo... |

**Request body**: `StopScanRunRequest`

**Response**: `ScanRun`

```typescript
const res = await websecurityscanner.scanRuns.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.list`

**GET** `v1/{+parent}/scanRuns`

Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which should be a scan resource name in the format 'projects/{projectId}/scanConf... |
| `pageSize` | `integer` | query | No | The maximum number of ScanRuns to return, can be limited by server. If not specified or not positive, the implementat... |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previo... |

**Response**: `ListScanRunsResponse`

```typescript
const res = await websecurityscanner.scanRuns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.get`

**GET** `v1/{+name}`

Gets a ScanRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ScanRun to be returned. The name follows the format of 'projects/{projectId}/scanC... |

**Response**: `ScanRun`

```typescript
const res = await websecurityscanner.scanRuns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.findings.list`

**GET** `v1/{+parent}/findings`

List Findings under a given ScanRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scan... |
| `filter` | `string` | query | No | The filter expression. The expression must be in the format: . Supported field: 'finding_type'. Supported operator: '='. |
| `pageSize` | `integer` | query | No | The maximum number of Findings to return, can be limited by server. If not specified or not positive, the implementat... |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previo... |

**Response**: `ListFindingsResponse`

```typescript
const res = await websecurityscanner.findings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.findings.get`

**GET** `v1/{+name}`

Gets a Finding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Finding to be returned. The name follows the format of 'projects/{projectId}/scanC... |

**Response**: `Finding`

```typescript
const res = await websecurityscanner.findings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list`

**GET** `v1/{+parent}/findingTypeStats`

List all FindingTypeStats under a given ScanRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scan... |

**Response**: `ListFindingTypeStatsResponse`

```typescript
const res = await websecurityscanner.findingTypeStats.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list`

**GET** `v1/{+parent}/crawledUrls`

List CrawledUrls under a given ScanRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, which should be a scan run resource name in the format 'projects/{projectId}/scan... |
| `pageSize` | `integer` | query | No | The maximum number of CrawledUrls to return, can be limited by server. If not specified or not positive, the implemen... |
| `pageToken` | `string` | query | No | A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previo... |

**Response**: `ListCrawledUrlsResponse`

```typescript
const res = await websecurityscanner.crawledUrls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Authentication`

Scan authentication configuration.

| Property | Type | Description |
|----------|------|-------------|
| `customAccount` | `CustomAccount` | Authentication using a custom account. |
| `googleAccount` | `GoogleAccount` | Authentication using a Google account. |
| `iapCredential` | `IapCredential` | Authentication using Identity-Aware-Proxy (IAP). |

### `CrawledUrl`

A CrawledUrl resource represents a URL that was crawled during a ScanRun. Web Security Scanner Service crawls the web applications, following all links within the scope of sites, to find the URLs to test against.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Output only. The body of the request that was used to visit the URL. |
| `httpMethod` | `string` | Output only. The http method of the request that was used to visit the URL, in uppercase. |
| `url` | `string` | Output only. The URL that was crawled. |

### `CustomAccount`

Describes authentication configuration that uses a custom account.

| Property | Type | Description |
|----------|------|-------------|
| `loginUrl` | `string` | Required. The login form URL of the website. |
| `password` | `string` | Required. Input only. The password of the custom account. The credential is stored encrypted and ... |
| `username` | `string` | Required. The user name of the custom account. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Finding`

A Finding resource represents a vulnerability instance identified during a ScanRun.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Output only. The body of the request that triggered the vulnerability. |
| `description` | `string` | Output only. The description of the vulnerability. |
| `finalUrl` | `string` | Output only. The URL where the browser lands when the vulnerability is detected. |
| `findingType` | `string` | Output only. The type of the Finding. Detailed and up-to-date information on findings can be foun... |
| `form` | `Form` | Output only. An addon containing information reported for a vulnerability with an HTML form, if any. |
| `frameUrl` | `string` | Output only. If the vulnerability was originated from nested IFrame, the immediate parent IFrame ... |
| `fuzzedUrl` | `string` | Output only. The URL produced by the server-side fuzzer and used in the request that triggered th... |
| `httpMethod` | `string` | Output only. The http method of the request that triggered the vulnerability, in uppercase. |
| `name` | `string` | Output only. The resource name of the Finding. The name follows the format of 'projects/{projectI... |
| `outdatedLibrary` | `OutdatedLibrary` | Output only. An addon containing information about outdated libraries. |
| `reproductionUrl` | `string` | Output only. The URL containing human-readable payload that user can leverage to reproduce the vu... |
| `severity` | `string` | Output only. The severity level of the reported vulnerability. |
| `trackingId` | `string` | Output only. The tracking ID uniquely identifies a vulnerability instance across multiple ScanRuns. |
| `violatingResource` | `ViolatingResource` | Output only. An addon containing detailed information regarding any resource causing the vulnerab... |
| `vulnerableHeaders` | `VulnerableHeaders` | Output only. An addon containing information about vulnerable or missing HTTP headers. |
| `vulnerableParameters` | `VulnerableParameters` | Output only. An addon containing information about request parameters which were found to be vuln... |
| `xss` | `Xss` | Output only. An addon containing information reported for an XSS, if any. |
| `xxe` | `Xxe` | Output only. An addon containing information reported for an XXE, if any. |

### `FindingTypeStats`

A FindingTypeStats resource represents stats regarding a specific FindingType of Findings under a given ScanRun.

| Property | Type | Description |
|----------|------|-------------|
| `findingCount` | `integer` | Output only. The count of findings belonging to this finding type. |
| `findingType` | `string` | Output only. The finding type associated with the stats. |

### `Form`

! Information about a vulnerability with an HTML.

| Property | Type | Description |
|----------|------|-------------|
| `actionUri` | `string` | ! The URI where to send the form when it's submitted. |
| `fields` | `array<string>` | ! The names of form fields related to the vulnerability. |

### `GoogleAccount`

Describes authentication configuration that uses a Google account.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | Required. Input only. The password of the Google account. The credential is stored encrypted and ... |
| `username` | `string` | Required. The user name of the Google account. |

### `Header`

Describes a HTTP Header.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Header name. |
| `value` | `string` | Header value. |

### `IapCredential`

Describes authentication configuration for Identity-Aware-Proxy (IAP).

| Property | Type | Description |
|----------|------|-------------|
| `iapTestServiceAccountInfo` | `IapTestServiceAccountInfo` | Authentication configuration when Web-Security-Scanner service account is added in Identity-Aware... |

### `IapTestServiceAccountInfo`

Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.

| Property | Type | Description |
|----------|------|-------------|
| `targetAudienceClientId` | `string` | Required. Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP). |

### `ListCrawledUrlsResponse`

Response for the `ListCrawledUrls` method.

| Property | Type | Description |
|----------|------|-------------|
| `crawledUrls` | `array<CrawledUrl>` | The list of CrawledUrls returned. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListFindingTypeStatsResponse`

Response for the `ListFindingTypeStats` method.

| Property | Type | Description |
|----------|------|-------------|
| `findingTypeStats` | `array<FindingTypeStats>` | The list of FindingTypeStats returned. |

### `ListFindingsResponse`

Response for the `ListFindings` method.

| Property | Type | Description |
|----------|------|-------------|
| `findings` | `array<Finding>` | The list of Findings returned. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListScanConfigsResponse`

Response for the `ListScanConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `scanConfigs` | `array<ScanConfig>` | The list of ScanConfigs returned. |

### `ListScanRunsResponse`

Response for the `ListScanRuns` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `scanRuns` | `array<ScanRun>` | The list of ScanRuns returned. |

### `OutdatedLibrary`

Information reported for an outdated library.

| Property | Type | Description |
|----------|------|-------------|
| `learnMoreUrls` | `array<string>` | URLs to learn more information about the vulnerabilities in the library. |
| `libraryName` | `string` | The name of the outdated library. |
| `version` | `string` | The version number. |

### `ScanConfig`

A ScanConfig resource contains the configurations to launch a scan.

| Property | Type | Description |
|----------|------|-------------|
| `authentication` | `Authentication` | The authentication configuration. If specified, service will use the authentication configuration... |
| `blacklistPatterns` | `array<string>` | The excluded URL patterns as described in https://cloud.google.com/security-command-center/docs/h... |
| `displayName` | `string` | Required. The user provided display name of the ScanConfig. |
| `exportToSecurityCommandCenter` | `string` | Controls export of scan configurations and results to Security Command Center. |
| `ignoreHttpStatusErrors` | `boolean` | Whether to keep scanning even if most requests return HTTP error codes. |
| `latestRun` | `ScanRun` |  |
| `managedScan` | `boolean` | Whether the scan config is managed by Web Security Scanner, output only. |
| `maxQps` | `integer` | The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively. If the field is u... |
| `name` | `string` | Identifier. The resource name of the ScanConfig. The name follows the format of 'projects/{projec... |
| `riskLevel` | `string` | The risk level selected for the scan |
| `schedule` | `Schedule` | The schedule of the ScanConfig. |
| `startingUrls` | `array<string>` | Required. The starting URLs from which the scanner finds site pages. |
| `staticIpScan` | `boolean` | Whether the scan configuration has enabled static IP address scan feature. If enabled, the scanne... |
| `targetPlatforms` | `array<string>` | Set of Google Cloud platforms targeted by the scan. If empty, APP_ENGINE will be used as a default. |
| `userAgent` | `string` | The user agent used during scanning. |

### `ScanConfigError`

Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. Indicates the reason code for a configuration failure. |
| `fieldName` | `string` | Output only. Indicates the full name of the ScanConfig field that triggers this error, for exampl... |

### `ScanRun`

A ScanRun is a output-only resource representing an actual run of the scan. Next id: 12

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The time at which the ScanRun reached termination state - that the ScanRun is either... |
| `errorTrace` | `ScanRunErrorTrace` | Output only. If result_state is an ERROR, this field provides the primary reason for scan's termi... |
| `executionState` | `string` | Output only. The execution state of the ScanRun. |
| `hasVulnerabilities` | `boolean` | Output only. Whether the scan run has found any vulnerabilities. |
| `name` | `string` | Output only. The resource name of the ScanRun. The name follows the format of 'projects/{projectI... |
| `progressPercent` | `integer` | Output only. The percentage of total completion ranging from 0 to 100. If the scan is in queue, t... |
| `resultState` | `string` | Output only. The result state of the ScanRun. This field is only available after the execution st... |
| `startTime` | `string` | Output only. The time at which the ScanRun started. |
| `urlsCrawledCount` | `string` | Output only. The number of URLs crawled during this ScanRun. If the scan is in progress, the valu... |
| `urlsTestedCount` | `string` | Output only. The number of URLs tested during this ScanRun. If the scan is in progress, the value... |
| `warningTraces` | `array<ScanRunWarningTrace>` | Output only. A list of warnings, if such are encountered during this scan run. |

### `ScanRunErrorTrace`

Output only. Defines an error trace message for a ScanRun.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. Indicates the error reason code. |
| `mostCommonHttpErrorCode` | `integer` | Output only. If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HT... |
| `scanConfigError` | `ScanConfigError` | Output only. If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message enc... |

### `ScanRunWarningTrace`

Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. Indicates the warning code. |

### `Schedule`

Scan schedule configuration.

| Property | Type | Description |
|----------|------|-------------|
| `intervalDurationDays` | `integer` | Required. The duration of time between executions in days. |
| `scheduleTime` | `string` | A timestamp indicates when the next run will be scheduled. The value is refreshed by the server a... |

### `StartScanRunRequest`

Request for the `StartScanRun` method.

### `StopScanRunRequest`

Request for the `StopScanRun` method.

### `ViolatingResource`

Information regarding any resource causing the vulnerability such as JavaScript sources, image, audio files, etc.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The MIME type of this resource. |
| `resourceUrl` | `string` | URL of this violating resource. |

### `VulnerableHeaders`

Information about vulnerable or missing HTTP Headers.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `array<Header>` | List of vulnerable headers. |
| `missingHeaders` | `array<Header>` | List of missing headers. |

### `VulnerableParameters`

Information about vulnerable request parameters.

| Property | Type | Description |
|----------|------|-------------|
| `parameterNames` | `array<string>` | The vulnerable parameter names. |

### `Xss`

Information reported for an XSS.

| Property | Type | Description |
|----------|------|-------------|
| `attackVector` | `string` | The attack vector of the payload triggering this XSS. |
| `errorMessage` | `string` | An error message generated by a javascript breakage. |
| `stackTraces` | `array<string>` | Stack traces leading to the point where the XSS occurred. |
| `storedXssSeedingUrl` | `string` | The reproduction url for the seeding POST request of a Stored XSS. |

### `Xxe`

Information reported for an XXE.

| Property | Type | Description |
|----------|------|-------------|
| `payloadLocation` | `string` | Location within the request where the payload was placed. |
| `payloadValue` | `string` | The XML string that triggered the XXE vulnerability. Non-payload values might be redacted. |

