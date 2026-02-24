# Cloud Functions API - API Reference

**Version**: `v2` | **Methods**: 21 | **Schemas**: 51

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudfunctions.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `cloudfunctions.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `cloudfunctions.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudfunctions.projects.locations.runtimes.list` | GET | `v2/{+parent}/runtimes` | Returns a list of runtimes that are supported for the requested project. |
| `cloudfunctions.projects.locations.functions.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudfunctions.projects.locations.functions.commitFunctionUpgrade` | POST | `v2/{+name}:commitFunctionUpgrade` | Finalizes the upgrade after which function upgrade can not be rolled back. This is the last step ... |
| `cloudfunctions.projects.locations.functions.commitFunctionUpgradeAsGen2` | POST | `v2/{+name}:commitFunctionUpgradeAsGen2` | Commits a function upgrade from GCF Gen1 to GCF Gen2. This action deletes the Gen1 function, leav... |
| `cloudfunctions.projects.locations.functions.generateUploadUrl` | POST | `v2/{+parent}/functions:generateUploadUrl` | Returns a signed URL for uploading a function source code. For more information about the signed ... |
| `cloudfunctions.projects.locations.functions.redirectFunctionUpgradeTraffic` | POST | `v2/{+name}:redirectFunctionUpgradeTraffic` | Changes the traffic target of a function from the original 1st Gen function to the 2nd Gen copy. ... |
| `cloudfunctions.projects.locations.functions.generateDownloadUrl` | POST | `v2/{+name}:generateDownloadUrl` | Returns a signed URL for downloading deployed function source code. The URL is only valid for a l... |
| `cloudfunctions.projects.locations.functions.abortFunctionUpgrade` | POST | `v2/{+name}:abortFunctionUpgrade` | Aborts generation upgrade process for a function with the given name from the specified project. ... |
| `cloudfunctions.projects.locations.functions.patch` | PATCH | `v2/{+name}` | Updates existing function. |
| `cloudfunctions.projects.locations.functions.list` | GET | `v2/{+parent}/functions` | Returns a list of functions that belong to the requested project. |
| `cloudfunctions.projects.locations.functions.create` | POST | `v2/{+parent}/functions` | Creates a new function. If a function with the given name already exists in the specified project... |
| `cloudfunctions.projects.locations.functions.rollbackFunctionUpgradeTraffic` | POST | `v2/{+name}:rollbackFunctionUpgradeTraffic` | Reverts the traffic target of a function from the 2nd Gen copy to the original 1st Gen function. ... |
| `cloudfunctions.projects.locations.functions.detachFunction` | POST | `v2/{+name}:detachFunction` | Detaches 2nd Gen function to Cloud Run function. |
| `cloudfunctions.projects.locations.functions.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudfunctions.projects.locations.functions.setupFunctionUpgradeConfig` | POST | `v2/{+name}:setupFunctionUpgradeConfig` | Creates a 2nd Gen copy of the function configuration based on the 1st Gen function with the given... |
| `cloudfunctions.projects.locations.functions.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudfunctions.projects.locations.functions.delete` | DELETE | `v2/{+name}` | Deletes a function with the given name from the specified project. If the given function is used ... |
| `cloudfunctions.projects.locations.functions.get` | GET | `v2/{+name}` | Returns a function with the given name from the requested project. |

### `cloudfunctions.projects.locations.list`

**GET** `v2/{+name}/locations`

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
const res = await cloudfunctions.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await cloudfunctions.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudfunctions.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.runtimes.list`

**GET** `v2/{+parent}/runtimes`

Returns a list of runtimes that are supported for the requested project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the runtimes should be listed, specified in the format `projects/*/loca... |
| `filter` | `string` | query | No | The filter for Runtimes that match the filter expression, following the syntax outlined in https://google.aip.dev/160. |

**Response**: `ListRuntimesResponse`

```typescript
const res = await cloudfunctions.runtimes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudfunctions.functions.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.commitFunctionUpgrade`

**POST** `v2/{+name}:commitFunctionUpgrade`

Finalizes the upgrade after which function upgrade can not be rolled back. This is the last step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Deletes all original 1st Gen related configuration and resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which upgrade should be finalized. |

**Request body**: `CommitFunctionUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.commitFunctionUpgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.commitFunctionUpgradeAsGen2`

**POST** `v2/{+name}:commitFunctionUpgradeAsGen2`

Commits a function upgrade from GCF Gen1 to GCF Gen2. This action deletes the Gen1 function, leaving the Gen2 function active and manageable by the GCFv2 API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which upgrade should be committed to Gen2. |

**Request body**: `CommitFunctionUpgradeAsGen2Request`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.commitFunctionUpgradeAsGen2({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.generateUploadUrl`

**POST** `v2/{+parent}/functions:generateUploadUrl`

Returns a signed URL for uploading a function source code. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls. Once the function source code upload is complete, the used signed URL should be provided in CreateFunction or UpdateFunction request as a reference to the function source code. When uploading source code to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, specify this header: * `content-type: application/zip` Do not specify this header: * `Authorization: Bearer YOUR_TOKEN`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location in which the Google Cloud Storage signed URL should be generated, specified in the... |

**Request body**: `GenerateUploadUrlRequest`

**Response**: `GenerateUploadUrlResponse`

```typescript
const res = await cloudfunctions.functions.generateUploadUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.redirectFunctionUpgradeTraffic`

**POST** `v2/{+name}:redirectFunctionUpgradeTraffic`

Changes the traffic target of a function from the original 1st Gen function to the 2nd Gen copy. This is the second step of the multi step process to upgrade 1st Gen functions to 2nd Gen. After this operation, all new traffic will be served by 2nd Gen copy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which traffic target should be changed to 2nd Gen from 1st Gen. |

**Request body**: `RedirectFunctionUpgradeTrafficRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.redirectFunctionUpgradeTraffic({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.generateDownloadUrl`

**POST** `v2/{+name}:generateDownloadUrl`

Returns a signed URL for downloading deployed function source code. The URL is only valid for a limited period and should be used within 30 minutes of generation. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of function for which source code Google Cloud Storage signed URL should be generated. |

**Request body**: `GenerateDownloadUrlRequest`

**Response**: `GenerateDownloadUrlResponse`

```typescript
const res = await cloudfunctions.functions.generateDownloadUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.abortFunctionUpgrade`

**POST** `v2/{+name}:abortFunctionUpgrade`

Aborts generation upgrade process for a function with the given name from the specified project. Deletes all 2nd Gen copy related configuration and resources which were created during the upgrade process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which upgrade should be aborted. |

**Request body**: `AbortFunctionUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.abortFunctionUpgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.patch`

**PATCH** `v2/{+name}`

Updates existing function.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If no field mask is provided, all fields will be updated. |

**Request body**: `Function`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.list`

**GET** `v2/{+parent}/functions`

Returns a list of functions that belong to the requested project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the function should be listed, specified in the format `projects/*/loca... |
| `filter` | `string` | query | No | The filter for Functions that match the filter expression, following the syntax outlined in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | The sorting order of the resources returned. Value should be a comma separated list of fields. The default sorting or... |
| `pageSize` | `integer` | query | No | Maximum number of functions to return per call. The largest allowed page_size is 1,000, if the page_size is omitted o... |
| `pageToken` | `string` | query | No | The value returned by the last `ListFunctionsResponse`; indicates that this is a continuation of a prior `ListFunctio... |

**Response**: `ListFunctionsResponse`

```typescript
const res = await cloudfunctions.functions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.create`

**POST** `v2/{+parent}/functions`

Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location in which the function should be created, specified in the format `projects/*/locat... |
| `functionId` | `string` | query | No | The ID to use for the function, which will become the final component of the function's resource name. This value sho... |

**Request body**: `Function`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.rollbackFunctionUpgradeTraffic`

**POST** `v2/{+name}:rollbackFunctionUpgradeTraffic`

Reverts the traffic target of a function from the 2nd Gen copy to the original 1st Gen function. After this operation, all new traffic would be served by the 1st Gen.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which traffic target should be changed back to 1st Gen from 2nd Gen. |

**Request body**: `RollbackFunctionUpgradeTrafficRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.rollbackFunctionUpgradeTraffic({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.detachFunction`

**POST** `v2/{+name}:detachFunction`

Detaches 2nd Gen function to Cloud Run function.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function for which should be detached. |

**Request body**: `DetachFunctionRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.detachFunction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudfunctions.functions.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.setupFunctionUpgradeConfig`

**POST** `v2/{+name}:setupFunctionUpgradeConfig`

Creates a 2nd Gen copy of the function configuration based on the 1st Gen function with the given name. This is the first step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Only 2nd Gen configuration is setup as part of this request and traffic continues to be served by 1st Gen.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function which should have configuration copied for upgrade. |

**Request body**: `SetupFunctionUpgradeConfigRequest`

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.setupFunctionUpgradeConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudfunctions.functions.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.delete`

**DELETE** `v2/{+name}`

Deletes a function with the given name from the specified project. If the given function is used by some trigger, the trigger will be updated to remove this function.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function which should be deleted. |

**Response**: `Operation`

```typescript
const res = await cloudfunctions.functions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudfunctions.projects.locations.functions.get`

**GET** `v2/{+name}`

Returns a function with the given name from the requested project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the function which details should be obtained. |
| `revision` | `string` | query | No | Optional. The optional version of the 1st gen function whose details should be obtained. The version of a 1st gen fun... |

**Response**: `Function`

```typescript
const res = await cloudfunctions.functions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AbortFunctionUpgradeRequest`

Request for the `AbortFunctionUpgrade` method.

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

### `AutomaticUpdatePolicy`

Security patches are applied automatically to the runtime without requiring the function to be redeployed.

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BuildConfig`

Describes the Build step of the function that builds a container from the given source.

| Property | Type | Description |
|----------|------|-------------|
| `automaticUpdatePolicy` | `AutomaticUpdatePolicy` |  |
| `build` | `string` | Output only. The Cloud Build name of the latest successful deployment of the function. |
| `dockerRegistry` | `string` | Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen func... |
| `dockerRepository` | `string` | Repository in Artifact Registry to which the function docker image will be pushed after it is bui... |
| `entryPoint` | `string` | The name of the function (as defined in source code) that will be executed. Defaults to the resou... |
| `environmentVariables` | `object` | User-provided build-time environment variables for the function |
| `onDeployUpdatePolicy` | `OnDeployUpdatePolicy` |  |
| `runtime` | `string` | The runtime in which to run the function. Required when deploying a new function, optional when u... |
| `serviceAccount` | `string` | Service account to be used for building the container. The format of this field is `projects/{pro... |
| `source` | `Source` | The location of the function source code. |
| `sourceProvenance` | `SourceProvenance` | Output only. A permanent fixed identifier for source. |
| `sourceToken` | `string` | An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebas... |
| `workerPool` | `string` | Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format ... |

### `BuildConfigOverrides`

Contains overrides related to the function's build configuration.

| Property | Type | Description |
|----------|------|-------------|
| `runtime` | `string` | Optional. Specifies the desired runtime for the new Cloud Run function. (e.g., `"nodejs20"`, `"py... |

### `CommitFunctionUpgradeAsGen2Request`

Request for the `CommitFunctionUpgradeAsGen2` method.

### `CommitFunctionUpgradeRequest`

Request for the `CommitFunctionUpgrade` method.

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DetachFunctionRequest`

Request for the `DetachFunction` method.

### `DirectVpcNetworkInterface`

The Direct VPC network interface. This is mutually exclusive with VPC Connector.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Optional. The name of the VPC network to which the function will be connected. Specify either a V... |
| `subnetwork` | `string` | Optional. The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Spec... |
| `tags` | `array<string>` | Optional. Network tags applied to this Cloud Function resource. |

### `EventFilter`

Filters events based on exact matches on the CloudEvents attributes.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Required. The name of a CloudEvents attribute. |
| `operator` | `string` | Optional. The operator used for matching the events with the value of the filter. If not specifie... |
| `value` | `string` | Required. The value for the attribute. |

### `EventTrigger`

Describes EventTrigger, used to request events to be sent from another service.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{l... |
| `eventFilters` | `array<EventFilter>` | Criteria used to filter events. |
| `eventType` | `string` | Required. The type of event to observe. For example: `google.cloud.audit.log.v1.written` or `goog... |
| `pubsubTopic` | `string` | Optional. The name of a Pub/Sub topic in the same project that will be used as the transport topi... |
| `retryPolicy` | `string` | Optional. If unset, then defaults to ignoring failures (i.e. not retrying them). |
| `service` | `string` | Optional. The hostname of the service that 1st Gen function should be observed. If no string is p... |
| `serviceAccountEmail` | `string` | Optional. The email of the trigger's service account. The service account must have permission to... |
| `trigger` | `string` | Output only. The resource name of the Eventarc trigger. The format of this field is `projects/{pr... |
| `triggerRegion` | `string` | The region that the trigger will be in. The trigger will only receive events originating in this ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Function`

Describes a Cloud Function that contains user computation executed in response to an event. It encapsulates function and trigger configurations.

| Property | Type | Description |
|----------|------|-------------|
| `buildConfig` | `BuildConfig` | Describes the Build step of the function that builds a container from the given source. |
| `createTime` | `string` | Output only. The create timestamp of a Cloud Function. This is only applicable to 2nd Gen functions. |
| `description` | `string` | User-provided description of a function. |
| `environment` | `string` | Describe whether the function is 1st Gen or 2nd Gen. |
| `eventTrigger` | `EventTrigger` | An Eventarc trigger managed by Google Cloud Functions that fires events in response to a conditio... |
| `kmsKeyName` | `string` | Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resource... |
| `labels` | `object` | Labels associated with this Cloud Function. |
| `name` | `string` | A user-defined name of the function. Function names must be unique globally and match pattern `pr... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `serviceConfig` | `ServiceConfig` | Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed). |
| `state` | `string` | Output only. State of the function. |
| `stateMessages` | `array<GoogleCloudFunctionsV2StateMessage>` | Output only. State Messages for this Cloud Function. |
| `updateTime` | `string` | Output only. The last update timestamp of a Cloud Function. |
| `upgradeInfo` | `UpgradeInfo` | Output only. UpgradeInfo for this Cloud Function |
| `url` | `string` | Output only. The deployed url for the function. |

### `GenerateDownloadUrlRequest`

Request of `GenerateDownloadUrl` method.

### `GenerateDownloadUrlResponse`

Response of `GenerateDownloadUrl` method.

| Property | Type | Description |
|----------|------|-------------|
| `downloadUrl` | `string` | The generated Google Cloud Storage signed URL that should be used for function source code download. |

### `GenerateUploadUrlRequest`

Request of `GenerateSourceUploadUrl` method.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` | The function environment the generated upload url will be used for. The upload url for 2nd Gen fu... |
| `kmsKeyName` | `string` | Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function source c... |

### `GenerateUploadUrlResponse`

Response of `GenerateSourceUploadUrl` method.

| Property | Type | Description |
|----------|------|-------------|
| `storageSource` | `StorageSource` | The location of the source code in the upload bucket. Once the archive is uploaded using the `upl... |
| `uploadUrl` | `string` | The generated Google Cloud Storage signed URL that should be used for a function source code uplo... |

### `GoogleCloudFunctionsV2LocationMetadata`

Extra GCF specific location information.

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<string>` | The Cloud Function environments this location supports. |

### `GoogleCloudFunctionsV2OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version used to start the operation. |
| `buildName` | `string` | The build name of the function for create and update operations. |
| `cancelRequested` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `createTime` | `string` | The time the operation was created. |
| `customIamRoleDetected` | `boolean` | Output only. Whether a custom IAM role binding was detected during the upgrade. |
| `endTime` | `string` | The time the operation finished running. |
| `operationType` | `string` | The operation type. |
| `requestResource` | `object` | The original request that started the operation. |
| `sourceToken` | `string` | An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebas... |
| `stages` | `array<GoogleCloudFunctionsV2Stage>` | Mechanism for reporting in-progress stages |
| `statusDetail` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `GoogleCloudFunctionsV2Stage`

Each Stage of the deployment process

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Message describing the Stage |
| `name` | `string` | Name of the Stage. This will be unique for each Stage. |
| `resource` | `string` | Resource of the Stage |
| `resourceUri` | `string` | Link to the current Stage resource |
| `state` | `string` | Current state of the Stage |
| `stateMessages` | `array<GoogleCloudFunctionsV2StateMessage>` | State messages from the current Stage. |

### `GoogleCloudFunctionsV2StateMessage`

Informational messages about the state of the Cloud Function or Operation.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The message. |
| `severity` | `string` | Severity of the state message. |
| `type` | `string` | One-word CamelCase type of the state message. |

### `ListFunctionsResponse`

Response for the `ListFunctions` method.

| Property | Type | Description |
|----------|------|-------------|
| `functions` | `array<Function>` | The functions that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. The response does not include any functions from these locat... |

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

### `ListRuntimesResponse`

Response for the `ListRuntimes` method.

| Property | Type | Description |
|----------|------|-------------|
| `runtimes` | `array<Runtime>` | The runtimes that match the request. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `OnDeployUpdatePolicy`

Security patches are only applied when a function is redeployed.

| Property | Type | Description |
|----------|------|-------------|
| `runtimeVersion` | `string` | Output only. contains the runtime version which was used during latest function deployment. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadataV1`

Metadata describing an Operation

| Property | Type | Description |
|----------|------|-------------|
| `buildId` | `string` | The Cloud Build ID of the function created or updated by an API call. This field is only populate... |
| `buildName` | `string` | The Cloud Build Name of the function deployment. This field is only populated for Create and Upda... |
| `request` | `object` | The original request that started the operation. |
| `sourceToken` | `string` | An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebas... |
| `target` | `string` | Target of the operation - for example `projects/project-1/locations/region-1/functions/function-1` |
| `type` | `string` | Type of operation. |
| `updateTime` | `string` | The last update timestamp of the operation. |
| `versionId` | `string` | Version id of the function created or updated by an API call. This field is only populated for Cr... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `RedirectFunctionUpgradeTrafficRequest`

Request for the `RedirectFunctionUpgradeTraffic` method.

### `RepoSource`

Location of the source in a Google Cloud Source Repository.

| Property | Type | Description |
|----------|------|-------------|
| `branchName` | `string` | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax ac... |
| `commitSha` | `string` | Explicit commit SHA to build. |
| `dir` | `string` | Directory, relative to the source root, in which to run the build. This must be a relative path. ... |
| `projectId` | `string` | ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting th... |
| `repoName` | `string` | Name of the Cloud Source Repository. |
| `tagName` | `string` | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accept... |

### `RollbackFunctionUpgradeTrafficRequest`

Request for the `RollbackFunctionUpgradeTraffic` method.

### `Runtime`

Describes a runtime and any special information (e.g., deprecation status) related to it.

| Property | Type | Description |
|----------|------|-------------|
| `decommissionDate` | `Date` | Decommission date for the runtime. |
| `deprecationDate` | `Date` | Deprecation date for the runtime. |
| `displayName` | `string` | The user facing name, eg 'Go 1.13', 'Node.js 12', etc. |
| `environment` | `string` | The environment for the runtime. |
| `name` | `string` | The name of the runtime, e.g., 'go113', 'nodejs12', etc. |
| `stage` | `string` | The stage of life this runtime is in, e.g., BETA, GA, etc. |
| `warnings` | `array<string>` | Warning messages, e.g., a deprecation warning. |

### `SecretEnvVar`

Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Name of the environment variable. |
| `projectId` | `string` | Project identifier (preferably project number but can also be the project ID) of the project that... |
| `secret` | `string` | Name of the secret in secret manager (not the full resource name). |
| `version` | `string` | Version of the secret (version number or the string 'latest'). It is recommended to use a numeric... |

### `SecretVersion`

Configuration for a single version.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Relative path of the file under the mount path where the secret value for this version will be fe... |
| `version` | `string` | Version of the secret (version number or the string 'latest'). It is preferable to use `latest` v... |

### `SecretVolume`

Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container.

| Property | Type | Description |
|----------|------|-------------|
| `mountPath` | `string` | The path within the container to mount the secret volume. For example, setting the mount_path as ... |
| `projectId` | `string` | Project identifier (preferably project number but can also be the project ID) of the project that... |
| `secret` | `string` | Name of the secret in secret manager (not the full resource name). |
| `versions` | `array<SecretVersion>` | List of secret versions to mount for this secret. If empty, the `latest` version of the secret wi... |

### `ServiceConfig`

Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).

| Property | Type | Description |
|----------|------|-------------|
| `allTrafficOnLatestRevision` | `boolean` | Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, w... |
| `availableCpu` | `string` | The number of CPUs used in a single container instance. Default value is calculated from availabl... |
| `availableMemory` | `string` | The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi,... |
| `binaryAuthorizationPolicy` | `string` | Optional. The binary authorization policy to be checked when deploying the Cloud Run service. |
| `directVpcEgress` | `string` | Optional. Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANG... |
| `directVpcNetworkInterface` | `array<DirectVpcNetworkInterface>` | Optional. The Direct VPC network interface for the Cloud Function. Currently only a single Direct... |
| `environmentVariables` | `object` | Environment variables that shall be available during function execution. |
| `ingressSettings` | `string` | The ingress settings for the function, controlling what traffic can reach it. |
| `maxInstanceCount` | `integer` | The limit on the maximum number of function instances that may coexist at a given time. In some c... |
| `maxInstanceRequestConcurrency` | `integer` | Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1. |
| `minInstanceCount` | `integer` | The limit on the minimum number of function instances that may coexist at a given time. Function ... |
| `revision` | `string` | Output only. The name of service revision. |
| `secretEnvironmentVariables` | `array<SecretEnvVar>` | Secret environment variables configuration. |
| `secretVolumes` | `array<SecretVolume>` | Secret volumes configuration. |
| `securityLevel` | `string` | Security level configure whether the function only accepts https. This configuration is only appl... |
| `service` | `string` | Output only. Name of the service associated with a Function. The format of this field is `project... |
| `serviceAccountEmail` | `string` | The email of the service's service account. If empty, defaults to `{project_number}-compute@devel... |
| `timeoutSeconds` | `integer` | The function execution timeout. Execution is considered failed and can be terminated if the funct... |
| `uri` | `string` | Output only. URI of the Service deployed. |
| `vpcConnector` | `string` | The Serverless VPC Access connector that this cloud function can connect to. The format of this f... |
| `vpcConnectorEgressSettings` | `string` | The egress settings for the connector, controlling what traffic is diverted through it. |

### `ServiceConfigOverrides`

Contains overrides related to the function's service configuration.

| Property | Type | Description |
|----------|------|-------------|
| `maxInstanceCount` | `integer` | Optional. Specifies the maximum number of instances for the new Cloud Run function. If provided, ... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SetupFunctionUpgradeConfigRequest`

Request for the `SetupFunctionUpgradeConfig` method.

| Property | Type | Description |
|----------|------|-------------|
| `buildConfigOverrides` | `BuildConfigOverrides` | Optional. Specifies overrides for the build process. |
| `serviceConfigOverrides` | `ServiceConfigOverrides` | Optional. Specifies overrides for the service configuration. |
| `triggerServiceAccount` | `string` | Optional. The trigger's service account. The service account must have permission to invoke Cloud... |

### `Source`

The location of the function source code.

| Property | Type | Description |
|----------|------|-------------|
| `gitUri` | `string` | If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen fun... |
| `repoSource` | `RepoSource` | If provided, get the source from this location in a Cloud Source Repository. |
| `storageSource` | `StorageSource` | If provided, get the source from this location in Google Cloud Storage. |

### `SourceProvenance`

Provenance of the source. Ways to find the original source, or verify that some source was used for this build.

| Property | Type | Description |
|----------|------|-------------|
| `gitUri` | `string` | A copy of the build's `source.git_uri`, if exists, with any commits resolved. |
| `resolvedRepoSource` | `RepoSource` | A copy of the build's `source.repo_source`, if exists, with any revisions resolved. |
| `resolvedStorageSource` | `StorageSource` | A copy of the build's `source.storage_source`, if exists, with any generations resolved. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StorageSource`

Location of the source in an archive file in Google Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.g... |
| `generation` | `string` | Google Cloud Storage generation for the object. If the generation is omitted, the latest generati... |
| `object` | `string` | Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.... |
| `sourceUploadUrl` | `string` | When the specified storage bucket is a 1st gen function uploard url bucket, this field should be ... |

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

### `UpgradeInfo`

Information related to: * A function's eligibility for 1st Gen to 2nd Gen migration. * Current state of migration for function undergoing migration.

| Property | Type | Description |
|----------|------|-------------|
| `buildConfig` | `BuildConfig` | Describes the Build step of the function that builds a container to prepare for 2nd gen upgrade. |
| `eventTrigger` | `EventTrigger` | Describes the Event trigger which has been setup to prepare for 2nd gen upgrade. |
| `serviceConfig` | `ServiceConfig` | Describes the Cloud Run service which has been setup to prepare for 2nd gen upgrade. |
| `upgradeState` | `string` | UpgradeState of the function |

