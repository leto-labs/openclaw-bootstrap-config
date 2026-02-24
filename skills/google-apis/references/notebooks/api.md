# Notebooks API - API Reference

**Version**: `v2` | **Methods**: 28 | **Schemas**: 52

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `notebooks.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `notebooks.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `notebooks.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `notebooks.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `notebooks.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `notebooks.projects.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `notebooks.projects.locations.instances.generateAccessToken` | POST | `v2/{+name}:generateAccessToken` | Called by VM to return an EUC for the instance owner. Do not use this method directly. Design doc... |
| `notebooks.projects.locations.instances.getConfig` | GET | `v2/{+name}/instances:getConfig` | Returns various configuration parameters. |
| `notebooks.projects.locations.instances.reportInfoSystem` | POST | `v2/{+name}:reportInfoSystem` | Allows notebook instances to report their latest instance information to the Notebooks API server... |
| `notebooks.projects.locations.instances.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `notebooks.projects.locations.instances.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `notebooks.projects.locations.instances.list` | GET | `v2/{+parent}/instances` | Lists instances in a given project and location. |
| `notebooks.projects.locations.instances.diagnose` | POST | `v2/{+name}:diagnose` | Creates a Diagnostic File and runs Diagnostic Tool given an Instance. |
| `notebooks.projects.locations.instances.stop` | POST | `v2/{+name}:stop` | Stops a notebook instance. |
| `notebooks.projects.locations.instances.patch` | PATCH | `v2/{+name}` | UpdateInstance updates an Instance. |
| `notebooks.projects.locations.instances.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `notebooks.projects.locations.instances.checkUpgradability` | GET | `v2/{+notebookInstance}:checkUpgradability` | Checks whether a notebook instance is upgradable. |
| `notebooks.projects.locations.instances.checkAuthorization` | POST | `v2/{+name}:checkAuthorization` | Initiated by Cloud Console for Oauth consent flow for Workbench Instances. Do not use this method... |
| `notebooks.projects.locations.instances.rollback` | POST | `v2/{+name}:rollback` | Rollbacks a notebook instance to the previous version. |
| `notebooks.projects.locations.instances.restore` | POST | `v2/{+name}:restore` | RestoreInstance restores an Instance from a BackupSource. |
| `notebooks.projects.locations.instances.get` | GET | `v2/{+name}` | Gets details of a single Instance. |
| `notebooks.projects.locations.instances.upgrade` | POST | `v2/{+name}:upgrade` | Upgrades a notebook instance to the latest version. |
| `notebooks.projects.locations.instances.start` | POST | `v2/{+name}:start` | Starts a notebook instance. |
| `notebooks.projects.locations.instances.delete` | DELETE | `v2/{+name}` | Deletes a single Instance. |
| `notebooks.projects.locations.instances.create` | POST | `v2/{+parent}/instances` | Creates a new Instance in a given project and location. |
| `notebooks.projects.locations.instances.resizeDisk` | POST | `v2/{+notebookInstance}:resizeDisk` | Resize a notebook instance disk to a higher capacity. |
| `notebooks.projects.locations.instances.reset` | POST | `v2/{+name}:reset` | Resets a notebook instance. |
| `notebooks.projects.locations.instances.upgradeSystem` | POST | `v2/{+name}:upgradeSystem` | Allows notebook instances to upgrade themselves. Do not use this method directly. |

### `notebooks.projects.locations.list`

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
const res = await notebooks.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await notebooks.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await notebooks.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.operations.list`

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
const res = await notebooks.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await notebooks.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await notebooks.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.generateAccessToken`

**POST** `v2/{+name}:generateAccessToken`

Called by VM to return an EUC for the instance owner. Do not use this method directly. Design doc: go/wbi-euc:dd

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project}/locations/{location}/instances/{instance_id}` |

**Request body**: `GenerateAccessTokenRequest`

**Response**: `GenerateAccessTokenResponse`

```typescript
const res = await notebooks.instances.generateAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.getConfig`

**GET** `v2/{+name}/instances:getConfig`

Returns various configuration parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}` |

**Response**: `Config`

```typescript
const res = await notebooks.instances.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.reportInfoSystem`

**POST** `v2/{+name}:reportInfoSystem`

Allows notebook instances to report their latest instance information to the Notebooks API server. The server will merge the reported information to the instance metadata store. Do not use this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `ReportInstanceInfoSystemRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.reportInfoSystem({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await notebooks.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await notebooks.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.list`

**GET** `v2/{+parent}/instances`

Lists instances in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the instance. Formats: - `projects/{project_id}/locations/{location}` to list instances in a ... |
| `filter` | `string` | query | No | Optional. List filter. |
| `orderBy` | `string` | query | No | Optional. Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | Optional. Maximum return size of the list call. |
| `pageToken` | `string` | query | No | Optional. A previous returned page token that can be used to continue listing from the last result. |

**Response**: `ListInstancesResponse`

```typescript
const res = await notebooks.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.diagnose`

**POST** `v2/{+name}:diagnose`

Creates a Diagnostic File and runs Diagnostic Tool given an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `DiagnoseInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.diagnose({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.stop`

**POST** `v2/{+name}:stop`

Stops a notebook instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `StopInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.patch`

**PATCH** `v2/{+name}`

UpdateInstance updates an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/inst... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |
| `updateMask` | `string` | query | No | Required. Mask used to update an instance. Updatable fields: * `labels` * `gce_setup.min_cpu_platform` * `gce_setup.m... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await notebooks.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.checkUpgradability`

**GET** `v2/{+notebookInstance}:checkUpgradability`

Checks whether a notebook instance is upgradable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `notebookInstance` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Response**: `CheckInstanceUpgradabilityResponse`

```typescript
const res = await notebooks.instances.checkUpgradability({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.checkAuthorization`

**POST** `v2/{+name}:checkAuthorization`

Initiated by Cloud Console for Oauth consent flow for Workbench Instances. Do not use this method directly. Design doc: go/wbi-euc:auth-dd

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Notebook Instance resource. Format: `projects/{project}/locations/{location}/instances/{ins... |

**Request body**: `CheckAuthorizationRequest`

**Response**: `CheckAuthorizationResponse`

```typescript
const res = await notebooks.instances.checkAuthorization({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.rollback`

**POST** `v2/{+name}:rollback`

Rollbacks a notebook instance to the previous version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `RollbackInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.restore`

**POST** `v2/{+name}:restore`

RestoreInstance restores an Instance from a BackupSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `RestoreInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.get`

**GET** `v2/{+name}`

Gets details of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Response**: `Instance`

```typescript
const res = await notebooks.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.upgrade`

**POST** `v2/{+name}:upgrade`

Upgrades a notebook instance to the latest version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `UpgradeInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.upgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.start`

**POST** `v2/{+name}:start`

Starts a notebook instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `StartInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.delete`

**DELETE** `v2/{+name}`

Deletes a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Response**: `Operation`

```typescript
const res = await notebooks.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.create`

**POST** `v2/{+parent}/instances`

Creates a new Instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Format: `parent=projects/{project_id}/locations/{location}` |
| `instanceId` | `string` | query | No | Required. User-defined unique ID of this instance. |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.resizeDisk`

**POST** `v2/{+notebookInstance}:resizeDisk`

Resize a notebook instance disk to a higher capacity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `notebookInstance` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `ResizeDiskRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.resizeDisk({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.reset`

**POST** `v2/{+name}:reset`

Resets a notebook instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `ResetInstanceRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `notebooks.projects.locations.instances.upgradeSystem`

**POST** `v2/{+name}:upgradeSystem`

Allows notebook instances to upgrade themselves. Do not use this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}` |

**Request body**: `UpgradeInstanceSystemRequest`

**Response**: `Operation`

```typescript
const res = await notebooks.instances.upgradeSystem({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceleratorConfig`

An accelerator configuration for a VM instance Definition of a hardware accelerator. Note that there is no check on `type` and `core_count` combinations. TPUs are not supported. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.

| Property | Type | Description |
|----------|------|-------------|
| `coreCount` | `string` | Optional. Count of cores of this accelerator. |
| `type` | `string` | Optional. Type of this accelerator. |

### `AccessConfig`

An access configuration attached to an instance's network interface.

| Property | Type | Description |
|----------|------|-------------|
| `externalIp` | `string` | An external IP address associated with this instance. Specify an unused static external IP addres... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BootDisk`

The definition of a boot disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskEncryption` | `string` | Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK. |
| `diskSizeGb` | `string` | Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB ... |
| `diskType` | `string` | Optional. Indicates the type of the disk. |
| `kmsKey` | `string` | Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption i... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CheckAuthorizationRequest`

Request message for checking authorization for the instance owner.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationDetails` | `object` | Optional. The details of the OAuth authorization response. This may include additional params suc... |

### `CheckAuthorizationResponse`

Response message for checking authorization for the instance owner.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when this Authorization request was created. |
| `oauth_uri` | `string` | If the user has not completed OAuth consent, then the oauth_url is returned. Otherwise, this fiel... |
| `success` | `boolean` | Success indicates that the user completed OAuth consent and access tokens can be generated. |

### `CheckInstanceUpgradabilityResponse`

Response for checking if a notebook instance is upgradeable.

| Property | Type | Description |
|----------|------|-------------|
| `upgradeImage` | `string` | The new image self link this instance will be upgraded to if calling the upgrade endpoint. This f... |
| `upgradeInfo` | `string` | Additional information about upgrade. |
| `upgradeVersion` | `string` | The version this instance will be upgraded to if calling the upgrade endpoint. This field will on... |
| `upgradeable` | `boolean` | If an instance is upgradeable. |

### `ConfidentialInstanceConfig`

A set of Confidential Instance options.

| Property | Type | Description |
|----------|------|-------------|
| `confidentialInstanceType` | `string` | Optional. Defines the type of technology used by the confidential instance. |

### `Config`

Response for getting WbI configurations in a location

| Property | Type | Description |
|----------|------|-------------|
| `availableImages` | `array<ImageRelease>` | Output only. The list of available images to create a WbI. |
| `defaultValues` | `DefaultValues` | Output only. The default values for configuration. |
| `disableWorkbenchLegacyCreation` | `boolean` | Output only. Flag to disable the creation of legacy Workbench notebooks (User-managed notebooks a... |
| `supportedValues` | `SupportedValues` | Output only. The supported values for configuration. |

### `ContainerImage`

Definition of a container image for starting a notebook instance with the environment installed in a container.

| Property | Type | Description |
|----------|------|-------------|
| `repository` | `string` | Required. The path to the container image repository. For example: `gcr.io/{project_id}/{image_na... |
| `tag` | `string` | Optional. The tag of the container image. If not specified, this defaults to the latest tag. |

### `DataDisk`

An instance-attached disk resource.

| Property | Type | Description |
|----------|------|-------------|
| `diskEncryption` | `string` | Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK. |
| `diskSizeGb` | `string` | Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (6... |
| `diskType` | `string` | Optional. Input only. Indicates the type of the disk. |
| `kmsKey` | `string` | Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption i... |
| `resourcePolicies` | `array<string>` | Optional. The resource policies to apply to the data disk. |

### `DefaultValues`

DefaultValues represents the default configuration values.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Output only. The default machine type used by the backend if not provided by the user. |

### `DiagnoseInstanceRequest`

Request for creating a notebook instance diagnostic file.

| Property | Type | Description |
|----------|------|-------------|
| `diagnosticConfig` | `DiagnosticConfig` | Required. Defines flags that are used to run the diagnostic tool |
| `timeoutMinutes` | `integer` | Optional. Maximum amount of time in minutes before the operation times out. |

### `DiagnosticConfig`

Defines flags that are used to run the diagnostic tool

| Property | Type | Description |
|----------|------|-------------|
| `enableCopyHomeFilesFlag` | `boolean` | Optional. Enables flag to copy all `/home/jupyter` folder contents |
| `enablePacketCaptureFlag` | `boolean` | Optional. Enables flag to capture packets from the instance for 30 seconds |
| `enableRepairFlag` | `boolean` | Optional. Enables flag to repair service for instance |
| `gcsBucket` | `string` | Required. User Cloud Storage bucket location (REQUIRED). Must be formatted with path prefix (`gs:... |
| `relativePath` | `string` | Optional. Defines the relative storage path in the Cloud Storage bucket where the diagnostic logs... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Event`

The definition of an Event for a managed / semi-managed notebook instance.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Optional. Event details. This field is used to pass event information. |
| `reportTime` | `string` | Optional. Event report time. |
| `type` | `string` | Optional. Event type. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GPUDriverConfig`

A GPU driver configuration

| Property | Type | Description |
|----------|------|-------------|
| `customGpuDriverPath` | `string` | Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, w... |
| `enableGpuDriver` | `boolean` | Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance.... |

### `GceSetup`

The definition of how to configure a VM instance outside of Resources and Identity.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorConfigs` | `array<AcceleratorConfig>` | Optional. The hardware accelerators used on this instance. If you use accelerators, make sure tha... |
| `bootDisk` | `BootDisk` | Optional. The boot disk for the VM. |
| `confidentialInstanceConfig` | `ConfidentialInstanceConfig` | Optional. Confidential instance configuration. |
| `containerImage` | `ContainerImage` | Optional. Use a container image to start the notebook instance. |
| `dataDisks` | `array<DataDisk>` | Optional. Data disks attached to the VM instance. Currently supports only one data disk. |
| `disablePublicIp` | `boolean` | Optional. If true, no external IP will be assigned to this VM instance. |
| `enableIpForwarding` | `boolean` | Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/do... |
| `gpuDriverConfig` | `GPUDriverConfig` | Optional. Configuration for GPU drivers. |
| `instanceId` | `string` | Output only. The unique ID of the Compute Engine instance resource. |
| `machineType` | `string` | Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-reso... |
| `metadata` | `object` | Optional. Custom metadata to apply to this instance. |
| `minCpuPlatform` | `string` | Optional. The minimum CPU platform to use for this instance. The list of valid values can be foun... |
| `networkInterfaces` | `array<NetworkInterface>` | Optional. The network interfaces for the VM. Supports only one interface. |
| `reservationAffinity` | `ReservationAffinity` | Optional. Specifies the reservations that this instance can consume from. |
| `serviceAccounts` | `array<ServiceAccount>` | Optional. The service account that serves as an identity for the VM instance. Currently supports ... |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.... |
| `tags` | `array<string>` | Optional. The Compute Engine network tags to add to runtime (see [Add network tags](https://cloud... |
| `vmImage` | `VmImage` | Optional. Use a Compute Engine VM image to start the notebook instance. |

### `GenerateAccessTokenRequest`

Request message for generating an EUC for the instance owner.

| Property | Type | Description |
|----------|------|-------------|
| `vmToken` | `string` | Required. The VM identity token (a JWT) for authenticating the VM. https://cloud.google.com/compu... |

### `GenerateAccessTokenResponse`

Response message for generating an EUC for the instance owner.

| Property | Type | Description |
|----------|------|-------------|
| `access_token` | `string` | Short-lived access token string which may be used to access Google APIs. |
| `expires_in` | `integer` | The time in seconds when the access token expires. Typically that's 3600. |
| `scope` | `string` | Space-separated list of scopes contained in the returned token. https://cloud.google.com/docs/aut... |
| `token_type` | `string` | Type of the returned access token (e.g. "Bearer"). It specifies how the token must be used. Beare... |

### `ImageRelease`

ConfigImage represents an image release available to create a WbI

| Property | Type | Description |
|----------|------|-------------|
| `imageName` | `string` | Output only. The name of the image of the form workbench-instances-vYYYYmmdd-- |
| `releaseName` | `string` | Output only. The release of the image of the form m123 |

### `Instance`

The definition of a notebook instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Instance creation time. |
| `creator` | `string` | Output only. Email address of entity that sent original CreateInstance request. |
| `disableProxyAccess` | `boolean` | Optional. If true, the notebook instance will not register with the proxy. |
| `enableDeletionProtection` | `boolean` | Optional. If true, deletion protection will be enabled for this Workbench Instance. If false, del... |
| `enableManagedEuc` | `boolean` | Optional. Flag to enable managed end user credentials for the instance. |
| `enableThirdPartyIdentity` | `boolean` | Optional. Flag that specifies that a notebook can be accessed with third party identity provider. |
| `gceSetup` | `GceSetup` | Optional. Compute Engine setup for the notebook. Uses notebook-defined fields. |
| `healthInfo` | `object` | Output only. Additional information about instance health. Example: healthInfo": { "docker_proxy_... |
| `healthState` | `string` | Output only. Instance health_state. |
| `id` | `string` | Output only. Unique ID of the resource. |
| `instanceOwners` | `array<string>` | Optional. The owner of this instance after creation. Format: `alias@example.com` Currently suppor... |
| `labels` | `object` | Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance met... |
| `name` | `string` | Output only. Identifier. The name of this notebook instance. Format: `projects/{project_id}/locat... |
| `proxyUri` | `string` | Output only. The proxy endpoint that is used to access the Jupyter notebook. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use for Zone Isolation. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use for Zone Separation. |
| `state` | `string` | Output only. The state of this instance. |
| `thirdPartyProxyUrl` | `string` | Output only. The workforce pools proxy endpoint that is used to access the Jupyter notebook. |
| `updateTime` | `string` | Output only. Instance update time. |
| `upgradeHistory` | `array<UpgradeHistoryEntry>` | Output only. The upgrade history of this instance. |

### `ListInstancesResponse`

Response for listing notebook instances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | A list of returned instances. |
| `nextPageToken` | `string` | Page token that can be used to continue listing from the last result in the next list call. |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. For example, ['projects/{project_id}/locatio... |

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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `NetworkInterface`

The definition of a network interface resource attached to a VM.

| Property | Type | Description |
|----------|------|-------------|
| `accessConfigs` | `array<AccessConfig>` | Optional. An array of configurations for this interface. Currently, only one access config, ONE_T... |
| `network` | `string` | Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/... |
| `nicType` | `string` | Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet. |
| `subnet` | `string` | Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regi... |

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

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version used to start the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `endpoint` | `string` | API endpoint name of this operation. |
| `requestedCancellation` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `statusMessage` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ReportInstanceInfoSystemRequest`

Request for notebook instances to report information to Notebooks API.

| Property | Type | Description |
|----------|------|-------------|
| `event` | `Event` | Required. The Event to be reported. |
| `vmId` | `string` | Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/... |

### `ReservationAffinity`

A reservation that an instance can consume from.

| Property | Type | Description |
|----------|------|-------------|
| `consumeReservationType` | `string` | Required. Specifies the type of reservation from which this instance can consume resources: RESER... |
| `key` | `string` | Optional. Corresponds to the label key of a reservation resource. To target a RESERVATION_SPECIFI... |
| `values` | `array<string>` | Optional. Corresponds to the label values of a reservation resource. This can be either a name to... |

### `ResetInstanceRequest`

Request for resetting a notebook instance

### `ResizeDiskRequest`

Request for resizing the notebook instance disks

| Property | Type | Description |
|----------|------|-------------|
| `bootDisk` | `BootDisk` | Required. The boot disk to be resized. Only disk_size_gb will be used. |
| `dataDisk` | `DataDisk` | Required. The data disk to be resized. Only disk_size_gb will be used. |

### `RestoreInstanceRequest`

Request for restoring the notebook instance from a BackupSource.

| Property | Type | Description |
|----------|------|-------------|
| `snapshot` | `Snapshot` | Snapshot to be used for restore. |

### `RollbackInstanceRequest`

Request for rollbacking a notebook instance

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Required. Output only. Revision Id |
| `targetSnapshot` | `string` | Required. The snapshot for rollback. Example: "projects/test-project/global/snapshots/krwlzipynril". |

### `ServiceAccount`

A service account that acts as an identity.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Optional. Email address of the service account. |
| `scopes` | `array<string>` | Output only. The list of scopes to be made available for this service account. Set by the CLH to ... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `ShieldedInstanceConfig`

A set of Shielded Instance options. See [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm). Not all combinations are valid.

| Property | Type | Description |
|----------|------|-------------|
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether the VM instance has integrity monitoring enabled. Enables monitoring an... |
| `enableSecureBoot` | `boolean` | Optional. Defines whether the VM instance has Secure Boot enabled. Secure Boot helps ensure that ... |
| `enableVtpm` | `boolean` | Optional. Defines whether the VM instance has the vTPM enabled. |

### `Snapshot`

Snapshot represents the snapshot of the data disk used to restore the Workbench Instance from. Refers to: compute/v1/projects/{project_id}/global/snapshots/{snapshot_id}

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The project ID of the snapshot. |
| `snapshotId` | `string` | Required. The ID of the snapshot. |

### `StartInstanceRequest`

Request for starting a notebook instance

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopInstanceRequest`

Request for stopping a notebook instance

### `SupportedValues`

SupportedValues represents the values supported by the configuration.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorTypes` | `array<string>` | Output only. The accelerator types supported by WbI. |
| `machineTypes` | `array<string>` | Output only. The machine types supported by WbI. |

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

### `UpgradeHistoryEntry`

The entry of VM image upgrade history.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Optional. Action. Rolloback or Upgrade. |
| `containerImage` | `string` | Optional. The container image before this instance upgrade. |
| `createTime` | `string` | Immutable. The time that this instance upgrade history entry is created. |
| `framework` | `string` | Optional. The framework of this notebook instance. |
| `snapshot` | `string` | Optional. The snapshot of the boot disk of this notebook instance before upgrade. |
| `state` | `string` | Output only. The state of this instance upgrade history entry. |
| `targetVersion` | `string` | Optional. Target VM Version, like m63. |
| `version` | `string` | Optional. The version of the notebook instance before this upgrade. |
| `vmImage` | `string` | Optional. The VM image before this instance upgrade. |

### `UpgradeInstanceRequest`

Request for upgrading a notebook instance

### `UpgradeInstanceSystemRequest`

Request for upgrading a notebook instance from within the VM

| Property | Type | Description |
|----------|------|-------------|
| `vmId` | `string` | Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/... |

### `VmImage`

Definition of a custom Compute Engine virtual machine image for starting a notebook instance with the environment installed directly on the VM.

| Property | Type | Description |
|----------|------|-------------|
| `family` | `string` | Optional. Use this VM image family to find the image; the newest image in this family will be used. |
| `name` | `string` | Optional. Use VM image name to find the image. |
| `project` | `string` | Required. The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}` |

