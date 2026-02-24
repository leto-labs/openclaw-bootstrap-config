# Cloud Deployment Manager V2 API - API Reference

**Version**: `v2` | **Methods**: 18 | **Schemas**: 41

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `deploymentmanager.deployments.getIamPolicy` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/getIamPolicy` | Gets the access control policy for a resource. May be empty if no such policy or resource exists. |
| `deploymentmanager.deployments.insert` | POST | `deploymentmanager/v2/projects/{project}/global/deployments` | Creates a deployment and all of the resources described by the deployment manifest. |
| `deploymentmanager.deployments.get` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}` | Gets information about a specific deployment. |
| `deploymentmanager.deployments.delete` | DELETE | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}` | Deletes a deployment and all of the resources in the deployment. |
| `deploymentmanager.deployments.list` | GET | `deploymentmanager/v2/projects/{project}/global/deployments` | Lists all deployments for a given project. |
| `deploymentmanager.deployments.cancelPreview` | POST | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/cancelPreview` | Cancels and removes the preview currently associated with the deployment. |
| `deploymentmanager.deployments.update` | PUT | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}` | Updates a deployment and all of the resources described by the deployment manifest. |
| `deploymentmanager.deployments.testIamPermissions` | POST | `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/testIamPermissions` | Returns permissions that a caller has on the specified resource. |
| `deploymentmanager.deployments.stop` | POST | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/stop` | Stops an ongoing operation. This does not roll back any work that has already been completed, but... |
| `deploymentmanager.deployments.setIamPolicy` | POST | `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. |
| `deploymentmanager.deployments.patch` | PATCH | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}` | Patches a deployment and all of the resources described by the deployment manifest. |
| `deploymentmanager.manifests.list` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests` | Lists all manifests for a given deployment. |
| `deploymentmanager.manifests.get` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests/{manifest}` | Gets information about a specific manifest. |
| `deploymentmanager.types.list` | GET | `deploymentmanager/v2/projects/{project}/global/types` | Lists all resource types for Deployment Manager. |
| `deploymentmanager.operations.get` | GET | `deploymentmanager/v2/projects/{project}/global/operations/{operation}` | Gets information about a specific operation. |
| `deploymentmanager.operations.list` | GET | `deploymentmanager/v2/projects/{project}/global/operations` | Lists all operations for a project. |
| `deploymentmanager.resources.list` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources` | Lists all resources in a given deployment. |
| `deploymentmanager.resources.get` | GET | `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources/{resource}` | Gets information about a single resource. |

### `deploymentmanager.deployments.getIamPolicy`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/getIamPolicy`

Gets the access control policy for a resource. May be empty if no such policy or resource exists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID for this request. |
| `resource` | `string` | path | Yes | Name or id of the resource for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |
| `optionsRequestedPolicyVersion` | `integer` | query | No | Requested IAM Policy version. |

**Response**: `Policy`

```typescript
const res = await deploymentmanager.deployments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.insert`

**POST** `deploymentmanager/v2/projects/{project}/global/deployments`

Creates a deployment and all of the resources described by the deployment manifest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `createPolicy` | `string` | query | No | Sets the policy to use for creating new resources. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |
| `preview` | `boolean` | query | No | If set to true, creates a deployment and creates "shell" resources but does not actually instantiate these resources.... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.get`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}`

Gets information about a specific deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Response**: `Deployment`

```typescript
const res = await deploymentmanager.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.deployments.delete`

**DELETE** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}`

Deletes a deployment and all of the resources in the deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `deletePolicy` | `string` | query | No | Sets the policy to use for deleting resources. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.list`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments`

Lists all deployments for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter... |
| `maxResults` | `integer` | query | No | The maximum number of results per page that should be returned. If the number of available results is larger than `ma... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the ... |

**Response**: `DeploymentsListResponse`

```typescript
const res = await deploymentmanager.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.deployments.cancelPreview`

**POST** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/cancelPreview`

Cancels and removes the preview currently associated with the deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |

**Request body**: `DeploymentsCancelPreviewRequest`

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.cancelPreview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.update`

**PUT** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}`

Updates a deployment and all of the resources described by the deployment manifest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `createPolicy` | `string` | query | No | Sets the policy to use for creating new resources. |
| `deletePolicy` | `string` | query | No | Sets the policy to use for deleting resources. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |
| `preview` | `boolean` | query | No | If set to true, updates the deployment and creates and updates the "shell" resources but does not actually alter or i... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.testIamPermissions`

**POST** `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/testIamPermissions`

Returns permissions that a caller has on the specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID for this request. |
| `resource` | `string` | path | Yes | Name or id of the resource for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Request body**: `TestPermissionsRequest`

**Response**: `TestPermissionsResponse`

```typescript
const res = await deploymentmanager.deployments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.stop`

**POST** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/stop`

Stops an ongoing operation. This does not roll back any work that has already been completed, but prevents any new work from being started.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |

**Request body**: `DeploymentsStopRequest`

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.setIamPolicy`

**POST** `deploymentmanager/v2/projects/{project}/global/deployments/{resource}/setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID for this request. |
| `resource` | `string` | path | Yes | Name or id of the resource for this request. |

**Request body**: `GlobalSetPolicyRequest`

**Response**: `Policy`

```typescript
const res = await deploymentmanager.deployments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.deployments.patch`

**PATCH** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}`

Patches a deployment and all of the resources described by the deployment manifest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `createPolicy` | `string` | query | No | Sets the policy to use for creating new resources. |
| `deletePolicy` | `string` | query | No | Sets the policy to use for deleting resources. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |
| `preview` | `boolean` | query | No | If set to true, updates the deployment and creates and updates the "shell" resources but does not actually alter or i... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await deploymentmanager.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.cloudman`

---

### `deploymentmanager.manifests.list`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests`

Lists all manifests for a given deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter... |
| `maxResults` | `integer` | query | No | The maximum number of results per page that should be returned. If the number of available results is larger than `ma... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the ... |

**Response**: `ManifestsListResponse`

```typescript
const res = await deploymentmanager.manifests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.manifests.get`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/manifests/{manifest}`

Gets information about a specific manifest.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `manifest` | `string` | path | Yes | The name of the manifest for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Response**: `Manifest`

```typescript
const res = await deploymentmanager.manifests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.types.list`

**GET** `deploymentmanager/v2/projects/{project}/global/types`

Lists all resource types for Deployment Manager.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter... |
| `maxResults` | `integer` | query | No | The maximum number of results per page that should be returned. If the number of available results is larger than `ma... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the ... |

**Response**: `TypesListResponse`

```typescript
const res = await deploymentmanager.types.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.operations.get`

**GET** `deploymentmanager/v2/projects/{project}/global/operations/{operation}`

Gets information about a specific operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `operation` | `string` | path | Yes | The name of the operation for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Response**: `Operation`

```typescript
const res = await deploymentmanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.operations.list`

**GET** `deploymentmanager/v2/projects/{project}/global/operations`

Lists all operations for a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter... |
| `maxResults` | `integer` | query | No | The maximum number of results per page that should be returned. If the number of available results is larger than `ma... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the ... |

**Response**: `OperationsListResponse`

```typescript
const res = await deploymentmanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.resources.list`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources`

Lists all resources in a given deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Most Compute resources support two types of filter... |
| `maxResults` | `integer` | query | No | The maximum number of results per page that should be returned. If the number of available results is larger than `ma... |
| `orderBy` | `string` | query | No | Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the ... |

**Response**: `ResourcesListResponse`

```typescript
const res = await deploymentmanager.resources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

### `deploymentmanager.resources.get`

**GET** `deploymentmanager/v2/projects/{project}/global/deployments/{deployment}/resources/{resource}`

Gets information about a single resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | The project ID for this request. |
| `deployment` | `string` | path | Yes | The name of the deployment for this request. |
| `resource` | `string` | path | Yes | The name of the resource for this request. |
| `header.bypassBillingFilter` | `boolean` | query | No |  |

**Response**: `Resource`

```typescript
const res = await deploymentmanager.resources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.cloudman`
- `https://www.googleapis.com/auth/ndev.cloudman.readonly`

---

## Schemas

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

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BulkInsertOperationStatus`

| Property | Type | Description |
|----------|------|-------------|
| `createdVmCount` | `integer` | [Output Only] Count of VMs successfully created so far. |
| `deletedVmCount` | `integer` | [Output Only] Count of VMs that got deleted during rollback. |
| `failedToCreateVmCount` | `integer` | [Output Only] Count of VMs that started creating but encountered an error. |
| `status` | `string` | [Output Only] Creation status of BulkInsert operation - information if the flow is rolling forwar... |
| `targetVmCount` | `integer` | [Output Only] Count of VMs originally planned to be created. |

### `ConfigFile`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The contents of the file. |

### `DebugInfo`

Describes additional debugging info.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Additional debugging information provided by the server. |
| `stackEntries` | `array<string>` | The stack trace entries indicating where the error occurred. |

### `Deployment`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | An optional user-provided description of the deployment. |
| `fingerprint` | `string` | Provides a fingerprint to use in requests to modify a deployment, such as `update()`, `stop()`, a... |
| `id` | `string` |  |
| `insertTime` | `string` | Output only. Creation timestamp in RFC3339 text format. |
| `labels` | `array<DeploymentLabelEntry>` | Map of One Platform labels; provided by the client when the resource is created or updated. Speci... |
| `manifest` | `string` | Output only. URL of the manifest representing the last manifest that was successfully deployed. I... |
| `name` | `string` | Name of the resource; provided by the client when the resource is created. The name must be 1-63 ... |
| `operation` | `Operation` | Output only. The Operation that most recently ran, or is currently running, on this deployment. |
| `selfLink` | `string` | Output only. Server defined URL for the resource. |
| `target` | `TargetConfiguration` | [Input Only] The parameters that define your deployment, including the deployment configuration a... |
| `update` | `DeploymentUpdate` | Output only. If Deployment Manager is currently updating or previewing an update to this deployme... |
| `updateTime` | `string` | Output only. Update timestamp in RFC3339 text format. |

### `DeploymentLabelEntry`

Label object for Deployments

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key of the label |
| `value` | `string` | Value of the label |

### `DeploymentUpdate`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. An optional user-provided description of the deployment after the current update has... |
| `labels` | `array<DeploymentUpdateLabelEntry>` | Map of One Platform labels; provided by the client when the resource is created or updated. Speci... |
| `manifest` | `string` | Output only. URL of the manifest representing the update configuration of this deployment. |

### `DeploymentUpdateLabelEntry`

Label object for DeploymentUpdate

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key of the label |
| `value` | `string` | Value of the label |

### `DeploymentsCancelPreviewRequest`

| Property | Type | Description |
|----------|------|-------------|
| `fingerprint` | `string` | Specifies a fingerprint for `cancelPreview()` requests. A fingerprint is a randomly generated val... |

### `DeploymentsListResponse`

A response containing a partial list of deployments and a page token used to build the next request if the request has been truncated.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<Deployment>` | Output only. The deployments contained in this response. |
| `nextPageToken` | `string` | Output only. A token used to continue a truncated list request. |

### `DeploymentsStopRequest`

| Property | Type | Description |
|----------|------|-------------|
| `fingerprint` | `string` | Specifies a fingerprint for `stop()` requests. A fingerprint is a randomly generated value that m... |

### `ErrorInfo`

Describes the cause of the error with structured details. Example of an error when contacting the "pubsub.googleapis.com" API when it is not enabled: { "reason": "API_DISABLED" "domain": "googleapis.com" "metadata": { "resource": "projects/123", "service": "pubsub.googleapis.com" } } This response indicates that the pubsub.googleapis.com API is not enabled. Example of an error that is returned when attempting to create a Spanner instance in a region that is out of stock: { "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata": { "availableRegions": "us-central1,us-east2" } }

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The logical grouping to which the "reason" belongs. The error domain is typically the registered ... |
| `metadatas` | `object` | Additional structured details about this error. Keys must match a regular expression of `a-z+` bu... |
| `reason` | `string` | The reason of the error. This is a constant value that identifies the proximate cause of the erro... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FirewallPolicyRuleOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `allocatedPriority` | `integer` | The priority allocated for the firewall policy rule if query parameters specified minPriority/max... |

### `GlobalSetPolicyRequest`

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Flatten Policy to create a backward compatible wire-format. Deprecated. Use 'policy' to specify b... |
| `etag` | `string` | Flatten Policy to create a backward compatible wire-format. Deprecated. Use 'policy' to specify t... |
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the 'resource'. The size of the policy is limited ... |
| `updateMask` | `string` | Update mask for the policy. |

### `Help`

Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<HelpLink>` | URL(s) pointing to additional information on handling the current error. |

### `HelpLink`

Describes a URL link.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what the link offers. |
| `url` | `string` | The URL of the link. |

### `ImportFile`

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The contents of the file. |
| `name` | `string` | The name of the file. |

### `InstancesBulkInsertOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | [Output Only] The machine type of the VMs that were created used internally only by KCP flex bulk... |
| `perLocationStatus` | `object` | Status information per location (location name is key). Example key: zones/us-central1-a |

### `LocalizedMessage`

Provides a localized error message that is safe to return to the user which can be attached to an RPC error.

| Property | Type | Description |
|----------|------|-------------|
| `locale` | `string` | The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `message` | `string` | The localized error message in the above locale. |

### `Manifest`

| Property | Type | Description |
|----------|------|-------------|
| `config` | `ConfigFile` | Output only. The YAML configuration for this manifest. |
| `expandedConfig` | `string` | Output only. The fully-expanded configuration file, including any templates and references. |
| `id` | `string` |  |
| `imports` | `array<ImportFile>` | Output only. The imported files for this manifest. |
| `insertTime` | `string` | Output only. Creation timestamp in RFC3339 text format. |
| `layout` | `string` | Output only. The YAML layout for this manifest. |
| `manifestSizeBytes` | `string` | Output only. The computed size of the fully expanded manifest. |
| `manifestSizeLimitBytes` | `string` | Output only. The size limit for expanded manifests in the project. |
| `name` | `string` | Output only. The name of the manifest. |
| `selfLink` | `string` | Output only. Self link for the manifest. |

### `ManifestsListResponse`

A response containing a partial list of manifests and a page token used to build the next request if the request has been truncated.

| Property | Type | Description |
|----------|------|-------------|
| `manifests` | `array<Manifest>` | Output only. Manifests contained in this list response. |
| `nextPageToken` | `string` | Output only. A token used to continue a truncated list request. |

### `Operation`

Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/{$api_version}/globalOperations) * [Regional](/compute/docs/reference/rest/{$api_version}/regionOperations) * [Zonal](/compute/docs/reference/rest/{$api_version}/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zoneOperations` resource. For more information, read Global, Regional, and Zonal Resources. Note that completed Operation resources have a limited retention period.

| Property | Type | Description |
|----------|------|-------------|
| `clientOperationId` | `string` | [Output Only] The value of `requestId` if you provided it in the request. Not present otherwise. |
| `creationTimestamp` | `string` | [Deprecated] This field is deprecated. |
| `description` | `string` | [Output Only] A textual description of the operation, which is set when the operation is created. |
| `endTime` | `string` | [Output Only] The time that this operation was completed. This value is in RFC3339 text format. |
| `error` | `object` | [Output Only] If errors are generated during processing of the operation, this field will be popu... |
| `firewallPolicyRuleOperationMetadata` | `FirewallPolicyRuleOperationMetadata` |  |
| `httpErrorMessage` | `string` | [Output Only] If the operation fails, this field contains the HTTP error message that was returne... |
| `httpErrorStatusCode` | `integer` | [Output Only] If the operation fails, this field contains the HTTP error status code that was ret... |
| `id` | `string` | [Output Only] The unique identifier for the operation. This identifier is defined by the server. |
| `insertTime` | `string` | [Output Only] The time that this operation was requested. This value is in RFC3339 text format. |
| `instancesBulkInsertOperationMetadata` | `InstancesBulkInsertOperationMetadata` |  |
| `kind` | `string` | Output only. [Output Only] Type of the resource. Always `compute#operation` for Operation resources. |
| `name` | `string` | [Output Only] Name of the operation. |
| `operationGroupId` | `string` | Output only. [Output Only] An ID that represents a group of operations, such as when a group of o... |
| `operationType` | `string` | [Output Only] The type of operation, such as `insert`, `update`, or `delete`, and so on. |
| `progress` | `integer` | [Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement t... |
| `region` | `string` | [Output Only] The URL of the region where the operation resides. Only applicable when performing ... |
| `selfLink` | `string` | [Output Only] Server-defined URL for the resource. |
| `selfLinkWithId` | `string` | Output only. [Output Only] Server-defined URL for this resource with the resource id. |
| `setAutoscalerLinkOperationMetadata` | `SetAutoscalerLinkOperationMetadata` | This field is used internally by the Autoscaler team and should not be promoted to "alpha/beta/v1". |
| `setCommonInstanceMetadataOperationMetadata` | `SetCommonInstanceMetadataOperationMetadata` | Output only. [Output Only] If the operation is for projects.setCommonInstanceMetadata, this field... |
| `startTime` | `string` | [Output Only] The time that this operation was started by the server. This value is in RFC3339 te... |
| `status` | `string` | [Output Only] The status of the operation, which can be one of the following: `PENDING`, `RUNNING... |
| `statusMessage` | `string` | [Output Only] An optional textual description of the current status of the operation. |
| `targetId` | `string` | [Output Only] The unique target ID, which identifies a specific incarnation of the target resource. |
| `targetLink` | `string` | [Output Only] The URL of the resource that the operation modifies. For operations related to crea... |
| `user` | `string` | [Output Only] User who requested the operation, for example: `user@example.com` or `alice_smith_i... |
| `warnings` | `array<object>` | [Output Only] If warning messages are generated during processing of the operation, this field wi... |
| `zone` | `string` | [Output Only] The URL of the zone where the operation resides. Only applicable when performing pe... |

### `OperationsListResponse`

A response containing a partial list of operations and a page token used to build the next request if the request has been truncated.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token used to continue a truncated list request. |
| `operations` | `array<Operation>` | Output only. Operations contained in this list response. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `QuotaExceededInfo`

Additional details for quota exceeded error for resource quota.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `object` | The map holding related quota dimensions. |
| `futureLimit` | `number` | Future quota limit being rolled out. The limit's unit depends on the quota type or metric. |
| `limit` | `number` | Current effective quota limit. The limit's unit depends on the quota type or metric. |
| `limitName` | `string` | The name of the quota limit. |
| `metricName` | `string` | The Compute Engine quota metric name. |
| `rolloutStatus` | `string` | Rollout status of the future quota limit. |

### `Resource`

| Property | Type | Description |
|----------|------|-------------|
| `accessControl` | `ResourceAccessControl` | The Access Control Policy set on this resource. |
| `finalProperties` | `string` | Output only. The evaluated properties of the resource with references expanded. Returned as seria... |
| `id` | `string` |  |
| `insertTime` | `string` | Output only. Creation timestamp in RFC3339 text format. |
| `manifest` | `string` | Output only. URL of the manifest representing the current configuration of this resource. |
| `name` | `string` | Output only. The name of the resource as it appears in the YAML config. |
| `properties` | `string` | Output only. The current properties of the resource before any references have been filled in. Re... |
| `type` | `string` | Output only. The type of the resource, for example `compute.v1.instance`, or `cloudfunctions.v1be... |
| `update` | `ResourceUpdate` | Output only. If Deployment Manager is currently updating or previewing an update to this resource... |
| `updateTime` | `string` | Output only. Update timestamp in RFC3339 text format. |
| `url` | `string` | Output only. The URL of the actual resource. |
| `warnings` | `array<object>` | Output only. If warning messages are generated during processing of this resource, this field wil... |

### `ResourceAccessControl`

The access controls set on the resource.

| Property | Type | Description |
|----------|------|-------------|
| `gcpIamPolicy` | `string` | The GCP IAM Policy to set on the resource. |

### `ResourceUpdate`

| Property | Type | Description |
|----------|------|-------------|
| `accessControl` | `ResourceAccessControl` | The Access Control Policy to set on this resource after updating the resource itself. |
| `error` | `object` | Output only. If errors are generated during update of the resource, this field will be populated. |
| `finalProperties` | `string` | Output only. The expanded properties of the resource with reference values expanded. Returned as ... |
| `intent` | `string` | Output only. The intent of the resource: `PREVIEW`, `UPDATE`, or `CANCEL`. |
| `manifest` | `string` | Output only. URL of the manifest representing the update configuration of this resource. |
| `properties` | `string` | Output only. The set of updated properties for this resource, before references are expanded. Ret... |
| `state` | `string` | Output only. The state of the resource. |
| `warnings` | `array<object>` | Output only. If warning messages are generated during processing of this resource, this field wil... |

### `ResourcesListResponse`

A response containing a partial list of resources and a page token used to build the next request if the request has been truncated.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token used to continue a truncated list request. |
| `resources` | `array<Resource>` | Resources contained in this list response. |

### `SetAutoscalerLinkOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `zonalIgmIds` | `array<string>` | List of zonal IGM IDs part of the RMIG. |
| `zoneToIgmIds` | `object` | Map of zone to an ID of the zonal IGM belonging to the RMIG. |

### `SetCommonInstanceMetadataOperationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `clientOperationId` | `string` | [Output Only] The client operation id. |
| `perLocationOperations` | `object` | [Output Only] Status information per location (location name is key). Example key: zones/us-centr... |

### `SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo`

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | [Output Only] If state is `ABANDONED` or `FAILED`, this field is populated. |
| `state` | `string` | [Output Only] Status of the action, which can be one of the following: `PROPAGATING`, `PROPAGATED... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TargetConfiguration`

| Property | Type | Description |
|----------|------|-------------|
| `config` | `ConfigFile` | The configuration to use for this deployment. |
| `imports` | `array<ImportFile>` | Specifies any files to import for this configuration. This can be used to import templates or oth... |

### `TestPermissionsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the 'resource'. Permissions with wildcards (such as '*' or 's... |

### `TestPermissionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `Type`

A resource type supported by Deployment Manager.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` |  |
| `insertTime` | `string` | Output only. Creation timestamp in RFC3339 text format. |
| `name` | `string` | Name of the type. |
| `operation` | `Operation` | Output only. The Operation that most recently ran, or is currently running, on this type. |
| `selfLink` | `string` | Output only. Server defined URL for the resource. |

### `TypesListResponse`

A response that returns all Types supported by Deployment Manager

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token used to continue a truncated list request. |
| `types` | `array<Type>` | Output only. A list of resource types supported by Deployment Manager. |

