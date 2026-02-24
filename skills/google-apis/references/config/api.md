# Infrastructure Manager API - API Reference

**Version**: `v1` | **Methods**: 38 | **Schemas**: 58

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `config.projects.locations.updateAutoMigrationConfig` | PATCH | `v1/{+name}` | Updates the AutoMigrationConfig for a given project and location. |
| `config.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `config.projects.locations.getAutoMigrationConfig` | GET | `v1/{+name}` | Get the AutoMigrationConfig for a given project and location. |
| `config.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `config.projects.locations.terraformVersions.list` | GET | `v1/{+parent}/terraformVersions` | Lists TerraformVersions in a given project and location. |
| `config.projects.locations.terraformVersions.get` | GET | `v1/{+name}` | Gets details about a TerraformVersion. |
| `config.projects.locations.previews.export` | POST | `v1/{+parent}:export` | Export Preview results. |
| `config.projects.locations.previews.list` | GET | `v1/{+parent}/previews` | Lists Previews in a given project and location. |
| `config.projects.locations.previews.delete` | DELETE | `v1/{+name}` | Deletes a Preview. |
| `config.projects.locations.previews.get` | GET | `v1/{+name}` | Gets details about a Preview. |
| `config.projects.locations.previews.create` | POST | `v1/{+parent}/previews` | Creates a Preview. |
| `config.projects.locations.previews.resourceChanges.get` | GET | `v1/{+name}` | Get a ResourceChange for a given preview. |
| `config.projects.locations.previews.resourceChanges.list` | GET | `v1/{+parent}/resourceChanges` | Lists ResourceChanges for a given preview. |
| `config.projects.locations.previews.resourceDrifts.get` | GET | `v1/{+name}` | Get a ResourceDrift for a given preview. |
| `config.projects.locations.previews.resourceDrifts.list` | GET | `v1/{+parent}/resourceDrifts` | List ResourceDrifts for a given preview. |
| `config.projects.locations.deployments.importState` | POST | `v1/{+parent}:importState` | Imports Terraform state file in a given deployment. The state file does not take effect until the... |
| `config.projects.locations.deployments.exportLock` | GET | `v1/{+name}:exportLock` | Exports the lock info on a locked deployment. |
| `config.projects.locations.deployments.unlock` | POST | `v1/{+name}:unlock` | Unlocks a locked deployment. |
| `config.projects.locations.deployments.lock` | POST | `v1/{+name}:lock` | Locks a deployment. |
| `config.projects.locations.deployments.deleteState` | POST | `v1/{+name}:deleteState` | Deletes Terraform state file in a given deployment. |
| `config.projects.locations.deployments.list` | GET | `v1/{+parent}/deployments` | Lists Deployments in a given project and location. |
| `config.projects.locations.deployments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `config.projects.locations.deployments.delete` | DELETE | `v1/{+name}` | Deletes a Deployment. |
| `config.projects.locations.deployments.create` | POST | `v1/{+parent}/deployments` | Creates a Deployment. |
| `config.projects.locations.deployments.patch` | PATCH | `v1/{+name}` | Updates a Deployment. |
| `config.projects.locations.deployments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `config.projects.locations.deployments.exportState` | POST | `v1/{+parent}:exportState` | Exports Terraform state file from a given deployment. |
| `config.projects.locations.deployments.get` | GET | `v1/{+name}` | Gets details about a Deployment. |
| `config.projects.locations.deployments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `config.projects.locations.deployments.revisions.exportState` | POST | `v1/{+parent}:exportState` | Exports Terraform state file from a given revision. |
| `config.projects.locations.deployments.revisions.list` | GET | `v1/{+parent}/revisions` | Lists Revisions of a deployment. |
| `config.projects.locations.deployments.revisions.get` | GET | `v1/{+name}` | Gets details about a Revision. |
| `config.projects.locations.deployments.revisions.resources.list` | GET | `v1/{+parent}/resources` | Lists Resources in a given revision. |
| `config.projects.locations.deployments.revisions.resources.get` | GET | `v1/{+name}` | Gets details about a Resource deployed by Infra Manager. |
| `config.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `config.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `config.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `config.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `config.projects.locations.updateAutoMigrationConfig`

**PATCH** `v1/{+name}`

Updates the AutoMigrationConfig for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the AutoMigrationConfig. Format: 'projects/{project_id}/locations/{location}/AutoMigrationCon... |
| `updateMask` | `string` | query | No | Optional. The update mask applies to the resource. See google.protobuf.FieldMask. |

**Request body**: `AutoMigrationConfig`

**Response**: `Operation`

```typescript
const res = await config.locations.updateAutoMigrationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.list`

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
const res = await config.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.getAutoMigrationConfig`

**GET** `v1/{+name}`

Get the AutoMigrationConfig for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AutoMigrationConfig. Format: 'projects/{project_id}/locations/{location}/AutoMigrationConfig'. |

**Response**: `AutoMigrationConfig`

```typescript
const res = await config.locations.getAutoMigrationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await config.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.terraformVersions.list`

**GET** `v1/{+parent}/terraformVersions`

Lists TerraformVersions in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the TerraformVersions are listed. The parent value is in the format: 'projects/... |
| `filter` | `string` | query | No | Optional. Lists the TerraformVersions that match the filter expression. A filter expression filters the resources lis... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. When requesting a page of terraform versions, 'page_size' specifies number of terraform versions to return.... |
| `pageToken` | `string` | query | No | Optional. Token returned by previous call to 'ListTerraformVersions' which specifies the position in the list from wh... |

**Response**: `ListTerraformVersionsResponse`

```typescript
const res = await config.terraformVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.terraformVersions.get`

**GET** `v1/{+name}`

Gets details about a TerraformVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the TerraformVersion. Format: 'projects/{project_id}/locations/{location}/terraformVersions/{te... |

**Response**: `TerraformVersion`

```typescript
const res = await config.terraformVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.export`

**POST** `v1/{+parent}:export`

Export Preview results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The preview whose results should be exported. The preview value is in the format: 'projects/{project_id}/lo... |

**Request body**: `ExportPreviewResultRequest`

**Response**: `ExportPreviewResultResponse`

```typescript
const res = await config.previews.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.list`

**GET** `v1/{+parent}/previews`

Lists Previews in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Previews are listed. The parent value is in the format: 'projects/{project_... |
| `filter` | `string` | query | No | Optional. Lists the Deployments that match the filter expression. A filter expression filters the resources listed in... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. When requesting a page of resources, 'page_size' specifies number of resources to return. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. Token returned by previous call to 'ListDeployments' which specifies the position in the list from where to... |

**Response**: `ListPreviewsResponse`

```typescript
const res = await config.previews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.delete`

**DELETE** `v1/{+name}`

Deletes a Preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Preview in the format: 'projects/{project_id}/locations/{location}/previews/{preview}'. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await config.previews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.get`

**GET** `v1/{+name}`

Gets details about a Preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the preview. Format: 'projects/{project_id}/locations/{location}/previews/{preview}'. |

**Response**: `Preview`

```typescript
const res = await config.previews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.create`

**POST** `v1/{+parent}/previews`

Creates a Preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Preview is created. The parent value is in the format: 'projects/{project_i... |
| `previewId` | `string` | query | No | Optional. The preview ID. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Preview`

**Response**: `Operation`

```typescript
const res = await config.previews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.resourceChanges.get`

**GET** `v1/{+name}`

Get a ResourceChange for a given preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource change to retrieve. Format: 'projects/{project_id}/locations/{location}/previews/{... |

**Response**: `ResourceChange`

```typescript
const res = await config.resourceChanges.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.resourceChanges.list`

**GET** `v1/{+parent}/resourceChanges`

Lists ResourceChanges for a given preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the ResourceChanges are listed. The parent value is in the format: 'projects/{p... |
| `filter` | `string` | query | No | Optional. Lists the resource changes that match the filter expression. A filter expression filters the resource chang... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. When requesting a page of resource changes, 'page_size' specifies number of resource changes to return. If ... |
| `pageToken` | `string` | query | No | Optional. Token returned by previous call to 'ListResourceChanges' which specifies the position in the list from wher... |

**Response**: `ListResourceChangesResponse`

```typescript
const res = await config.resourceChanges.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.resourceDrifts.get`

**GET** `v1/{+name}`

Get a ResourceDrift for a given preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource drift to retrieve. Format: 'projects/{project_id}/locations/{location}/previews/{p... |

**Response**: `ResourceDrift`

```typescript
const res = await config.resourceDrifts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.previews.resourceDrifts.list`

**GET** `v1/{+parent}/resourceDrifts`

List ResourceDrifts for a given preview.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the ResourceDrifts are listed. The parent value is in the format: 'projects/{pr... |
| `filter` | `string` | query | No | Optional. Lists the resource drifts that match the filter expression. A filter expression filters the resource drifts... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. When requesting a page of resource drifts, 'page_size' specifies number of resource drifts to return. If un... |
| `pageToken` | `string` | query | No | Optional. Token returned by previous call to 'ListResourceDrifts' which specifies the position in the list from where... |

**Response**: `ListResourceDriftsResponse`

```typescript
const res = await config.resourceDrifts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.importState`

**POST** `v1/{+parent}:importState`

Imports Terraform state file in a given deployment. The state file does not take effect until the Deployment has been unlocked.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the statefile is listed. The parent value is in the format: 'projects/{project_... |

**Request body**: `ImportStatefileRequest`

**Response**: `Statefile`

```typescript
const res = await config.deployments.importState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.exportLock`

**GET** `v1/{+name}:exportLock`

Exports the lock info on a locked deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment in the format: 'projects/{project_id}/locations/{location}/deployments/{deployme... |

**Response**: `LockInfo`

```typescript
const res = await config.deployments.exportLock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.unlock`

**POST** `v1/{+name}:unlock`

Unlocks a locked deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment in the format: 'projects/{project_id}/locations/{location}/deployments/{deployme... |

**Request body**: `UnlockDeploymentRequest`

**Response**: `Operation`

```typescript
const res = await config.deployments.unlock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.lock`

**POST** `v1/{+name}:lock`

Locks a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment in the format: 'projects/{project_id}/locations/{location}/deployments/{deployme... |

**Request body**: `LockDeploymentRequest`

**Response**: `Operation`

```typescript
const res = await config.deployments.lock({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.deleteState`

**POST** `v1/{+name}:deleteState`

Deletes Terraform state file in a given deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment in the format: 'projects/{project_id}/locations/{location}/deployments/{deployme... |

**Request body**: `DeleteStatefileRequest`

**Response**: `Empty`

```typescript
const res = await config.deployments.deleteState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists Deployments in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Deployments are listed. The parent value is in the format: 'projects/{proje... |
| `filter` | `string` | query | No | Lists the Deployments that match the filter expression. A filter expression filters the resources listed in the respo... |
| `orderBy` | `string` | query | No | Field to use to sort the list. |
| `pageSize` | `integer` | query | No | When requesting a page of resources, 'page_size' specifies number of resources to return. If unspecified, at most 500... |
| `pageToken` | `string` | query | No | Token returned by previous call to 'ListDeployments' which specifies the position in the list from where to continue ... |

**Response**: `ListDeploymentsResponse`

```typescript
const res = await config.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await config.deployments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.delete`

**DELETE** `v1/{+name}`

Deletes a Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Deployment in the format: 'projects/{project_id}/locations/{location}/deployments/{deployme... |
| `deletePolicy` | `string` | query | No | Optional. Policy on how resources actuated by the deployment should be deleted. If unspecified, the default behavior ... |
| `force` | `boolean` | query | No | Optional. If set to true, any revisions for this deployment will also be deleted. (Otherwise, the request will only w... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await config.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.create`

**POST** `v1/{+parent}/deployments`

Creates a Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Deployment is created. The parent value is in the format: 'projects/{projec... |
| `deploymentId` | `string` | query | No | Required. The Deployment ID. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await config.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.patch`

**PATCH** `v1/{+name}`

Updates a Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the deployment. Format: `projects/{project}/locations/{location}/deployments/{deployment}` |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask used to specify the fields to be overwritten in the Deployment resource by the update. The field... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await config.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await config.deployments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.exportState`

**POST** `v1/{+parent}:exportState`

Exports Terraform state file from a given deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the statefile is listed. The parent value is in the format: 'projects/{project_... |

**Request body**: `ExportDeploymentStatefileRequest`

**Response**: `Statefile`

```typescript
const res = await config.deployments.exportState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.get`

**GET** `v1/{+name}`

Gets details about a Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. Format: 'projects/{project_id}/locations/{location}/deployments/{deployment}'. |

**Response**: `Deployment`

```typescript
const res = await config.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await config.deployments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.revisions.exportState`

**POST** `v1/{+parent}:exportState`

Exports Terraform state file from a given revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the statefile is listed. The parent value is in the format: 'projects/{project_... |

**Request body**: `ExportRevisionStatefileRequest`

**Response**: `Statefile`

```typescript
const res = await config.revisions.exportState({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.revisions.list`

**GET** `v1/{+parent}/revisions`

Lists Revisions of a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Revisions are listed. The parent value is in the format: 'projects/{project... |
| `filter` | `string` | query | No | Lists the Revisions that match the filter expression. A filter expression filters the resources listed in the respons... |
| `orderBy` | `string` | query | No | Field to use to sort the list. |
| `pageSize` | `integer` | query | No | When requesting a page of resources, `page_size` specifies number of resources to return. If unspecified, at most 500... |
| `pageToken` | `string` | query | No | Token returned by previous call to 'ListRevisions' which specifies the position in the list from where to continue li... |

**Response**: `ListRevisionsResponse`

```typescript
const res = await config.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.revisions.get`

**GET** `v1/{+name}`

Gets details about a Revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Revision in the format: 'projects/{project_id}/locations/{location}/deployments/{deployment... |

**Response**: `Revision`

```typescript
const res = await config.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.revisions.resources.list`

**GET** `v1/{+parent}/resources`

Lists Resources in a given revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent in whose context the Resources are listed. The parent value is in the format: 'projects/{project... |
| `filter` | `string` | query | No | Lists the Resources that match the filter expression. A filter expression filters the resources listed in the respons... |
| `orderBy` | `string` | query | No | Field to use to sort the list. |
| `pageSize` | `integer` | query | No | When requesting a page of resources, 'page_size' specifies number of resources to return. If unspecified, at most 500... |
| `pageToken` | `string` | query | No | Token returned by previous call to 'ListResources' which specifies the position in the list from where to continue li... |

**Response**: `ListResourcesResponse`

```typescript
const res = await config.resources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.deployments.revisions.resources.get`

**GET** `v1/{+name}`

Gets details about a Resource deployed by Infra Manager.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Resource in the format: 'projects/{project_id}/locations/{location}/deployments/{deployment... |

**Response**: `Resource`

```typescript
const res = await config.resources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await config.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await config.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await config.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `config.projects.locations.operations.list`

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
const res = await config.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApplyResults`

Outputs and artifacts from applying a deployment.

| Property | Type | Description |
|----------|------|-------------|
| `artifacts` | `string` | Location of artifacts (e.g. logs) in Google Cloud Storage. Format: `gs://{bucket}/{object}` |
| `content` | `string` | Location of a blueprint copy and other manifests in Google Cloud Storage. Format: `gs://{bucket}/... |
| `outputs` | `object` | Map of output name to output info. |

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

### `AutoMigrationConfig`

AutoMigrationConfig contains the automigration configuration for a project.

| Property | Type | Description |
|----------|------|-------------|
| `autoMigrationEnabled` | `boolean` | Optional. Whether the auto migration is enabled for the project. |
| `name` | `string` | Identifier. The name of the AutoMigrationConfig. Format: 'projects/{project_id}/locations/{locati... |
| `updateTime` | `string` | Output only. Time the AutoMigrationConfig was last updated. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `DeleteStatefileRequest`

A request to delete a state file passed to a 'DeleteStatefile' call.

| Property | Type | Description |
|----------|------|-------------|
| `lockId` | `string` | Required. Lock ID of the lock file to verify that the user who is deleting the state file previou... |

### `Deployment`

A Deployment is a group of resources and configs managed and provisioned by Infra Manager.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Arbitrary key-value metadata storage e.g. to help client tools identify deployments dur... |
| `artifactsGcsBucket` | `string` | Optional. User-defined location of Cloud Build logs and artifacts in Google Cloud Storage. Format... |
| `createTime` | `string` | Output only. Time when the deployment was created. |
| `deleteBuild` | `string` | Output only. Cloud Build instance UUID associated with deleting this deployment. |
| `deleteLogs` | `string` | Output only. Location of Cloud Build logs in Google Cloud Storage, populated when deleting this d... |
| `deleteResults` | `ApplyResults` | Output only. Location of artifacts from a DeleteDeployment operation. |
| `errorCode` | `string` | Output only. Error code describing errors that may have occurred. |
| `errorLogs` | `string` | Output only. Location of Terraform error logs in Google Cloud Storage. Format: `gs://{bucket}/{ob... |
| `importExistingResources` | `boolean` | By default, Infra Manager will return a failure when Terraform encounters a 409 code (resource co... |
| `labels` | `object` | Optional. User-defined metadata for the deployment. |
| `latestRevision` | `string` | Output only. Revision name that was most recently applied. Format: `projects/{project}/locations/... |
| `lockState` | `string` | Output only. Current lock state of the deployment. |
| `name` | `string` | Identifier. Resource name of the deployment. Format: `projects/{project}/locations/{location}/dep... |
| `providerConfig` | `ProviderConfig` | Optional. This field specifies the provider configurations. |
| `quotaValidation` | `string` | Optional. Input to control quota checks for resources in terraform configuration files. There are... |
| `serviceAccount` | `string` | Required. User-specified Service Account (SA) credentials to be used when actuating resources. Fo... |
| `state` | `string` | Output only. Current state of the deployment. |
| `stateDetail` | `string` | Output only. Additional information regarding the current state. |
| `terraformBlueprint` | `TerraformBlueprint` | A blueprint described using Terraform's HashiCorp Configuration Language as a root module. |
| `tfErrors` | `array<TerraformError>` | Output only. Errors encountered when deleting this deployment. Errors are truncated to 10 entries... |
| `tfVersion` | `string` | Output only. The current Terraform version set on the deployment. It is in the format of "Major.M... |
| `tfVersionConstraint` | `string` | Optional. The user-specified Terraform version constraint. Example: "=1.3.10". |
| `updateTime` | `string` | Output only. Time when the deployment was last modified. |
| `workerPool` | `string` | Optional. The user-specified Cloud Build worker pool resource in which the Cloud Build job will e... |

### `DeploymentOperationMetadata`

Ephemeral metadata content describing the state of a deployment operation.

| Property | Type | Description |
|----------|------|-------------|
| `applyResults` | `ApplyResults` | Outputs and artifacts from applying a deployment. |
| `build` | `string` | Output only. Cloud Build instance UUID associated with this operation. |
| `logs` | `string` | Output only. Location of Deployment operations logs in `gs://{bucket}/{object}` format. |
| `step` | `string` | The current step the deployment operation is running. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExportDeploymentStatefileRequest`

A request to export a state file passed to a 'ExportDeploymentStatefile' call.

| Property | Type | Description |
|----------|------|-------------|
| `draft` | `boolean` | Optional. If this flag is set to true, the exported deployment state file will be the draft state... |

### `ExportPreviewResultRequest`

A request to export preview results.

### `ExportPreviewResultResponse`

A response to `ExportPreviewResult` call. Contains preview results.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `PreviewResult` | Output only. Signed URLs for accessing the plan files. |

### `ExportRevisionStatefileRequest`

A request to export a state file passed to a 'ExportRevisionStatefile' call.

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GitSource`

A set of files in a Git repository.

| Property | Type | Description |
|----------|------|-------------|
| `directory` | `string` | Optional. Subdirectory inside the repository. Example: 'staging/my-package' |
| `ref` | `string` | Optional. Git reference (e.g. branch or tag). |
| `repo` | `string` | Optional. Repository URL. Example: 'https://github.com/kubernetes/examples.git' |

### `ImportStatefileRequest`

A request to import a state file passed to a 'ImportStatefile' call.

| Property | Type | Description |
|----------|------|-------------|
| `lockId` | `string` | Required. Lock ID of the lock file to verify that the user who is importing the state file previo... |

### `ListDeploymentsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<Deployment>` | List of Deployments. |
| `nextPageToken` | `string` | Token to be supplied to the next ListDeployments request via `page_token` to obtain the next set ... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

### `ListPreviewsResponse`

A response to a `ListPreviews` call. Contains a list of Previews.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be supplied to the next ListPreviews request via `page_token` to obtain the next set of ... |
| `previews` | `array<Preview>` | List of Previews. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListResourceChangesResponse`

A response to a 'ListResourceChanges' call. Contains a list of ResourceChanges.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of resources from the 'ListResourceChanges' method. The value of... |
| `resourceChanges` | `array<ResourceChange>` | List of ResourceChanges. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListResourceDriftsResponse`

A response to a 'ListResourceDrifts' call. Contains a list of ResourceDrifts.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of resources from the 'ListResourceDrifts' method. The value of ... |
| `resourceDrifts` | `array<ResourceDrift>` | List of ResourceDrifts. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListResourcesResponse`

A response to a 'ListResources' call. Contains a list of Resources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of resources from the 'ListResources' method. The value of an em... |
| `resources` | `array<Resource>` | List of Resources. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRevisionsResponse`

A response to a 'ListRevisions' call. Contains a list of Revisions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to request the next page of resources from the 'ListRevisions' method. The value of an em... |
| `revisions` | `array<Revision>` | List of Revisions. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListTerraformVersionsResponse`

The response message for the `ListTerraformVersions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to be supplied to the next ListTerraformVersions request via `page_token` to obtain the nex... |
| `terraformVersions` | `array<TerraformVersion>` | List of TerraformVersions. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LockDeploymentRequest`

A request to lock a deployment passed to a 'LockDeployment' call.

### `LockInfo`

Details about the lock which locked the deployment.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Time that the lock was taken. |
| `info` | `string` | Extra information to store with the lock, provided by the caller. |
| `lockId` | `string` | Unique ID for the lock to be overridden with generation ID in the backend. |
| `operation` | `string` | Terraform operation, provided by the caller. |
| `version` | `string` | Terraform version |
| `who` | `string` | user@hostname when available |

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
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. Time when the operation was created. |
| `deploymentMetadata` | `DeploymentOperationMetadata` | Output only. Metadata about the deployment operation state. |
| `endTime` | `string` | Output only. Time when the operation finished running. |
| `previewMetadata` | `PreviewOperationMetadata` | Output only. Metadata about the preview operation state. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Preview`

A preview represents a set of actions Infra Manager would perform to move the resources towards the desired state as specified in the configuration.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Arbitrary key-value metadata storage e.g. to help client tools identify preview during ... |
| `artifactsGcsBucket` | `string` | Optional. User-defined location of Cloud Build logs, artifacts, and in Google Cloud Storage. Form... |
| `build` | `string` | Output only. Cloud Build instance UUID associated with this preview. |
| `createTime` | `string` | Output only. Time the preview was created. |
| `deployment` | `string` | Optional. Optional deployment reference. If specified, the preview will be performed using the pr... |
| `errorCode` | `string` | Output only. Code describing any errors that may have occurred. |
| `errorLogs` | `string` | Output only. Link to tf-error.ndjson file, which contains the full list of the errors encountered... |
| `errorStatus` | `Status` | Output only. Additional information regarding the current state. |
| `labels` | `object` | Optional. User-defined labels for the preview. |
| `logs` | `string` | Output only. Location of preview logs in `gs://{bucket}/{object}` format. |
| `name` | `string` | Identifier. Resource name of the preview. Resource name can be user provided or server generated ... |
| `previewArtifacts` | `PreviewArtifacts` | Output only. Artifacts from preview. |
| `previewMode` | `string` | Optional. Current mode of preview. |
| `providerConfig` | `ProviderConfig` | Optional. This field specifies the provider configurations. |
| `serviceAccount` | `string` | Required. User-specified Service Account (SA) credentials to be used when previewing resources. F... |
| `state` | `string` | Output only. Current state of the preview. |
| `terraformBlueprint` | `TerraformBlueprint` | The terraform blueprint to preview. |
| `tfErrors` | `array<TerraformError>` | Output only. Summary of errors encountered during Terraform preview. It has a size limit of 10, i... |
| `tfVersion` | `string` | Output only. The current Terraform version set on the preview. It is in the format of "Major.Mino... |
| `tfVersionConstraint` | `string` | Optional. The user-specified Terraform version constraint. Example: "=1.3.10". |
| `workerPool` | `string` | Optional. The user-specified Worker Pool resource in which the Cloud Build job will execute. Form... |

### `PreviewArtifacts`

Artifacts created by preview.

| Property | Type | Description |
|----------|------|-------------|
| `artifacts` | `string` | Output only. Location of artifacts in Google Cloud Storage. Format: `gs://{bucket}/{object}` |
| `content` | `string` | Output only. Location of a blueprint copy and other content in Google Cloud Storage. Format: `gs:... |

### `PreviewOperationMetadata`

Ephemeral metadata content describing the state of a preview operation.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `string` | Output only. Cloud Build instance UUID associated with this preview. |
| `logs` | `string` | Output only. Location of preview logs in `gs://{bucket}/{object}` format. |
| `previewArtifacts` | `PreviewArtifacts` | Artifacts from preview. |
| `step` | `string` | The current step the preview operation is running. |

### `PreviewResult`

Contains a signed Cloud Storage URLs.

| Property | Type | Description |
|----------|------|-------------|
| `binarySignedUri` | `string` | Output only. Plan binary signed URL |
| `jsonSignedUri` | `string` | Output only. Plan JSON signed URL |

### `PropertyChange`

A property change represents a change to a property in the state file.

| Property | Type | Description |
|----------|------|-------------|
| `after` | `any` | Output only. Representations of the object value after the actions. |
| `afterSensitivePaths` | `array<string>` | Output only. The paths of sensitive fields in `after`. Paths are relative to `path`. |
| `before` | `any` | Output only. Representations of the object value before the actions. |
| `beforeSensitivePaths` | `array<string>` | Output only. The paths of sensitive fields in `before`. Paths are relative to `path`. |
| `path` | `string` | Output only. The path of the property change. |

### `PropertyDrift`

A property drift represents a drift to a property in the state file.

| Property | Type | Description |
|----------|------|-------------|
| `after` | `any` | Output only. Representations of the object value after the actions. |
| `afterSensitivePaths` | `array<string>` | Output only. The paths of sensitive fields in `after`. Paths are relative to `path`. |
| `before` | `any` | Output only. Representations of the object value before the actions. |
| `beforeSensitivePaths` | `array<string>` | Output only. The paths of sensitive fields in `before`. Paths are relative to `path`. |
| `path` | `string` | Output only. The path of the property drift. |

### `ProviderConfig`

ProviderConfig contains the provider configurations.

| Property | Type | Description |
|----------|------|-------------|
| `sourceType` | `string` | Optional. ProviderSource specifies the source type of the provider. |

### `Resource`

Resource represents a Google Cloud Platform resource actuated by IM. Resources are child resources of Revisions.

| Property | Type | Description |
|----------|------|-------------|
| `caiAssets` | `object` | Output only. Map of Cloud Asset Inventory (CAI) type to CAI info (e.g. CAI ID). CAI type format f... |
| `intent` | `string` | Output only. Intent of the resource. |
| `name` | `string` | Output only. Resource name. Format: `projects/{project}/locations/{location}/deployments/{deploym... |
| `state` | `string` | Output only. Current state of the resource. |
| `terraformInfo` | `ResourceTerraformInfo` | Output only. Terraform-specific info if this resource was created using Terraform. |

### `ResourceCAIInfo`

CAI info of a Resource.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | CAI resource name in the format following https://cloud.google.com/apis/design/resource_names#ful... |

### `ResourceChange`

A resource change represents a change to a resource in the state file.

| Property | Type | Description |
|----------|------|-------------|
| `intent` | `string` | Output only. The intent of the resource change. |
| `name` | `string` | Identifier. The name of the resource change. Format: 'projects/{project_id}/locations/{location}/... |
| `propertyChanges` | `array<PropertyChange>` | Output only. The property changes of the resource change. |
| `terraformInfo` | `ResourceChangeTerraformInfo` | Output only. Terraform info of the resource change. |

### `ResourceChangeTerraformInfo`

Terraform info of a ResourceChange.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Output only. TF resource actions. |
| `address` | `string` | Output only. TF resource address that uniquely identifies the resource. |
| `provider` | `string` | Output only. TF resource provider. |
| `resourceName` | `string` | Output only. TF resource name. |
| `type` | `string` | Output only. TF resource type. |

### `ResourceDrift`

A resource drift represents a drift to a resource in the state file.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the resource drift. Format: 'projects/{project_id}/locations/{location}/p... |
| `propertyDrifts` | `array<PropertyDrift>` | Output only. The property drifts of the resource drift. |
| `terraformInfo` | `ResourceDriftTerraformInfo` | Output only. Terraform info of the resource drift. |

### `ResourceDriftTerraformInfo`

Terraform info of a ResourceChange.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Output only. The address of the drifted resource. |
| `provider` | `string` | Output only. The provider of the drifted resource. |
| `resourceName` | `string` | Output only. TF resource name. |
| `type` | `string` | Output only. The type of the drifted resource. |

### `ResourceTerraformInfo`

Terraform info of a Resource.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | TF resource address that uniquely identifies this resource within this deployment. |
| `id` | `string` | ID attribute of the TF resource |
| `type` | `string` | TF resource type |

### `Revision`

A child resource of a Deployment generated by a 'CreateDeployment' or 'UpdateDeployment' call. Each Revision contains metadata pertaining to a snapshot of a particular Deployment.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Output only. The action which created this revision |
| `applyResults` | `ApplyResults` | Output only. Outputs and artifacts from applying a deployment. |
| `build` | `string` | Output only. Cloud Build instance UUID associated with this revision. |
| `createTime` | `string` | Output only. Time when the revision was created. |
| `errorCode` | `string` | Output only. Code describing any errors that may have occurred. |
| `errorLogs` | `string` | Output only. Location of Terraform error logs in Google Cloud Storage. Format: `gs://{bucket}/{ob... |
| `importExistingResources` | `boolean` | Output only. By default, Infra Manager will return a failure when Terraform encounters a 409 code... |
| `logs` | `string` | Output only. Location of Revision operation logs in `gs://{bucket}/{object}` format. |
| `name` | `string` | Revision name. Format: `projects/{project}/locations/{location}/deployments/{deployment}/ revisio... |
| `providerConfig` | `ProviderConfig` | Output only. This field specifies the provider configurations. |
| `quotaValidation` | `string` | Optional. Input to control quota checks for resources in terraform configuration files. There are... |
| `quotaValidationResults` | `string` | Output only. Cloud Storage path containing quota validation results. This field is set when a use... |
| `serviceAccount` | `string` | Output only. User-specified Service Account (SA) to be used as credential to manage resources. Fo... |
| `state` | `string` | Output only. Current state of the revision. |
| `stateDetail` | `string` | Output only. Additional info regarding the current state. |
| `terraformBlueprint` | `TerraformBlueprint` | Output only. A blueprint described using Terraform's HashiCorp Configuration Language as a root m... |
| `tfErrors` | `array<TerraformError>` | Output only. Errors encountered when creating or updating this deployment. Errors are truncated t... |
| `tfVersion` | `string` | Output only. The version of Terraform used to create the Revision. It is in the format of "Major.... |
| `tfVersionConstraint` | `string` | Output only. The user-specified Terraform version constraint. Example: "=1.3.10". |
| `updateTime` | `string` | Output only. Time when the revision was last modified. |
| `workerPool` | `string` | Output only. The user-specified Cloud Build worker pool resource in which the Cloud Build job wil... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Statefile`

Contains info about a Terraform state file

| Property | Type | Description |
|----------|------|-------------|
| `signedUri` | `string` | Output only. Cloud Storage signed URI used for downloading or uploading the state file. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TerraformBlueprint`

TerraformBlueprint describes the source of a Terraform root module which describes the resources and configs to be deployed.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `string` | URI of an object in Google Cloud Storage. Format: `gs://{bucket}/{object}` URI may also specify a... |
| `gitSource` | `GitSource` | URI of a public Git repo. |
| `inputValues` | `object` | Optional. Input variable values for the Terraform blueprint. |

### `TerraformError`

Errors encountered during actuation using Terraform

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. Original error response from underlying Google API, if available. |
| `errorDescription` | `string` | A human-readable error description. |
| `httpResponseCode` | `integer` | HTTP response code returned from Google Cloud Platform APIs when Terraform fails to provision the... |
| `resourceAddress` | `string` | Address of the resource associated with the error, e.g. `google_compute_network.vpc_network`. |

### `TerraformOutput`

Describes a Terraform output.

| Property | Type | Description |
|----------|------|-------------|
| `sensitive` | `boolean` | Identifies whether Terraform has set this output as a potential sensitive value. |
| `value` | `any` | Value of output. |

### `TerraformVariable`

A Terraform input variable.

| Property | Type | Description |
|----------|------|-------------|
| `inputValue` | `any` | Optional. Input variable value. |

### `TerraformVersion`

A TerraformVersion represents the support state the corresponding Terraform version.

| Property | Type | Description |
|----------|------|-------------|
| `deprecateTime` | `string` | Output only. When the version is deprecated. |
| `name` | `string` | Identifier. The version name is in the format: 'projects/{project_id}/locations/{location}/terraf... |
| `obsoleteTime` | `string` | Output only. When the version is obsolete. |
| `state` | `string` | Output only. The state of the version, ACTIVE, DEPRECATED or OBSOLETE. |
| `supportTime` | `string` | Output only. When the version is supported. |

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

### `UnlockDeploymentRequest`

A request to unlock a state file passed to a 'UnlockDeployment' call.

| Property | Type | Description |
|----------|------|-------------|
| `lockId` | `string` | Required. Lock ID of the lock file to be unlocked. |

