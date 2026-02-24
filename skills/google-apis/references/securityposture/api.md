# Security Posture API - API Reference

**Version**: `v1` | **Methods**: 23 | **Schemas**: 44

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `securityposture.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `securityposture.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `securityposture.organizations.locations.postureDeployments.create` | POST | `v1/{+parent}/postureDeployments` | Creates a new PostureDeployment in a given project and location. |
| `securityposture.organizations.locations.postureDeployments.delete` | DELETE | `v1/{+name}` | Deletes a PostureDeployment. |
| `securityposture.organizations.locations.postureDeployments.patch` | PATCH | `v1/{+name}` | Updates an existing PostureDeployment. To prevent concurrent updates from overwriting each other,... |
| `securityposture.organizations.locations.postureDeployments.get` | GET | `v1/{+name}` | Gets details for a PostureDeployment. |
| `securityposture.organizations.locations.postureDeployments.list` | GET | `v1/{+parent}/postureDeployments` | Lists every PostureDeployment in a project and location. |
| `securityposture.organizations.locations.postures.patch` | PATCH | `v1/{+name}` | Updates a revision of an existing Posture. If the posture revision that you update is currently d... |
| `securityposture.organizations.locations.postures.delete` | DELETE | `v1/{+name}` | Deletes all revisions of a Posture. You can only delete a posture if none of its revisions are de... |
| `securityposture.organizations.locations.postures.list` | GET | `v1/{+parent}/postures` | Lists the most recent revisions of all Posture resources in a specified organization and location. |
| `securityposture.organizations.locations.postures.get` | GET | `v1/{+name}` | Gets a single revision of a Posture. |
| `securityposture.organizations.locations.postures.create` | POST | `v1/{+parent}/postures` | Creates a new Posture. |
| `securityposture.organizations.locations.postures.extract` | POST | `v1/{+parent}/postures:extract` | Extracts existing policies from an organization, folder, or project, and applies them to another ... |
| `securityposture.organizations.locations.postures.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists all revisions of a single Posture. |
| `securityposture.organizations.locations.postureTemplates.list` | GET | `v1/{+parent}/postureTemplates` | Lists every PostureTemplate in a given organization and location. |
| `securityposture.organizations.locations.postureTemplates.get` | GET | `v1/{+name}` | Gets a single revision of a PostureTemplate. |
| `securityposture.organizations.locations.reports.list` | GET | `v1/{+parent}/reports` | Lists every Report in a given organization and location. |
| `securityposture.organizations.locations.reports.createIaCValidationReport` | POST | `v1/{+parent}/reports:createIaCValidationReport` | Validates a specified infrastructure-as-code (IaC) configuration, and creates a Report with the v... |
| `securityposture.organizations.locations.reports.get` | GET | `v1/{+name}` | Gets details for a Report. |
| `securityposture.organizations.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `securityposture.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `securityposture.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `securityposture.organizations.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `securityposture.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await securityposture.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await securityposture.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureDeployments.create`

**POST** `v1/{+parent}/postureDeployments`

Creates a new PostureDeployment in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `postureDeploymentId` | `string` | query | No | Required. An identifier for the posture deployment. |

**Request body**: `PostureDeployment`

**Response**: `Operation`

```typescript
const res = await securityposture.postureDeployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureDeployments.delete`

**DELETE** `v1/{+name}`

Deletes a PostureDeployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the posture deployment, in the format `organizations/{organization}/locations/global/postureDep... |
| `etag` | `string` | query | No | Optional. An opaque identifier for the current version of the posture deployment. If you provide this value, then it ... |

**Response**: `Operation`

```typescript
const res = await securityposture.postureDeployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureDeployments.patch`

**PATCH** `v1/{+name}`

Updates an existing PostureDeployment. To prevent concurrent updates from overwriting each other, always follow the read-modify-write pattern when you update a posture deployment: 1. Call GetPostureDeployment to get the current version of the deployment. 2. Update the fields in the deployment as needed. 3. Call UpdatePostureDeployment to update the deployment. Ensure that your request includes the `etag` value from the GetPostureDeployment response. **Important:** If you omit the `etag` when you call UpdatePostureDeployment, then the updated deployment unconditionally overwrites the existing deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the posture deployment, in the format `organizations/{organization}/locations/globa... |
| `updateMask` | `string` | query | No | Required. The fields in the PostureDeployment to update. You can update only the following fields: * PostureDeploymen... |

**Request body**: `PostureDeployment`

**Response**: `Operation`

```typescript
const res = await securityposture.postureDeployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureDeployments.get`

**GET** `v1/{+name}`

Gets details for a PostureDeployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the PostureDeployment, in the format `organizations/{organization}/locations/global/postureDepl... |

**Response**: `PostureDeployment`

```typescript
const res = await securityposture.postureDeployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureDeployments.list`

**GET** `v1/{+parent}/postureDeployments`

Lists every PostureDeployment in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `filter` | `string` | query | No | Optional. A filter to apply to the list of postures, in the format defined in [AIP-160: Filtering](https://google.aip... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of posture deployments to return. The default value is `500`. If you exceed the maximum ... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous request to list posture deployments. Provide this token to retr... |

**Response**: `ListPostureDeploymentsResponse`

```typescript
const res = await securityposture.postureDeployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.patch`

**PATCH** `v1/{+name}`

Updates a revision of an existing Posture. If the posture revision that you update is currently deployed, then a new revision of the posture is created. To prevent concurrent updates from overwriting each other, always follow the read-modify-write pattern when you update a posture: 1. Call GetPosture to get the current version of the posture. 2. Update the fields in the posture as needed. 3. Call UpdatePosture to update the posture. Ensure that your request includes the `etag` value from the GetPosture response. **Important:** If you omit the `etag` when you call UpdatePosture, then the updated posture unconditionally overwrites the existing posture.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the posture, in the format `organizations/{organization}/locations/global/postures/... |
| `revisionId` | `string` | query | No | Required. The revision ID of the posture to update. If the posture revision that you update is currently deployed, th... |
| `updateMask` | `string` | query | No | Required. The fields in the Posture to update. You can update only the following fields: * Posture.description * Post... |

**Request body**: `Posture`

**Response**: `Operation`

```typescript
const res = await securityposture.postures.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.delete`

**DELETE** `v1/{+name}`

Deletes all revisions of a Posture. You can only delete a posture if none of its revisions are deployed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Posture, in the format `organizations/{organization}/locations/global/postures/{posture_id}`. |
| `etag` | `string` | query | No | Optional. An opaque identifier for the current version of the posture. If you provide this value, then it must match ... |

**Response**: `Operation`

```typescript
const res = await securityposture.postures.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.list`

**GET** `v1/{+parent}/postures`

Lists the most recent revisions of all Posture resources in a specified organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `filter` | `string` | query | No | Optional. A filter to apply to the list of postures, in the format defined in [AIP-160: Filtering](https://google.aip... |
| `pageSize` | `integer` | query | No | The maximum number of postures to return. The default value is `500`. If you exceed the maximum value of `1000`, then... |
| `pageToken` | `string` | query | No | A pagination token returned from a previous request to list postures. Provide this token to retrieve the next page of... |

**Response**: `ListPosturesResponse`

```typescript
const res = await securityposture.postures.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.get`

**GET** `v1/{+name}`

Gets a single revision of a Posture.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Posture, in the format `organizations/{organization}/locations/global/postures/{posture_id}`. |
| `revisionId` | `string` | query | No | Optional. The posture revision to retrieve. If not specified, the most recently updated revision is retrieved. |

**Response**: `Posture`

```typescript
const res = await securityposture.postures.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.create`

**POST** `v1/{+parent}/postures`

Creates a new Posture.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `postureId` | `string` | query | No | Required. An identifier for the posture. |

**Request body**: `Posture`

**Response**: `Operation`

```typescript
const res = await securityposture.postures.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.extract`

**POST** `v1/{+parent}/postures:extract`

Extracts existing policies from an organization, folder, or project, and applies them to another organization, folder, or project as a Posture. If the other organization, folder, or project already has a posture, then the result of the long-running operation is an ALREADY_EXISTS error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |

**Request body**: `ExtractPostureRequest`

**Response**: `Operation`

```typescript
const res = await securityposture.postures.extract({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postures.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists all revisions of a single Posture.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Posture, in the format `organizations/{organization}/locations/global/postures/{posture_id}`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of posture revisions to return. The default value is `500`. If you exceed the maximum va... |
| `pageToken` | `string` | query | No | Optional. A pagination token from a previous request to list posture revisions. Provide this token to retrieve the ne... |

**Response**: `ListPostureRevisionsResponse`

```typescript
const res = await securityposture.postures.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureTemplates.list`

**GET** `v1/{+parent}/postureTemplates`

Lists every PostureTemplate in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `filter` | `string` | query | No | Optional. A filter to apply to the list of postures, in the format defined in [AIP-160: Filtering](https://google.aip... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of posture templates to return. The default value is `500`. If you exceed the maximum va... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous request to list posture templates. Provide this token to retrie... |

**Response**: `ListPostureTemplatesResponse`

```typescript
const res = await securityposture.postureTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.postureTemplates.get`

**GET** `v1/{+name}`

Gets a single revision of a PostureTemplate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the PostureTemplate, in the format `organizations/{organization}/locations/global/postureTempla... |
| `revisionId` | `string` | query | No | Optional. The posture template revision to retrieve. If not specified, the most recently updated revision is retrieved. |

**Response**: `PostureTemplate`

```typescript
const res = await securityposture.postureTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.reports.list`

**GET** `v1/{+parent}/reports`

Lists every Report in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |
| `filter` | `string` | query | No | Optional. A filter to apply to the list of reports, in the format defined in [AIP-160: Filtering](https://google.aip.... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of reports to return. The default value is `500`. If you exceed the maximum value of `10... |
| `pageToken` | `string` | query | No | Optional. A pagination token returned from a previous request to list reports. Provide this token to retrieve the nex... |

**Response**: `ListReportsResponse`

```typescript
const res = await securityposture.reports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.reports.createIaCValidationReport`

**POST** `v1/{+parent}/reports:createIaCValidationReport`

Validates a specified infrastructure-as-code (IaC) configuration, and creates a Report with the validation results. Only Terraform configurations are supported. Only modified assets are validated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, in the format `organizations/{organization}/locations/global`. |

**Request body**: `CreateIaCValidationReportRequest`

**Response**: `Operation`

```typescript
const res = await securityposture.reports.createIaCValidationReport({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.reports.get`

**GET** `v1/{+name}`

Gets details for a Report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the report, in the format `organizations/{organization}/locations/global/reports/{report_id}`. |

**Response**: `Report`

```typescript
const res = await securityposture.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await securityposture.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await securityposture.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.operations.list`

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

**Response**: `ListOperationsResponse`

```typescript
const res = await securityposture.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securityposture.organizations.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await securityposture.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AssetDetails`

Details of a Cloud Asset Inventory asset that caused a violation.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Information about the Cloud Asset Inventory asset that violated a policy. The format of this info... |
| `assetType` | `string` | The type of Cloud Asset Inventory asset. For a list of asset types, see [Supported asset types](h... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ComplianceStandard`

Information about a compliance standard that the policy helps enforce.

| Property | Type | Description |
|----------|------|-------------|
| `control` | `string` | Optional. The control in the compliance standard that the policy helps enforce. For example, `AC-3`. |
| `standard` | `string` | Optional. The compliance standard that the policy helps enforce. For example, `NIST SP 800-53`. |

### `Constraint`

Metadata for a constraint in a Policy.

| Property | Type | Description |
|----------|------|-------------|
| `orgPolicyConstraint` | `OrgPolicyConstraint` | Optional. A predefined organization policy constraint. |
| `orgPolicyConstraintCustom` | `OrgPolicyConstraintCustom` | Optional. A custom organization policy constraint. |
| `securityHealthAnalyticsCustomModule` | `SecurityHealthAnalyticsCustomModule` | Optional. A custom module for Security Health Analytics. |
| `securityHealthAnalyticsModule` | `SecurityHealthAnalyticsModule` | Optional. A built-in detector for Security Health Analytics. |

### `CreateIaCValidationReportRequest`

Request message for CreateIaCValidationReport.

| Property | Type | Description |
|----------|------|-------------|
| `iac` | `IaC` | Required. The infrastructure-as-code (IaC) configuration to validate. |

### `CustomConfig`

A custom module configuration for Security Health Analytics. Use `CustomConfig` to create custom detectors that generate custom findings for resources that you specify.

| Property | Type | Description |
|----------|------|-------------|
| `customOutput` | `CustomOutputSpec` | Optional. Definitions of custom source properties to include in findings. |
| `description` | `string` | Optional. A description of the vulnerability or misconfiguration that the custom module detects. ... |
| `predicate` | `Expr` | Required. The Common Expression Language (CEL) expression to evaluate. When the expression evalua... |
| `recommendation` | `string` | Required. An explanation of the steps that security teams can take to resolve the detected issue.... |
| `resourceSelector` | `ResourceSelector` | Required. The resource types that the custom module operates on. |
| `severity` | `string` | Required. The severity of findings generated by the custom module. |

### `CustomOutputSpec`

Definitions of custom source properties that can appear in findings.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<Property>` | Optional. The custom source properties that can appear in findings. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExtractPostureRequest`

Request message for ExtractPosture.

| Property | Type | Description |
|----------|------|-------------|
| `postureId` | `string` | Required. An identifier for the posture. |
| `workload` | `string` | Required. The organization, folder, or project from which policies are extracted. Must be within ... |

### `GoogleCloudSecuritypostureV1CustomConstraint`

A custom, user-defined constraint. You can apply the constraint only to the resource types specified in the constraint, and only within the organization where the constraint is defined. _When you create a custom constraint, it is not enforced automatically._ You must use an organization policy to [enforce the constraint](https://cloud.google.com/resource-manager/help/organization-policy/constraints/enforce).

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Whether to allow or deny the action. |
| `condition` | `string` | A Common Expression Language (CEL) condition expression that must evaluate to `true` for the cons... |
| `description` | `string` | A description of the constraint. The maximum length is 2000 characters. |
| `displayName` | `string` | A display name for the constraint. The maximum length is 200 characters. |
| `methodTypes` | `array<string>` | The types of operations that the constraint applies to. |
| `name` | `string` | Immutable. The name of the constraint, in the format `organizations/{organization_id}/customConst... |
| `resourceTypes` | `array<string>` | Immutable. The resource type that the constraint applies to, in the format `{canonical_service_na... |
| `updateTime` | `string` | Output only. The last time at which the constraint was updated or created. |

### `GoogleCloudSecuritypostureV1PolicyRule`

A rule that defines the allowed and denied values for an organization policy constraint.

| Property | Type | Description |
|----------|------|-------------|
| `allowAll` | `boolean` | Whether to allow any value for a list constraint. Valid only for list constraints. |
| `condition` | `Expr` | A condition that determines whether this rule is used to evaluate the policy. When set, the googl... |
| `denyAll` | `boolean` | Whether to deny all values for a list constraint. Valid only for list constraints. |
| `enforce` | `boolean` | Whether to enforce the constraint. Valid only for boolean constraints. |
| `parameters` | `object` | Optional. Required for managed constraints if parameters are defined. Passes parameter values whe... |
| `resourceTypes` | `ResourceTypes` | Optional. The resource types policies can support, only used for managed constraints. Method type... |
| `values` | `GoogleCloudSecuritypostureV1PolicyRuleStringValues` | The allowed and denied values for a list constraint. Valid only for list constraints. |

### `GoogleCloudSecuritypostureV1PolicyRuleStringValues`

The allowed and denied values for a list constraint. For all constraints, these fields can contain literal values. Optionally, you can add the `is:` prefix to these values. If the value contains a colon (`:`), then the `is:` prefix is required. Some constraints allow you to specify a portion of the resource hierarchy, known as a [_hierarchy subtree_](https://cloud.google.com/resource-manager/help/organization-policy/hierarchy-subtree), that the constraint applies to. To specify a hierarchy subtree, use the `under:` prefix, followed by a value with one of these formats: - `projects/{project_id}` (for example, `projects/tokyo-rain-123`) - `folders/{folder_id}` (for example, `folders/1234567890123`) - `organizations/{organization_id}` (for example, `organizations/123456789012`) A constraint's `supports_under` field indicates whether you can specify a hierarchy subtree. To learn which predefined constraints let you specify a hierarchy subtree, see the [constraints reference](https://cloud.google.com/resource-manager/help/organization-policy/constraints/reference).

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | The allowed values for the constraint. |
| `deniedValues` | `array<string>` | The denied values for the constraint. |

### `IaC`

Details of an infrastructure-as-code (IaC) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `tfPlan` | `string` | Optional. A Terraform plan file, formatted as a stringified JSON object. To learn how to generate... |

### `IaCValidationReport`

Details of an infrastructure-as-code (IaC) validation report.

| Property | Type | Description |
|----------|------|-------------|
| `note` | `string` | Additional information about the report. |
| `violations` | `array<Violation>` | A list of every Violation found in the IaC configuration. |

### `IacValidationFailureCriteria`

Represents the criteria for considering an IaC validation as a failure.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the resource was created. |
| `etag` | `string` | Optional. The etag for optimistic concurrency. |
| `name` | `string` | Identifier. The resource name of the IacValidationFailureCriteria. Format: organizations/{organiz... |
| `severityCountThresholds` | `array<SeverityCountThreshold>` | Optional. A list of severity thresholds. An IaC validation fails if any threshold is exceeded. |
| `updateTime` | `string` | Output only. The time at which the resource was last updated. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPostureDeploymentsResponse`

Response message for ListPostureDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token. To retrieve the next page of results, call the method again with this token. |
| `postureDeployments` | `array<PostureDeployment>` | The list of PostureDeployment resources. |
| `unreachable` | `array<string>` | Locations that were temporarily unavailable and could not be reached. |

### `ListPostureRevisionsResponse`

Response message for ListPostureRevisions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token. To retrieve the next page of results, call the method again with this token. |
| `revisions` | `array<Posture>` | The list of revisions for the Posture. |

### `ListPostureTemplatesResponse`

Response message for ListPostureTemplates.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token. To retrieve the next page of results, call the method again with this token. |
| `postureTemplates` | `array<PostureTemplate>` | The list of PostureTemplate resources. |

### `ListPosturesResponse`

Response message for ListPostures.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token. To retrieve the next page of results, call the method again with this token. |
| `postures` | `array<Posture>` | The list of Posture resources. |
| `unreachable` | `array<string>` | Locations that were temporarily unavailable and could not be reached. |

### `ListReportsResponse`

Response message for ListReports.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A pagination token. To retrieve the next page of results, call the method again with this token. |
| `reports` | `array<Report>` | The list of Report resources. |
| `unreachable` | `array<string>` | Locations that were temporarily unavailable and could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

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

Metadata for an Operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. The API version used to start the operation. |
| `createTime` | `string` | Output only. The time at which the operation was created. |
| `endTime` | `string` | Output only. The time at which the operation finished running. |
| `errorMessage` | `string` | Output only. An error message. Returned when a PostureDeployment enters a failure state like UPDA... |
| `requestedCancellation` | `boolean` | Output only. Whether a request to cancel the operation has been received. For operations that hav... |
| `statusMessage` | `string` | Output only. The status of the operation, if any. |
| `target` | `string` | Output only. The server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. The name of the action executed by the operation. |

### `OrgPolicyConstraint`

A predefined organization policy constraint.

| Property | Type | Description |
|----------|------|-------------|
| `cannedConstraintId` | `string` | Required. A unique identifier for the constraint. |
| `policyRules` | `array<GoogleCloudSecuritypostureV1PolicyRule>` | Required. The rules enforced by the constraint. |

### `OrgPolicyConstraintCustom`

A custom organization policy constraint.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraint` | `GoogleCloudSecuritypostureV1CustomConstraint` | Required. Metadata for the constraint. |
| `policyRules` | `array<GoogleCloudSecuritypostureV1PolicyRule>` | Required. The rules enforced by the constraint. |

### `Policy`

The details of a policy, including the constraints that it includes.

| Property | Type | Description |
|----------|------|-------------|
| `complianceStandards` | `array<ComplianceStandard>` | Optional. The compliance standards that the policy helps enforce. |
| `constraint` | `Constraint` | Required. The constraints that the policy includes. |
| `description` | `string` | Optional. A description of the policy. |
| `policyId` | `string` | Required. A user-specified identifier for the policy. In a PolicySet, each policy must have a uni... |

### `PolicyDetails`

Details of a policy that was violated.

| Property | Type | Description |
|----------|------|-------------|
| `complianceStandards` | `array<string>` | The compliance standards that the policy maps to. For example, `CIS-2.0 1.15`. |
| `constraint` | `string` | Information about the constraint that was violated. The format of this information can change at ... |
| `constraintType` | `string` | The type of constraint that was violated. |
| `description` | `string` | A description of the policy. |

### `PolicySet`

A group of one or more Policy resources.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A description of the policy set. |
| `policies` | `array<Policy>` | Required. The Policy resources in the policy set. Each policy must have a policy_id that's unique... |
| `policySetId` | `string` | Required. An identifier for the policy set. |

### `Posture`

The details of a posture.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. The user-specified annotations for the posture. For details about the values you can us... |
| `categories` | `array<string>` | Output only. The categories that the posture belongs to, as determined by the Security Posture API. |
| `createTime` | `string` | Output only. The time at which the posture was created. |
| `description` | `string` | Optional. A description of the posture. |
| `etag` | `string` | Optional. An opaque identifier for the current version of the posture at the specified `revision_... |
| `name` | `string` | Required. Identifier. The name of the posture, in the format `organizations/{organization}/locati... |
| `policySets` | `array<PolicySet>` | Required. The PolicySet resources that the posture includes. |
| `reconciling` | `boolean` | Output only. Whether the posture is in the process of being updated. |
| `revisionId` | `string` | Output only. Immutable. An opaque eight-character string that identifies the revision of the post... |
| `state` | `string` | Required. The state of the posture at the specified `revision_id`. |
| `updateTime` | `string` | Output only. The time at which the posture was last updated. |

### `PostureDeployment`

Details for a Posture deployment on an organization, folder, or project. You can deploy at most one posture to each organization, folder, or project. The parent resource for a posture deployment is always the organization, even if the deployment applies to a folder or project.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. The user-specified annotations for the posture deployment. For details about the values... |
| `categories` | `array<string>` | Output only. The categories that the posture deployment belongs to, as determined by the Security... |
| `createTime` | `string` | Output only. The time at which the posture deployment was created. |
| `description` | `string` | Optional. A description of the posture deployment. |
| `desiredPostureId` | `string` | Output only. The posture ID that was specified for the deployment. Present only if the posture de... |
| `desiredPostureRevisionId` | `string` | Output only. The revision ID of the posture that was specified for the deployment. Present only i... |
| `etag` | `string` | Optional. An opaque identifier for the current version of the posture deployment. To prevent conc... |
| `failureMessage` | `string` | Output only. A description of why the posture deployment failed. Present only if the deployment i... |
| `name` | `string` | Required. Identifier. The name of the posture deployment, in the format `organizations/{organizat... |
| `postureId` | `string` | Required. The posture used in the deployment, in the format `organizations/{organization}/locatio... |
| `postureRevisionId` | `string` | Required. The revision ID of the posture used in the deployment. |
| `reconciling` | `boolean` | Output only. Whether the posture deployment is in the process of being updated. |
| `state` | `string` | Output only. The state of the posture deployment. |
| `targetResource` | `string` | Required. The organization, folder, or project where the posture is deployed. Uses one of the fol... |
| `updateTime` | `string` | Output only. The time at which the posture deployment was last updated. |

### `PostureDetails`

Details of a posture deployment.

| Property | Type | Description |
|----------|------|-------------|
| `policySet` | `string` | The identifier for the PolicySet that the relevant policy belongs to. |
| `posture` | `string` | The posture used in the deployment, in the format `organizations/{organization}/locations/global/... |
| `postureDeployment` | `string` | The name of the posture deployment, in the format `organizations/{organization}/locations/global/... |
| `postureDeploymentTargetResource` | `string` | The organization, folder, or project where the posture is deployed. Uses one of the following for... |
| `postureRevisionId` | `string` | The revision ID of the posture used in the deployment. |

### `PostureTemplate`

The details of a posture template.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<string>` | Output only. The categories that the posture template belongs to, as determined by the Security P... |
| `description` | `string` | Output only. A description of the posture template. |
| `name` | `string` | Output only. Identifier. The name of the posture template, in the format `organizations/{organiza... |
| `policySets` | `array<PolicySet>` | Output only. The PolicySet resources that the posture template includes. |
| `revisionId` | `string` | Output only. A string that identifies the revision of the posture template. |
| `state` | `string` | Output only. The state of the posture template at the specified `revision_id`. |

### `Property`

A name-value pair used as a custom source property.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the custom source property. |
| `valueExpression` | `Expr` | Optional. The CEL expression for the value of the custom source property. For resource properties... |

### `Report`

Details of a report.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the report was created. |
| `iacValidationReport` | `IaCValidationReport` | Output only. An infrastructure-as-code (IaC) validation report. |
| `name` | `string` | Required. The name of the report, in the format `organizations/{organization}/locations/global/re... |
| `updateTime` | `string` | Output only. The time at which the report was last updated. |

### `ResourceSelector`

A selector for the resource types to run the detector on.

| Property | Type | Description |
|----------|------|-------------|
| `resourceTypes` | `array<string>` | Required. The resource types to run the detector on. Each custom module can specify up to 5 resou... |

### `ResourceTypes`

Set multiple resource types for one policy, for example: ``` resourceTypes: included: - compute.googleapis.com/Instance - compute.googleapis.com/Disk ``` Constraint definition contains an empty resource type in order to support multiple resource types in the policy. Only supports managed constraints. Method type is `GOVERN_TAGS`.

| Property | Type | Description |
|----------|------|-------------|
| `included` | `array<string>` | Optional. The resource types we currently support. |

### `SecurityHealthAnalyticsCustomModule`

A custom module for Security Health Analytics.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `CustomConfig` | Required. Configuration settings for the custom module. |
| `displayName` | `string` | Optional. The display name of the custom module. This value is used as the finding category for a... |
| `id` | `string` | Output only. Immutable. The unique identifier for the custom module. Contains 1 to 20 digits. |
| `moduleEnablementState` | `string` | Whether the custom module is enabled at a specified level of the resource hierarchy. |

### `SecurityHealthAnalyticsModule`

A built-in detector for Security Health Analytics.

| Property | Type | Description |
|----------|------|-------------|
| `moduleEnablementState` | `string` | Whether the detector is enabled at a specified level of the resource hierarchy. |
| `moduleName` | `string` | Required. The name of the detector. For example, `BIGQUERY_TABLE_CMEK_DISABLED`. This field is al... |

### `SeverityCountThreshold`

Represents a threshold for a specific severity.

| Property | Type | Description |
|----------|------|-------------|
| `severity` | `string` | Optional. The severity level, reusing the existing Violation.Severity. |
| `thresholdCount` | `integer` | Optional. If violation count meets or exceeds this threshold, validation fails. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Violation`

Details of a violation.

| Property | Type | Description |
|----------|------|-------------|
| `assetId` | `string` | The full resource name of the asset that caused the violation. For details about the format of th... |
| `nextSteps` | `string` | A description of the steps that you can take to fix the violation. |
| `policyId` | `string` | The policy that was violated. |
| `severity` | `string` | The severity of the violation. |
| `violatedAsset` | `AssetDetails` | Details of the Cloud Asset Inventory asset that caused the violation. |
| `violatedPolicy` | `PolicyDetails` | Details of the policy that was violated. |
| `violatedPosture` | `PostureDetails` | Details for the posture that was violated. This field is present only if the violated policy belo... |

