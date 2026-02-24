# API hub API - API Reference

**Version**: `v1` | **Methods**: 95 | **Schemas**: 141

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apihub.projects.locations.searchResources` | POST | `v1/{+location}:searchResources` | Search across API-Hub resources. |
| `apihub.projects.locations.retrieveApiViews` | GET | `v1/{+parent}:retrieveApiViews` | Retrieve API views. |
| `apihub.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `apihub.projects.locations.collectApiData` | POST | `v1/{+location}:collectApiData` | Collect API data from a source and push it to Hub's collect layer. |
| `apihub.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `apihub.projects.locations.lookupRuntimeProjectAttachment` | GET | `v1/{+name}:lookupRuntimeProjectAttachment` | Look up a runtime project attachment. This API can be called in the context of any project. |
| `apihub.projects.locations.apis.delete` | DELETE | `v1/{+name}` | Delete an API resource in the API hub. API can only be deleted if all underlying versions are del... |
| `apihub.projects.locations.apis.patch` | PATCH | `v1/{+name}` | Update an API resource in the API hub. The following fields in the API can be updated: * display_... |
| `apihub.projects.locations.apis.get` | GET | `v1/{+name}` | Get API resource details including the API versions contained in it. |
| `apihub.projects.locations.apis.list` | GET | `v1/{+parent}/apis` | List API resources in the API hub. |
| `apihub.projects.locations.apis.create` | POST | `v1/{+parent}/apis` | Create an API resource in the API hub. Once an API resource is created, versions can be added to it. |
| `apihub.projects.locations.apis.versions.list` | GET | `v1/{+parent}/versions` | List API versions of an API resource in the API hub. |
| `apihub.projects.locations.apis.versions.patch` | PATCH | `v1/{+name}` | Update API version. The following fields in the version can be updated currently: * display_name ... |
| `apihub.projects.locations.apis.versions.delete` | DELETE | `v1/{+name}` | Delete an API version. Version can only be deleted if all underlying specs, operations, definitio... |
| `apihub.projects.locations.apis.versions.get` | GET | `v1/{+name}` | Get details about the API version of an API resource. This will include information about the spe... |
| `apihub.projects.locations.apis.versions.create` | POST | `v1/{+parent}/versions` | Create an API version for an API resource in the API hub. |
| `apihub.projects.locations.apis.versions.definitions.get` | GET | `v1/{+name}` | Get details about a definition in an API version. |
| `apihub.projects.locations.apis.versions.specs.lint` | POST | `v1/{+name}:lint` | Lints the requested spec and updates the corresponding API Spec with the lint response. This lint... |
| `apihub.projects.locations.apis.versions.specs.patch` | PATCH | `v1/{+name}` | Update spec. The following fields in the spec can be updated: * display_name * source_uri * lint_... |
| `apihub.projects.locations.apis.versions.specs.get` | GET | `v1/{+name}` | Get details about the information parsed from a spec. Note that this method does not return the r... |
| `apihub.projects.locations.apis.versions.specs.delete` | DELETE | `v1/{+name}` | Delete a spec. Deleting a spec will also delete the associated operations from the version. |
| `apihub.projects.locations.apis.versions.specs.list` | GET | `v1/{+parent}/specs` | List specs corresponding to a particular API resource. |
| `apihub.projects.locations.apis.versions.specs.getContents` | GET | `v1/{+name}:contents` | Get spec contents. |
| `apihub.projects.locations.apis.versions.specs.fetchAdditionalSpecContent` | GET | `v1/{+name}:fetchAdditionalSpecContent` | Fetch additional spec content. |
| `apihub.projects.locations.apis.versions.specs.create` | POST | `v1/{+parent}/specs` | Add a spec to an API version in the API hub. Multiple specs can be added to an API version. Note,... |
| `apihub.projects.locations.apis.versions.operations.list` | GET | `v1/{+parent}/operations` | List operations in an API version. |
| `apihub.projects.locations.apis.versions.operations.get` | GET | `v1/{+name}` | Get details about a particular operation in API version. |
| `apihub.projects.locations.apis.versions.operations.delete` | DELETE | `v1/{+name}` | Delete an operation in an API version and we can delete only the operations created via create AP... |
| `apihub.projects.locations.apis.versions.operations.patch` | PATCH | `v1/{+name}` | Update an operation in an API version. The following fields in the ApiOperation resource can be u... |
| `apihub.projects.locations.apis.versions.operations.create` | POST | `v1/{+parent}/operations` | Create an apiOperation in an API version. An apiOperation can be created only if the version has ... |
| `apihub.projects.locations.runtimeProjectAttachments.get` | GET | `v1/{+name}` | Gets a runtime project attachment. |
| `apihub.projects.locations.runtimeProjectAttachments.delete` | DELETE | `v1/{+name}` | Delete a runtime project attachment in the API Hub. This call will detach the runtime project fro... |
| `apihub.projects.locations.runtimeProjectAttachments.list` | GET | `v1/{+parent}/runtimeProjectAttachments` | List runtime projects attached to the host project. |
| `apihub.projects.locations.runtimeProjectAttachments.create` | POST | `v1/{+parent}/runtimeProjectAttachments` | Attaches a runtime project to the host project. |
| `apihub.projects.locations.plugins.get` | GET | `v1/{+name}` | Get an API Hub plugin. |
| `apihub.projects.locations.plugins.list` | GET | `v1/{+parent}/plugins` | List all the plugins in a given project and location. |
| `apihub.projects.locations.plugins.disable` | POST | `v1/{+name}:disable` | Disables a plugin. The `state` of the plugin after disabling is `DISABLED` |
| `apihub.projects.locations.plugins.create` | POST | `v1/{+parent}/plugins` | Create an API Hub plugin resource in the API hub. Once a plugin is created, it can be used to cre... |
| `apihub.projects.locations.plugins.updateStyleGuide` | PATCH | `v1/{+name}` | Update the styleGuide to be used for liniting in by API hub. |
| `apihub.projects.locations.plugins.getStyleGuide` | GET | `v1/{+name}` | Get the style guide being used for linting. |
| `apihub.projects.locations.plugins.enable` | POST | `v1/{+name}:enable` | Enables a plugin. The `state` of the plugin after enabling is `ENABLED` |
| `apihub.projects.locations.plugins.delete` | DELETE | `v1/{+name}` | Delete a Plugin in API hub. Note, only user owned plugins can be deleted via this method. |
| `apihub.projects.locations.plugins.styleGuide.getContents` | GET | `v1/{+name}:contents` | Get the contents of the style guide. |
| `apihub.projects.locations.plugins.instances.list` | GET | `v1/{+parent}/instances` | List all the plugins in a given project and location. `-` can be used as wildcard value for {plug... |
| `apihub.projects.locations.plugins.instances.patch` | PATCH | `v1/{+name}` | Updates a plugin instance in the API hub. The following fields in the plugin_instance can be upda... |
| `apihub.projects.locations.plugins.instances.enableAction` | POST | `v1/{+name}:enableAction` | Enables a plugin instance in the API hub. |
| `apihub.projects.locations.plugins.instances.get` | GET | `v1/{+name}` | Get an API Hub plugin instance. |
| `apihub.projects.locations.plugins.instances.executeAction` | POST | `v1/{+name}:executeAction` | Executes a plugin instance in the API hub. |
| `apihub.projects.locations.plugins.instances.disableAction` | POST | `v1/{+name}:disableAction` | Disables a plugin instance in the API hub. |
| `apihub.projects.locations.plugins.instances.create` | POST | `v1/{+parent}/instances` | Creates a Plugin instance in the API hub. |
| `apihub.projects.locations.plugins.instances.delete` | DELETE | `v1/{+name}` | Deletes a plugin instance in the API hub. |
| `apihub.projects.locations.plugins.instances.manageSourceData` | POST | `v1/{+name}:manageSourceData` | Manages data for a given plugin instance. |
| `apihub.projects.locations.deployments.create` | POST | `v1/{+parent}/deployments` | Create a deployment resource in the API hub. Once a deployment resource is created, it can be ass... |
| `apihub.projects.locations.deployments.patch` | PATCH | `v1/{+name}` | Update a deployment resource in the API hub. The following fields in the deployment resource can ... |
| `apihub.projects.locations.deployments.list` | GET | `v1/{+parent}/deployments` | List deployment resources in the API hub. |
| `apihub.projects.locations.deployments.get` | GET | `v1/{+name}` | Get details about a deployment and the API versions linked to it. |
| `apihub.projects.locations.deployments.delete` | DELETE | `v1/{+name}` | Delete a deployment resource in the API hub. |
| `apihub.projects.locations.attributes.get` | GET | `v1/{+name}` | Get details about the attribute. |
| `apihub.projects.locations.attributes.delete` | DELETE | `v1/{+name}` | Delete an attribute. Note: System defined attributes cannot be deleted. All associations of the a... |
| `apihub.projects.locations.attributes.create` | POST | `v1/{+parent}/attributes` | Create a user defined attribute. Certain pre defined attributes are already created by the API hu... |
| `apihub.projects.locations.attributes.patch` | PATCH | `v1/{+name}` | Update the attribute. The following fields in the Attribute resource can be updated: * display_na... |
| `apihub.projects.locations.attributes.list` | GET | `v1/{+parent}/attributes` | List all attributes. |
| `apihub.projects.locations.dependencies.get` | GET | `v1/{+name}` | Get details about a dependency resource in the API hub. |
| `apihub.projects.locations.dependencies.list` | GET | `v1/{+parent}/dependencies` | List dependencies based on the provided filter and pagination parameters. |
| `apihub.projects.locations.dependencies.create` | POST | `v1/{+parent}/dependencies` | Create a dependency between two entities in the API hub. |
| `apihub.projects.locations.dependencies.delete` | DELETE | `v1/{+name}` | Delete the dependency resource. |
| `apihub.projects.locations.dependencies.patch` | PATCH | `v1/{+name}` | Update a dependency based on the update_mask provided in the request. The following fields in the... |
| `apihub.projects.locations.externalApis.patch` | PATCH | `v1/{+name}` | Update an External API resource in the API hub. The following fields can be updated: * display_na... |
| `apihub.projects.locations.externalApis.list` | GET | `v1/{+parent}/externalApis` | List External API resources in the API hub. |
| `apihub.projects.locations.externalApis.create` | POST | `v1/{+parent}/externalApis` | Create an External API resource in the API hub. |
| `apihub.projects.locations.externalApis.get` | GET | `v1/{+name}` | Get details about an External API resource in the API hub. |
| `apihub.projects.locations.externalApis.delete` | DELETE | `v1/{+name}` | Delete an External API resource in the API hub. |
| `apihub.projects.locations.apiHubInstances.lookup` | GET | `v1/{+parent}/apiHubInstances:lookup` | Looks up an Api Hub instance in a given Google Cloud project. There will always be only one Api H... |
| `apihub.projects.locations.apiHubInstances.get` | GET | `v1/{+name}` | Gets details of a single API Hub instance. |
| `apihub.projects.locations.apiHubInstances.delete` | DELETE | `v1/{+name}` | Deletes the API hub instance. Deleting the API hub instance will also result in the removal of al... |
| `apihub.projects.locations.apiHubInstances.create` | POST | `v1/{+parent}/apiHubInstances` | Provisions instance resources for the API Hub. |
| `apihub.projects.locations.addons.list` | GET | `v1/{+parent}/addons` | List addons. |
| `apihub.projects.locations.addons.get` | GET | `v1/{+name}` | Get an addon. |
| `apihub.projects.locations.addons.manageConfig` | POST | `v1/{+name}:manageConfig` | Manage addon config. This RPC is used for managing the config of the addon. Calling this RPC move... |
| `apihub.projects.locations.hostProjectRegistrations.get` | GET | `v1/{+name}` | Get a host project registration. |
| `apihub.projects.locations.hostProjectRegistrations.list` | GET | `v1/{+parent}/hostProjectRegistrations` | Lists host project registrations. |
| `apihub.projects.locations.hostProjectRegistrations.create` | POST | `v1/{+parent}/hostProjectRegistrations` | Create a host project registration. A Google cloud project can be registered as a host project if... |
| `apihub.projects.locations.curations.patch` | PATCH | `v1/{+name}` | Update a curation resource in the API hub. The following fields in the curation can be updated: *... |
| `apihub.projects.locations.curations.create` | POST | `v1/{+parent}/curations` | Create a curation resource in the API hub. Once a curation resource is created, plugin instances ... |
| `apihub.projects.locations.curations.get` | GET | `v1/{+name}` | Get curation resource details. |
| `apihub.projects.locations.curations.delete` | DELETE | `v1/{+name}` | Delete a curation resource in the API hub. A curation can only be deleted if it's not being used ... |
| `apihub.projects.locations.curations.list` | GET | `v1/{+parent}/curations` | List curation resources in the API hub. |
| `apihub.projects.locations.discoveredApiObservations.list` | GET | `v1/{+parent}/discoveredApiObservations` | Lists all the DiscoveredAPIObservations in a given project and location. |
| `apihub.projects.locations.discoveredApiObservations.get` | GET | `v1/{+name}` | Gets a DiscoveredAPIObservation in a given project, location and ApiObservation. |
| `apihub.projects.locations.discoveredApiObservations.discoveredApiOperations.get` | GET | `v1/{+name}` | Gets a DiscoveredAPIOperation in a given project, location, ApiObservation and ApiOperation. |
| `apihub.projects.locations.discoveredApiObservations.discoveredApiOperations.list` | GET | `v1/{+parent}/discoveredApiOperations` | Lists all the DiscoveredAPIOperations in a given project, location and ApiObservation. |
| `apihub.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `apihub.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `apihub.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apihub.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `apihub.projects.locations.searchResources`

**POST** `v1/{+location}:searchResources`

Search across API-Hub resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The resource name of the location which will be of the type `projects/{project_id}/locations/{location_id}`... |

**Request body**: `GoogleCloudApihubV1SearchResourcesRequest`

**Response**: `GoogleCloudApihubV1SearchResourcesResponse`

```typescript
const res = await apihub.locations.searchResources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.retrieveApiViews`

**GET** `v1/{+parent}:retrieveApiViews`

Retrieve API views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: `projects/{project}/locations/{location}`. |
| `filter` | `string` | query | No | Optional. The filter expression. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. Default to 100. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `RetrieveApiViews` call. Provide this to retrieve the subsequent page. |
| `view` | `string` | query | No | Required. The view type to return. |

**Response**: `GoogleCloudApihubV1RetrieveApiViewsResponse`

```typescript
const res = await apihub.locations.retrieveApiViews({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await apihub.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.collectApiData`

**POST** `v1/{+location}:collectApiData`

Collect API data from a source and push it to Hub's collect layer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The regional location of the API hub instance and its resources. Format: `projects/{project}/locations/{loc... |

**Request body**: `GoogleCloudApihubV1CollectApiDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.locations.collectApiData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.list`

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

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await apihub.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.lookupRuntimeProjectAttachment`

**GET** `v1/{+name}:lookupRuntimeProjectAttachment`

Look up a runtime project attachment. This API can be called in the context of any project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Runtime project ID to look up runtime project attachment for. Lookup happens across all regions. Expected f... |

**Response**: `GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse`

```typescript
const res = await apihub.locations.lookupRuntimeProjectAttachment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.delete`

**DELETE** `v1/{+name}`

Delete an API resource in the API hub. API can only be deleted if all underlying versions are deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API resource to delete. Format: `projects/{project}/locations/{location}/apis/{api}` |
| `force` | `boolean` | query | No | Optional. If set to true, any versions from this API will also be deleted. Otherwise, the request will only work if t... |

**Response**: `Empty`

```typescript
const res = await apihub.apis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.patch`

**PATCH** `v1/{+name}`

Update an API resource in the API hub. The following fields in the API can be updated: * display_name * description * owner * documentation * target_user * team * business_unit * maturity_level * api_style * attributes * fingerprint The update_mask should be used to specify the fields being updated. Updating the owner field requires complete owner message and updates both owner and email fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the API resource in the API Hub. Format: `projects/{project}/locations/{location}/apis/{api}` |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Api`

**Response**: `GoogleCloudApihubV1Api`

```typescript
const res = await apihub.apis.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.get`

**GET** `v1/{+name}`

Get API resource details including the API versions contained in it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API resource to retrieve. Format: `projects/{project}/locations/{location}/apis/{api}` |

**Response**: `GoogleCloudApihubV1Api`

```typescript
const res = await apihub.apis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.list`

**GET** `v1/{+parent}/apis`

List API resources in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of API resources. Format: `projects/{project}/locations/{location}` |
| `filter` | `string` | query | No | Optional. An expression that filters the list of ApiResources. A filter expression consists of a field name, a compar... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of API resources to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApis` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `GoogleCloudApihubV1ListApisResponse`

```typescript
const res = await apihub.apis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.create`

**POST** `v1/{+parent}/apis`

Create an API resource in the API hub. Once an API resource is created, versions can be added to it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the API resource. Format: `projects/{project}/locations/{location}` |
| `apiId` | `string` | query | No | Optional. The ID to use for the API resource, which will become the final component of the API's resource name. This ... |

**Request body**: `GoogleCloudApihubV1Api`

**Response**: `GoogleCloudApihubV1Api`

```typescript
const res = await apihub.apis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.list`

**GET** `v1/{+parent}/versions`

List API versions of an API resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of API versions i.e., the API resource Format: `projects/{project}/lo... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of Versions. A filter expression consists of a field name, a comparison... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of versions to return. The service may return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListVersions` call. Provide this to retrieve the subsequent page. W... |

**Response**: `GoogleCloudApihubV1ListVersionsResponse`

```typescript
const res = await apihub.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.patch`

**PATCH** `v1/{+name}`

Update API version. The following fields in the version can be updated currently: * display_name * description * documentation * deployments * lifecycle * compliance * accreditation * attributes The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the version. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}` |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Version`

**Response**: `GoogleCloudApihubV1Version`

```typescript
const res = await apihub.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.delete`

**DELETE** `v1/{+name}`

Delete an API version. Version can only be deleted if all underlying specs, operations, definitions and linked deployments are deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version to delete. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{ve... |
| `force` | `boolean` | query | No | Optional. If set to true, any specs from this version will also be deleted. Otherwise, the request will only work if ... |

**Response**: `Empty`

```typescript
const res = await apihub.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.get`

**GET** `v1/{+name}`

Get details about the API version of an API resource. This will include information about the specs and operations present in the API version as well as the deployments linked to it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API version to retrieve. Format: `projects/{project}/locations/{location}/apis/{api}/versio... |

**Response**: `GoogleCloudApihubV1Version`

```typescript
const res = await apihub.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.create`

**POST** `v1/{+parent}/versions`

Create an API version for an API resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for API version. Format: `projects/{project}/locations/{location}/apis/{api}` |
| `versionId` | `string` | query | No | Optional. The ID to use for the API version, which will become the final component of the version's resource name. Th... |

**Request body**: `GoogleCloudApihubV1Version`

**Response**: `GoogleCloudApihubV1Version`

```typescript
const res = await apihub.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.definitions.get`

**GET** `v1/{+name}`

Get details about a definition in an API version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the definition to retrieve. Format: `projects/{project}/locations/{location}/apis/{api}/version... |

**Response**: `GoogleCloudApihubV1Definition`

```typescript
const res = await apihub.definitions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.lint`

**POST** `v1/{+name}:lint`

Lints the requested spec and updates the corresponding API Spec with the lint response. This lint response will be available in all subsequent Get and List Spec calls to Core service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to be linted. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{ve... |

**Request body**: `GoogleCloudApihubV1LintSpecRequest`

**Response**: `Empty`

```typescript
const res = await apihub.specs.lint({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.patch`

**PATCH** `v1/{+name}`

Update spec. The following fields in the spec can be updated: * display_name * source_uri * lint_response * attributes * contents * spec_type In case of an OAS spec, updating spec contents can lead to: 1. Creation, deletion and update of operations. 2. Creation, deletion and update of definitions. 3. Update of other info parsed out from the new spec. In case of contents or source_uri being present in update mask, spec_type must also be present. Also, spec_type can not be present in update mask if contents or source_uri is not present. The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the spec. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/spec... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Spec`

**Response**: `GoogleCloudApihubV1Spec`

```typescript
const res = await apihub.specs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.get`

**GET** `v1/{+name}`

Get details about the information parsed from a spec. Note that this method does not return the raw spec contents. Use GetSpecContents method to retrieve the same.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to retrieve. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{ver... |

**Response**: `GoogleCloudApihubV1Spec`

```typescript
const res = await apihub.specs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.delete`

**DELETE** `v1/{+name}`

Delete a spec. Deleting a spec will also delete the associated operations from the version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to delete. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{versi... |

**Response**: `Empty`

```typescript
const res = await apihub.specs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.list`

**GET** `v1/{+parent}/specs`

List specs corresponding to a particular API resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of specs. Format: `projects/{project}/locations/{location}/apis/{api... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of Specs. A filter expression consists of a field name, a comparison op... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of specs to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListSpecs` call. Provide this to retrieve the subsequent page. When... |

**Response**: `GoogleCloudApihubV1ListSpecsResponse`

```typescript
const res = await apihub.specs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.getContents`

**GET** `v1/{+name}:contents`

Get spec contents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec whose contents need to be retrieved. Format: `projects/{project}/locations/{location}/... |

**Response**: `GoogleCloudApihubV1SpecContents`

```typescript
const res = await apihub.specs.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.fetchAdditionalSpecContent`

**GET** `v1/{+name}:fetchAdditionalSpecContent`

Fetch additional spec content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec whose contents need to be retrieved. Format: `projects/{project}/locations/{location}/... |
| `specContentType` | `string` | query | No | Optional. The type of the spec contents to be retrieved. |

**Response**: `GoogleCloudApihubV1FetchAdditionalSpecContentResponse`

```typescript
const res = await apihub.specs.fetchAdditionalSpecContent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.specs.create`

**POST** `v1/{+parent}/specs`

Add a spec to an API version in the API hub. Multiple specs can be added to an API version. Note, while adding a spec, at least one of `contents` or `source_uri` must be provided. If `contents` is provided, then `spec_type` must also be provided. On adding a spec with contents to the version, the operations present in it will be added to the version.Note that the file contents in the spec should be of the same type as defined in the `projects/{project}/locations/{location}/attributes/system-spec-type` attribute associated with spec resource. Note that specs of various types can be uploaded, however parsing of details is supported for OpenAPI spec currently. In order to access the information parsed from the spec, use the GetSpec method. In order to access the raw contents for a particular spec, use the GetSpecContents method. In order to access the operations parsed from the spec, use the ListAPIOperations method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for Spec. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}` |
| `specId` | `string` | query | No | Optional. The ID to use for the spec, which will become the final component of the spec's resource name. This field i... |

**Request body**: `GoogleCloudApihubV1Spec`

**Response**: `GoogleCloudApihubV1Spec`

```typescript
const res = await apihub.specs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.operations.list`

**GET** `v1/{+parent}/operations`

List operations in an API version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of operations i.e., the API version. Format: `projects/{project}/loca... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of ApiOperations. A filter expression consists of a field name, a compa... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of operations to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiOperations` call. Provide this to retrieve the subsequent pa... |

**Response**: `GoogleCloudApihubV1ListApiOperationsResponse`

```typescript
const res = await apihub.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.operations.get`

**GET** `v1/{+name}`

Get details about a particular operation in API version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the operation to retrieve. Format: `projects/{project}/locations/{location}/apis/{api}/versions... |

**Response**: `GoogleCloudApihubV1ApiOperation`

```typescript
const res = await apihub.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.operations.delete`

**DELETE** `v1/{+name}`

Delete an operation in an API version and we can delete only the operations created via create API. If the operation was created by parsing the spec, then it can be deleted by editing or deleting the spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the operation resource to delete. Format: `projects/{project}/locations/{location}/apis/{api}/v... |

**Response**: `Empty`

```typescript
const res = await apihub.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.operations.patch`

**PATCH** `v1/{+name}`

Update an operation in an API version. The following fields in the ApiOperation resource can be updated: * details.description * details.documentation * details.http_operation.path * details.http_operation.method * details.deprecated * attributes * details.mcp_tool.title * details.mcp_tool.description * details.mcp_tool.input_schema * details.mcp_tool.output_schema * details.input_schema * details.output_schema * details.mcp_tool.annotations.title * details.mcp_tool.annotations.read_only_hint * details.mcp_tool.annotations.destructive_hint * details.mcp_tool.annotations.idempotent_hint * details.mcp_tool.annotations.open_world_hint * details.mcp_tool.annotations.additional_hints The update_mask should be used to specify the fields being updated. An operation can be updated only if the operation was created via CreateApiOperation API. If the operation was created by parsing the spec, then it can be edited by updating the spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the operation. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1ApiOperation`

**Response**: `GoogleCloudApihubV1ApiOperation`

```typescript
const res = await apihub.operations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apis.versions.operations.create`

**POST** `v1/{+parent}/operations`

Create an apiOperation in an API version. An apiOperation can be created only if the version has no apiOperations which were created by parsing a spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the operation resource. Format: `projects/{project}/locations/{location}/apis/{api}... |
| `apiOperationId` | `string` | query | No | Optional. The ID to use for the operation resource, which will become the final component of the operation's resource... |

**Request body**: `GoogleCloudApihubV1ApiOperation`

**Response**: `GoogleCloudApihubV1ApiOperation`

```typescript
const res = await apihub.operations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.runtimeProjectAttachments.get`

**GET** `v1/{+name}`

Gets a runtime project attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API resource to retrieve. Format: `projects/{project}/locations/{location}/runtimeProjectAt... |

**Response**: `GoogleCloudApihubV1RuntimeProjectAttachment`

```typescript
const res = await apihub.runtimeProjectAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.runtimeProjectAttachments.delete`

**DELETE** `v1/{+name}`

Delete a runtime project attachment in the API Hub. This call will detach the runtime project from the host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Runtime Project Attachment to delete. Format: `projects/{project}/locations/{location}/runt... |

**Response**: `Empty`

```typescript
const res = await apihub.runtimeProjectAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.runtimeProjectAttachments.list`

**GET** `v1/{+parent}/runtimeProjectAttachments`

List runtime projects attached to the host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of runtime project attachments. Format: `projects/{project}/location... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of RuntimeProjectAttachments. A filter expression consists of a field n... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of runtime project attachments to return. The service may return fewer than this value. ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListRuntimeProjectAttachments` call. Provide this to retrieve the s... |

**Response**: `GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse`

```typescript
const res = await apihub.runtimeProjectAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.runtimeProjectAttachments.create`

**POST** `v1/{+parent}/runtimeProjectAttachments`

Attaches a runtime project to the host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the Runtime Project Attachment. Format: `projects/{project}/locations/{location}` |
| `runtimeProjectAttachmentId` | `string` | query | No | Required. The ID to use for the Runtime Project Attachment, which will become the final component of the Runtime Proj... |

**Request body**: `GoogleCloudApihubV1RuntimeProjectAttachment`

**Response**: `GoogleCloudApihubV1RuntimeProjectAttachment`

```typescript
const res = await apihub.runtimeProjectAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.get`

**GET** `v1/{+name}`

Get an API Hub plugin.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin to retrieve. Format: `projects/{project}/locations/{location}/plugins/{plugin}`. |

**Response**: `GoogleCloudApihubV1Plugin`

```typescript
const res = await apihub.plugins.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.list`

**GET** `v1/{+parent}/plugins`

List all the plugins in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this plugin will be created. Format: `projects/{project}/locations/{location}`. |
| `filter` | `string` | query | No | Optional. An expression that filters the list of plugins. A filter expression consists of a field name, a comparison ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of hub plugins to return. The service may return fewer than this value. If unspecified, ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListPlugins` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `GoogleCloudApihubV1ListPluginsResponse`

```typescript
const res = await apihub.plugins.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.disable`

**POST** `v1/{+name}:disable`

Disables a plugin. The `state` of the plugin after disabling is `DISABLED`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin to disable. Format: `projects/{project}/locations/{location}/plugins/{plugin}`. |

**Request body**: `GoogleCloudApihubV1DisablePluginRequest`

**Response**: `GoogleCloudApihubV1Plugin`

```typescript
const res = await apihub.plugins.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.create`

**POST** `v1/{+parent}/plugins`

Create an API Hub plugin resource in the API hub. Once a plugin is created, it can be used to create plugin instances.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this plugin will be created. Format: `projects/{project}/locations/{location}`. |
| `pluginId` | `string` | query | No | Optional. The ID to use for the Plugin resource, which will become the final component of the Plugin's resource name.... |

**Request body**: `GoogleCloudApihubV1Plugin`

**Response**: `GoogleCloudApihubV1Plugin`

```typescript
const res = await apihub.plugins.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.updateStyleGuide`

**PATCH** `v1/{+name}`

Update the styleGuide to be used for liniting in by API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the style guide. Format: `projects/{project}/locations/{location}/plugins/{plugin}/styleGuide` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1StyleGuide`

**Response**: `GoogleCloudApihubV1StyleGuide`

```typescript
const res = await apihub.plugins.updateStyleGuide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.getStyleGuide`

**GET** `v1/{+name}`

Get the style guide being used for linting.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to retrieve. Format: `projects/{project}/locations/{location}/plugins/{plugin}/styleGu... |

**Response**: `GoogleCloudApihubV1StyleGuide`

```typescript
const res = await apihub.plugins.getStyleGuide({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.enable`

**POST** `v1/{+name}:enable`

Enables a plugin. The `state` of the plugin after enabling is `ENABLED`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin to enable. Format: `projects/{project}/locations/{location}/plugins/{plugin}`. |

**Request body**: `GoogleCloudApihubV1EnablePluginRequest`

**Response**: `GoogleCloudApihubV1Plugin`

```typescript
const res = await apihub.plugins.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.delete`

**DELETE** `v1/{+name}`

Delete a Plugin in API hub. Note, only user owned plugins can be deleted via this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Plugin resource to delete. Format: `projects/{project}/locations/{location}/plugins/{plugin}` |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.plugins.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.styleGuide.getContents`

**GET** `v1/{+name}:contents`

Get the contents of the style guide.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the StyleGuide whose contents need to be retrieved. There is exactly one style guide resource p... |

**Response**: `GoogleCloudApihubV1StyleGuideContents`

```typescript
const res = await apihub.styleGuide.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.list`

**GET** `v1/{+parent}/instances`

List all the plugins in a given project and location. `-` can be used as wildcard value for {plugin_id}

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this plugin will be created. Format: `projects/{project}/locations/{location}/plu... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of plugin instances. A filter expression consists of a field name, a co... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of hub plugins to return. The service may return fewer than this value. If unspecified, ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListPluginInstances` call. Provide this to retrieve the subsequent ... |

**Response**: `GoogleCloudApihubV1ListPluginInstancesResponse`

```typescript
const res = await apihub.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.patch`

**PATCH** `v1/{+name}`

Updates a plugin instance in the API hub. The following fields in the plugin_instance can be updated currently: * display_name * schedule_cron_expression The update_mask should be used to specify the fields being updated. To update the auth_config and additional_config of the plugin instance, use the ApplyPluginInstanceConfig method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique name of the plugin instance resource. Format: `projects/{project}/locations/{location}/plugins... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1PluginInstance`

**Response**: `GoogleCloudApihubV1PluginInstance`

```typescript
const res = await apihub.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.enableAction`

**POST** `v1/{+name}:enableAction`

Enables a plugin instance in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance to enable. Format: `projects/{project}/locations/{location}/plugins/{plugin... |

**Request body**: `GoogleCloudApihubV1EnablePluginInstanceActionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.instances.enableAction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.get`

**GET** `v1/{+name}`

Get an API Hub plugin instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance to retrieve. Format: `projects/{project}/locations/{location}/plugins/{plug... |

**Response**: `GoogleCloudApihubV1PluginInstance`

```typescript
const res = await apihub.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.executeAction`

**POST** `v1/{+name}:executeAction`

Executes a plugin instance in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance to execute. Format: `projects/{project}/locations/{location}/plugins/{plugi... |

**Request body**: `GoogleCloudApihubV1ExecutePluginInstanceActionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.instances.executeAction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.disableAction`

**POST** `v1/{+name}:disableAction`

Disables a plugin instance in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance to disable. Format: `projects/{project}/locations/{location}/plugins/{plugi... |

**Request body**: `GoogleCloudApihubV1DisablePluginInstanceActionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.instances.disableAction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.create`

**POST** `v1/{+parent}/instances`

Creates a Plugin instance in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the plugin instance resource. Format: `projects/{project}/locations/{location}/plugins/{plugin}` |
| `pluginInstanceId` | `string` | query | No | Optional. The ID to use for the plugin instance, which will become the final component of the plugin instance's resou... |

**Request body**: `GoogleCloudApihubV1PluginInstance`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.delete`

**DELETE** `v1/{+name}`

Deletes a plugin instance in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance to delete. Format: `projects/{project}/locations/{location}/plugins/{plugin... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.plugins.instances.manageSourceData`

**POST** `v1/{+name}:manageSourceData`

Manages data for a given plugin instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the plugin instance for which data needs to be managed. Format: `projects/{project}/locations/{... |

**Request body**: `GoogleCloudApihubV1ManagePluginInstanceSourceDataRequest`

**Response**: `GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse`

```typescript
const res = await apihub.instances.manageSourceData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.deployments.create`

**POST** `v1/{+parent}/deployments`

Create a deployment resource in the API hub. Once a deployment resource is created, it can be associated with API versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the deployment resource. Format: `projects/{project}/locations/{location}` |
| `deploymentId` | `string` | query | No | Optional. The ID to use for the deployment resource, which will become the final component of the deployment's resour... |

**Request body**: `GoogleCloudApihubV1Deployment`

**Response**: `GoogleCloudApihubV1Deployment`

```typescript
const res = await apihub.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.deployments.patch`

**PATCH** `v1/{+name}`

Update a deployment resource in the API hub. The following fields in the deployment resource can be updated: * display_name * description * documentation * deployment_type * resource_uri * endpoints * slo * environment * attributes * source_project * source_environment * management_url * source_uri The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the deployment. Format: `projects/{project}/locations/{location}/deployments/{deployment}` |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Deployment`

**Response**: `GoogleCloudApihubV1Deployment`

```typescript
const res = await apihub.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.deployments.list`

**GET** `v1/{+parent}/deployments`

List deployment resources in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployment resources. Format: `projects/{project}/locations/{loca... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of Deployments. A filter expression consists of a field name, a compari... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of deployment resources to return. The service may return fewer than this value. If unsp... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDeployments` call. Provide this to retrieve the subsequent page... |

**Response**: `GoogleCloudApihubV1ListDeploymentsResponse`

```typescript
const res = await apihub.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.deployments.get`

**GET** `v1/{+name}`

Get details about a deployment and the API versions linked to it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment resource to retrieve. Format: `projects/{project}/locations/{location}/deploymen... |

**Response**: `GoogleCloudApihubV1Deployment`

```typescript
const res = await apihub.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.deployments.delete`

**DELETE** `v1/{+name}`

Delete a deployment resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment resource to delete. Format: `projects/{project}/locations/{location}/deployments... |

**Response**: `Empty`

```typescript
const res = await apihub.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.attributes.get`

**GET** `v1/{+name}`

Get details about the attribute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attribute to retrieve. Format: `projects/{project}/locations/{location}/attributes/{attribu... |

**Response**: `GoogleCloudApihubV1Attribute`

```typescript
const res = await apihub.attributes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.attributes.delete`

**DELETE** `v1/{+name}`

Delete an attribute. Note: System defined attributes cannot be deleted. All associations of the attribute being deleted with any API hub resource will also get deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attribute to delete. Format: `projects/{project}/locations/{location}/attributes/{attribute}` |

**Response**: `Empty`

```typescript
const res = await apihub.attributes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.attributes.create`

**POST** `v1/{+parent}/attributes`

Create a user defined attribute. Certain pre defined attributes are already created by the API hub. These attributes will have type as `SYSTEM_DEFINED` and can be listed via ListAttributes method. Allowed values for the same can be updated via UpdateAttribute method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for Attribute. Format: `projects/{project}/locations/{location}` |
| `attributeId` | `string` | query | No | Optional. The ID to use for the attribute, which will become the final component of the attribute's resource name. Th... |

**Request body**: `GoogleCloudApihubV1Attribute`

**Response**: `GoogleCloudApihubV1Attribute`

```typescript
const res = await apihub.attributes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.attributes.patch`

**PATCH** `v1/{+name}`

Update the attribute. The following fields in the Attribute resource can be updated: * display_name The display name can be updated for user defined attributes only. * description The description can be updated for user defined attributes only. * allowed_values To update the list of allowed values, clients need to use the fetched list of allowed values and add or remove values to or from the same list. The mutable allowed values can be updated for both user defined and System defined attributes. The immutable allowed values cannot be updated or deleted. The updated list of allowed values cannot be empty. If an allowed value that is already used by some resource's attribute is deleted, then the association between the resource and the attribute value will also be deleted. * cardinality The cardinality can be updated for user defined attributes only. Cardinality can only be increased during an update. The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the attribute in the API Hub. Format: `projects/{project}/locations/{location}/attributes/{at... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Attribute`

**Response**: `GoogleCloudApihubV1Attribute`

```typescript
const res = await apihub.attributes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.attributes.list`

**GET** `v1/{+parent}/attributes`

List all attributes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for Attribute. Format: `projects/{project}/locations/{location}` |
| `filter` | `string` | query | No | Optional. An expression that filters the list of Attributes. A filter expression consists of a field name, a comparis... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of attribute resources to return. The service may return fewer than this value. If unspe... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAttributes` call. Provide this to retrieve the subsequent page.... |

**Response**: `GoogleCloudApihubV1ListAttributesResponse`

```typescript
const res = await apihub.attributes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.dependencies.get`

**GET** `v1/{+name}`

Get details about a dependency resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dependency resource to retrieve. Format: `projects/{project}/locations/{location}/dependenc... |

**Response**: `GoogleCloudApihubV1Dependency`

```typescript
const res = await apihub.dependencies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.dependencies.list`

**GET** `v1/{+parent}/dependencies`

List dependencies based on the provided filter and pagination parameters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of dependency resources. Format: `projects/{project}/locations/{locat... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of Dependencies. A filter expression consists of a field name, a compar... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of dependency resources to return. The service may return fewer than this value. If unsp... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDependencies` call. Provide this to retrieve the subsequent pag... |

**Response**: `GoogleCloudApihubV1ListDependenciesResponse`

```typescript
const res = await apihub.dependencies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.dependencies.create`

**POST** `v1/{+parent}/dependencies`

Create a dependency between two entities in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the dependency resource. Format: `projects/{project}/locations/{location}` |
| `dependencyId` | `string` | query | No | Optional. The ID to use for the dependency resource, which will become the final component of the dependency's resour... |

**Request body**: `GoogleCloudApihubV1Dependency`

**Response**: `GoogleCloudApihubV1Dependency`

```typescript
const res = await apihub.dependencies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.dependencies.delete`

**DELETE** `v1/{+name}`

Delete the dependency resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dependency resource to delete. Format: `projects/{project}/locations/{location}/dependencie... |

**Response**: `Empty`

```typescript
const res = await apihub.dependencies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.dependencies.patch`

**PATCH** `v1/{+name}`

Update a dependency based on the update_mask provided in the request. The following fields in the dependency can be updated: * description

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the dependency in the API Hub. Format: `projects/{project}/locations/{location}/dependencies/... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Dependency`

**Response**: `GoogleCloudApihubV1Dependency`

```typescript
const res = await apihub.dependencies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.externalApis.patch`

**PATCH** `v1/{+name}`

Update an External API resource in the API hub. The following fields can be updated: * display_name * description * documentation * endpoints * paths The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Format: `projects/{project}/locations/{location}/externalApi/{externalApi}`. |
| `updateMask` | `string` | query | No | Required. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1ExternalApi`

**Response**: `GoogleCloudApihubV1ExternalApi`

```typescript
const res = await apihub.externalApis.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.externalApis.list`

**GET** `v1/{+parent}/externalApis`

List External API resources in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of External API resources. Format: `projects/{project}/locations/{lo... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of External API resources to return. The service may return fewer than this value. If un... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListExternalApis` call. Provide this to retrieve the subsequent pag... |

**Response**: `GoogleCloudApihubV1ListExternalApisResponse`

```typescript
const res = await apihub.externalApis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.externalApis.create`

**POST** `v1/{+parent}/externalApis`

Create an External API resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the External API resource. Format: `projects/{project}/locations/{location}` |
| `externalApiId` | `string` | query | No | Optional. The ID to use for the External API resource, which will become the final component of the External API's re... |

**Request body**: `GoogleCloudApihubV1ExternalApi`

**Response**: `GoogleCloudApihubV1ExternalApi`

```typescript
const res = await apihub.externalApis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.externalApis.get`

**GET** `v1/{+name}`

Get details about an External API resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the External API resource to retrieve. Format: `projects/{project}/locations/{location}/externa... |

**Response**: `GoogleCloudApihubV1ExternalApi`

```typescript
const res = await apihub.externalApis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.externalApis.delete`

**DELETE** `v1/{+name}`

Delete an External API resource in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the External API resource to delete. Format: `projects/{project}/locations/{location}/externalA... |

**Response**: `Empty`

```typescript
const res = await apihub.externalApis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apiHubInstances.lookup`

**GET** `v1/{+parent}/apiHubInstances:lookup`

Looks up an Api Hub instance in a given Google Cloud project. There will always be only one Api Hub instance for a Google Cloud project across all locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. There will always be only one Api Hub instance for a Google Cloud project across all locations. The parent ... |

**Response**: `GoogleCloudApihubV1LookupApiHubInstanceResponse`

```typescript
const res = await apihub.apiHubInstances.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apiHubInstances.get`

**GET** `v1/{+name}`

Gets details of a single API Hub instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Api Hub instance to retrieve. Format: `projects/{project}/locations/{location}/apiHubInstan... |

**Response**: `GoogleCloudApihubV1ApiHubInstance`

```typescript
const res = await apihub.apiHubInstances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apiHubInstances.delete`

**DELETE** `v1/{+name}`

Deletes the API hub instance. Deleting the API hub instance will also result in the removal of all associated runtime project attachments and the host project registration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Api Hub instance to delete. Format: `projects/{project}/locations/{location}/apiHubInstance... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.apiHubInstances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.apiHubInstances.create`

**POST** `v1/{+parent}/apiHubInstances`

Provisions instance resources for the API Hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the Api Hub instance resource. Format: `projects/{project}/locations/{location}` |
| `apiHubInstanceId` | `string` | query | No | Optional. Identifier to assign to the Api Hub instance. Must be unique within scope of the parent resource. If the fi... |

**Request body**: `GoogleCloudApihubV1ApiHubInstance`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.apiHubInstances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.addons.list`

**GET** `v1/{+parent}/addons`

List addons.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this addon will be created. Format: `projects/{project}/locations/{location}`. |
| `filter` | `string` | query | No | Optional. An expression that filters the list of addons. The only supported filter is `plugin_instance_name`. It can ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of hub addons to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAddons` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudApihubV1ListAddonsResponse`

```typescript
const res = await apihub.addons.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.addons.get`

**GET** `v1/{+name}`

Get an addon.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the addon to get. Format: `projects/{project}/locations/{location}/addons/{addon}`. |

**Response**: `GoogleCloudApihubV1Addon`

```typescript
const res = await apihub.addons.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.addons.manageConfig`

**POST** `v1/{+name}:manageConfig`

Manage addon config. This RPC is used for managing the config of the addon. Calling this RPC moves the addon into an updating state until the long-running operation succeeds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the addon for which the config is to be managed. Format: `projects/{project}/locations/{locatio... |

**Request body**: `GoogleCloudApihubV1ManageAddonConfigRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.addons.manageConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.hostProjectRegistrations.get`

**GET** `v1/{+name}`

Get a host project registration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Host project registration resource name. projects/{project}/locations/{location}/hostProjectRegistrations/{... |

**Response**: `GoogleCloudApihubV1HostProjectRegistration`

```typescript
const res = await apihub.hostProjectRegistrations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.hostProjectRegistrations.list`

**GET** `v1/{+parent}/hostProjectRegistrations`

Lists host project registrations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of host projects. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | Optional. An expression that filters the list of HostProjectRegistrations. A filter expression consists of a field na... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of host project registrations to return. The service may return fewer than this value. I... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListHostProjectRegistrations` call. Provide this to retrieve the su... |

**Response**: `GoogleCloudApihubV1ListHostProjectRegistrationsResponse`

```typescript
const res = await apihub.hostProjectRegistrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.hostProjectRegistrations.create`

**POST** `v1/{+parent}/hostProjectRegistrations`

Create a host project registration. A Google cloud project can be registered as a host project if it is not attached as a runtime project to another host project. A project can be registered as a host project only once. Subsequent register calls for the same project will fail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the host project. Format: `projects/{project}/locations/{location}` |
| `hostProjectRegistrationId` | `string` | query | No | Required. The ID to use for the Host Project Registration, which will become the final component of the host project ... |

**Request body**: `GoogleCloudApihubV1HostProjectRegistration`

**Response**: `GoogleCloudApihubV1HostProjectRegistration`

```typescript
const res = await apihub.hostProjectRegistrations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.curations.patch`

**PATCH** `v1/{+name}`

Update a curation resource in the API hub. The following fields in the curation can be updated: * display_name * description The update_mask should be used to specify the fields being updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the curation. Format: `projects/{project}/locations/{location}/curations/{curation}` |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudApihubV1Curation`

**Response**: `GoogleCloudApihubV1Curation`

```typescript
const res = await apihub.curations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.curations.create`

**POST** `v1/{+parent}/curations`

Create a curation resource in the API hub. Once a curation resource is created, plugin instances can start using it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for the curation resource. Format: `projects/{project}/locations/{location}` |
| `curationId` | `string` | query | No | Optional. The ID to use for the curation resource, which will become the final component of the curations's resource ... |

**Request body**: `GoogleCloudApihubV1Curation`

**Response**: `GoogleCloudApihubV1Curation`

```typescript
const res = await apihub.curations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.curations.get`

**GET** `v1/{+name}`

Get curation resource details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the curation resource to retrieve. Format: `projects/{project}/locations/{location}/curations/{... |

**Response**: `GoogleCloudApihubV1Curation`

```typescript
const res = await apihub.curations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.curations.delete`

**DELETE** `v1/{+name}`

Delete a curation resource in the API hub. A curation can only be deleted if it's not being used by any plugin instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the curation resource to delete. Format: `projects/{project}/locations/{location}/curations/{cu... |

**Response**: `Empty`

```typescript
const res = await apihub.curations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.curations.list`

**GET** `v1/{+parent}/curations`

List curation resources in the API hub.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of curation resources. Format: `projects/{project}/locations/{locati... |
| `filter` | `string` | query | No | Optional. An expression that filters the list of curation resources. A filter expression consists of a field name, a ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of curation resources to return. The service may return fewer than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListCurations` call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudApihubV1ListCurationsResponse`

```typescript
const res = await apihub.curations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.discoveredApiObservations.list`

**GET** `v1/{+parent}/discoveredApiObservations`

Lists all the DiscoveredAPIObservations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ApiObservations. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ApiObservations to return. The service may return fewer than this value. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiObservations` call. Provide this to retrieve the subsequent ... |

**Response**: `GoogleCloudApihubV1ListDiscoveredApiObservationsResponse`

```typescript
const res = await apihub.discoveredApiObservations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.discoveredApiObservations.get`

**GET** `v1/{+name}`

Gets a DiscoveredAPIObservation in a given project, location and ApiObservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiscoveredApiObservation to retrieve. Format: projects/{project}/locations/{location}/disco... |

**Response**: `GoogleCloudApihubV1DiscoveredApiObservation`

```typescript
const res = await apihub.discoveredApiObservations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.discoveredApiObservations.discoveredApiOperations.get`

**GET** `v1/{+name}`

Gets a DiscoveredAPIOperation in a given project, location, ApiObservation and ApiOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiscoveredApiOperation to retrieve. Format: projects/{project}/locations/{location}/discove... |

**Response**: `GoogleCloudApihubV1DiscoveredApiOperation`

```typescript
const res = await apihub.discoveredApiOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.discoveredApiObservations.discoveredApiOperations.list`

**GET** `v1/{+parent}/discoveredApiOperations`

Lists all the DiscoveredAPIOperations in a given project, location and ApiObservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of DiscoveredApiOperations. Format: projects/{project}/locations/{lo... |
| `pageSize` | `integer` | query | No | Optional. DiscoveredApiOperations will be returned. The maximum value is 1000; values above 1000 will be coerced to 1... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDiscoveredApiApiOperations` call. Provide this to retrieve the ... |

**Response**: `GoogleCloudApihubV1ListDiscoveredApiOperationsResponse`

```typescript
const res = await apihub.discoveredApiOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await apihub.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await apihub.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await apihub.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apihub.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await apihub.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleCloudApihubV1APIMetadata`

The API metadata.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `GoogleCloudApihubV1Api` | Required. The API resource to be pushed to Hub's collect layer. The ID of the API resource will b... |
| `originalCreateTime` | `string` | Optional. Timestamp indicating when the API was created at the source. |
| `originalId` | `string` | Optional. The unique identifier of the API in the system where it was originally created. |
| `originalUpdateTime` | `string` | Required. Timestamp indicating when the API was last updated at the source. |
| `versions` | `array<GoogleCloudApihubV1VersionMetadata>` | Optional. The list of versions present in an API resource. |

### `GoogleCloudApihubV1ActionExecutionDetail`

The details for the action to execute.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Required. The action id of the plugin to execute. |

### `GoogleCloudApihubV1AdditionalSpecContent`

The additional spec content for the spec. This contains the metadata and the last update time for the additional spec content.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the spec content was created. |
| `labels` | `object` | Optional. The labels of the spec content e.g. specboost addon version. |
| `specContentType` | `string` | Required. The type of the spec content. |
| `specContents` | `GoogleCloudApihubV1SpecContents` | Optional. The additional spec contents. |
| `updateTime` | `string` | Output only. The time at which the spec content was last updated. |

### `GoogleCloudApihubV1Addon`

Addon resource.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudApihubV1AddonConfig` | Required. The configuration of the addon. |
| `createTime` | `string` | Output only. The time at which the addon was created. |
| `dataSource` | `string` | Required. The data source on which the addon operates. This determines which field in the `config... |
| `description` | `string` | Optional. The description of the addon. |
| `displayName` | `string` | Required. The display name of the addon. |
| `name` | `string` | Identifier. The name of the addon to enable. Format: `projects/{project}/locations/{location}/add... |
| `state` | `string` | Output only. The state of the addon. |
| `updateTime` | `string` | Output only. The time at which the addon was last updated. |

### `GoogleCloudApihubV1AddonConfig`

Configuration for the addon.

| Property | Type | Description |
|----------|------|-------------|
| `allDataAddonConfig` | `GoogleCloudApihubV1AllDataAddonConfig` | Configuration for addons which act on all data in the API hub. |
| `gatewayPluginAddonConfig` | `GoogleCloudApihubV1GatewayPluginAddonConfig` | Configuration for gateway plugin addons. |

### `GoogleCloudApihubV1AllDataAddonConfig`

Configuration for addons which act on all data in the API hub. This is used to specify if the addon is enabled for all data in the API hub.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. If true, the addon is enabled for all data in the API hub. |

### `GoogleCloudApihubV1AllowedValue`

The value that can be assigned to the attribute when the data type is enum.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The detailed description of the allowed value. |
| `displayName` | `string` | Required. The display name of the allowed value. |
| `id` | `string` | Required. The ID of the allowed value. * If provided, the same will be used. The service will thr... |
| `immutable` | `boolean` | Optional. When set to true, the allowed value cannot be updated or deleted by the user. It can on... |

### `GoogleCloudApihubV1Api`

An API resource in the API Hub.

| Property | Type | Description |
|----------|------|-------------|
| `apiFunctionalRequirements` | `GoogleCloudApihubV1AttributeValues` | Optional. The api functional requirements associated with the API resource. Carinality is 1 for t... |
| `apiRequirements` | `GoogleCloudApihubV1AttributeValues` | Optional. The api requirement doc associated with the API resource. Carinality is 1 for this attr... |
| `apiStyle` | `GoogleCloudApihubV1AttributeValues` | Optional. The style of the API. This maps to the following system defined attribute: `projects/{p... |
| `apiTechnicalRequirements` | `GoogleCloudApihubV1AttributeValues` | Optional. The api technical requirements associated with the API resource. Carinality is 1 for th... |
| `attributes` | `object` | Optional. The list of user defined attributes associated with the API resource. The key is the at... |
| `businessUnit` | `GoogleCloudApihubV1AttributeValues` | Optional. The business unit owning the API. This maps to the following system defined attribute: ... |
| `createTime` | `string` | Output only. The time at which the API resource was created. |
| `description` | `string` | Optional. The description of the API resource. |
| `displayName` | `string` | Required. The display name of the API resource. |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. The documentation for the API resource. |
| `fingerprint` | `string` | Optional. Fingerprint of the API resource. This must be unique for each API resource. It can neit... |
| `maturityLevel` | `GoogleCloudApihubV1AttributeValues` | Optional. The maturity level of the API. This maps to the following system defined attribute: `pr... |
| `name` | `string` | Identifier. The name of the API resource in the API Hub. Format: `projects/{project}/locations/{l... |
| `owner` | `GoogleCloudApihubV1Owner` | Optional. Owner details for the API resource. |
| `selectedVersion` | `string` | Optional. The selected version for an API resource. This can be used when special handling is nee... |
| `sourceMetadata` | `array<GoogleCloudApihubV1SourceMetadata>` | Output only. The list of sources and metadata from the sources of the API resource. |
| `targetUser` | `GoogleCloudApihubV1AttributeValues` | Optional. The target users for the API. This maps to the following system defined attribute: `pro... |
| `team` | `GoogleCloudApihubV1AttributeValues` | Optional. The team owning the API. This maps to the following system defined attribute: `projects... |
| `updateTime` | `string` | Output only. The time at which the API resource was last updated. |
| `versions` | `array<string>` | Output only. The list of versions present in an API resource. Note: An API resource can be associ... |

### `GoogleCloudApihubV1ApiData`

The API data to be collected.

| Property | Type | Description |
|----------|------|-------------|
| `apiMetadataList` | `GoogleCloudApihubV1ApiMetadataList` | Optional. The list of API metadata. |

### `GoogleCloudApihubV1ApiHubInstance`

An ApiHubInstance represents the instance resources of the API Hub. Currently, only one ApiHub instance is allowed for each project.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudApihubV1Config` | Required. Config of the ApiHub instance. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `description` | `string` | Optional. Description of the ApiHub instance. |
| `labels` | `object` | Optional. Instance labels to represent user-provided metadata. Refer to cloud documentation on la... |
| `name` | `string` | Identifier. Format: `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`. |
| `state` | `string` | Output only. The current state of the ApiHub instance. |
| `stateMessage` | `string` | Output only. Extra information about ApiHub instance state. Currently the message would be popula... |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `GoogleCloudApihubV1ApiHubResource`

ApiHubResource is one of the resources such as Api, Operation, Deployment, Definition, Spec and Version resources stored in API-Hub.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `GoogleCloudApihubV1Api` | This represents Api resource in search results. Only name, display_name, description and owner fi... |
| `definition` | `GoogleCloudApihubV1Definition` | This represents Definition resource in search results. Only name field is populated in search res... |
| `deployment` | `GoogleCloudApihubV1Deployment` | This represents Deployment resource in search results. Only name, display_name, description, depl... |
| `operation` | `GoogleCloudApihubV1ApiOperation` | This represents ApiOperation resource in search results. Only name, description, spec and details... |
| `spec` | `GoogleCloudApihubV1Spec` | This represents Spec resource in search results. Only name, display_name, description, spec_type ... |
| `version` | `GoogleCloudApihubV1Version` | This represents Version resource in search results. Only name, display_name, description, lifecyc... |

### `GoogleCloudApihubV1ApiKeyConfig`

Config for authentication with API key.

| Property | Type | Description |
|----------|------|-------------|
| `apiKey` | `GoogleCloudApihubV1Secret` | Required. The name of the SecretManager secret version resource storing the API key. Format: `pro... |
| `httpElementLocation` | `string` | Required. The location of the API key. The default value is QUERY. |
| `name` | `string` | Required. The parameter name of the API key. E.g. If the API request is "https://example.com/act?... |

### `GoogleCloudApihubV1ApiMetadataList`

The message to hold repeated API metadata.

| Property | Type | Description |
|----------|------|-------------|
| `apiMetadata` | `array<GoogleCloudApihubV1APIMetadata>` | Required. The list of API metadata. |

### `GoogleCloudApihubV1ApiOperation`

Represents an operation contained in an API version in the API Hub. An operation is added/updated/deleted in an API version when a new spec is added or an existing spec is updated/deleted in a version. Currently, an operation will be created only corresponding to OpenAPI spec as parsing is supported for OpenAPI spec. Alternatively operations can be managed via create,update and delete APIs, creation of apiOperation can be possible only for version with no parsed operations and update/delete can be possible only for operations created via create API.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The list of user defined attributes associated with the API operation resource. The key... |
| `createTime` | `string` | Output only. The time at which the operation was created. |
| `details` | `GoogleCloudApihubV1OperationDetails` | Optional. Operation details. Note: Even though this field is optional, it is required for CreateA... |
| `name` | `string` | Identifier. The name of the operation. Format: `projects/{project}/locations/{location}/apis/{api... |
| `sourceMetadata` | `array<GoogleCloudApihubV1SourceMetadata>` | Output only. The list of sources and metadata from the sources of the API operation. |
| `spec` | `string` | Output only. The name of the spec will be of the format: `projects/{project}/locations/{location}... |
| `updateTime` | `string` | Output only. The time at which the operation was last updated. |

### `GoogleCloudApihubV1ApiView`

The view of an API.

| Property | Type | Description |
|----------|------|-------------|
| `mcpServerView` | `GoogleCloudApihubV1FlattenedApiVersionDeploymentView` | Output only. MCP server view. |
| `mcpToolView` | `GoogleCloudApihubV1FlattenedApiVersionOperationDeploymentView` | Output only. MCP tools view. |

### `GoogleCloudApihubV1ApigeeEdgeConfig`

Configuration for Apigee Edge gateways. Applicability of a filter is determined by the filter being provided. If none of the filters are provided the addon will be enabled for all data brought in by the gateway plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `environmentFilter` | `GoogleCloudApihubV1EnvironmentFilter` | Optional. The filter to apply on the resources managed by the gateway plugin instance. If provide... |

### `GoogleCloudApihubV1ApigeeOPDKConfig`

Configuration for Apigee OPDK gateways. Applicability of a filter is determined by the filter being provided. If none of the filters are provided the addon will be enabled for all data brought in by the gateway plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `environmentFilter` | `GoogleCloudApihubV1EnvironmentFilter` | Optional. The filter to apply on the resources managed by the gateway plugin instance. If provide... |

### `GoogleCloudApihubV1ApigeeXHybridConfig`

Configuration for Apigee X and Apigee Hybrid gateways. Applicability of a filter is determined by the filter being provided. If none of the filters are provided the addon will be enabled for all data brought in by the gateway plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `environmentFilter` | `GoogleCloudApihubV1EnvironmentFilter` | Optional. The filter to apply on the resources managed by the gateway plugin instance. If provide... |

### `GoogleCloudApihubV1ApplicationIntegrationEndpointDetails`

The details of the Application Integration endpoint to be triggered for curation.

| Property | Type | Description |
|----------|------|-------------|
| `triggerId` | `string` | Required. The API trigger ID of the Application Integration workflow. |
| `uri` | `string` | Required. The endpoint URI should be a valid REST URI for triggering an Application Integration. ... |

### `GoogleCloudApihubV1Attribute`

An attribute in the API Hub. An attribute is a name value pair which can be attached to different resources in the API hub based on the scope of the attribute. Attributes can either be pre-defined by the API Hub or created by users.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<GoogleCloudApihubV1AllowedValue>` | Optional. The list of allowed values when the attribute value is of type enum. This is required w... |
| `cardinality` | `integer` | Optional. The maximum number of values that the attribute can have when associated with an API Hu... |
| `createTime` | `string` | Output only. The time at which the attribute was created. |
| `dataType` | `string` | Required. The type of the data of the attribute. |
| `definitionType` | `string` | Output only. The definition type of the attribute. |
| `description` | `string` | Optional. The description of the attribute. |
| `displayName` | `string` | Required. The display name of the attribute. |
| `mandatory` | `boolean` | Output only. When mandatory is true, the attribute is mandatory for the resource specified in the... |
| `name` | `string` | Identifier. The name of the attribute in the API Hub. Format: `projects/{project}/locations/{loca... |
| `scope` | `string` | Required. The scope of the attribute. It represents the resource in the API Hub to which the attr... |
| `updateTime` | `string` | Output only. The time at which the attribute was last updated. |

### `GoogleCloudApihubV1AttributeValues`

The attribute values associated with resource.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Output only. The name of the attribute. Format: projects/{project}/locations/{location}/attribute... |
| `enumValues` | `GoogleCloudApihubV1EnumAttributeValues` | The attribute values associated with a resource in case attribute data type is enum. |
| `jsonValues` | `GoogleCloudApihubV1StringAttributeValues` | The attribute values associated with a resource in case attribute data type is JSON. |
| `stringValues` | `GoogleCloudApihubV1StringAttributeValues` | The attribute values associated with a resource in case attribute data type is string. |
| `uriValues` | `GoogleCloudApihubV1StringAttributeValues` | The attribute values associated with a resource in case attribute data type is URL, URI or IP, li... |

### `GoogleCloudApihubV1AuthConfig`

AuthConfig represents the authentication information.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyConfig` | `GoogleCloudApihubV1ApiKeyConfig` | Api Key Config. |
| `authType` | `string` | Required. The authentication type. |
| `googleServiceAccountConfig` | `GoogleCloudApihubV1GoogleServiceAccountConfig` | Google Service Account. |
| `oauth2ClientCredentialsConfig` | `GoogleCloudApihubV1Oauth2ClientCredentialsConfig` | Oauth2.0 Client Credentials. |
| `userPasswordConfig` | `GoogleCloudApihubV1UserPasswordConfig` | User Password. |

### `GoogleCloudApihubV1AuthConfigTemplate`

AuthConfigTemplate represents the authentication template for a plugin.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `GoogleCloudApihubV1GoogleServiceAccountConfig` | Optional. The service account of the plugin hosting service. This service account should be grant... |
| `supportedAuthTypes` | `array<string>` | Required. The list of authentication types supported by the plugin. |

### `GoogleCloudApihubV1CollectApiDataRequest`

The CollectApiData method's request.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Required. The action ID to be used for collecting the API data. This should map to one of the act... |
| `apiData` | `GoogleCloudApihubV1ApiData` | Required. The API data to be collected. |
| `collectionType` | `string` | Required. The type of collection. Applies to all entries in api_data. |
| `pluginInstance` | `string` | Required. The plugin instance collecting the API data. Format: `projects/{project}/locations/{loc... |

### `GoogleCloudApihubV1Config`

Available configurations to provision an ApiHub Instance.

| Property | Type | Description |
|----------|------|-------------|
| `cmekKeyName` | `string` | Optional. The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name shou... |
| `disableSearch` | `boolean` | Optional. If true, the search will be disabled for the instance. The default value is false. |
| `encryptionType` | `string` | Optional. Encryption type for the region. If the encryption type is CMEK, the cmek_key_name must ... |
| `vertexLocation` | `string` | Optional. The name of the Vertex AI location where the data store is stored. |

### `GoogleCloudApihubV1ConfigTemplate`

ConfigTemplate represents the configuration template for a plugin.

| Property | Type | Description |
|----------|------|-------------|
| `additionalConfigTemplate` | `array<GoogleCloudApihubV1ConfigVariableTemplate>` | Optional. The list of additional configuration variables for the plugin's configuration. |
| `authConfigTemplate` | `GoogleCloudApihubV1AuthConfigTemplate` | Optional. The authentication template for the plugin. |

### `GoogleCloudApihubV1ConfigValueOption`

ConfigValueOption represents an option for a config variable of type enum or multi select.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the option. |
| `displayName` | `string` | Required. Display name of the option. |
| `id` | `string` | Required. Id of the option. |

### `GoogleCloudApihubV1ConfigVariable`

ConfigVariable represents a additional configuration variable present in a PluginInstance Config or AuthConfig, based on a ConfigVariableTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Optional. The config variable value in case of config variable of type boolean. |
| `enumValue` | `GoogleCloudApihubV1ConfigValueOption` | Optional. The config variable value in case of config variable of type enum. |
| `intValue` | `string` | Optional. The config variable value in case of config variable of type integer. |
| `key` | `string` | Output only. Key will be the id to uniquely identify the config variable. |
| `multiIntValues` | `GoogleCloudApihubV1MultiIntValues` | Optional. The config variable value in case of config variable of type multi integer. |
| `multiSelectValues` | `GoogleCloudApihubV1MultiSelectValues` | Optional. The config variable value in case of config variable of type multi select. |
| `multiStringValues` | `GoogleCloudApihubV1MultiStringValues` | Optional. The config variable value in case of config variable of type multi string. |
| `secretValue` | `GoogleCloudApihubV1Secret` | Optional. The config variable value in case of config variable of type secret. |
| `stringValue` | `string` | Optional. The config variable value in case of config variable of type string. |

### `GoogleCloudApihubV1ConfigVariableTemplate`

ConfigVariableTemplate represents a configuration variable template present in a Plugin Config.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description. |
| `enumOptions` | `array<GoogleCloudApihubV1ConfigValueOption>` | Optional. Enum options. To be populated if `ValueType` is `ENUM`. |
| `id` | `string` | Required. ID of the config variable. Must be unique within the configuration. |
| `multiSelectOptions` | `array<GoogleCloudApihubV1ConfigValueOption>` | Optional. Multi select options. To be populated if `ValueType` is `MULTI_SELECT`. |
| `required` | `boolean` | Optional. Flag represents that this `ConfigVariable` must be provided for a PluginInstance. |
| `validationRegex` | `string` | Optional. Regular expression in RE2 syntax used for validating the `value` of a `ConfigVariable`. |
| `valueType` | `string` | Required. Type of the parameter: string, int, bool etc. |

### `GoogleCloudApihubV1Curation`

A curation resource in the API Hub.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the curation was created. |
| `description` | `string` | Optional. The description of the curation. |
| `displayName` | `string` | Required. The display name of the curation. |
| `endpoint` | `GoogleCloudApihubV1Endpoint` | Required. The endpoint to be triggered for curation. |
| `lastExecutionErrorCode` | `string` | Output only. The error code of the last execution of the curation. The error code is populated on... |
| `lastExecutionErrorMessage` | `string` | Output only. Error message describing the failure, if any, during the last execution of the curat... |
| `lastExecutionState` | `string` | Output only. The last execution state of the curation. |
| `name` | `string` | Identifier. The name of the curation. Format: `projects/{project}/locations/{location}/curations/... |
| `pluginInstanceActions` | `array<GoogleCloudApihubV1PluginInstanceActionID>` | Output only. The plugin instances and associated actions that are using the curation. Note: A par... |
| `updateTime` | `string` | Output only. The time at which the curation was last updated. |

### `GoogleCloudApihubV1CurationConfig`

The curation information for this plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `curationType` | `string` | Required. The curation type for this plugin instance. |
| `customCuration` | `GoogleCloudApihubV1CustomCuration` | Optional. Custom curation information for this plugin instance. |

### `GoogleCloudApihubV1CustomCuration`

Custom curation information for this plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `curation` | `string` | Required. The unique name of the curation resource. This will be the name of the curation resourc... |

### `GoogleCloudApihubV1Definition`

Represents a definition for example schema, request, response definitions contained in an API version. A definition is added/updated/deleted in an API version when a new spec is added or an existing spec is updated/deleted in a version. Currently, definition will be created only corresponding to OpenAPI spec as parsing is supported for OpenAPI spec. Also, within OpenAPI spec, only `schema` object is supported.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The list of user defined attributes associated with the definition resource. The key is... |
| `createTime` | `string` | Output only. The time at which the definition was created. |
| `name` | `string` | Identifier. The name of the definition. Format: `projects/{project}/locations/{location}/apis/{ap... |
| `schema` | `GoogleCloudApihubV1Schema` | Output only. The value of a schema definition. |
| `spec` | `string` | Output only. The name of the spec from where the definition was parsed. Format is `projects/{proj... |
| `type` | `string` | Output only. The type of the definition. |
| `updateTime` | `string` | Output only. The time at which the definition was last updated. |

### `GoogleCloudApihubV1Dependency`

A dependency resource defined in the API hub describes a dependency directed from a consumer to a supplier entity. A dependency can be defined between two Operations or between an Operation and External API.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The list of user defined attributes associated with the dependency resource. The key is... |
| `consumer` | `GoogleCloudApihubV1DependencyEntityReference` | Required. Immutable. The entity acting as the consumer in the dependency. |
| `createTime` | `string` | Output only. The time at which the dependency was created. |
| `description` | `string` | Optional. Human readable description corresponding of the dependency. |
| `discoveryMode` | `string` | Output only. Discovery mode of the dependency. |
| `errorDetail` | `GoogleCloudApihubV1DependencyErrorDetail` | Output only. Error details of a dependency if the system has detected it internally. |
| `name` | `string` | Identifier. The name of the dependency in the API Hub. Format: `projects/{project}/locations/{loc... |
| `state` | `string` | Output only. State of the dependency. |
| `supplier` | `GoogleCloudApihubV1DependencyEntityReference` | Required. Immutable. The entity acting as the supplier in the dependency. |
| `updateTime` | `string` | Output only. The time at which the dependency was last updated. |

### `GoogleCloudApihubV1DependencyEntityReference`

Reference to an entity participating in a dependency.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Display name of the entity. |
| `externalApiResourceName` | `string` | The resource name of an external API in the API Hub. Format: `projects/{project}/locations/{locat... |
| `operationResourceName` | `string` | The resource name of an operation in the API Hub. Format: `projects/{project}/locations/{location... |

### `GoogleCloudApihubV1DependencyErrorDetail`

Details describing error condition of a dependency.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Optional. Error in the dependency. |
| `errorTime` | `string` | Optional. Timestamp at which the error was found. |

### `GoogleCloudApihubV1Deployment`

Details of the deployment where APIs are hosted. A deployment could represent an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud services as well. A deployment entity is a root level entity in the API hub and exists independent of any API.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersions` | `array<string>` | Output only. The API versions linked to this deployment. Note: A particular deployment could be l... |
| `attributes` | `object` | Optional. The list of user defined attributes associated with the deployment resource. The key is... |
| `createTime` | `string` | Output only. The time at which the deployment was created. |
| `deploymentType` | `GoogleCloudApihubV1AttributeValues` | Required. The type of deployment. This maps to the following system defined attribute: `projects/... |
| `description` | `string` | Optional. The description of the deployment. |
| `displayName` | `string` | Required. The display name of the deployment. |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. The documentation of the deployment. |
| `endpoints` | `array<string>` | Required. The endpoints at which this deployment resource is listening for API requests. This cou... |
| `environment` | `GoogleCloudApihubV1AttributeValues` | Optional. The environment mapping to this deployment. This maps to the following system defined a... |
| `managementUrl` | `GoogleCloudApihubV1AttributeValues` | Optional. The uri where users can navigate to for the management of the deployment. This maps to ... |
| `name` | `string` | Identifier. The name of the deployment. Format: `projects/{project}/locations/{location}/deployme... |
| `resourceUri` | `string` | Required. The resource URI identifies the deployment within its gateway. For Apigee gateways, its... |
| `slo` | `GoogleCloudApihubV1AttributeValues` | Optional. The SLO for this deployment. This maps to the following system defined attribute: `proj... |
| `sourceEnvironment` | `string` | Optional. The environment at source for the deployment. For example: prod, dev, staging, etc. |
| `sourceMetadata` | `array<GoogleCloudApihubV1SourceMetadata>` | Output only. The list of sources and metadata from the sources of the deployment. |
| `sourceProject` | `string` | Optional. The project to which the deployment belongs. For Google Cloud gateways, this will refer... |
| `sourceUri` | `GoogleCloudApihubV1AttributeValues` | Optional. The uri where additional source specific information for this deployment can be found. ... |
| `updateTime` | `string` | Output only. The time at which the deployment was last updated. |

### `GoogleCloudApihubV1DeploymentMetadata`

The metadata associated with a deployment.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `GoogleCloudApihubV1Deployment` | Required. The deployment resource to be pushed to Hub's collect layer. The ID of the deployment w... |
| `originalCreateTime` | `string` | Optional. Timestamp indicating when the deployment was created at the source. |
| `originalId` | `string` | Optional. The unique identifier of the deployment in the system where it was originally created. |
| `originalUpdateTime` | `string` | Required. Timestamp indicating when the deployment was last updated at the source. |

### `GoogleCloudApihubV1DisablePluginInstanceActionRequest`

The DisablePluginInstanceAction method's request.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Required. The action id to disable. |

### `GoogleCloudApihubV1DisablePluginRequest`

The DisablePlugin method's request.

### `GoogleCloudApihubV1DiscoveredApiObservation`

Respresents an API Observation observed in one of the sources.

| Property | Type | Description |
|----------|------|-------------|
| `apiOperationCount` | `string` | Optional. The number of observed API Operations. |
| `createTime` | `string` | Output only. Create time stamp of the observation in API Hub. |
| `hostname` | `string` | Optional. The hostname of requests processed for this Observation. |
| `knownOperationsCount` | `string` | Output only. The number of known API Operations. |
| `lastEventDetectedTime` | `string` | Optional. Last event detected time stamp |
| `name` | `string` | Identifier. The name of the discovered API Observation. Format: `projects/{project}/locations/{lo... |
| `origin` | `string` | Optional. For an observation pushed from a Google Cloud resource, this would be the Google Cloud ... |
| `serverIps` | `array<string>` | Optional. The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This f... |
| `sourceLocations` | `array<string>` | Optional. The location of the observation source. |
| `sourceMetadata` | `GoogleCloudApihubV1SourceMetadata` | Output only. The metadata of the source from which the observation was collected. |
| `sourceTypes` | `array<string>` | Optional. The type of the source from which the observation was collected. |
| `style` | `string` | Optional. Style of ApiObservation |
| `unknownOperationsCount` | `string` | Output only. The number of unknown API Operations. |
| `updateTime` | `string` | Output only. Update time stamp of the observation in API Hub. |

### `GoogleCloudApihubV1DiscoveredApiOperation`

DiscoveredApiOperation represents an API Operation observed in one of the sources.

| Property | Type | Description |
|----------|------|-------------|
| `classification` | `string` | Output only. The classification of the discovered API operation. |
| `count` | `string` | Optional. The number of occurrences of this API Operation. |
| `createTime` | `string` | Output only. Create time stamp of the discovered API operation in API Hub. |
| `firstSeenTime` | `string` | Optional. First seen time stamp |
| `httpOperation` | `GoogleCloudApihubV1HttpOperationDetails` | Optional. An HTTP Operation. |
| `lastSeenTime` | `string` | Optional. Last seen time stamp |
| `matchResults` | `array<GoogleCloudApihubV1MatchResult>` | Output only. The list of matched results for the discovered API operation. This will be populated... |
| `name` | `string` | Identifier. The name of the discovered API Operation. Format: `projects/{project}/locations/{loca... |
| `sourceMetadata` | `GoogleCloudApihubV1SourceMetadata` | Output only. The metadata of the source from which the api operation was collected. |
| `updateTime` | `string` | Output only. Update time stamp of the discovered API operation in API Hub. |

### `GoogleCloudApihubV1Documentation`

Documentation details.

| Property | Type | Description |
|----------|------|-------------|
| `externalUri` | `string` | Optional. The uri of the externally hosted documentation. |

### `GoogleCloudApihubV1EnablePluginInstanceActionRequest`

The EnablePluginInstanceAction method's request.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Required. The action id to enable. |

### `GoogleCloudApihubV1EnablePluginRequest`

The EnablePlugin method's request.

### `GoogleCloudApihubV1Endpoint`

The endpoint to be triggered for curation. The endpoint will be invoked with a request payload containing ApiMetadata. Response should contain curated data in the form of ApiMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `applicationIntegrationEndpointDetails` | `GoogleCloudApihubV1ApplicationIntegrationEndpointDetails` | Required. The details of the Application Integration endpoint to be triggered for curation. |

### `GoogleCloudApihubV1EnumAttributeValues`

The attribute values of data type enum.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GoogleCloudApihubV1AllowedValue>` | Required. The attribute values in case attribute data type is enum. |

### `GoogleCloudApihubV1EnvironmentFilter`

Filter for environments.

| Property | Type | Description |
|----------|------|-------------|
| `allEnvironments` | `boolean` | Optional. Indicates if this filter should match all environments or only a subset of environments... |
| `environments` | `array<string>` | Optional. If provided, only environments in this list are matched. This field is ignored if `all_... |

### `GoogleCloudApihubV1ExecutePluginInstanceActionRequest`

The ExecutePluginInstanceAction method's request.

| Property | Type | Description |
|----------|------|-------------|
| `actionExecutionDetail` | `GoogleCloudApihubV1ActionExecutionDetail` | Required. The execution details for the action to execute. |

### `GoogleCloudApihubV1ExecutionStatus`

The execution status for the plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `currentExecutionState` | `string` | Output only. The current state of the execution. |
| `lastExecution` | `GoogleCloudApihubV1LastExecution` | Output only. The last execution of the plugin instance. |

### `GoogleCloudApihubV1ExternalApi`

An external API represents an API being provided by external sources. This can be used to model third-party APIs and can be used to define dependencies.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The list of user defined attributes associated with the Version resource. The key is th... |
| `createTime` | `string` | Output only. Creation timestamp. |
| `description` | `string` | Optional. Description of the external API. Max length is 2000 characters (Unicode Code Points). |
| `displayName` | `string` | Required. Display name of the external API. Max length is 63 characters (Unicode Code Points). |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. Documentation of the external API. |
| `endpoints` | `array<string>` | Optional. List of endpoints on which this API is accessible. |
| `name` | `string` | Identifier. Format: `projects/{project}/locations/{location}/externalApi/{externalApi}`. |
| `paths` | `array<string>` | Optional. List of paths served by this API. |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `GoogleCloudApihubV1FetchAdditionalSpecContentResponse`

The FetchAdditionalSpecContent method's response.

| Property | Type | Description |
|----------|------|-------------|
| `additionalSpecContent` | `GoogleCloudApihubV1AdditionalSpecContent` | The additional spec content. |

### `GoogleCloudApihubV1FlattenedApiVersionDeploymentView`

A flattened view of an API, its version and one of the linked deployments.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `GoogleCloudApihubV1Api` | The API. |
| `deployment` | `GoogleCloudApihubV1Deployment` | The deployment. |
| `version` | `GoogleCloudApihubV1Version` | The version. |

### `GoogleCloudApihubV1FlattenedApiVersionOperationDeploymentView`

A flattened view of an API, its version, one of its operations and one of the linked deployments. If there are no deployments linked to the operation then the result will be empty.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `GoogleCloudApihubV1Api` | The API. |
| `apiOperation` | `GoogleCloudApihubV1ApiOperation` | The API operation. |
| `deployment` | `GoogleCloudApihubV1Deployment` | The deployment. |
| `version` | `GoogleCloudApihubV1Version` | The version. |

### `GoogleCloudApihubV1GatewayPluginAddonConfig`

Configuration for gateway plugin addons. This is used to specify the list of gateway plugin configs for which the addon is enabled.

| Property | Type | Description |
|----------|------|-------------|
| `gatewayPluginConfigs` | `array<GoogleCloudApihubV1GatewayPluginConfig>` | Required. The list of gateway plugin configs for which the addon is enabled. Each gateway plugin ... |

### `GoogleCloudApihubV1GatewayPluginConfig`

Configuration for a gateway plugin. This is used to specify configs for different gateways.

| Property | Type | Description |
|----------|------|-------------|
| `apigeeEdgeConfig` | `GoogleCloudApihubV1ApigeeEdgeConfig` | Configuration for Apigee Edge gateways. |
| `apigeeOpdkConfig` | `GoogleCloudApihubV1ApigeeOPDKConfig` | Configuration for Apigee OPDK gateways. |
| `apigeeXHybridConfig` | `GoogleCloudApihubV1ApigeeXHybridConfig` | Configuration for Apigee X and Apigee Hybrid gateways. |
| `pluginInstance` | `string` | Required. The name of the gateway plugin instance for which the config is to be specified. Format... |

### `GoogleCloudApihubV1GoogleServiceAccountConfig`

Config for Google service account authentication.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `string` | Required. The service account to be used for authenticating request. The `iam.serviceAccounts.get... |

### `GoogleCloudApihubV1Header`

An aggregation of HTTP header occurrences.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this Header across transactions. |
| `dataType` | `string` | Data type of header |
| `name` | `string` | Header name. |

### `GoogleCloudApihubV1HostProjectRegistration`

Host project registration refers to the registration of a Google cloud project with Api Hub as a host project. This is the project where Api Hub is provisioned. It acts as the consumer project for the Api Hub instance provisioned. Multiple runtime projects can be attached to the host project and these attachments define the scope of Api Hub.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the host project registration was created. |
| `gcpProject` | `string` | Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123". A... |
| `name` | `string` | Identifier. The name of the host project registration. Format: "projects/{project}/locations/{loc... |

### `GoogleCloudApihubV1HostingService`

The information related to the service implemented by the plugin developer, used to invoke the plugin's functionality.

| Property | Type | Description |
|----------|------|-------------|
| `serviceUri` | `string` | Optional. The URI of the service implemented by the plugin developer, used to invoke the plugin's... |

### `GoogleCloudApihubV1HttpOperation`

The HTTP Operation.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | Optional. Operation method Note: Even though this field is optional, it is required for CreateApi... |
| `path` | `GoogleCloudApihubV1Path` | Optional. The path details for the Operation. Note: Even though this field is optional, it is req... |

### `GoogleCloudApihubV1HttpOperationDetails`

An HTTP-based API Operation, sometimes called a "REST" Operation.

| Property | Type | Description |
|----------|------|-------------|
| `httpOperation` | `GoogleCloudApihubV1HttpOperation` | Required. An HTTP Operation. |
| `pathParams` | `array<GoogleCloudApihubV1PathParam>` | Optional. Path params of HttpOperation |
| `queryParams` | `object` | Optional. Query params of HttpOperation |
| `request` | `GoogleCloudApihubV1HttpRequest` | Optional. Request metadata. |
| `response` | `GoogleCloudApihubV1HttpResponse` | Optional. Response metadata. |

### `GoogleCloudApihubV1HttpRequest`

An aggregation of HTTP requests.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `object` | Optional. Unordered map from header name to header metadata |

### `GoogleCloudApihubV1HttpResponse`

An aggregation of HTTP responses.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `object` | Optional. Unordered map from header name to header metadata |
| `responseCodes` | `object` | Optional. Map of status code to observed count |

### `GoogleCloudApihubV1Issue`

Issue contains the details of a single issue found by the linter.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. Rule code unique to each rule defined in linter. |
| `message` | `string` | Required. Human-readable message describing the issue found by the linter. |
| `path` | `array<string>` | Required. An array of strings indicating the location in the analyzed document where the rule was... |
| `range` | `GoogleCloudApihubV1Range` | Required. Object describing where in the file the issue was found. |
| `severity` | `string` | Required. Severity level of the rule violation. |

### `GoogleCloudApihubV1LastExecution`

The result of the last execution of the plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The last execution end time of the plugin instance. |
| `errorMessage` | `string` | Output only. Error message describing the failure, if any, during the last execution. |
| `result` | `string` | Output only. The result of the last execution of the plugin instance. |
| `resultMetadata` | `string` | Output only. The result metadata of the last execution of the plugin instance. This will be a str... |
| `startTime` | `string` | Output only. The last execution start time of the plugin instance. |

### `GoogleCloudApihubV1LintResponse`

LintResponse contains the response from the linter.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Required. Timestamp when the linting response was generated. |
| `issues` | `array<GoogleCloudApihubV1Issue>` | Optional. Array of issues found in the analyzed document. |
| `linter` | `string` | Required. Name of the linter used. |
| `source` | `string` | Required. Name of the linting application. |
| `state` | `string` | Required. Lint state represents success or failure for linting. |
| `summary` | `array<GoogleCloudApihubV1SummaryEntry>` | Optional. Summary of all issue types and counts for each severity level. |

### `GoogleCloudApihubV1LintSpecRequest`

The LintSpec method's request.

### `GoogleCloudApihubV1ListAddonsResponse`

The ListAddons method's response.

| Property | Type | Description |
|----------|------|-------------|
| `addons` | `array<GoogleCloudApihubV1Addon>` | The list of addons. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |

### `GoogleCloudApihubV1ListApiOperationsResponse`

The ListApiOperations method's response.

| Property | Type | Description |
|----------|------|-------------|
| `apiOperations` | `array<GoogleCloudApihubV1ApiOperation>` | The operations corresponding to an API version. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListApisResponse`

The ListApis method's response.

| Property | Type | Description |
|----------|------|-------------|
| `apis` | `array<GoogleCloudApihubV1Api>` | The API resources present in the API hub. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListAttributesResponse`

The ListAttributes method's response.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<GoogleCloudApihubV1Attribute>` | The list of all attributes. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListCurationsResponse`

The ListCurations method's response.

| Property | Type | Description |
|----------|------|-------------|
| `curations` | `array<GoogleCloudApihubV1Curation>` | The curation resources present in the API hub. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListDependenciesResponse`

The ListDependencies method's response.

| Property | Type | Description |
|----------|------|-------------|
| `dependencies` | `array<GoogleCloudApihubV1Dependency>` | The dependency resources present in the API hub. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListDeploymentsResponse`

The ListDeployments method's response.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<GoogleCloudApihubV1Deployment>` | The deployment resources present in the API hub. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListDiscoveredApiObservationsResponse`

Message for response to listing DiscoveredApiObservations

| Property | Type | Description |
|----------|------|-------------|
| `discoveredApiObservations` | `array<GoogleCloudApihubV1DiscoveredApiObservation>` | The DiscoveredApiObservation from the specified project and location. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListDiscoveredApiOperationsResponse`

Message for response to listing DiscoveredApiOperations

| Property | Type | Description |
|----------|------|-------------|
| `discoveredApiOperations` | `array<GoogleCloudApihubV1DiscoveredApiOperation>` | The DiscoveredApiOperations from the specified project, location and DiscoveredApiObservation. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListExternalApisResponse`

The ListExternalApis method's response.

| Property | Type | Description |
|----------|------|-------------|
| `externalApis` | `array<GoogleCloudApihubV1ExternalApi>` | The External API resources present in the API hub. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListHostProjectRegistrationsResponse`

The ListHostProjectRegistrations method's response.

| Property | Type | Description |
|----------|------|-------------|
| `hostProjectRegistrations` | `array<GoogleCloudApihubV1HostProjectRegistration>` | The list of host project registrations. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudApihubV1ListPluginInstancesResponse`

The ListPluginInstances method's response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `pluginInstances` | `array<GoogleCloudApihubV1PluginInstance>` | The plugin instances from the specified parent resource. |

### `GoogleCloudApihubV1ListPluginsResponse`

The ListPlugins method's response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `plugins` | `array<GoogleCloudApihubV1Plugin>` | The plugins from the specified parent resource. |

### `GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse`

The ListRuntimeProjectAttachments method's response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `runtimeProjectAttachments` | `array<GoogleCloudApihubV1RuntimeProjectAttachment>` | List of runtime project attachments. |

### `GoogleCloudApihubV1ListSpecsResponse`

The ListSpecs method's response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `specs` | `array<GoogleCloudApihubV1Spec>` | The specs corresponding to an API Version. |

### `GoogleCloudApihubV1ListVersionsResponse`

The ListVersions method's response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `versions` | `array<GoogleCloudApihubV1Version>` | The versions corresponding to an API. |

### `GoogleCloudApihubV1LookupApiHubInstanceResponse`

The LookupApiHubInstance method's response.`

| Property | Type | Description |
|----------|------|-------------|
| `apiHubInstance` | `GoogleCloudApihubV1ApiHubInstance` | API Hub instance for a project if it exists, empty otherwise. |

### `GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse`

The ListRuntimeProjectAttachments method's response.

| Property | Type | Description |
|----------|------|-------------|
| `runtimeProjectAttachment` | `GoogleCloudApihubV1RuntimeProjectAttachment` | Runtime project attachment for a project if exists, empty otherwise. |

### `GoogleCloudApihubV1ManageAddonConfigRequest`

The ManageAddonConfig method's request.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudApihubV1AddonConfig` | Required. The config of the addon to be managed. This config will replace the config present in t... |

### `GoogleCloudApihubV1ManagePluginInstanceSourceDataRequest`

The ManagePluginInstanceSourceData method's request.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Action to be performed. |
| `data` | `string` | Required. Data to be managed. |
| `dataType` | `string` | Required. Type of data to be managed. |
| `relativePath` | `string` | Required. Relative path of data being managed for a given plugin instance. |

### `GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse`

The ManagePluginInstanceSourceData method's response.

### `GoogleCloudApihubV1MatchResult`

MatchResult represents the result of matching a discovered API operation with a catalog API operation.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the matched API Operation. Format: `projects/{project}/locations/{locati... |

### `GoogleCloudApihubV1McpTool`

Details describing an MCP Tool.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `GoogleCloudApihubV1ToolAnnotations` | Optional. Optional annotations for the tool. |
| `description` | `string` | Optional. Description of what the tool does. |
| `inputSchema` | `GoogleCloudApihubV1OperationSchema` | Optional. Input schema for the operation. This can be parsed only from MCP schema type. |
| `name` | `string` | Required. The name of the tool, unique within its parent scope (version). |
| `outputSchema` | `GoogleCloudApihubV1OperationSchema` | Optional. Output schema for the operation. This can be parsed only from MCP schema type. |
| `title` | `string` | Optional. Optional title for the tool. |

### `GoogleCloudApihubV1MultiIntValues`

The config variable value of data type multi int.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<integer>` | Optional. The config variable value of data type multi int. |

### `GoogleCloudApihubV1MultiSelectValues`

The config variable value of data type multi select.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<GoogleCloudApihubV1ConfigValueOption>` | Optional. The config variable value of data type multi select. |

### `GoogleCloudApihubV1MultiStringValues`

The config variable value of data type multi string.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. The config variable value of data type multi string. |

### `GoogleCloudApihubV1Oauth2ClientCredentialsConfig`

Parameters to support Oauth 2.0 client credentials grant authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. The client identifier. |
| `clientSecret` | `GoogleCloudApihubV1Secret` | Required. Secret version reference containing the client secret. The `secretmanager.versions.acce... |

### `GoogleCloudApihubV1OpenApiSpecDetails`

OpenApiSpecDetails contains the details parsed from an OpenAPI spec in addition to the fields mentioned in SpecDetails.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Output only. The format of the spec. |
| `owner` | `GoogleCloudApihubV1Owner` | Output only. Owner details for the spec. This maps to `info.contact` in OpenAPI spec. |
| `version` | `string` | Output only. The version in the spec. This maps to `info.version` in OpenAPI spec. |

### `GoogleCloudApihubV1OperationDetails`

The operation details parsed from the spec.

| Property | Type | Description |
|----------|------|-------------|
| `deprecated` | `boolean` | Optional. For OpenAPI spec, this will be set if `operation.deprecated`is marked as `true` in the ... |
| `description` | `string` | Optional. Description of the operation behavior. For OpenAPI spec, this will map to `operation.de... |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. Additional external documentation for this operation. For OpenAPI spec, this will map t... |
| `httpOperation` | `GoogleCloudApihubV1HttpOperation` | The HTTP Operation. |
| `mcpTool` | `GoogleCloudApihubV1McpTool` | The MCP Tool Operation. |

### `GoogleCloudApihubV1OperationMetadata`

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

### `GoogleCloudApihubV1OperationSchema`

The operation schema needed for an operation.

| Property | Type | Description |
|----------|------|-------------|
| `jsonSchema` | `object` | The JSON schema. Only valid JSON is accepted but semantic validation of schema is not supported r... |

### `GoogleCloudApihubV1Owner`

Owner details.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. The name of the owner. |
| `email` | `string` | Required. The email of the owner. |

### `GoogleCloudApihubV1Path`

The path details derived from the spec.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A short description for the path applicable to all operations. |
| `path` | `string` | Optional. Complete path relative to server endpoint. Note: Even though this field is optional, it... |

### `GoogleCloudApihubV1PathParam`

HTTP Path parameter.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Optional. Data type of path param |
| `position` | `integer` | Optional. Segment location in the path, 1-indexed |

### `GoogleCloudApihubV1Plugin`

A plugin resource in the API Hub.

| Property | Type | Description |
|----------|------|-------------|
| `actionsConfig` | `array<GoogleCloudApihubV1PluginActionConfig>` | Optional. The configuration of actions supported by the plugin. **REQUIRED**: This field must be ... |
| `configTemplate` | `GoogleCloudApihubV1ConfigTemplate` | Optional. The configuration template for the plugin. |
| `createTime` | `string` | Output only. Timestamp indicating when the plugin was created. |
| `description` | `string` | Optional. The plugin description. Max length is 2000 characters (Unicode code points). |
| `displayName` | `string` | Required. The display name of the plugin. Max length is 50 characters (Unicode code points). |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. The documentation of the plugin, that explains how to set up and use the plugin. |
| `gatewayType` | `string` | Optional. The type of the gateway. |
| `hostingService` | `GoogleCloudApihubV1HostingService` | Optional. This field is optional. It is used to notify the plugin hosting service for any lifecyc... |
| `name` | `string` | Identifier. The name of the plugin. Format: `projects/{project}/locations/{location}/plugins/{plu... |
| `ownershipType` | `string` | Output only. The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or 'USER_OWNED'. |
| `pluginCategory` | `string` | Optional. The category of the plugin, identifying its primary category or purpose. This field is ... |
| `state` | `string` | Output only. Represents the state of the plugin. Note this field will not be set for plugins deve... |
| `type` | `GoogleCloudApihubV1AttributeValues` | Optional. The type of the API. This maps to the following system defined attribute: `projects/{pr... |
| `updateTime` | `string` | Output only. Timestamp indicating when the plugin was last updated. |

### `GoogleCloudApihubV1PluginActionConfig`

PluginActionConfig represents the configuration of an action supported by a plugin.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Required. The description of the operation performed by the action. |
| `displayName` | `string` | Required. The display name of the action. |
| `id` | `string` | Required. The id of the action. |
| `triggerMode` | `string` | Required. The trigger mode supported by the action. |

### `GoogleCloudApihubV1PluginInstance`

Represents a plugin instance resource in the API Hub. A PluginInstance is a specific instance of a hub plugin with its own configuration, state, and execution details.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudApihubV1PluginInstanceAction>` | Required. The action status for the plugin instance. |
| `additionalConfig` | `object` | Optional. The additional information for this plugin instance corresponding to the additional con... |
| `authConfig` | `GoogleCloudApihubV1AuthConfig` | Optional. The authentication information for this plugin instance. |
| `createTime` | `string` | Output only. Timestamp indicating when the plugin instance was created. |
| `displayName` | `string` | Required. The display name for this plugin instance. Max length is 255 characters. |
| `errorMessage` | `string` | Output only. Error message describing the failure, if any, during Create, Delete or ApplyConfig o... |
| `name` | `string` | Identifier. The unique name of the plugin instance resource. Format: `projects/{project}/location... |
| `sourceEnvironmentsConfig` | `object` | Optional. The source environment's config present in the gateway instance linked to the plugin in... |
| `sourceProjectId` | `string` | Optional. The source project id of the plugin instance. This will be the id of runtime project in... |
| `state` | `string` | Output only. The current state of the plugin instance (e.g., enabled, disabled, provisioning). |
| `updateTime` | `string` | Output only. Timestamp indicating when the plugin instance was last updated. |

### `GoogleCloudApihubV1PluginInstanceAction`

PluginInstanceAction represents an action which can be executed in the plugin instance.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Required. This should map to one of the action id specified in actions_config in the plugin. |
| `curationConfig` | `GoogleCloudApihubV1CurationConfig` | Optional. This configuration should be provided if the plugin action is publishing data to API hu... |
| `hubInstanceAction` | `GoogleCloudApihubV1ExecutionStatus` | Optional. The execution information for the plugin instance action done corresponding to an API h... |
| `resourceConfig` | `GoogleCloudApihubV1ResourceConfig` | Output only. The configuration of resources created for a given plugin instance action. Note thes... |
| `scheduleCronExpression` | `string` | Optional. The schedule for this plugin instance action. This can only be set if the plugin suppor... |
| `scheduleTimeZone` | `string` | Optional. The time zone for the schedule cron expression. If not provided, UTC will be used. |
| `serviceAccount` | `string` | Optional. The service account used to publish data. Note, the service account will only be accept... |
| `state` | `string` | Output only. The current state of the plugin action in the plugin instance. |

### `GoogleCloudApihubV1PluginInstanceActionID`

The plugin instance and associated action that is using the curation.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Output only. The action ID that is using the curation. This should map to one of the action IDs s... |
| `pluginInstance` | `string` | Output only. Plugin instance that is using the curation. Format is `projects/{project}/locations/... |

### `GoogleCloudApihubV1PluginInstanceActionSource`

PluginInstanceActionSource represents the plugin instance action source.

| Property | Type | Description |
|----------|------|-------------|
| `actionId` | `string` | Output only. The id of the plugin instance action. |
| `pluginInstance` | `string` | Output only. The resource name of the source plugin instance. Format is `projects/{project}/locat... |

### `GoogleCloudApihubV1Point`

Point within the file (line and character).

| Property | Type | Description |
|----------|------|-------------|
| `character` | `integer` | Required. Character position within the line (zero-indexed). |
| `line` | `integer` | Required. Line number (zero-indexed). |

### `GoogleCloudApihubV1QueryParam`

An aggregation of HTTP query parameter occurrences.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Optional. The number of occurrences of this query parameter across transactions. |
| `dataType` | `string` | Optional. Data type of path param |
| `name` | `string` | Required. Name of query param |

### `GoogleCloudApihubV1Range`

Object describing where in the file the issue was found.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `GoogleCloudApihubV1Point` | Required. End of the issue. |
| `start` | `GoogleCloudApihubV1Point` | Required. Start of the issue. |

### `GoogleCloudApihubV1ResourceConfig`

The configuration of resources created for a given plugin instance action.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Output only. The type of the action. |
| `pubsubTopic` | `string` | Output only. The pubsub topic to publish the data to. Format is projects/{project}/topics/{topic} |

### `GoogleCloudApihubV1RetrieveApiViewsResponse`

The RetrieveApiViews method's response.

| Property | Type | Description |
|----------|------|-------------|
| `apiViews` | `array<GoogleCloudApihubV1ApiView>` | The list of API views. |
| `nextPageToken` | `string` | Next page token. |

### `GoogleCloudApihubV1RuntimeProjectAttachment`

Runtime project attachment represents an attachment from the runtime project to the host project. Api Hub looks for deployments in the attached runtime projects and creates corresponding resources in Api Hub for the discovered deployments.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time. |
| `name` | `string` | Identifier. The resource name of a runtime project attachment. Format: "projects/{project}/locati... |
| `runtimeProject` | `string` | Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123". A... |

### `GoogleCloudApihubV1Schema`

The schema details derived from the spec. Currently, this entity is supported for OpenAPI spec only. For OpenAPI spec, this maps to the schema defined in the `definitions` section for OpenAPI 2.0 version and in `components.schemas` section for OpenAPI 3.0 and 3.1 version.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the schema. This will map to the name of the schema in the spec. |
| `rawValue` | `string` | Output only. The raw value of the schema definition corresponding to the schema name in the spec. |

### `GoogleCloudApihubV1SearchResourcesRequest`

The SearchResources method's request.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. An expression that filters the list of search results. A filter expression consists of ... |
| `pageSize` | `integer` | Optional. The maximum number of search results to return. The service may return fewer than this ... |
| `pageToken` | `string` | Optional. A page token, received from a previous SearchResources call. Specify this parameter to ... |
| `query` | `string` | Required. The free text search query. This query can contain keywords which could be related to a... |

### `GoogleCloudApihubV1SearchResourcesResponse`

Response for the SearchResources method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pass this token in the SearchResourcesRequest to continue to list results. If all results have be... |
| `searchResults` | `array<GoogleCloudApihubV1SearchResult>` | List of search results according to the filter and search query specified. The order of search re... |

### `GoogleCloudApihubV1SearchResult`

Represents the search results.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `GoogleCloudApihubV1ApiHubResource` | This represents the ApiHubResource. Note: Only selected fields of the resources are populated in ... |

### `GoogleCloudApihubV1Secret`

Secret provides a reference to entries in Secret Manager.

| Property | Type | Description |
|----------|------|-------------|
| `secretVersion` | `string` | Required. The resource name of the secret version in the format, format as: `projects/*/secrets/*... |

### `GoogleCloudApihubV1SourceEnvironment`

Message representing the source environment details.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Optional. The time at which the environment was created at the source. |
| `sourceEnvironment` | `string` | Required. The name of the environment at the source. This should map to Deployment. |
| `sourceEnvironmentUri` | `string` | The location where additional information about source environments can be found. The location sh... |
| `updateTime` | `string` | Optional. The time at which the environment was last updated at the source. |

### `GoogleCloudApihubV1SourceMetadata`

SourceMetadata represents the metadata for a resource at the source.

| Property | Type | Description |
|----------|------|-------------|
| `originalResourceCreateTime` | `string` | Output only. The time at which the resource was created at the source. |
| `originalResourceId` | `string` | Output only. The unique identifier of the resource at the source. |
| `originalResourceUpdateTime` | `string` | Output only. The time at which the resource was last updated at the source. |
| `pluginInstanceActionSource` | `GoogleCloudApihubV1PluginInstanceActionSource` | Output only. The source of the resource is a plugin instance action. |
| `sourceType` | `string` | Output only. The type of the source. |

### `GoogleCloudApihubV1Spec`

Represents a spec associated with an API version in the API Hub. Note that specs of various types can be uploaded, however parsing of details is supported for OpenAPI spec currently.

| Property | Type | Description |
|----------|------|-------------|
| `additionalSpecContents` | `array<GoogleCloudApihubV1AdditionalSpecContent>` | Output only. The additional spec contents for the spec. |
| `attributes` | `object` | Optional. The list of user defined attributes associated with the spec. The key is the attribute ... |
| `contents` | `GoogleCloudApihubV1SpecContents` | Optional. Input only. The contents of the uploaded spec. |
| `createTime` | `string` | Output only. The time at which the spec was created. |
| `details` | `GoogleCloudApihubV1SpecDetails` | Output only. Details parsed from the spec. |
| `displayName` | `string` | Required. The display name of the spec. This can contain the file name of the spec. |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. The documentation of the spec. For OpenAPI spec, this will be populated from `externalD... |
| `lintResponse` | `GoogleCloudApihubV1LintResponse` | Optional. The lint response for the spec. |
| `name` | `string` | Identifier. The name of the spec. Format: `projects/{project}/locations/{location}/apis/{api}/ver... |
| `parsingMode` | `string` | Optional. Input only. Enum specifying the parsing mode for OpenAPI Specification (OAS) parsing. |
| `sourceMetadata` | `array<GoogleCloudApihubV1SourceMetadata>` | Output only. The list of sources and metadata from the sources of the spec. |
| `sourceUri` | `string` | Optional. The URI of the spec source in case file is uploaded from an external version control sy... |
| `specType` | `GoogleCloudApihubV1AttributeValues` | Required. The type of spec. The value should be one of the allowed values defined for `projects/{... |
| `updateTime` | `string` | Output only. The time at which the spec was last updated. |

### `GoogleCloudApihubV1SpecContents`

The spec contents.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Required. The contents of the spec. |
| `mimeType` | `string` | Required. The mime type of the content for example application/json, application/yaml, applicatio... |

### `GoogleCloudApihubV1SpecDetails`

SpecDetails contains the details parsed from supported spec types.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. The description of the spec. |
| `openApiSpecDetails` | `GoogleCloudApihubV1OpenApiSpecDetails` | Output only. Additional details apart from `OperationDetails` parsed from an OpenAPI spec. The Op... |

### `GoogleCloudApihubV1SpecMetadata`

The metadata associated with a spec of the API version.

| Property | Type | Description |
|----------|------|-------------|
| `originalCreateTime` | `string` | Optional. Timestamp indicating when the spec was created at the source. |
| `originalId` | `string` | Optional. The unique identifier of the spec in the system where it was originally created. |
| `originalUpdateTime` | `string` | Required. Timestamp indicating when the spec was last updated at the source. |
| `spec` | `GoogleCloudApihubV1Spec` | Required. The spec resource to be pushed to Hub's collect layer. The ID of the spec will be gener... |

### `GoogleCloudApihubV1StringAttributeValues`

The attribute values of data type string or JSON.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Required. The attribute values in case attribute data type is string or JSON. |

### `GoogleCloudApihubV1StyleGuide`

Represents a singleton style guide resource to be used for linting Open API specs.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `GoogleCloudApihubV1StyleGuideContents` | Required. Input only. The contents of the uploaded style guide. |
| `linter` | `string` | Required. Target linter for the style guide. |
| `name` | `string` | Identifier. The name of the style guide. Format: `projects/{project}/locations/{location}/plugins... |

### `GoogleCloudApihubV1StyleGuideContents`

The style guide contents.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Required. The contents of the style guide. |
| `mimeType` | `string` | Required. The mime type of the content. |

### `GoogleCloudApihubV1SummaryEntry`

Count of issues with a given severity.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Required. Count of issues with the given severity. |
| `severity` | `string` | Required. Severity of the issue. |

### `GoogleCloudApihubV1ToolAnnotations`

Annotations for a Tool.

| Property | Type | Description |
|----------|------|-------------|
| `additionalHints` | `object` | Optional. Additional hints which may help tools and not covered in defaults. |
| `destructiveHint` | `boolean` | Optional. Hint indicating if the tool may have destructive side effects. |
| `idempotentHint` | `boolean` | Optional. Hint indicating if the tool is idempotent. |
| `openWorldHint` | `boolean` | Optional. Hint indicating if the tool interacts with the open world (e.g., internet). |
| `readOnlyHint` | `boolean` | Optional. Hint indicating if the tool is read-only. |
| `title` | `string` | Optional. A human-readable title for the tool (if different from Tool.title). |

### `GoogleCloudApihubV1UserPasswordConfig`

Parameters to support Username and Password Authentication.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `GoogleCloudApihubV1Secret` | Required. Secret version reference containing the password. The `secretmanager.versions.access` p... |
| `username` | `string` | Required. Username. |

### `GoogleCloudApihubV1Version`

Represents a version of the API resource in API hub. This is also referred to as the API version.

| Property | Type | Description |
|----------|------|-------------|
| `accreditation` | `GoogleCloudApihubV1AttributeValues` | Optional. The accreditations associated with the API version. This maps to the following system d... |
| `apiOperations` | `array<string>` | Output only. The operations contained in the API version. These operations will be added to the v... |
| `attributes` | `object` | Optional. The list of user defined attributes associated with the Version resource. The key is th... |
| `compliance` | `GoogleCloudApihubV1AttributeValues` | Optional. The compliance associated with the API version. This maps to the following system defin... |
| `createTime` | `string` | Output only. The time at which the version was created. |
| `definitions` | `array<string>` | Output only. The definitions contained in the API version. These definitions will be added to the... |
| `deployments` | `array<string>` | Optional. The deployments linked to this API version. Note: A particular API version could be dep... |
| `description` | `string` | Optional. The description of the version. |
| `displayName` | `string` | Required. The display name of the version. |
| `documentation` | `GoogleCloudApihubV1Documentation` | Optional. The documentation of the version. |
| `lifecycle` | `GoogleCloudApihubV1AttributeValues` | Optional. The lifecycle of the API version. This maps to the following system defined attribute: ... |
| `name` | `string` | Identifier. The name of the version. Format: `projects/{project}/locations/{location}/apis/{api}/... |
| `selectedDeployment` | `string` | Optional. The selected deployment for a Version resource. This can be used when special handling ... |
| `sourceMetadata` | `array<GoogleCloudApihubV1SourceMetadata>` | Output only. The list of sources and metadata from the sources of the version. |
| `specs` | `array<string>` | Output only. The specs associated with this version. Note that an API version can be associated w... |
| `updateTime` | `string` | Output only. The time at which the version was last updated. |

### `GoogleCloudApihubV1VersionMetadata`

The metadata associated with a version of the API resource.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<GoogleCloudApihubV1DeploymentMetadata>` | Optional. The deployments linked to this API version. Note: A particular API version could be dep... |
| `originalCreateTime` | `string` | Optional. Timestamp indicating when the version was created at the source. |
| `originalId` | `string` | Optional. The unique identifier of the version in the system where it was originally created. |
| `originalUpdateTime` | `string` | Required. Timestamp indicating when the version was last updated at the source. |
| `specs` | `array<GoogleCloudApihubV1SpecMetadata>` | Optional. The specs associated with this version. Note that an API version can be associated with... |
| `version` | `GoogleCloudApihubV1Version` | Required. Represents a version of the API resource in API hub. The ID of the version will be gene... |

### `GoogleCloudCommonOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudLocationListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

