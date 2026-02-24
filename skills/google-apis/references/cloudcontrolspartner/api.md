# Cloud Controls Partner API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 26

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudcontrolspartner.organizations.locations.getPartner` | GET | `v1/{+name}` | Get details of a Partner. |
| `cloudcontrolspartner.organizations.locations.customers.get` | GET | `v1/{+name}` | Gets details of a single customer |
| `cloudcontrolspartner.organizations.locations.customers.list` | GET | `v1/{+parent}/customers` | Lists customers of a partner identified by its Google Cloud organization ID |
| `cloudcontrolspartner.organizations.locations.customers.create` | POST | `v1/{+parent}/customers` | Creates a new customer. |
| `cloudcontrolspartner.organizations.locations.customers.patch` | PATCH | `v1/{+name}` | Update details of a single customer |
| `cloudcontrolspartner.organizations.locations.customers.delete` | DELETE | `v1/{+name}` | Delete details of a single customer |
| `cloudcontrolspartner.organizations.locations.customers.workloads.get` | GET | `v1/{+name}` | Gets details of a single workload |
| `cloudcontrolspartner.organizations.locations.customers.workloads.list` | GET | `v1/{+parent}/workloads` | Lists customer workloads for a given customer org id |
| `cloudcontrolspartner.organizations.locations.customers.workloads.getEkmConnections` | GET | `v1/{+name}` | Gets the EKM connections associated with a workload |
| `cloudcontrolspartner.organizations.locations.customers.workloads.getPartnerPermissions` | GET | `v1/{+name}` | Gets the partner permissions granted for a workload |
| `cloudcontrolspartner.organizations.locations.customers.workloads.accessApprovalRequests.list` | GET | `v1/{+parent}/accessApprovalRequests` | Deprecated: Only returns access approval requests directly associated with an assured workload fo... |
| `cloudcontrolspartner.organizations.locations.customers.workloads.violations.list` | GET | `v1/{+parent}/violations` | Lists Violations for a workload Callers may also choose to read across multiple Customers or for ... |
| `cloudcontrolspartner.organizations.locations.customers.workloads.violations.get` | GET | `v1/{+name}` | Gets details of a single Violation. |

### `cloudcontrolspartner.organizations.locations.getPartner`

**GET** `v1/{+name}`

Get details of a Partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `organizations/{organization}/locations/{location}/partner` |

**Response**: `Partner`

```typescript
const res = await cloudcontrolspartner.locations.getPartner({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.get`

**GET** `v1/{+name}`

Gets details of a single customer

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `organizations/{organization}/locations/{location}/customers/{customer}` |

**Response**: `Customer`

```typescript
const res = await cloudcontrolspartner.customers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.list`

**GET** `v1/{+parent}/customers`

Lists customers of a partner identified by its Google Cloud organization ID

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource Format: `organizations/{organization}/locations/{location}` |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | The maximum number of Customers to return. The service may return fewer than this value. If unspecified, at most 500 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCustomers` call. Provide this to retrieve the subsequent page. |

**Response**: `ListCustomersResponse`

```typescript
const res = await cloudcontrolspartner.customers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.create`

**POST** `v1/{+parent}/customers`

Creates a new customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource Format: `organizations/{organization}/locations/{location}` |
| `customerId` | `string` | query | No | Required. The customer id to use for the customer, which will become the final component of the customer's resource n... |

**Request body**: `Customer`

**Response**: `Customer`

```typescript
const res = await cloudcontrolspartner.customers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.patch`

**PATCH** `v1/{+name}`

Update details of a single customer

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update |

**Request body**: `Customer`

**Response**: `Customer`

```typescript
const res = await cloudcontrolspartner.customers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.delete`

**DELETE** `v1/{+name}`

Delete details of a single customer

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. name of the resource to be deleted format: name=organizations/*/locations/*/customers/* |

**Response**: `Empty`

```typescript
const res = await cloudcontrolspartner.customers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.get`

**GET** `v1/{+name}`

Gets details of a single workload

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}` |

**Response**: `Workload`

```typescript
const res = await cloudcontrolspartner.workloads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.list`

**GET** `v1/{+parent}/workloads`

Lists customer workloads for a given customer org id

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource Format: `organizations/{organization}/locations/{location}/customers/{customer}` |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | The maximum number of workloads to return. The service may return fewer than this value. If unspecified, at most 500 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListWorkloads` call. Provide this to retrieve the subsequent page. |

**Response**: `ListWorkloadsResponse`

```typescript
const res = await cloudcontrolspartner.workloads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.getEkmConnections`

**GET** `v1/{+name}`

Gets the EKM connections associated with a workload

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/ekmCon... |

**Response**: `EkmConnections`

```typescript
const res = await cloudcontrolspartner.workloads.getEkmConnections({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.getPartnerPermissions`

**GET** `v1/{+name}`

Gets the partner permissions granted for a workload

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource to get in the format: `organizations/{organization}/locations/{location}/customers/{cu... |

**Response**: `PartnerPermissions`

```typescript
const res = await cloudcontrolspartner.workloads.getPartnerPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.accessApprovalRequests.list`

**GET** `v1/{+parent}/accessApprovalRequests`

Deprecated: Only returns access approval requests directly associated with an assured workload folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of access requests to return. The service may return fewer than this value. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAccessApprovalRequests` call. Provide this to retrieve the subs... |

**Response**: `ListAccessApprovalRequestsResponse`

```typescript
const res = await cloudcontrolspartner.accessApprovalRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.violations.list`

**GET** `v1/{+parent}/violations`

Lists Violations for a workload Callers may also choose to read across multiple Customers or for a single customer as per [AIP-159](https://google.aip.dev/159) by using '-' (the hyphen or dash character) as a wildcard character instead of {customer} & {workload}. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource Format `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{w... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `interval.endTime` | `string` | query | No | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the ... |
| `interval.startTime` | `string` | query | No | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same ... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. The maximum number of customers row to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListViolations` call. Provide this to retrieve the subsequent page. |

**Response**: `ListViolationsResponse`

```typescript
const res = await cloudcontrolspartner.violations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudcontrolspartner.organizations.locations.customers.workloads.violations.get`

**GET** `v1/{+name}`

Gets details of a single Violation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/violat... |

**Response**: `Violation`

```typescript
const res = await cloudcontrolspartner.violations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessApprovalRequest`

Details about the Access request.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workl... |
| `requestTime` | `string` | The time at which approval was requested. |
| `requestedExpirationTime` | `string` | The requested expiration for the approval. If the request is approved, access will be granted fro... |
| `requestedReason` | `AccessReason` | The justification for which approval is being requested. |

### `AccessReason`

Reason for the access.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | More detail about certain reason types. See comments for each type above. |
| `type` | `string` | Type of access justification. |

### `ConnectionError`

Information around the error that occurred if the connection state is anything other than available or unspecified

| Property | Type | Description |
|----------|------|-------------|
| `errorDomain` | `string` | The error domain for the error |
| `errorMessage` | `string` | The error message for the error |

### `Console`

Remediation instructions to resolve violation via cloud console

| Property | Type | Description |
|----------|------|-------------|
| `additionalLinks` | `array<string>` | Additional urls for more information about steps |
| `consoleUris` | `array<string>` | Link to console page where violations can be resolved |
| `steps` | `array<string>` | Steps to resolve violation via cloud console |

### `Customer`

Contains metadata around a Cloud Controls Partner Customer

| Property | Type | Description |
|----------|------|-------------|
| `customerOnboardingState` | `CustomerOnboardingState` | Output only. Container for customer onboarding steps |
| `displayName` | `string` | Required. Display name for the customer |
| `isOnboarded` | `boolean` | Output only. Indicates whether a customer is fully onboarded |
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}` |
| `organizationDomain` | `string` | Output only. The customer organization domain, extracted from CRM Organization’s display_name fie... |

### `CustomerOnboardingState`

Container for customer onboarding steps

| Property | Type | Description |
|----------|------|-------------|
| `onboardingSteps` | `array<CustomerOnboardingStep>` | List of customer onboarding steps |

### `CustomerOnboardingStep`

Container for customer onboarding information

| Property | Type | Description |
|----------|------|-------------|
| `completionState` | `string` | Output only. Current state of the step |
| `completionTime` | `string` | The completion time of the onboarding step |
| `startTime` | `string` | The starting time of the onboarding step |
| `step` | `string` | The onboarding step |

### `EkmConnection`

Details about the EKM connection

| Property | Type | Description |
|----------|------|-------------|
| `connectionError` | `ConnectionError` | The connection error that occurred if any |
| `connectionName` | `string` | Resource name of the EKM connection in the format: projects/{project}/locations/{location}/ekmCon... |
| `connectionState` | `string` | Output only. The connection state |

### `EkmConnections`

The EKM connections associated with a workload

| Property | Type | Description |
|----------|------|-------------|
| `ekmConnections` | `array<EkmConnection>` | The EKM connections associated with the workload |
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workl... |

### `EkmMetadata`

Holds information needed by Mudbray to use partner EKMs for workloads.

| Property | Type | Description |
|----------|------|-------------|
| `ekmEndpointUri` | `string` | Endpoint for sending requests to the EKM for key provisioning during Assured Workload creation. |
| `ekmSolution` | `string` | The Cloud EKM partner. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Gcloud`

Remediation instructions to resolve violation via gcloud cli

| Property | Type | Description |
|----------|------|-------------|
| `additionalLinks` | `array<string>` | Additional urls for more information about steps |
| `gcloudCommands` | `array<string>` | Gcloud command to resolve violation |
| `steps` | `array<string>` | Steps to resolve violation via gcloud cli |

### `Instructions`

Instructions to remediate violation

| Property | Type | Description |
|----------|------|-------------|
| `consoleInstructions` | `Console` | Remediation instructions to resolve violation via cloud console |
| `gcloudInstructions` | `Gcloud` | Remediation instructions to resolve violation via gcloud cli |

### `ListAccessApprovalRequestsResponse`

Response message for list access requests.

| Property | Type | Description |
|----------|------|-------------|
| `accessApprovalRequests` | `array<AccessApprovalRequest>` | List of access approval requests |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListCustomersResponse`

Response message for list customer Customers requests

| Property | Type | Description |
|----------|------|-------------|
| `customers` | `array<Customer>` | List of customers |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListViolationsResponse`

Response message for list customer violation requests

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Workloads that could not be reached due to permission errors or any other error. Ref: https://goo... |
| `violations` | `array<Violation>` | List of violation |

### `ListWorkloadsResponse`

Response message for list customer workloads requests.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `workloads` | `array<Workload>` | List of customer workloads |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Partner`

Message describing Partner resource

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the resource was created |
| `ekmSolutions` | `array<EkmMetadata>` | List of Google Cloud supported EKM partners supported by the partner |
| `name` | `string` | Identifier. The resource name of the partner. Format: `organizations/{organization}/locations/{lo... |
| `operatedCloudRegions` | `array<string>` | List of Google Cloud regions that the partner sells services to customers. Valid Google Cloud reg... |
| `partnerProjectId` | `string` | Google Cloud project ID in the partner's Google Cloud organization for receiving enhanced Logs fo... |
| `skus` | `array<Sku>` | List of SKUs the partner is offering |
| `updateTime` | `string` | Output only. The last time the resource was updated |

### `PartnerPermissions`

The permissions granted to the partner for a workload

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workl... |
| `partnerPermissions` | `array<string>` | The partner permissions granted for the workload |

### `Remediation`

Represents remediation guidance to resolve compliance violation for AssuredWorkload

| Property | Type | Description |
|----------|------|-------------|
| `compliantValues` | `array<string>` | Values that can resolve the violation For example: for list org policy violations, this will eith... |
| `instructions` | `Instructions` | Required. Remediation instructions to resolve violations |
| `remediationType` | `string` | Output only. Remediation type based on the type of org policy values violated |

### `Sku`

Represents the SKU a partner owns inside Google Cloud to sell to customers.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the product identified by the SKU. A partner may want to show partner branded nam... |
| `id` | `string` | Argentum product SKU, that is associated with the partner offerings to customers used by Syntro f... |

### `Violation`

Details of resource Violation

| Property | Type | Description |
|----------|------|-------------|
| `beginTime` | `string` | Output only. Time of the event which triggered the Violation. |
| `category` | `string` | Output only. Category under which this violation is mapped. e.g. Location, Service Usage, Access,... |
| `description` | `string` | Output only. Description for the Violation. e.g. OrgPolicy gcp.resourceLocations has non complian... |
| `folderId` | `string` | The folder_id of the violation |
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workl... |
| `nonCompliantOrgPolicy` | `string` | Output only. Immutable. Name of the OrgPolicy which was modified with non-compliant change and re... |
| `remediation` | `Remediation` | Output only. Compliance violation remediation |
| `resolveTime` | `string` | Output only. Time of the event which fixed the Violation. If the violation is ACTIVE this will be... |
| `state` | `string` | Output only. State of the violation |
| `updateTime` | `string` | Output only. The last time when the Violation record was updated. |

### `Workload`

Contains metadata around the [Workload resource](https://cloud.google.com/assured-workloads/docs/reference/rest/Shared.Types/Workload) in the Assured Workloads API.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the resource was created. |
| `folder` | `string` | Output only. The name of container folder of the assured workload |
| `folderId` | `string` | Output only. Folder id this workload is associated with |
| `isOnboarded` | `boolean` | Indicates whether a workload is fully onboarded. |
| `keyManagementProjectId` | `string` | The project id of the key management project for the workload |
| `location` | `string` | The Google Cloud location of the workload |
| `name` | `string` | Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workl... |
| `partner` | `string` | Partner associated with this workload. |
| `workloadOnboardingState` | `WorkloadOnboardingState` | Container for workload onboarding steps. |

### `WorkloadOnboardingState`

Container for workload onboarding steps.

| Property | Type | Description |
|----------|------|-------------|
| `onboardingSteps` | `array<WorkloadOnboardingStep>` | List of workload onboarding steps. |

### `WorkloadOnboardingStep`

Container for workload onboarding information.

| Property | Type | Description |
|----------|------|-------------|
| `completionState` | `string` | Output only. The completion state of the onboarding step. |
| `completionTime` | `string` | The completion time of the onboarding step. |
| `startTime` | `string` | The starting time of the onboarding step. |
| `step` | `string` | The onboarding step. |

