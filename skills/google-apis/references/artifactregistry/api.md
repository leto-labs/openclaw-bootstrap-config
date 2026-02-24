# Artifact Registry API - API Reference

**Version**: `v1` | **Methods**: 62 | **Schemas**: 115

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `artifactregistry.projects.getProjectSettings` | GET | `v1/{+name}` | Retrieves the Settings for the Project. |
| `artifactregistry.projects.updateProjectSettings` | PATCH | `v1/{+name}` | Updates the Settings for the Project. |
| `artifactregistry.projects.locations.updateVpcscConfig` | PATCH | `v1/{+name}` | Updates the VPCSC Config for the Project. |
| `artifactregistry.projects.locations.getVpcscConfig` | GET | `v1/{+name}` | Retrieves the VPCSC Config for the Project. |
| `artifactregistry.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `artifactregistry.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `artifactregistry.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `artifactregistry.projects.locations.repositories.list` | GET | `v1/{+parent}/repositories` | Lists repositories. |
| `artifactregistry.projects.locations.repositories.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for a given resource. |
| `artifactregistry.projects.locations.repositories.get` | GET | `v1/{+name}` | Gets a repository. |
| `artifactregistry.projects.locations.repositories.delete` | DELETE | `v1/{+name}` | Deletes a repository and all of its contents. The returned Operation will finish once the reposit... |
| `artifactregistry.projects.locations.repositories.create` | POST | `v1/{+parent}/repositories` | Creates a repository. The returned Operation will finish once the repository has been created. It... |
| `artifactregistry.projects.locations.repositories.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Tests if the caller has a list of permissions on a resource. |
| `artifactregistry.projects.locations.repositories.patch` | PATCH | `v1/{+name}` | Updates a repository. |
| `artifactregistry.projects.locations.repositories.exportArtifact` | POST | `v1/{+repository}:exportArtifact` | Exports an artifact to a Cloud Storage bucket. |
| `artifactregistry.projects.locations.repositories.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Updates the IAM policy for a given resource. |
| `artifactregistry.projects.locations.repositories.googetArtifacts.upload` | POST | `v1/{+parent}/googetArtifacts:create` | Directly uploads a GooGet artifact. The returned Operation will complete once the resources are u... |
| `artifactregistry.projects.locations.repositories.googetArtifacts.import` | POST | `v1/{+parent}/googetArtifacts:import` | Imports GooGet artifacts. The returned Operation will complete once the resources are imported. P... |
| `artifactregistry.projects.locations.repositories.packages.get` | GET | `v1/{+name}` | Gets a package. |
| `artifactregistry.projects.locations.repositories.packages.delete` | DELETE | `v1/{+name}` | Deletes a package and all of its versions and tags. The returned operation will complete once the... |
| `artifactregistry.projects.locations.repositories.packages.list` | GET | `v1/{+parent}/packages` | Lists packages. |
| `artifactregistry.projects.locations.repositories.packages.patch` | PATCH | `v1/{+name}` | Updates a package. |
| `artifactregistry.projects.locations.repositories.packages.tags.create` | POST | `v1/{+parent}/tags` | Creates a tag. |
| `artifactregistry.projects.locations.repositories.packages.tags.list` | GET | `v1/{+parent}/tags` | Lists tags. |
| `artifactregistry.projects.locations.repositories.packages.tags.delete` | DELETE | `v1/{+name}` | Deletes a tag. |
| `artifactregistry.projects.locations.repositories.packages.tags.patch` | PATCH | `v1/{+name}` | Updates a tag. |
| `artifactregistry.projects.locations.repositories.packages.tags.get` | GET | `v1/{+name}` | Gets a tag. |
| `artifactregistry.projects.locations.repositories.packages.versions.patch` | PATCH | `v1/{+name}` | Updates a version. |
| `artifactregistry.projects.locations.repositories.packages.versions.list` | GET | `v1/{+parent}/versions` | Lists versions. |
| `artifactregistry.projects.locations.repositories.packages.versions.delete` | DELETE | `v1/{+name}` | Deletes a version and all of its content. The returned operation will complete once the version h... |
| `artifactregistry.projects.locations.repositories.packages.versions.get` | GET | `v1/{+name}` | Gets a version |
| `artifactregistry.projects.locations.repositories.packages.versions.batchDelete` | POST | `v1/{+parent}/versions:batchDelete` | Deletes multiple versions across a repository. The returned operation will complete once the vers... |
| `artifactregistry.projects.locations.repositories.mavenArtifacts.get` | GET | `v1/{+name}` | Gets a maven artifact. |
| `artifactregistry.projects.locations.repositories.mavenArtifacts.list` | GET | `v1/{+parent}/mavenArtifacts` | Lists maven artifacts. |
| `artifactregistry.projects.locations.repositories.files.download` | GET | `v1/{+name}:download` | Download a file. |
| `artifactregistry.projects.locations.repositories.files.patch` | PATCH | `v1/{+name}` | Updates a file. |
| `artifactregistry.projects.locations.repositories.files.delete` | DELETE | `v1/{+name}` | Deletes a file and all of its content. It is only allowed on generic repositories. The returned o... |
| `artifactregistry.projects.locations.repositories.files.get` | GET | `v1/{+name}` | Gets a file. |
| `artifactregistry.projects.locations.repositories.files.list` | GET | `v1/{+parent}/files` | Lists files. |
| `artifactregistry.projects.locations.repositories.files.upload` | POST | `v1/{+parent}/files:upload` | Directly uploads a file to a repository. The returned Operation will complete once the resources ... |
| `artifactregistry.projects.locations.repositories.dockerImages.get` | GET | `v1/{+name}` | Gets a docker image. |
| `artifactregistry.projects.locations.repositories.dockerImages.list` | GET | `v1/{+parent}/dockerImages` | Lists docker images. |
| `artifactregistry.projects.locations.repositories.kfpArtifacts.upload` | POST | `v1/{+parent}/kfpArtifacts:create` | Directly uploads a KFP artifact. The returned Operation will complete once the resource is upload... |
| `artifactregistry.projects.locations.repositories.genericArtifacts.upload` | POST | `v1/{+parent}/genericArtifacts:create` | Directly uploads a Generic artifact. The returned operation will complete once the resources are ... |
| `artifactregistry.projects.locations.repositories.attachments.delete` | DELETE | `v1/{+name}` | Deletes an attachment. The returned Operation will finish once the attachments has been deleted. ... |
| `artifactregistry.projects.locations.repositories.attachments.list` | GET | `v1/{+parent}/attachments` | Lists attachments. |
| `artifactregistry.projects.locations.repositories.attachments.get` | GET | `v1/{+name}` | Gets an attachment. |
| `artifactregistry.projects.locations.repositories.attachments.create` | POST | `v1/{+parent}/attachments` | Creates an attachment. The returned Operation will finish once the attachment has been created. I... |
| `artifactregistry.projects.locations.repositories.rules.get` | GET | `v1/{+name}` | Gets a rule. |
| `artifactregistry.projects.locations.repositories.rules.delete` | DELETE | `v1/{+name}` | Deletes a rule. |
| `artifactregistry.projects.locations.repositories.rules.create` | POST | `v1/{+parent}/rules` | Creates a rule. |
| `artifactregistry.projects.locations.repositories.rules.patch` | PATCH | `v1/{+name}` | Updates a rule. |
| `artifactregistry.projects.locations.repositories.rules.list` | GET | `v1/{+parent}/rules` | Lists rules. |
| `artifactregistry.projects.locations.repositories.goModules.upload` | POST | `v1/{+parent}/goModules:create` | Directly uploads a Go module. The returned Operation will complete once the Go module is uploaded... |
| `artifactregistry.projects.locations.repositories.yumArtifacts.upload` | POST | `v1/{+parent}/yumArtifacts:create` | Directly uploads a Yum artifact. The returned Operation will complete once the resources are uplo... |
| `artifactregistry.projects.locations.repositories.yumArtifacts.import` | POST | `v1/{+parent}/yumArtifacts:import` | Imports Yum (RPM) artifacts. The returned Operation will complete once the resources are imported... |
| `artifactregistry.projects.locations.repositories.aptArtifacts.import` | POST | `v1/{+parent}/aptArtifacts:import` | Imports Apt artifacts. The returned Operation will complete once the resources are imported. Pack... |
| `artifactregistry.projects.locations.repositories.aptArtifacts.upload` | POST | `v1/{+parent}/aptArtifacts:create` | Directly uploads an Apt artifact. The returned Operation will complete once the resources are upl... |
| `artifactregistry.projects.locations.repositories.npmPackages.get` | GET | `v1/{+name}` | Gets a npm package. |
| `artifactregistry.projects.locations.repositories.npmPackages.list` | GET | `v1/{+parent}/npmPackages` | Lists npm packages. |
| `artifactregistry.projects.locations.repositories.pythonPackages.get` | GET | `v1/{+name}` | Gets a python package. |
| `artifactregistry.projects.locations.repositories.pythonPackages.list` | GET | `v1/{+parent}/pythonPackages` | Lists python packages. |

### `artifactregistry.projects.getProjectSettings`

**GET** `v1/{+name}`

Retrieves the Settings for the Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the projectSettings resource. |

**Response**: `ProjectSettings`

```typescript
const res = await artifactregistry.projects.getProjectSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.updateProjectSettings`

**PATCH** `v1/{+name}`

Updates the Settings for the Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the project's settings. Always of the form: projects/{project-id}/projectSettings In update request: neve... |
| `updateMask` | `string` | query | No | Field mask to support partial updates. |

**Request body**: `ProjectSettings`

**Response**: `ProjectSettings`

```typescript
const res = await artifactregistry.projects.updateProjectSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.updateVpcscConfig`

**PATCH** `v1/{+name}`

Updates the VPCSC Config for the Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the project's VPC SC Config. Always of the form: projects/{projectID}/locations/{location}/vpcscConfig In... |
| `updateMask` | `string` | query | No | Field mask to support partial updates. |

**Request body**: `VPCSCConfig`

**Response**: `VPCSCConfig`

```typescript
const res = await artifactregistry.locations.updateVpcscConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.getVpcscConfig`

**GET** `v1/{+name}`

Retrieves the VPCSC Config for the Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the VPCSCConfig resource. |

**Response**: `VPCSCConfig`

```typescript
const res = await artifactregistry.locations.getVpcscConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await artifactregistry.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.list`

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
const res = await artifactregistry.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await artifactregistry.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.list`

**GET** `v1/{+parent}/repositories`

Lists repositories.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose repositories will be listed. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligi... |
| `orderBy` | `string` | query | No | Optional. The field to order the results by. |
| `pageSize` | `integer` | query | No | The maximum number of repositories to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListRepositoriesResponse`

```typescript
const res = await artifactregistry.repositories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await artifactregistry.repositories.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.get`

**GET** `v1/{+name}`

Gets a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the repository to retrieve. |

**Response**: `Repository`

```typescript
const res = await artifactregistry.repositories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.delete`

**DELETE** `v1/{+name}`

Deletes a repository and all of its contents. The returned Operation will finish once the repository has been deleted. It will not have any Operation metadata and will return a google.protobuf.Empty response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the repository to delete. |

**Response**: `Operation`

```typescript
const res = await artifactregistry.repositories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.create`

**POST** `v1/{+parent}/repositories`

Creates a repository. The returned Operation will finish once the repository has been created. Its response will be the created Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource where the repository will be created. |
| `repositoryId` | `string` | query | No | Required. The repository id to use for this repository. |

**Request body**: `Repository`

**Response**: `Operation`

```typescript
const res = await artifactregistry.repositories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Tests if the caller has a list of permissions on a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await artifactregistry.repositories.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.patch`

**PATCH** `v1/{+name}`

Updates a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`. For each location in... |
| `updateMask` | `string` | query | No | The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-b... |

**Request body**: `Repository`

**Response**: `Repository`

```typescript
const res = await artifactregistry.repositories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.exportArtifact`

**POST** `v1/{+repository}:exportArtifact`

Exports an artifact to a Cloud Storage bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The repository of the artifact to export. Format: projects/{project}/locations/{location}/repositories/{rep... |

**Request body**: `ExportArtifactRequest`

**Response**: `Operation`

```typescript
const res = await artifactregistry.repositories.exportArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Updates the IAM policy for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await artifactregistry.repositories.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.googetArtifacts.upload`

**POST** `v1/{+parent}/googetArtifacts:create`

Directly uploads a GooGet artifact. The returned Operation will complete once the resources are uploaded. Package, Version, and File resources are created based on the imported artifact. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be uploaded. |

**Request body**: `UploadGoogetArtifactRequest`

**Response**: `UploadGoogetArtifactMediaResponse`

```typescript
const res = await artifactregistry.googetArtifacts.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.googetArtifacts.import`

**POST** `v1/{+parent}/googetArtifacts:import`

Imports GooGet artifacts. The returned Operation will complete once the resources are imported. Package, Version, and File resources are created based on the imported artifacts. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be imported. |

**Request body**: `ImportGoogetArtifactsRequest`

**Response**: `Operation`

```typescript
const res = await artifactregistry.googetArtifacts.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.get`

**GET** `v1/{+name}`

Gets a package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the package to retrieve. |

**Response**: `Package`

```typescript
const res = await artifactregistry.packages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.delete`

**DELETE** `v1/{+name}`

Deletes a package and all of its versions and tags. The returned operation will complete once the package has been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the package to delete. |

**Response**: `Operation`

```typescript
const res = await artifactregistry.packages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.list`

**GET** `v1/{+parent}/packages`

Lists packages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose packages will be listed. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligi... |
| `orderBy` | `string` | query | No | Optional. The field to order the results by. |
| `pageSize` | `integer` | query | No | The maximum number of packages to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListPackagesResponse`

```typescript
const res = await artifactregistry.packages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.patch`

**PATCH** `v1/{+name}`

Updates a package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`. If the pa... |
| `updateMask` | `string` | query | No | The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-b... |

**Request body**: `Package`

**Response**: `Package`

```typescript
const res = await artifactregistry.packages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.tags.create`

**POST** `v1/{+parent}/tags`

Creates a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the tag will be created. |
| `tagId` | `string` | query | No | The tag id to use for this repository. |

**Request body**: `Tag`

**Response**: `Tag`

```typescript
const res = await artifactregistry.tags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.tags.list`

**GET** `v1/{+parent}/tags`

Lists tags.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent package whose tags will be listed. For example: `projects/p1/locations/us-central1/repositorie... |
| `filter` | `string` | query | No | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for fi... |
| `pageSize` | `integer` | query | No | The maximum number of tags to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListTagsResponse`

```typescript
const res = await artifactregistry.tags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.tags.delete`

**DELETE** `v1/{+name}`

Deletes a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the tag to delete. |

**Response**: `Empty`

```typescript
const res = await artifactregistry.tags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.tags.patch`

**PATCH** `v1/{+name}`

Updates a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If ... |
| `updateMask` | `string` | query | No | The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-b... |

**Request body**: `Tag`

**Response**: `Tag`

```typescript
const res = await artifactregistry.tags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.tags.get`

**GET** `v1/{+name}`

Gets a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the tag to retrieve. |

**Response**: `Tag`

```typescript
const res = await artifactregistry.tags.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.versions.patch`

**PATCH** `v1/{+name}`

Updates a version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/ar... |
| `updateMask` | `string` | query | No | The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-b... |

**Request body**: `Version`

**Response**: `Version`

```typescript
const res = await artifactregistry.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.versions.list`

**GET** `v1/{+parent}/versions`

Lists versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource whose versions will be listed. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligi... |
| `orderBy` | `string` | query | No | Optional. The field to order the results by. |
| `pageSize` | `integer` | query | No | The maximum number of versions to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |
| `view` | `string` | query | No | The view that should be returned in the response. |

**Response**: `ListVersionsResponse`

```typescript
const res = await artifactregistry.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.versions.delete`

**DELETE** `v1/{+name}`

Deletes a version and all of its content. The returned operation will complete once the version has been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the version to delete. |
| `force` | `boolean` | query | No | By default, a version that is tagged may not be deleted. If force=true, the version and any tags pointing to the vers... |

**Response**: `Operation`

```typescript
const res = await artifactregistry.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.packages.versions.get`

**GET** `v1/{+name}`

Gets a version

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the version to retrieve. |
| `view` | `string` | query | No | The view that should be returned in the response. |

**Response**: `Version`

```typescript
const res = await artifactregistry.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.packages.versions.batchDelete`

**POST** `v1/{+parent}/versions:batchDelete`

Deletes multiple versions across a repository. The returned operation will complete once the versions have been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the repository holding all requested versions. |

**Request body**: `BatchDeleteVersionsRequest`

**Response**: `Operation`

```typescript
const res = await artifactregistry.versions.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.mavenArtifacts.get`

**GET** `v1/{+name}`

Gets a maven artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the maven artifact. |

**Response**: `MavenArtifact`

```typescript
const res = await artifactregistry.mavenArtifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.mavenArtifacts.list`

**GET** `v1/{+parent}/mavenArtifacts`

Lists maven artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose maven artifacts will be listed. |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListMavenArtifactsResponse`

```typescript
const res = await artifactregistry.mavenArtifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.files.download`

**GET** `v1/{+name}:download`

Download a file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the file to download. |

**Response**: `DownloadFileResponse`

```typescript
const res = await artifactregistry.files.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.files.patch`

**PATCH** `v1/{+name}`

Updates a file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the file, for example: `projects/p1/locations/us-central1/repositories/repo1/files/a%2Fb%2Fc.txt`. If the... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `GoogleDevtoolsArtifactregistryV1File`

**Response**: `GoogleDevtoolsArtifactregistryV1File`

```typescript
const res = await artifactregistry.files.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.files.delete`

**DELETE** `v1/{+name}`

Deletes a file and all of its content. It is only allowed on generic repositories. The returned operation will complete once the file has been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the file to delete. |

**Response**: `Operation`

```typescript
const res = await artifactregistry.files.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.files.get`

**GET** `v1/{+name}`

Gets a file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the file to retrieve. |

**Response**: `GoogleDevtoolsArtifactregistryV1File`

```typescript
const res = await artifactregistry.files.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.files.list`

**GET** `v1/{+parent}/files`

Lists files.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the repository whose files will be listed. For example: "projects/p1/locations/us-central1/repo... |
| `filter` | `string` | query | No | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for fi... |
| `orderBy` | `string` | query | No | The field to order the results by. |
| `pageSize` | `integer` | query | No | The maximum number of files to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListFilesResponse`

```typescript
const res = await artifactregistry.files.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.files.upload`

**POST** `v1/{+parent}/files:upload`

Directly uploads a file to a repository. The returned Operation will complete once the resources are uploaded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the repository where the file will be uploaded. |

**Request body**: `UploadFileRequest`

**Response**: `UploadFileMediaResponse`

```typescript
const res = await artifactregistry.files.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.dockerImages.get`

**GET** `v1/{+name}`

Gets a docker image.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the docker images. |

**Response**: `DockerImage`

```typescript
const res = await artifactregistry.dockerImages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.dockerImages.list`

**GET** `v1/{+parent}/dockerImages`

Lists docker images.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose docker images will be listed. |
| `orderBy` | `string` | query | No | The field to order the results by. |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListDockerImagesResponse`

```typescript
const res = await artifactregistry.dockerImages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.kfpArtifacts.upload`

**POST** `v1/{+parent}/kfpArtifacts:create`

Directly uploads a KFP artifact. The returned Operation will complete once the resource is uploaded. Package, Version, and File resources will be created based on the uploaded artifact. Uploaded artifacts that conflict with existing resources will be overwritten.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the repository where the KFP artifact will be uploaded. |

**Request body**: `UploadKfpArtifactRequest`

**Response**: `UploadKfpArtifactMediaResponse`

```typescript
const res = await artifactregistry.kfpArtifacts.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.genericArtifacts.upload`

**POST** `v1/{+parent}/genericArtifacts:create`

Directly uploads a Generic artifact. The returned operation will complete once the resources are uploaded. Package, version, and file resources are created based on the uploaded artifact. Uploaded artifacts that conflict with existing resources will raise an `ALREADY_EXISTS` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the repository where the generic artifact will be uploaded. |

**Request body**: `UploadGenericArtifactRequest`

**Response**: `UploadGenericArtifactMediaResponse`

```typescript
const res = await artifactregistry.genericArtifacts.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.attachments.delete`

**DELETE** `v1/{+name}`

Deletes an attachment. The returned Operation will finish once the attachments has been deleted. It will not have any Operation metadata and will return a `google.protobuf.Empty` response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attachment to delete. |

**Response**: `Operation`

```typescript
const res = await artifactregistry.attachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.attachments.list`

**GET** `v1/{+parent}/attachments`

Lists attachments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose attachments will be listed. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligi... |
| `pageSize` | `integer` | query | No | The maximum number of attachments to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListAttachmentsResponse`

```typescript
const res = await artifactregistry.attachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.attachments.get`

**GET** `v1/{+name}`

Gets an attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attachment to retrieve. |

**Response**: `Attachment`

```typescript
const res = await artifactregistry.attachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.attachments.create`

**POST** `v1/{+parent}/attachments`

Creates an attachment. The returned Operation will finish once the attachment has been created. Its response will be the created attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource where the attachment will be created. |
| `attachmentId` | `string` | query | No | Required. The attachment id to use for this attachment. |

**Request body**: `Attachment`

**Response**: `Operation`

```typescript
const res = await artifactregistry.attachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.rules.get`

**GET** `v1/{+name}`

Gets a rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the rule to retrieve. |

**Response**: `GoogleDevtoolsArtifactregistryV1Rule`

```typescript
const res = await artifactregistry.rules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.rules.delete`

**DELETE** `v1/{+name}`

Deletes a rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the rule to delete. |

**Response**: `Empty`

```typescript
const res = await artifactregistry.rules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.rules.create`

**POST** `v1/{+parent}/rules`

Creates a rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource where the rule will be created. |
| `ruleId` | `string` | query | No | The rule id to use for this repository. |

**Request body**: `GoogleDevtoolsArtifactregistryV1Rule`

**Response**: `GoogleDevtoolsArtifactregistryV1Rule`

```typescript
const res = await artifactregistry.rules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.rules.patch`

**PATCH** `v1/{+name}`

Updates a rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the rule, for example: `projects/p1/locations/us-central1/repositories/repo1/rules/rule1`. |
| `updateMask` | `string` | query | No | The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-b... |

**Request body**: `GoogleDevtoolsArtifactregistryV1Rule`

**Response**: `GoogleDevtoolsArtifactregistryV1Rule`

```typescript
const res = await artifactregistry.rules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.rules.list`

**GET** `v1/{+parent}/rules`

Lists rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent repository whose rules will be listed. For example: `projects/p1/locations/us-centra... |
| `pageSize` | `integer` | query | No | The maximum number of rules to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListRulesResponse`

```typescript
const res = await artifactregistry.rules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.goModules.upload`

**POST** `v1/{+parent}/goModules:create`

Directly uploads a Go module. The returned Operation will complete once the Go module is uploaded. Package, Version, and File resources are created based on the uploaded Go module.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The resource name of the repository where the Go module will be uploaded. |

**Request body**: `UploadGoModuleRequest`

**Response**: `UploadGoModuleMediaResponse`

```typescript
const res = await artifactregistry.goModules.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.yumArtifacts.upload`

**POST** `v1/{+parent}/yumArtifacts:create`

Directly uploads a Yum artifact. The returned Operation will complete once the resources are uploaded. Package, Version, and File resources are created based on the imported artifact. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be uploaded. |

**Request body**: `UploadYumArtifactRequest`

**Response**: `UploadYumArtifactMediaResponse`

```typescript
const res = await artifactregistry.yumArtifacts.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.yumArtifacts.import`

**POST** `v1/{+parent}/yumArtifacts:import`

Imports Yum (RPM) artifacts. The returned Operation will complete once the resources are imported. Package, Version, and File resources are created based on the imported artifacts. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be imported. |

**Request body**: `ImportYumArtifactsRequest`

**Response**: `Operation`

```typescript
const res = await artifactregistry.yumArtifacts.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.aptArtifacts.import`

**POST** `v1/{+parent}/aptArtifacts:import`

Imports Apt artifacts. The returned Operation will complete once the resources are imported. Package, Version, and File resources are created based on the imported artifacts. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be imported. |

**Request body**: `ImportAptArtifactsRequest`

**Response**: `Operation`

```typescript
const res = await artifactregistry.aptArtifacts.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.aptArtifacts.upload`

**POST** `v1/{+parent}/aptArtifacts:create`

Directly uploads an Apt artifact. The returned Operation will complete once the resources are uploaded. Package, Version, and File resources are created based on the imported artifact. Imported artifacts that conflict with existing resources are ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the parent resource where the artifacts will be uploaded. |

**Request body**: `UploadAptArtifactRequest`

**Response**: `UploadAptArtifactMediaResponse`

```typescript
const res = await artifactregistry.aptArtifacts.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `artifactregistry.projects.locations.repositories.npmPackages.get`

**GET** `v1/{+name}`

Gets a npm package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the npm package. |

**Response**: `NpmPackage`

```typescript
const res = await artifactregistry.npmPackages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.npmPackages.list`

**GET** `v1/{+parent}/npmPackages`

Lists npm packages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose npm packages will be listed. |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListNpmPackagesResponse`

```typescript
const res = await artifactregistry.npmPackages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.pythonPackages.get`

**GET** `v1/{+name}`

Gets a python package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the python package. |

**Response**: `PythonPackage`

```typescript
const res = await artifactregistry.pythonPackages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `artifactregistry.projects.locations.repositories.pythonPackages.list`

**GET** `v1/{+parent}/pythonPackages`

Lists python packages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource whose python packages will be listed. |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. Maximum page size is 1,000. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous list request, if any. |

**Response**: `ListPythonPackagesResponse`

```typescript
const res = await artifactregistry.pythonPackages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

## Schemas

### `AptArtifact`

A detailed representation of an Apt artifact. Information in the record is derived from the archive's control file. See https://www.debian.org/doc/debian-policy/ch-controlfields.html

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. Operating system architecture of the artifact. |
| `component` | `string` | Output only. Repository component of the artifact. |
| `controlFile` | `string` | Output only. Contents of the artifact's control metadata file. |
| `name` | `string` | Output only. The Artifact Registry resource name of the artifact. |
| `packageName` | `string` | Output only. The Apt package name of the artifact. |
| `packageType` | `string` | Output only. An artifact is a binary or source package. |

### `AptRepository`

Configuration for an Apt remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository` | One of the publicly available Apt repositories supported by Artifact Registry. |

### `Attachment`

An Attachment refers to additional metadata that can be attached to artifacts in Artifact Registry. An attachment consists of one or more files.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Art... |
| `attachmentNamespace` | `string` | The namespace this attachment belongs to. E.g. If an attachment is created by artifact analysis, ... |
| `createTime` | `string` | Output only. The time when the attachment was created. |
| `files` | `array<string>` | Required. The files that belong to this attachment. If the file ID part contains slashes, they ar... |
| `name` | `string` | The name of the attachment. E.g. `projects/p1/locations/us/repositories/repo/attachments/sbom`. |
| `ociVersionName` | `string` | Output only. The name of the OCI version that this attachment created. Only populated for Docker ... |
| `target` | `string` | Required. The target the attachment is for, can be a Version, Package or Repository. E.g. `projec... |
| `type` | `string` | Type of attachment. E.g. `application/vnd.spdx+json` |
| `updateTime` | `string` | Output only. The time when the attachment was last updated. |

### `BatchDeleteVersionsMetadata`

The metadata of an LRO from deleting multiple versions.

| Property | Type | Description |
|----------|------|-------------|
| `failedVersions` | `array<string>` | The versions the operation failed to delete. |

### `BatchDeleteVersionsRequest`

The request to delete multiple versions across a repository.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. The names of the versions to delete. The maximum number of versions deleted per batch i... |
| `validateOnly` | `boolean` | If true, the request is performed without deleting data, following AIP-163. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CleanupPolicy`

Artifact policy configuration for repository cleanup policies.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Policy action. |
| `condition` | `CleanupPolicyCondition` | Policy condition for matching versions. |
| `id` | `string` | The user-provided ID of the cleanup policy. |
| `mostRecentVersions` | `CleanupPolicyMostRecentVersions` | Policy condition for retaining a minimum number of versions. May only be specified with a Keep ac... |

### `CleanupPolicyCondition`

CleanupPolicyCondition is a set of conditions attached to a CleanupPolicy. If multiple entries are set, all must be satisfied for the condition to be satisfied.

| Property | Type | Description |
|----------|------|-------------|
| `newerThan` | `string` | Match versions newer than a duration. |
| `olderThan` | `string` | Match versions older than a duration. |
| `packageNamePrefixes` | `array<string>` | Match versions by package prefix. Applied on any prefix match. |
| `tagPrefixes` | `array<string>` | Match versions by tag prefix. Applied on any prefix match. |
| `tagState` | `string` | Match versions by tag status. |
| `versionNamePrefixes` | `array<string>` | Match versions by version name prefix. Applied on any prefix match. |

### `CleanupPolicyMostRecentVersions`

CleanupPolicyMostRecentVersions is an alternate condition of a CleanupPolicy for retaining a minimum number of versions.

| Property | Type | Description |
|----------|------|-------------|
| `keepCount` | `integer` | Minimum number of versions to keep. |
| `packageNamePrefixes` | `array<string>` | List of package name prefixes that will apply this rule. |

### `CommonRemoteRepository`

Common remote repository settings type.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. A common public repository base for remote repository. |

### `DockerImage`

DockerImage represents a docker artifact. The following fields are returned as untyped metadata in the Version resource, using camelcase keys (i.e. metadata.imageSizeBytes): * imageSizeBytes * mediaType * buildTime

| Property | Type | Description |
|----------|------|-------------|
| `artifactType` | `string` | ArtifactType of this image, e.g. "application/vnd.example+type". If the `subject_digest` is set a... |
| `buildTime` | `string` | The time this image was built. This field is returned as the 'metadata.buildTime' field in the Ve... |
| `imageManifests` | `array<ImageManifest>` | Optional. For multi-arch images (manifest lists), this field contains the list of image manifests. |
| `imageSizeBytes` | `string` | Calculated size of the image. This field is returned as the 'metadata.imageSizeBytes' field in th... |
| `mediaType` | `string` | Media type of this image, e.g. "application/vnd.docker.distribution.manifest.v2+json". This field... |
| `name` | `string` | Required. registry_location, project_id, repository_name and image id forms a unique image name:`... |
| `tags` | `array<string>` | Tags attached to this image. |
| `updateTime` | `string` | Output only. The time when the docker image was last updated. |
| `uploadTime` | `string` | Time the image was uploaded. |
| `uri` | `string` | Required. URL to access the image. Example: us-west4-docker.pkg.dev/test-project/test-repo/nginx@... |

### `DockerRepository`

Configuration for a Docker remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigDockerRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `string` | One of the publicly available Docker repositories supported by Artifact Registry. |

### `DockerRepositoryConfig`

DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.

| Property | Type | Description |
|----------|------|-------------|
| `immutableTags` | `boolean` | The repository which enabled this flag prevents all tags from being modified, moved or deleted. T... |

### `DownloadFileResponse`

The response to download a file.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExportArtifactMetadata`

The LRO metadata for exporting an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `exportedFiles` | `array<ExportedFile>` | The exported artifact files. |

### `ExportArtifactRequest`

The request for exporting an artifact to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPath` | `string` | The Cloud Storage path to export the artifact to. Should start with the bucket name, and optional... |
| `sourceTag` | `string` | The artifact tag to export. Format:projects/{project}/locations/{location}/repositories/{reposito... |
| `sourceVersion` | `string` | The artifact version to export. Format: projects/{project}/locations/{location}/repositories/{rep... |

### `ExportArtifactResponse`

The response for exporting an artifact to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `exportedVersion` | `Version` | The exported version. Should be the same as the request version with fingerprint resource name. |

### `ExportedFile`

The exported artifact file.

| Property | Type | Description |
|----------|------|-------------|
| `gcsObjectPath` | `string` | Cloud Storage Object path of the exported file. Examples: `dst_bucket/file1`, `dst_bucket/sub_dir... |
| `hashes` | `array<Hash>` | The hashes of the file content. |
| `name` | `string` | Name of the exported artifact file. Format: `projects/p1/locations/us/repositories/repo1/files/fi... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GenericArtifact`

GenericArtifact represents a generic artifact

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the Generic module is created. |
| `name` | `string` | Resource name of the generic artifact. project, location, repository, package_id and version_id c... |
| `updateTime` | `string` | Output only. The time when the Generic module is updated. |
| `version` | `string` | The version of the generic artifact. |

### `GoModule`

GoModule represents a Go module.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the Go module is created. |
| `name` | `string` | The resource name of a Go module. |
| `updateTime` | `string` | Output only. The time when the Go module is updated. |
| `version` | `string` | The version of the Go module. Must be a valid canonical version as defined in https://go.dev/ref/... |

### `GoogetArtifact`

A detailed representation of a GooGet artifact.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. Operating system architecture of the artifact. |
| `name` | `string` | Output only. The Artifact Registry resource name of the artifact. |
| `packageName` | `string` | Output only. The GooGet package name of the artifact. |

### `GoogleDevtoolsArtifactregistryV1File`

Files store content that is potentially associated with Packages or Versions.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Client specified annotations. |
| `createTime` | `string` | Output only. The time when the File was created. |
| `fetchTime` | `string` | Output only. The time when the last attempt to refresh the file's data was made. Only set when th... |
| `hashes` | `array<Hash>` | The hashes of the file content. |
| `name` | `string` | The name of the file, for example: `projects/p1/locations/us-central1/repositories/repo1/files/a%... |
| `owner` | `string` | The name of the Package or Version that owns this file, if any. |
| `sizeBytes` | `string` | The size of the File in bytes. |
| `updateTime` | `string` | Output only. The time when the File was last updated. |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the upstream remote repository, for ex: "https://my.apt.registry/". |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository`

Publicly available Apt repositories constructed from a common repository base and a custom repository path.

| Property | Type | Description |
|----------|------|-------------|
| `repositoryBase` | `string` | A common public repository base for Apt. |
| `repositoryPath` | `string` | A custom field to define a path to a specific repository from the base. |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigDockerRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the custom remote repository, for ex: "https://registry-1.docker.io". |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigMavenRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the upstream remote repository, for ex: "https://my.maven.registry/". |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigNpmRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the upstream remote repository, for ex: "https://my.npm.registry/". |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigPythonRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the upstream remote repository, for ex: "https://my.python.registr... |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryCustomRepository`

Customer-specified publicly available remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An http/https uri reference to the upstream remote repository, for ex: "https://my.yum.registry/". |

### `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository`

Publicly available Yum repositories constructed from a common repository base and a custom repository path.

| Property | Type | Description |
|----------|------|-------------|
| `repositoryBase` | `string` | A common public repository base for Yum. |
| `repositoryPath` | `string` | A custom field to define a path to a specific repository from the base. |

### `GoogleDevtoolsArtifactregistryV1Rule`

A rule defines the deny or allow action of the operation it applies to and the conditions required for the rule to apply. You can set one rule for an entire repository and one rule for each package within.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action this rule takes. |
| `condition` | `Expr` | Optional. A CEL expression for conditions that must be met in order for the rule to apply. If not... |
| `name` | `string` | The name of the rule, for example: `projects/p1/locations/us-central1/repositories/repo1/rules/ru... |
| `operation` | `string` |  |
| `packageId` | `string` | The package ID the rule applies to. If empty, this rule applies to all packages inside the reposi... |

### `Hash`

A hash of file content.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The algorithm used to compute the hash value. |
| `value` | `string` | The hash value. |

### `ImageManifest`

Details of a single image manifest within a multi-arch image.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Optional. The CPU architecture of the image. Values are provided by the Docker client and are not... |
| `digest` | `string` | Optional. The manifest digest, in the format "sha256:". |
| `mediaType` | `string` | Optional. The media type of the manifest, e.g., "application/vnd.docker.distribution.manifest.v2+... |
| `os` | `string` | Optional. The operating system of the image. Values are provided by the Docker client and are not... |
| `osFeatures` | `array<string>` | Optional. The required OS features for the image, for example on Windows `win32k`. |
| `osVersion` | `string` | Optional. The OS version of the image, for example on Windows `10.0.14393.1066`. |
| `variant` | `string` | Optional. The variant of the CPU in the image, for example `v7` to specify ARMv7 when architectur... |

### `ImportAptArtifactsErrorInfo`

Error information explaining why a package was not imported.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The detailed error status. |
| `gcsSource` | `ImportAptArtifactsGcsSource` | Google Cloud Storage location requested. |

### `ImportAptArtifactsGcsSource`

Google Cloud Storage location where the artifacts currently reside.

| Property | Type | Description |
|----------|------|-------------|
| `uris` | `array<string>` | Cloud Storage paths URI (e.g., gs://my_bucket//my_object). |
| `useWildcards` | `boolean` | Supports URI wildcards for matching multiple objects from a single URI. |

### `ImportAptArtifactsMetadata`

The operation metadata for importing artifacts.

### `ImportAptArtifactsRequest`

The request to import new apt artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `ImportAptArtifactsGcsSource` | Google Cloud Storage location where input content is located. |

### `ImportAptArtifactsResponse`

The response message from importing APT artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `aptArtifacts` | `array<AptArtifact>` | The Apt artifacts imported. |
| `errors` | `array<ImportAptArtifactsErrorInfo>` | Detailed error info for packages that were not imported. |

### `ImportGoogetArtifactsErrorInfo`

Error information explaining why a package was not imported.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The detailed error status. |
| `gcsSource` | `ImportGoogetArtifactsGcsSource` | Google Cloud Storage location requested. |

### `ImportGoogetArtifactsGcsSource`

Google Cloud Storage location where the artifacts currently reside.

| Property | Type | Description |
|----------|------|-------------|
| `uris` | `array<string>` | Cloud Storage paths URI (e.g., `gs://my_bucket/my_object`). |
| `useWildcards` | `boolean` | Supports URI wildcards for matching multiple objects from a single URI. |

### `ImportGoogetArtifactsMetadata`

The operation metadata for importing artifacts.

### `ImportGoogetArtifactsRequest`

The request to import new googet artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `ImportGoogetArtifactsGcsSource` | Google Cloud Storage location where input content is located. |

### `ImportGoogetArtifactsResponse`

The response message from importing artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<ImportGoogetArtifactsErrorInfo>` | Detailed error info for packages that were not imported. |
| `googetArtifacts` | `array<GoogetArtifact>` | The GooGet artifacts updated. |

### `ImportYumArtifactsErrorInfo`

Error information explaining why a package was not imported.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The detailed error status. |
| `gcsSource` | `ImportYumArtifactsGcsSource` | Google Cloud Storage location requested. |

### `ImportYumArtifactsGcsSource`

Google Cloud Storage location where the artifacts currently reside.

| Property | Type | Description |
|----------|------|-------------|
| `uris` | `array<string>` | Cloud Storage paths URI (e.g., gs://my_bucket//my_object). |
| `useWildcards` | `boolean` | Supports URI wildcards for matching multiple objects from a single URI. |

### `ImportYumArtifactsMetadata`

The operation metadata for importing artifacts.

### `ImportYumArtifactsRequest`

The request to import new yum artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `ImportYumArtifactsGcsSource` | Google Cloud Storage location where input content is located. |

### `ImportYumArtifactsResponse`

The response message from importing YUM artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<ImportYumArtifactsErrorInfo>` | Detailed error info for packages that were not imported. |
| `yumArtifacts` | `array<YumArtifact>` | The yum artifacts imported. |

### `KfpArtifact`

A detailed representation of a KFP artifact.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Resource name of the KFP artifact. Since users don't directly interact with this res... |
| `version` | `string` | The version associated with the KFP artifact. Must follow the Semantic Versioning standard. |

### `ListAttachmentsResponse`

The response from listing attachments.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<Attachment>` | The attachments returned. |
| `nextPageToken` | `string` | The token to retrieve the next page of attachments, or empty if there are no more attachments to ... |

### `ListDockerImagesResponse`

The response from listing docker images.

| Property | Type | Description |
|----------|------|-------------|
| `dockerImages` | `array<DockerImage>` | The docker images returned. |
| `nextPageToken` | `string` | The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return. |

### `ListFilesResponse`

The response from listing files.

| Property | Type | Description |
|----------|------|-------------|
| `files` | `array<GoogleDevtoolsArtifactregistryV1File>` | The files returned. |
| `nextPageToken` | `string` | The token to retrieve the next page of files, or empty if there are no more files to return. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMavenArtifactsResponse`

The response from listing maven artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `mavenArtifacts` | `array<MavenArtifact>` | The maven artifacts returned. |
| `nextPageToken` | `string` | The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return. |

### `ListNpmPackagesResponse`

The response from listing npm packages.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return. |
| `npmPackages` | `array<NpmPackage>` | The npm packages returned. |

### `ListPackagesResponse`

The response from listing packages.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of packages, or empty if there are no more packages to return. |
| `packages` | `array<Package>` | The packages returned. |

### `ListPythonPackagesResponse`

The response from listing python packages.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return. |
| `pythonPackages` | `array<PythonPackage>` | The python packages returned. |

### `ListRepositoriesResponse`

The response from listing repositories.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of repositories, or empty if there are no more repositories t... |
| `repositories` | `array<Repository>` | The repositories returned. |

### `ListRulesResponse`

The response from listing rules.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of rules, or empty if there are no more rules to return. |
| `rules` | `array<GoogleDevtoolsArtifactregistryV1Rule>` | The rules returned. |

### `ListTagsResponse`

The response from listing tags.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of tags, or empty if there are no more tags to return. |
| `tags` | `array<Tag>` | The tags returned. |

### `ListVersionsResponse`

The response from listing versions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to retrieve the next page of versions, or empty if there are no more versions to return. |
| `versions` | `array<Version>` | The versions returned. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MavenArtifact`

MavenArtifact represents a maven artifact.

| Property | Type | Description |
|----------|------|-------------|
| `artifactId` | `string` | Artifact ID for the artifact. |
| `createTime` | `string` | Output only. Time the artifact was created. |
| `groupId` | `string` | Group ID for the artifact. Example: com.google.guava |
| `name` | `string` | Required. registry_location, project_id, repository_name and maven_artifact forms a unique artifa... |
| `pomUri` | `string` | Required. URL to access the pom file of the artifact. Example: us-west4-maven.pkg.dev/test-projec... |
| `updateTime` | `string` | Output only. Time the artifact was updated. |
| `version` | `string` | Version of this artifact. |

### `MavenRepository`

Configuration for a Maven remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigMavenRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `string` | One of the publicly available Maven repositories supported by Artifact Registry. |

### `MavenRepositoryConfig`

MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.

| Property | Type | Description |
|----------|------|-------------|
| `allowSnapshotOverwrites` | `boolean` | The repository with this flag will allow publishing the same snapshot versions. |
| `versionPolicy` | `string` | Version policy defines the versions that the registry will accept. |

### `NpmPackage`

NpmPackage represents an npm artifact.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the package was created. |
| `name` | `string` | Required. registry_location, project_id, repository_name and npm_package forms a unique package F... |
| `packageName` | `string` | Package for the artifact. |
| `tags` | `array<string>` | Tags attached to this package. |
| `updateTime` | `string` | Output only. Time the package was updated. |
| `version` | `string` | Version of this package. |

### `NpmRepository`

Configuration for a Npm remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigNpmRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `string` | One of the publicly available Npm repositories supported by Artifact Registry. |

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

Metadata type for longrunning-operations, currently empty.

### `Package`

Packages are named collections of versions.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Client specified annotations. |
| `createTime` | `string` | The time when the package was created. |
| `displayName` | `string` | The display name of the package. |
| `name` | `string` | The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packa... |
| `updateTime` | `string` | The time when the package was last updated. This includes publishing a new version of the package. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ProjectSettings`

The Artifact Registry settings that apply to a Project.

| Property | Type | Description |
|----------|------|-------------|
| `legacyRedirectionState` | `string` | The redirection state of the legacy repositories in this project. |
| `name` | `string` | The name of the project's settings. Always of the form: projects/{project-id}/projectSettings In ... |
| `pullPercent` | `integer` | The percentage of pull traffic to redirect from GCR to AR when using partial redirection. |

### `PythonPackage`

PythonPackage represents a python artifact.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time the package was created. |
| `name` | `string` | Required. registry_location, project_id, repository_name and python_package forms a unique packag... |
| `packageName` | `string` | Package for the artifact. |
| `updateTime` | `string` | Output only. Time the package was updated. |
| `uri` | `string` | Required. URL to access the package. Example: us-west4-python.pkg.dev/test-project/test-repo/pyth... |
| `version` | `string` | Version of this package. |

### `PythonRepository`

Configuration for a Python remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigPythonRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `string` | One of the publicly available Python repositories supported by Artifact Registry. |

### `RemoteRepositoryConfig`

Remote repository configuration.

| Property | Type | Description |
|----------|------|-------------|
| `aptRepository` | `AptRepository` | Specific settings for an Apt remote repository. |
| `commonRepository` | `CommonRemoteRepository` | Common remote repository settings. Used as the remote repository upstream URL. |
| `description` | `string` | The description of the remote source. |
| `disableUpstreamValidation` | `boolean` | Input only. A create/update remote repo option to avoid making a HEAD/GET request to validate a r... |
| `dockerRepository` | `DockerRepository` | Specific settings for a Docker remote repository. |
| `mavenRepository` | `MavenRepository` | Specific settings for a Maven remote repository. |
| `npmRepository` | `NpmRepository` | Specific settings for an Npm remote repository. |
| `pythonRepository` | `PythonRepository` | Specific settings for a Python remote repository. |
| `upstreamCredentials` | `UpstreamCredentials` | Optional. The credentials used to access the remote repository. |
| `yumRepository` | `YumRepository` | Specific settings for a Yum remote repository. |

### `Repository`

A Repository for storing artifacts with a specific format.

| Property | Type | Description |
|----------|------|-------------|
| `cleanupPolicies` | `object` | Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package ve... |
| `cleanupPolicyDryRun` | `boolean` | Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository. |
| `createTime` | `string` | Output only. The time when the repository was created. |
| `description` | `string` | The user-provided description of the repository. |
| `disallowUnspecifiedMode` | `boolean` | Optional. If this is true, an unspecified repo type will be treated as error rather than defaulti... |
| `dockerConfig` | `DockerRepositoryConfig` | Docker repository config contains repository level configuration for the repositories of docker t... |
| `format` | `string` | Optional. The format of packages that are stored in the repository. |
| `kmsKeyName` | `string` | The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the con... |
| `labels` | `object` | Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values... |
| `mavenConfig` | `MavenRepositoryConfig` | Maven repository config contains repository level configuration for the repositories of maven type. |
| `mode` | `string` | Optional. The mode of the repository. |
| `name` | `string` | The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`. ... |
| `registryUri` | `string` | Output only. The repository endpoint, for example: `us-docker.pkg.dev/my-proj/my-repo`. |
| `remoteRepositoryConfig` | `RemoteRepositoryConfig` | Configuration specific for a Remote Repository. |
| `satisfiesPzi` | `boolean` | Output only. Whether or not this repository satisfies PZI. |
| `satisfiesPzs` | `boolean` | Output only. Whether or not this repository satisfies PZS. |
| `sizeBytes` | `string` | Output only. The size, in bytes, of all artifact storage in this repository. Repositories that ar... |
| `updateTime` | `string` | Output only. The time when the repository was last updated. |
| `virtualRepositoryConfig` | `VirtualRepositoryConfig` | Configuration specific for a Virtual Repository. |
| `vulnerabilityScanningConfig` | `VulnerabilityScanningConfig` | Optional. Config and state for vulnerability scanning of resources within this Repository. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Tag`

Tags point to a version and represent an alternative name that can be used to access the version.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/... |
| `version` | `string` | The name of the version the tag refers to, for example: `projects/p1/locations/us-central1/reposi... |

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

### `UploadAptArtifactMediaResponse`

The response to upload an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation to be returned to the user. |

### `UploadAptArtifactMetadata`

The operation metadata for uploading artifacts.

### `UploadAptArtifactRequest`

The request to upload an artifact.

### `UploadAptArtifactResponse`

The response of the completed artifact upload operation. This response is contained in the Operation and available to users.

| Property | Type | Description |
|----------|------|-------------|
| `aptArtifacts` | `array<AptArtifact>` | The Apt artifacts updated. |

### `UploadFileMediaResponse`

The response to upload a generic artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation that will be returned to the user. |

### `UploadFileRequest`

The request to upload a file.

| Property | Type | Description |
|----------|------|-------------|
| `fileId` | `string` | Optional. The ID of the file. If left empty will default to sha256 digest of the content uploaded. |

### `UploadGenericArtifactMediaResponse`

The response to upload a generic artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation that will be returned to the user. |

### `UploadGenericArtifactMetadata`

The operation metadata for uploading generic artifacts.

### `UploadGenericArtifactRequest`

The request to upload a generic artifact. The created GenericArtifact will have the resource name {parent}/genericArtifacts/package_id:version_id. The created file will have the resource name {parent}/files/package_id:version_id:filename.

| Property | Type | Description |
|----------|------|-------------|
| `filename` | `string` | The name of the file of the generic artifact to be uploaded. E.g. `example-file.zip` The filename... |
| `packageId` | `string` | The ID of the package of the generic artifact. If the package does not exist, a new package will ... |
| `versionId` | `string` | The ID of the version of the generic artifact. If the version does not exist, a new version will ... |

### `UploadGoModuleMediaResponse`

The response to upload a Go module.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation to be returned to the user. |

### `UploadGoModuleMetadata`

The operation metadata for uploading go modules.

### `UploadGoModuleRequest`

The request to upload a Go module.

### `UploadGoogetArtifactMediaResponse`

The response to upload an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation to be returned to the user. |

### `UploadGoogetArtifactMetadata`

The operation metadata for uploading artifacts.

### `UploadGoogetArtifactRequest`

The request to upload an artifact.

### `UploadGoogetArtifactResponse`

The response of the completed artifact upload operation. This response is contained in the Operation and available to users.

| Property | Type | Description |
|----------|------|-------------|
| `googetArtifacts` | `array<GoogetArtifact>` | The GooGet artifacts updated. |

### `UploadKfpArtifactMediaResponse`

The response to upload an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation that will be returned to the user. |

### `UploadKfpArtifactMetadata`

The operation metadata for uploading KFP artifacts.

### `UploadKfpArtifactRequest`

The request to upload an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the package version. |
| `tags` | `array<string>` | Tags to be created with the version. |

### `UploadYumArtifactMediaResponse`

The response to upload an artifact.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `Operation` | Operation to be returned to the user. |

### `UploadYumArtifactMetadata`

The operation metadata for uploading artifacts.

### `UploadYumArtifactRequest`

The request to upload an artifact.

### `UploadYumArtifactResponse`

The response of the completed artifact upload operation. This response is contained in the Operation and available to users.

| Property | Type | Description |
|----------|------|-------------|
| `yumArtifacts` | `array<YumArtifact>` | The Yum artifacts updated. |

### `UpstreamCredentials`

The credentials to access the remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `usernamePasswordCredentials` | `UsernamePasswordCredentials` | Use username and password to access the remote repository. |

### `UpstreamPolicy`

Artifact policy configuration for the repository contents.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The user-provided ID of the upstream policy. |
| `priority` | `integer` | Entries with a greater priority value take precedence in the pull order. |
| `repository` | `string` | A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositor... |

### `UsernamePasswordCredentials`

Username and password credentials.

| Property | Type | Description |
|----------|------|-------------|
| `passwordSecretVersion` | `string` | The Secret Manager key version that holds the password to access the remote repository. Must be i... |
| `username` | `string` | The username to access the remote repository. |

### `VPCSCConfig`

The Artifact Registry VPC SC config that apply to a Project.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the project's VPC SC Config. Always of the form: projects/{projectID}/locations/{loca... |
| `vpcscPolicy` | `string` | The project per location VPC SC policy that defines the VPC SC behavior for the Remote Repository... |

### `Version`

The body of a version resource. A version resource represents a collection of components, such as files and other data. This may correspond to a version in many package management schemes.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Client specified annotations. |
| `createTime` | `string` | The time when the version was created. |
| `description` | `string` | Optional. Description of the version, as specified in its metadata. |
| `fingerprints` | `array<Hash>` | Output only. Immutable reference for the version, calculated based on the version's content. Curr... |
| `metadata` | `object` | Output only. Repository-specific Metadata stored against this version. The fields returned are de... |
| `name` | `string` | The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packa... |
| `relatedTags` | `array<Tag>` | Output only. A list of related tags. Will contain up to 100 tags that reference this version. |
| `updateTime` | `string` | The time when the version was last updated. |

### `VirtualRepositoryConfig`

Virtual repository configuration.

| Property | Type | Description |
|----------|------|-------------|
| `upstreamPolicies` | `array<UpstreamPolicy>` | Policies that configure the upstream artifacts distributed by the Virtual Repository. Upstream po... |

### `VulnerabilityScanningConfig`

Config on whether to perform vulnerability scanning for resources in this repository, as well as output fields describing current state.

| Property | Type | Description |
|----------|------|-------------|
| `enablementConfig` | `string` | Optional. Config for whether this repository has vulnerability scanning disabled. |
| `enablementState` | `string` | Output only. State of feature enablement, combining repository enablement config and API enableme... |
| `enablementStateReason` | `string` | Output only. Reason for the repository state. |
| `lastEnableTime` | `string` | Output only. The last time this repository config was enabled. |

### `YumArtifact`

A detailed representation of a Yum artifact.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. Operating system architecture of the artifact. |
| `name` | `string` | Output only. The Artifact Registry resource name of the artifact. |
| `packageName` | `string` | Output only. The yum package name of the artifact. |
| `packageType` | `string` | Output only. An artifact is a binary or source package. |

### `YumRepository`

Configuration for a Yum remote repository.

| Property | Type | Description |
|----------|------|-------------|
| `customRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryCustomRepository` | Customer-specified remote repository. |
| `publicRepository` | `GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository` | One of the publicly available Yum repositories supported by Artifact Registry. |

