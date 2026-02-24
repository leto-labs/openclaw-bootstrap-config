# Google Cloud Data Catalog API - API Reference

**Version**: `v1` | **Methods**: 71 | **Schemas**: 123

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datacatalog.organizations.locations.retrieveEffectiveConfig` | GET | `v1/{+name}:retrieveEffectiveConfig` | Retrieves the effective configuration related to the migration from Data Catalog to Dataplex Univ... |
| `datacatalog.organizations.locations.retrieveConfig` | GET | `v1/{+name}:retrieveConfig` | Retrieves the configuration related to the migration from Data Catalog to Dataplex Universal Cata... |
| `datacatalog.organizations.locations.setConfig` | POST | `v1/{+name}:setConfig` | Sets the configuration related to the migration to Dataplex Universal Catalog for an organization... |
| `datacatalog.projects.locations.setConfig` | POST | `v1/{+name}:setConfig` | Sets the configuration related to the migration to Dataplex Universal Catalog for an organization... |
| `datacatalog.projects.locations.retrieveEffectiveConfig` | GET | `v1/{+name}:retrieveEffectiveConfig` | Retrieves the effective configuration related to the migration from Data Catalog to Dataplex Univ... |
| `datacatalog.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datacatalog.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datacatalog.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datacatalog.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datacatalog.projects.locations.taxonomies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns your permissions on a specified policy tag or taxonomy. |
| `datacatalog.projects.locations.taxonomies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for a policy tag or a taxonomy. |
| `datacatalog.projects.locations.taxonomies.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for a policy tag or a taxonomy. |
| `datacatalog.projects.locations.taxonomies.create` | POST | `v1/{+parent}/taxonomies` | Creates a taxonomy in a specified project. The taxonomy is initially empty, that is, it doesn't c... |
| `datacatalog.projects.locations.taxonomies.export` | GET | `v1/{+parent}/taxonomies:export` | Exports taxonomies in the requested type and returns them, including their policy tags. The reque... |
| `datacatalog.projects.locations.taxonomies.list` | GET | `v1/{+parent}/taxonomies` | Lists all taxonomies in a project in a particular location that you have a permission to view. |
| `datacatalog.projects.locations.taxonomies.get` | GET | `v1/{+name}` | Gets a taxonomy. |
| `datacatalog.projects.locations.taxonomies.delete` | DELETE | `v1/{+name}` | Deletes a taxonomy, including all policy tags in this taxonomy, their associated policies, and th... |
| `datacatalog.projects.locations.taxonomies.replace` | POST | `v1/{+name}:replace` | Replaces (updates) a taxonomy and all its policy tags. The taxonomy and its entire hierarchy of p... |
| `datacatalog.projects.locations.taxonomies.import` | POST | `v1/{+parent}/taxonomies:import` | Creates new taxonomies (including their policy tags) in a given project by importing from inlined... |
| `datacatalog.projects.locations.taxonomies.patch` | PATCH | `v1/{+name}` | Updates a taxonomy, including its display name, description, and activated policy types. |
| `datacatalog.projects.locations.taxonomies.policyTags.patch` | PATCH | `v1/{+name}` | Updates a policy tag, including its display name, description, and parent policy tag. |
| `datacatalog.projects.locations.taxonomies.policyTags.create` | POST | `v1/{+parent}/policyTags` | Creates a policy tag in a taxonomy. |
| `datacatalog.projects.locations.taxonomies.policyTags.delete` | DELETE | `v1/{+name}` | Deletes a policy tag together with the following: * All of its descendant policy tags, if any * P... |
| `datacatalog.projects.locations.taxonomies.policyTags.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for a policy tag or a taxonomy. |
| `datacatalog.projects.locations.taxonomies.policyTags.list` | GET | `v1/{+parent}/policyTags` | Lists all policy tags in a taxonomy. |
| `datacatalog.projects.locations.taxonomies.policyTags.get` | GET | `v1/{+name}` | Gets a policy tag. |
| `datacatalog.projects.locations.taxonomies.policyTags.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns your permissions on a specified policy tag or taxonomy. |
| `datacatalog.projects.locations.taxonomies.policyTags.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for a policy tag or a taxonomy. |
| `datacatalog.projects.locations.entryGroups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets an access control policy for a resource. Replaces any existing policy. Supported resources a... |
| `datacatalog.projects.locations.entryGroups.delete` | DELETE | `v1/{+name}` | Deletes an entry group. You must enable the Data Catalog API in the project identified by the `na... |
| `datacatalog.projects.locations.entryGroups.create` | POST | `v1/{+parent}/entryGroups` | Creates an entry group. An entry group contains logically related entries together with [Cloud Id... |
| `datacatalog.projects.locations.entryGroups.list` | GET | `v1/{+parent}/entryGroups` | Lists entry groups. |
| `datacatalog.projects.locations.entryGroups.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource d... |
| `datacatalog.projects.locations.entryGroups.patch` | PATCH | `v1/{+name}` | Updates an entry group. You must enable the Data Catalog API in the project identified by the `en... |
| `datacatalog.projects.locations.entryGroups.get` | GET | `v1/{+name}` | Gets an entry group. |
| `datacatalog.projects.locations.entryGroups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't ... |
| `datacatalog.projects.locations.entryGroups.tags.list` | GET | `v1/{+parent}/tags` | Lists tags assigned to an Entry. The columns in the response are lowercased. |
| `datacatalog.projects.locations.entryGroups.tags.create` | POST | `v1/{+parent}/tags` | Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups... |
| `datacatalog.projects.locations.entryGroups.tags.delete` | DELETE | `v1/{+name}` | Deletes a tag. |
| `datacatalog.projects.locations.entryGroups.tags.patch` | PATCH | `v1/{+name}` | Updates an existing tag. |
| `datacatalog.projects.locations.entryGroups.entries.patch` | PATCH | `v1/{+name}` | Updates an existing entry. You must enable the Data Catalog API in the project identified by the ... |
| `datacatalog.projects.locations.entryGroups.entries.star` | POST | `v1/{+name}:star` | Marks an Entry as starred by the current user. Starring information is private to each user. |
| `datacatalog.projects.locations.entryGroups.entries.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't ... |
| `datacatalog.projects.locations.entryGroups.entries.delete` | DELETE | `v1/{+name}` | Deletes an existing entry. You can delete only the entries created by the CreateEntry method. You... |
| `datacatalog.projects.locations.entryGroups.entries.import` | POST | `v1/{+parent}/entries:import` | Imports entries from a source, such as data previously dumped into a Cloud Storage bucket, into D... |
| `datacatalog.projects.locations.entryGroups.entries.get` | GET | `v1/{+name}` | Gets an entry. |
| `datacatalog.projects.locations.entryGroups.entries.modifyEntryOverview` | POST | `v1/{+name}:modifyEntryOverview` | Modifies entry overview, part of the business context of an Entry. To call this method, you must ... |
| `datacatalog.projects.locations.entryGroups.entries.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource d... |
| `datacatalog.projects.locations.entryGroups.entries.list` | GET | `v1/{+parent}/entries` | Lists entries. Note: Currently, this method can list only custom entries. To get a list of both c... |
| `datacatalog.projects.locations.entryGroups.entries.modifyEntryContacts` | POST | `v1/{+name}:modifyEntryContacts` | Modifies contacts, part of the business context of an Entry. To call this method, you must have t... |
| `datacatalog.projects.locations.entryGroups.entries.unstar` | POST | `v1/{+name}:unstar` | Marks an Entry as NOT starred by the current user. Starring information is private to each user. |
| `datacatalog.projects.locations.entryGroups.entries.create` | POST | `v1/{+parent}/entries` | Creates an entry. You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM', or custom... |
| `datacatalog.projects.locations.entryGroups.entries.tags.create` | POST | `v1/{+parent}/tags` | Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups... |
| `datacatalog.projects.locations.entryGroups.entries.tags.list` | GET | `v1/{+parent}/tags` | Lists tags assigned to an Entry. The columns in the response are lowercased. |
| `datacatalog.projects.locations.entryGroups.entries.tags.delete` | DELETE | `v1/{+name}` | Deletes a tag. |
| `datacatalog.projects.locations.entryGroups.entries.tags.reconcile` | POST | `v1/{+parent}/tags:reconcile` | `ReconcileTags` creates or updates a list of tags on the entry. If the ReconcileTagsRequest.force... |
| `datacatalog.projects.locations.entryGroups.entries.tags.patch` | PATCH | `v1/{+name}` | Updates an existing tag. |
| `datacatalog.projects.locations.tagTemplates.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets an access control policy for a resource. Replaces any existing policy. Supported resources a... |
| `datacatalog.projects.locations.tagTemplates.get` | GET | `v1/{+name}` | Gets a tag template. |
| `datacatalog.projects.locations.tagTemplates.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource d... |
| `datacatalog.projects.locations.tagTemplates.create` | POST | `v1/{+parent}/tagTemplates` | Creates a tag template. You must enable the Data Catalog API in the project identified by the `pa... |
| `datacatalog.projects.locations.tagTemplates.patch` | PATCH | `v1/{+name}` | Updates a tag template. You can't update template fields with this method. These fields are separ... |
| `datacatalog.projects.locations.tagTemplates.delete` | DELETE | `v1/{+name}` | Deletes a tag template and all tags that use it. You must enable the Data Catalog API in the proj... |
| `datacatalog.projects.locations.tagTemplates.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't ... |
| `datacatalog.projects.locations.tagTemplates.fields.delete` | DELETE | `v1/{+name}` | Deletes a field in a tag template and all uses of this field from the tags based on this template... |
| `datacatalog.projects.locations.tagTemplates.fields.patch` | PATCH | `v1/{+name}` | Updates a field in a tag template. You can't update the field type with this method. You must ena... |
| `datacatalog.projects.locations.tagTemplates.fields.create` | POST | `v1/{+parent}/fields` | Creates a field in a tag template. You must enable the Data Catalog API in the project identified... |
| `datacatalog.projects.locations.tagTemplates.fields.rename` | POST | `v1/{+name}:rename` | Renames a field in a tag template. You must enable the Data Catalog API in the project identified... |
| `datacatalog.projects.locations.tagTemplates.fields.enumValues.rename` | POST | `v1/{+name}:rename` | Renames an enum value in a tag template. Within a single enum field, enum values must be unique. |
| `datacatalog.catalog.search` | POST | `v1/catalog:search` | Searches Data Catalog for multiple resources like entries and tags that match a query. This is a ... |
| `datacatalog.entries.lookup` | GET | `v1/entries:lookup` | Gets an entry by its target resource name. The resource name comes from the source Google Cloud P... |

### `datacatalog.organizations.locations.retrieveEffectiveConfig`

**GET** `v1/{+name}:retrieveEffectiveConfig`

Retrieves the effective configuration related to the migration from Data Catalog to Dataplex Universal Catalog for a specific organization or project. If there is no specific configuration set for the resource, the setting is checked hierarchicahlly through the ancestors of the resource, starting from the resource itself.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource whose effective config is being retrieved. |

**Response**: `GoogleCloudDatacatalogV1MigrationConfig`

```typescript
const res = await datacatalog.locations.retrieveEffectiveConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.organizations.locations.retrieveConfig`

**GET** `v1/{+name}:retrieveConfig`

Retrieves the configuration related to the migration from Data Catalog to Dataplex Universal Catalog for a specific organization, including all the projects under it which have a separate configuration set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The organization whose config is being retrieved. |

**Response**: `GoogleCloudDatacatalogV1OrganizationConfig`

```typescript
const res = await datacatalog.locations.retrieveConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.organizations.locations.setConfig`

**POST** `v1/{+name}:setConfig`

Sets the configuration related to the migration to Dataplex Universal Catalog for an organization or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The organization or project whose config is being specified. |

**Request body**: `GoogleCloudDatacatalogV1SetConfigRequest`

**Response**: `GoogleCloudDatacatalogV1MigrationConfig`

```typescript
const res = await datacatalog.locations.setConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.setConfig`

**POST** `v1/{+name}:setConfig`

Sets the configuration related to the migration to Dataplex Universal Catalog for an organization or project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The organization or project whose config is being specified. |

**Request body**: `GoogleCloudDatacatalogV1SetConfigRequest`

**Response**: `GoogleCloudDatacatalogV1MigrationConfig`

```typescript
const res = await datacatalog.locations.setConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.retrieveEffectiveConfig`

**GET** `v1/{+name}:retrieveEffectiveConfig`

Retrieves the effective configuration related to the migration from Data Catalog to Dataplex Universal Catalog for a specific organization or project. If there is no specific configuration set for the resource, the setting is checked hierarchicahlly through the ancestors of the resource, starting from the resource itself.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource whose effective config is being retrieved. |

**Response**: `GoogleCloudDatacatalogV1MigrationConfig`

```typescript
const res = await datacatalog.locations.retrieveEffectiveConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await datacatalog.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.operations.list`

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
const res = await datacatalog.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await datacatalog.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await datacatalog.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns your permissions on a specified policy tag or taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datacatalog.taxonomies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for a policy tag or a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.taxonomies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for a policy tag or a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.taxonomies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.create`

**POST** `v1/{+parent}/taxonomies`

Creates a taxonomy in a specified project. The taxonomy is initially empty, that is, it doesn't contain policy tags.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project that the taxonomy will belong to. |

**Request body**: `GoogleCloudDatacatalogV1Taxonomy`

**Response**: `GoogleCloudDatacatalogV1Taxonomy`

```typescript
const res = await datacatalog.taxonomies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.export`

**GET** `v1/{+parent}/taxonomies:export`

Exports taxonomies in the requested type and returns them, including their policy tags. The requested taxonomies must belong to the same project. This method generates `SerializedTaxonomy` protocol buffers with nested policy tags that can be used as input for `ImportTaxonomies` calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project that the exported taxonomies belong to. |
| `serializedTaxonomies` | `boolean` | query | No | Serialized export taxonomies that contain all the policy tags as nested protocol buffers. |
| `taxonomies` | `string` | query | No | Required. Resource names of the taxonomies to export. |

**Response**: `GoogleCloudDatacatalogV1ExportTaxonomiesResponse`

```typescript
const res = await datacatalog.taxonomies.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.list`

**GET** `v1/{+parent}/taxonomies`

Lists all taxonomies in a project in a particular location that you have a permission to view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project to list the taxonomies of. |
| `filter` | `string` | query | No | Supported field for filter is 'service' and value is 'dataplex'. Eg: service=dataplex. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Must be a value between 1 and 1000 inclusively. If not set, defaults to 50. |
| `pageToken` | `string` | query | No | The pagination token of the next results page. If not set, the first page is returned. The token is returned in the r... |

**Response**: `GoogleCloudDatacatalogV1ListTaxonomiesResponse`

```typescript
const res = await datacatalog.taxonomies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.get`

**GET** `v1/{+name}`

Gets a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the taxonomy to get. |

**Response**: `GoogleCloudDatacatalogV1Taxonomy`

```typescript
const res = await datacatalog.taxonomies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.delete`

**DELETE** `v1/{+name}`

Deletes a taxonomy, including all policy tags in this taxonomy, their associated policies, and the policy tags references from BigQuery columns.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the taxonomy to delete. Note: All policy tags in this taxonomy are also deleted. |

**Response**: `Empty`

```typescript
const res = await datacatalog.taxonomies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.replace`

**POST** `v1/{+name}:replace`

Replaces (updates) a taxonomy and all its policy tags. The taxonomy and its entire hierarchy of policy tags must be represented literally by `SerializedTaxonomy` and the nested `SerializedPolicyTag` messages. This operation automatically does the following: - Deletes the existing policy tags that are missing from the `SerializedPolicyTag`. - Creates policy tags that don't have resource names. They are considered new. - Updates policy tags with valid resources names accordingly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the taxonomy to update. |

**Request body**: `GoogleCloudDatacatalogV1ReplaceTaxonomyRequest`

**Response**: `GoogleCloudDatacatalogV1Taxonomy`

```typescript
const res = await datacatalog.taxonomies.replace({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.import`

**POST** `v1/{+parent}/taxonomies:import`

Creates new taxonomies (including their policy tags) in a given project by importing from inlined or cross-regional sources. For a cross-regional source, new taxonomies are created by copying from a source in another region. For an inlined source, taxonomies and policy tags are created in bulk using nested protocol buffer structures.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of project that the imported taxonomies will belong to. |

**Request body**: `GoogleCloudDatacatalogV1ImportTaxonomiesRequest`

**Response**: `GoogleCloudDatacatalogV1ImportTaxonomiesResponse`

```typescript
const res = await datacatalog.taxonomies.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.patch`

**PATCH** `v1/{+name}`

Updates a taxonomy, including its display name, description, and activated policy types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs. |
| `updateMask` | `string` | query | No | Specifies fields to update. If not set, defaults to all fields you can update. For more information, see [FieldMask] ... |

**Request body**: `GoogleCloudDatacatalogV1Taxonomy`

**Response**: `GoogleCloudDatacatalogV1Taxonomy`

```typescript
const res = await datacatalog.taxonomies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.patch`

**PATCH** `v1/{+name}`

Updates a policy tag, including its display name, description, and parent policy tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs ... |
| `updateMask` | `string` | query | No | Specifies the fields to update. You can update only display name, description, and parent policy tag. If not set, def... |

**Request body**: `GoogleCloudDatacatalogV1PolicyTag`

**Response**: `GoogleCloudDatacatalogV1PolicyTag`

```typescript
const res = await datacatalog.policyTags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.create`

**POST** `v1/{+parent}/policyTags`

Creates a policy tag in a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the taxonomy that the policy tag will belong to. |

**Request body**: `GoogleCloudDatacatalogV1PolicyTag`

**Response**: `GoogleCloudDatacatalogV1PolicyTag`

```typescript
const res = await datacatalog.policyTags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.delete`

**DELETE** `v1/{+name}`

Deletes a policy tag together with the following: * All of its descendant policy tags, if any * Policies associated with the policy tag and its descendants * References from BigQuery table schema of the policy tag and its descendants

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the policy tag to delete. Note: All of its descendant policy tags are also deleted. |

**Response**: `Empty`

```typescript
const res = await datacatalog.policyTags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for a policy tag or a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.policyTags.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.list`

**GET** `v1/{+parent}/policyTags`

Lists all policy tags in a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the taxonomy to list the policy tags of. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Must be a value between 1 and 1000 inclusively. If not set, defaults to 50. |
| `pageToken` | `string` | query | No | The pagination token of the next results page. If not set, returns the first page. The token is returned in the respo... |

**Response**: `GoogleCloudDatacatalogV1ListPolicyTagsResponse`

```typescript
const res = await datacatalog.policyTags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.get`

**GET** `v1/{+name}`

Gets a policy tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the policy tag. |

**Response**: `GoogleCloudDatacatalogV1PolicyTag`

```typescript
const res = await datacatalog.policyTags.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns your permissions on a specified policy tag or taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datacatalog.policyTags.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.taxonomies.policyTags.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for a policy tag or a taxonomy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.policyTags.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Tag templates - Entry groups Note: This method sets policies only within Data Catalog and can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources synced with the Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.entryGroups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.delete`

**DELETE** `v1/{+name}`

Deletes an entry group. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry group to delete. |
| `force` | `boolean` | query | No | Optional. If true, deletes all entries in the entry group. |

**Response**: `Empty`

```typescript
const res = await datacatalog.entryGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.create`

**POST** `v1/{+parent}/entryGroups`

Creates an entry group. An entry group contains logically related entries together with [Cloud Identity and Access Management](/data-catalog/docs/concepts/iam) policies. These policies specify users who can create, edit, and view entries within entry groups. Data Catalog automatically creates entry groups with names that start with the `@` symbol for the following resources: * BigQuery entries (`@bigquery`) * Pub/Sub topics (`@pubsub`) * Dataproc Metastore services (`@dataproc_metastore_{SERVICE_NAME_HASH}`) You can create your own entry groups for Cloud Storage fileset entries and custom entries together with the corresponding IAM policies. User-created entry groups can't contain the `@` symbol, it is reserved for automatically created groups. Entry groups, like entries, can be searched. A maximum of 10,000 entry groups may be created per organization across all locations. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The names of the project and location that the new entry group belongs to. Note: The entry group itself and... |
| `entryGroupId` | `string` | query | No | Required. The ID of the entry group to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscore... |

**Request body**: `GoogleCloudDatacatalogV1EntryGroup`

**Response**: `GoogleCloudDatacatalogV1EntryGroup`

```typescript
const res = await datacatalog.entryGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.list`

**GET** `v1/{+parent}/entryGroups`

Lists entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the location that contains the entry groups to list. Can be provided as a URL. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. Default is 10. Maximum limit is 1000. Throws an invalid argument if ... |
| `pageToken` | `string` | query | No | Optional. Pagination token that specifies the next page to return. If empty, returns the first page. |

**Response**: `GoogleCloudDatacatalogV1ListEntryGroupsResponse`

```typescript
const res = await datacatalog.entryGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.entryGroups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.patch`

**PATCH** `v1/{+name}`

Updates an entry group. You must enable the Data Catalog API in the project identified by the `entry_group.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the entry group in URL format. Note: The entry group itself and its child resources ... |
| `updateMask` | `string` | query | No | Names of fields whose values to overwrite on an entry group. If this parameter is absent or empty, all modifiable fie... |

**Request body**: `GoogleCloudDatacatalogV1EntryGroup`

**Response**: `GoogleCloudDatacatalogV1EntryGroup`

```typescript
const res = await datacatalog.entryGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.get`

**GET** `v1/{+name}`

Gets an entry group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry group to get. |
| `readMask` | `string` | query | No | The fields to return. If empty or omitted, all fields are returned. |

**Response**: `GoogleCloudDatacatalogV1EntryGroup`

```typescript
const res = await datacatalog.entryGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datacatalog.entryGroups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.tags.list`

**GET** `v1/{+parent}/tags`

Lists tags assigned to an Entry. The columns in the response are lowercased.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the Data Catalog resource to list the tags of. The resource can be an Entry or an EntryGroup (w... |
| `pageSize` | `integer` | query | No | The maximum number of tags to return. Default is 10. Maximum limit is 1000. |
| `pageToken` | `string` | query | No | Pagination token that specifies the next page to return. If empty, the first page is returned. |

**Response**: `GoogleCloudDatacatalogV1ListTagsResponse`

```typescript
const res = await datacatalog.tags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.tags.create`

**POST** `v1/{+parent}/tags`

Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name is `projects.locations.entryGroups.tags.create`. Note: The project identified by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used to create the tag must be in the same organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the resource to attach this tag to. Tags can be attached to entries or entry groups. An entry c... |

**Request body**: `GoogleCloudDatacatalogV1Tag`

**Response**: `GoogleCloudDatacatalogV1Tag`

```typescript
const res = await datacatalog.tags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.tags.delete`

**DELETE** `v1/{+name}`

Deletes a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag to delete. |

**Response**: `Empty`

```typescript
const res = await datacatalog.tags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.tags.patch`

**PATCH** `v1/{+name}`

Updates an existing tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag i... |
| `updateMask` | `string` | query | No | Names of fields whose values to overwrite on a tag. Currently, a tag has the only modifiable field with the name `fie... |

**Request body**: `GoogleCloudDatacatalogV1Tag`

**Response**: `GoogleCloudDatacatalogV1Tag`

```typescript
const res = await datacatalog.tags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.patch`

**PATCH** `v1/{+name}`

Updates an existing entry. You must enable the Data Catalog API in the project identified by the `entry.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of an entry in URL format. Note: The entry itself and its child resources ... |
| `updateMask` | `string` | query | No | Names of fields whose values to overwrite on an entry. If this parameter is absent or empty, all modifiable fields ar... |

**Request body**: `GoogleCloudDatacatalogV1Entry`

**Response**: `GoogleCloudDatacatalogV1Entry`

```typescript
const res = await datacatalog.entries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.star`

**POST** `v1/{+name}:star`

Marks an Entry as starred by the current user. Starring information is private to each user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry to mark as starred. |

**Request body**: `GoogleCloudDatacatalogV1StarEntryRequest`

**Response**: `GoogleCloudDatacatalogV1StarEntryResponse`

```typescript
const res = await datacatalog.entries.star({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datacatalog.entries.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.delete`

**DELETE** `v1/{+name}`

Deletes an existing entry. You can delete only the entries created by the CreateEntry method. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry to delete. |

**Response**: `Empty`

```typescript
const res = await datacatalog.entries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.import`

**POST** `v1/{+parent}/entries:import`

Imports entries from a source, such as data previously dumped into a Cloud Storage bucket, into Data Catalog. Import of entries is a sync operation that reconciles the state of the third-party system with the Data Catalog. `ImportEntries` accepts source data snapshots of a third-party system. Snapshot should be delivered as a .wire or base65-encoded .txt file containing a sequence of Protocol Buffer messages of DumpItem type. `ImportEntries` returns a long-running operation resource that can be queried with Operations.GetOperation to return ImportEntriesMetadata and an ImportEntriesResponse message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Target entry group for ingested entries. |

**Request body**: `GoogleCloudDatacatalogV1ImportEntriesRequest`

**Response**: `Operation`

```typescript
const res = await datacatalog.entries.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.get`

**GET** `v1/{+name}`

Gets an entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry to get. |

**Response**: `GoogleCloudDatacatalogV1Entry`

```typescript
const res = await datacatalog.entries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.modifyEntryOverview`

**POST** `v1/{+name}:modifyEntryOverview`

Modifies entry overview, part of the business context of an Entry. To call this method, you must have the `datacatalog.entries.updateOverview` IAM permission on the corresponding project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the entry. |

**Request body**: `GoogleCloudDatacatalogV1ModifyEntryOverviewRequest`

**Response**: `GoogleCloudDatacatalogV1EntryOverview`

```typescript
const res = await datacatalog.entries.modifyEntryOverview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.entries.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.list`

**GET** `v1/{+parent}/entries`

Lists entries. Note: Currently, this method can list only custom entries. To get a list of both custom and automatically created entries, use SearchCatalog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the entry group that contains the entries to list. Can be provided in URL format. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. Default is 10. Maximum limit is 1000. Throws an invalid argument if `page_size... |
| `pageToken` | `string` | query | No | Pagination token that specifies the next page to return. If empty, the first page is returned. |
| `readMask` | `string` | query | No | The fields to return for each entry. If empty or omitted, all fields are returned. For example, to return a list of e... |

**Response**: `GoogleCloudDatacatalogV1ListEntriesResponse`

```typescript
const res = await datacatalog.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.modifyEntryContacts`

**POST** `v1/{+name}:modifyEntryContacts`

Modifies contacts, part of the business context of an Entry. To call this method, you must have the `datacatalog.entries.updateContacts` IAM permission on the corresponding project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the entry. |

**Request body**: `GoogleCloudDatacatalogV1ModifyEntryContactsRequest`

**Response**: `GoogleCloudDatacatalogV1Contacts`

```typescript
const res = await datacatalog.entries.modifyEntryContacts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.unstar`

**POST** `v1/{+name}:unstar`

Marks an Entry as NOT starred by the current user. Starring information is private to each user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the entry to mark as **not** starred. |

**Request body**: `GoogleCloudDatacatalogV1UnstarEntryRequest`

**Response**: `GoogleCloudDatacatalogV1UnstarEntryResponse`

```typescript
const res = await datacatalog.entries.unstar({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.create`

**POST** `v1/{+parent}/entries`

Creates an entry. You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM', or custom types. Data Catalog automatically creates entries with other types during metadata ingestion from integrated systems. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project). An entry group can have a maximum of 100,000 entries.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the entry group this entry belongs to. Note: The entry itself and its child resources might not... |
| `entryId` | `string` | query | No | Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores ... |

**Request body**: `GoogleCloudDatacatalogV1Entry`

**Response**: `GoogleCloudDatacatalogV1Entry`

```typescript
const res = await datacatalog.entries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.tags.create`

**POST** `v1/{+parent}/tags`

Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name is `projects.locations.entryGroups.tags.create`. Note: The project identified by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used to create the tag must be in the same organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the resource to attach this tag to. Tags can be attached to entries or entry groups. An entry c... |

**Request body**: `GoogleCloudDatacatalogV1Tag`

**Response**: `GoogleCloudDatacatalogV1Tag`

```typescript
const res = await datacatalog.tags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.tags.list`

**GET** `v1/{+parent}/tags`

Lists tags assigned to an Entry. The columns in the response are lowercased.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the Data Catalog resource to list the tags of. The resource can be an Entry or an EntryGroup (w... |
| `pageSize` | `integer` | query | No | The maximum number of tags to return. Default is 10. Maximum limit is 1000. |
| `pageToken` | `string` | query | No | Pagination token that specifies the next page to return. If empty, the first page is returned. |

**Response**: `GoogleCloudDatacatalogV1ListTagsResponse`

```typescript
const res = await datacatalog.tags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.tags.delete`

**DELETE** `v1/{+name}`

Deletes a tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag to delete. |

**Response**: `Empty`

```typescript
const res = await datacatalog.tags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.tags.reconcile`

**POST** `v1/{+parent}/tags:reconcile`

`ReconcileTags` creates or updates a list of tags on the entry. If the ReconcileTagsRequest.force_delete_missing parameter is set, the operation deletes tags not included in the input tag list. `ReconcileTags` returns a long-running operation resource that can be queried with Operations.GetOperation to return ReconcileTagsMetadata and a ReconcileTagsResponse message. Note: SearchCatalog might return stale search results for up to 24 hours after the `ReconcileTags` operation completes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of Entry to be tagged. |

**Request body**: `GoogleCloudDatacatalogV1ReconcileTagsRequest`

**Response**: `Operation`

```typescript
const res = await datacatalog.tags.reconcile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.entryGroups.entries.tags.patch`

**PATCH** `v1/{+name}`

Updates an existing tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag i... |
| `updateMask` | `string` | query | No | Names of fields whose values to overwrite on a tag. Currently, a tag has the only modifiable field with the name `fie... |

**Request body**: `GoogleCloudDatacatalogV1Tag`

**Response**: `GoogleCloudDatacatalogV1Tag`

```typescript
const res = await datacatalog.tags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Tag templates - Entry groups Note: This method sets policies only within Data Catalog and can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources synced with the Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.tagTemplates.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.get`

**GET** `v1/{+name}`

Gets a tag template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag template to get. |

**Response**: `GoogleCloudDatacatalogV1TagTemplate`

```typescript
const res = await datacatalog.tagTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datacatalog.tagTemplates.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.create`

**POST** `v1/{+parent}/tagTemplates`

Creates a tag template. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project and the template location [region](https://cloud.google.com/data-catalog/docs/conce... |
| `tagTemplateId` | `string` | query | No | Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or u... |

**Request body**: `GoogleCloudDatacatalogV1TagTemplate`

**Response**: `GoogleCloudDatacatalogV1TagTemplate`

```typescript
const res = await datacatalog.tagTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.patch`

**PATCH** `v1/{+name}`

Updates a tag template. You can't update template fields with this method. These fields are separate resources with their own create, update, and delete methods. You must enable the Data Catalog API in the project identified by the `tag_template.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the tag template in URL format. Note: The tag template itself and its child resource... |
| `updateMask` | `string` | query | No | Names of fields whose values to overwrite on a tag template. Currently, only `display_name` and `is_publicly_readable... |

**Request body**: `GoogleCloudDatacatalogV1TagTemplate`

**Response**: `GoogleCloudDatacatalogV1TagTemplate`

```typescript
const res = await datacatalog.tagTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.delete`

**DELETE** `v1/{+name}`

Deletes a tag template and all tags that use it. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag template to delete. |
| `force` | `boolean` | query | No | Required. If true, deletes all tags that use this template. Currently, `true` is the only supported value. |

**Response**: `Empty`

```typescript
const res = await datacatalog.tagTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datacatalog.tagTemplates.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.fields.delete`

**DELETE** `v1/{+name}`

Deletes a field in a tag template and all uses of this field from the tags based on this template. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag template field to delete. |
| `force` | `boolean` | query | No | Required. If true, deletes this field from any tags that use it. Currently, `true` is the only supported value. |

**Response**: `Empty`

```typescript
const res = await datacatalog.fields.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.fields.patch`

**PATCH** `v1/{+name}`

Updates a field in a tag template. You can't update the field type with this method. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag template field. |
| `updateMask` | `string` | query | No | Optional. Names of fields whose values to overwrite on an individual field of a tag template. The following fields ar... |

**Request body**: `GoogleCloudDatacatalogV1TagTemplateField`

**Response**: `GoogleCloudDatacatalogV1TagTemplateField`

```typescript
const res = await datacatalog.fields.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.fields.create`

**POST** `v1/{+parent}/fields`

Creates a field in a tag template. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project and the template location [region](https://cloud.google.com/data-catalog/docs/conce... |
| `tagTemplateFieldId` | `string` | query | No | Required. The ID of the tag template field to create. Note: Adding a required field to an existing template is *not* ... |

**Request body**: `GoogleCloudDatacatalogV1TagTemplateField`

**Response**: `GoogleCloudDatacatalogV1TagTemplateField`

```typescript
const res = await datacatalog.fields.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.fields.rename`

**POST** `v1/{+name}:rename`

Renames a field in a tag template. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the tag template field. |

**Request body**: `GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest`

**Response**: `GoogleCloudDatacatalogV1TagTemplateField`

```typescript
const res = await datacatalog.fields.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.projects.locations.tagTemplates.fields.enumValues.rename`

**POST** `v1/{+name}:rename`

Renames an enum value in a tag template. Within a single enum field, enum values must be unique.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the enum field value. |

**Request body**: `GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest`

**Response**: `GoogleCloudDatacatalogV1TagTemplateField`

```typescript
const res = await datacatalog.enumValues.rename({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.catalog.search`

**POST** `v1/catalog:search`

Searches Data Catalog for multiple resources like entries and tags that match a query. This is a [Custom Method] (https://cloud.google.com/apis/design/custom_methods) that doesn't return all information on a resource, only its ID and high level fields. To get more information, you can subsequently call specific get methods. Note: Data Catalog search queries don't guarantee full recall. Results that match your query might not be returned, even in subsequent result pages. Additionally, returned (and not returned) results can vary if you repeat search queries. For more information, see [Data Catalog search syntax] (https://cloud.google.com/data-catalog/docs/how-to/search-reference).

**Request body**: `GoogleCloudDatacatalogV1SearchCatalogRequest`

**Response**: `GoogleCloudDatacatalogV1SearchCatalogResponse`

```typescript
const res = await datacatalog.catalog.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datacatalog.entries.lookup`

**GET** `v1/entries:lookup`

Gets an entry by its target resource name. The resource name comes from the source Google Cloud Platform service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fullyQualifiedName` | `string` | query | No | [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. FQNs... |
| `linkedResource` | `string` | query | No | The full name of the Google Cloud Platform resource the Data Catalog entry represents. For more information, see [Ful... |
| `location` | `string` | query | No | Location where the lookup should be performed. Required to lookup entry that is not a part of `DPMS` or `DATAPLEX` `i... |
| `project` | `string` | query | No | Project where the lookup should be performed. Required to lookup entry that is not a part of `DPMS` or `DATAPLEX` `in... |
| `sqlResource` | `string` | query | No | The SQL name of the entry. SQL names are case-sensitive. Examples: * `pubsub.topic.{PROJECT_ID}.{TOPIC_ID}` * `pubsub... |

**Response**: `GoogleCloudDatacatalogV1Entry`

```typescript
const res = await datacatalog.entries.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

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

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `GoogleCloudDatacatalogV1BigQueryConnectionSpec`

Specification for the BigQuery connection.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSql` | `GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec` | Specification for the BigQuery connection to a Cloud SQL instance. |
| `connectionType` | `string` | The type of the BigQuery connection. |
| `hasCredential` | `boolean` | True if there are credentials attached to the BigQuery connection; false otherwise. |

### `GoogleCloudDatacatalogV1BigQueryDateShardedSpec`

Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Output only. The Data Catalog resource name of the dataset entry the current table belongs to. Fo... |
| `latestShardResource` | `string` | Output only. BigQuery resource name of the latest shard. |
| `shardCount` | `string` | Output only. Total number of shards. |
| `tablePrefix` | `string` | Output only. The table name prefix of the shards. The name of any given shard is `[table_prefix]Y... |

### `GoogleCloudDatacatalogV1BigQueryRoutineSpec`

Fields specific for BigQuery routines.

| Property | Type | Description |
|----------|------|-------------|
| `importedLibraries` | `array<string>` | Paths of the imported libraries. |

### `GoogleCloudDatacatalogV1BigQueryTableSpec`

Describes a BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `tableSourceType` | `string` | Output only. The table source type. |
| `tableSpec` | `GoogleCloudDatacatalogV1TableSpec` | Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`. |
| `viewSpec` | `GoogleCloudDatacatalogV1ViewSpec` | Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`. |

### `GoogleCloudDatacatalogV1BusinessContext`

Business Context of the entry.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `GoogleCloudDatacatalogV1Contacts` | Contact people for the entry. |
| `entryOverview` | `GoogleCloudDatacatalogV1EntryOverview` | Entry overview fields for rich text descriptions of entries. |

### `GoogleCloudDatacatalogV1CloudBigtableInstanceSpec`

Specification that applies to Instance entries that are part of `CLOUD_BIGTABLE` system. (user_specified_type)

| Property | Type | Description |
|----------|------|-------------|
| `cloudBigtableClusterSpecs` | `array<GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>` | The list of clusters for the Instance. |

### `GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec`

Spec that applies to clusters of an Instance of Cloud Bigtable.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of the cluster. |
| `linkedResource` | `string` | A link back to the parent resource, in this case Instance. |
| `location` | `string` | Location of the cluster, typically a Cloud zone. |
| `type` | `string` | Type of the resource. For a cluster this would be "CLUSTER". |

### `GoogleCloudDatacatalogV1CloudBigtableSystemSpec`

Specification that applies to all entries that are part of `CLOUD_BIGTABLE` system (user_specified_type)

| Property | Type | Description |
|----------|------|-------------|
| `instanceDisplayName` | `string` | Display name of the Instance. This is user specified and different from the resource name. |

### `GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec`

Specification for the BigQuery connection to a Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Database name. |
| `instanceId` | `string` | Cloud SQL instance ID in the format of `project:location:instance`. |
| `type` | `string` | Type of the Cloud SQL database. |

### `GoogleCloudDatacatalogV1ColumnSchema`

A column within a schema. Columns can be nested inside other columns.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Required. Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes. |
| `defaultValue` | `string` | Optional. Default value for the column. |
| `description` | `string` | Optional. Description of the column. Default value is an empty string. The description must be a ... |
| `gcRule` | `string` | Optional. Garbage collection policy for the column or column family. Applies to systems like Clou... |
| `highestIndexingType` | `string` | Optional. Most important inclusion of this column. |
| `lookerColumnSpec` | `GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec` | Looker specific column info of this column. |
| `mode` | `string` | Optional. A column's mode indicates whether values in this column are required, nullable, or repe... |
| `ordinalPosition` | `integer` | Optional. Ordinal position |
| `rangeElementType` | `GoogleCloudDatacatalogV1ColumnSchemaFieldElementType` | Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, thi... |
| `subcolumns` | `array<GoogleCloudDatacatalogV1ColumnSchema>` | Optional. Schema of sub-columns. A column can have zero or more sub-columns. |
| `type` | `string` | Required. Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes. |

### `GoogleCloudDatacatalogV1ColumnSchemaFieldElementType`

Represents the type of a field element.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. The type of a field element. See ColumnSchema.type. |

### `GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec`

Column info specific to Looker System.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Looker specific column type of this column. |

### `GoogleCloudDatacatalogV1CommonUsageStats`

Common statistics on the entry's usage. They can be set on any system.

| Property | Type | Description |
|----------|------|-------------|
| `viewCount` | `string` | View count in source system. |

### `GoogleCloudDatacatalogV1Contacts`

Contact people for the entry.

| Property | Type | Description |
|----------|------|-------------|
| `people` | `array<GoogleCloudDatacatalogV1ContactsPerson>` | The list of contact people for the entry. |

### `GoogleCloudDatacatalogV1ContactsPerson`

A contact person for the entry.

| Property | Type | Description |
|----------|------|-------------|
| `designation` | `string` | Designation of the person, for example, Data Steward. |
| `email` | `string` | Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`. |

### `GoogleCloudDatacatalogV1CrossRegionalSource`

Cross-regional source used to import an existing taxonomy into a different region.

| Property | Type | Description |
|----------|------|-------------|
| `taxonomy` | `string` | Required. The resource name of the source taxonomy to import. |

### `GoogleCloudDatacatalogV1DataSource`

Physical location of an entry.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `string` | Full name of a resource as defined by the service. For example: `//bigquery.googleapis.com/projec... |
| `service` | `string` | Service that physically stores the data. |
| `sourceEntry` | `string` | Output only. Data Catalog entry name, if applicable. |
| `storageProperties` | `GoogleCloudDatacatalogV1StorageProperties` | Detailed properties of the underlying storage. |

### `GoogleCloudDatacatalogV1DataSourceConnectionSpec`

Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set at the time, and cannot be changed later.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryConnectionSpec` | `GoogleCloudDatacatalogV1BigQueryConnectionSpec` | Output only. Fields specific to BigQuery connections. |

### `GoogleCloudDatacatalogV1DatabaseTableSpec`

Specification that applies to a table resource. Valid only for entries with the `TABLE` type.

| Property | Type | Description |
|----------|------|-------------|
| `databaseViewSpec` | `GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec` | Spec what applies to tables that are actually views. Not set for "real" tables. |
| `dataplexTable` | `GoogleCloudDatacatalogV1DataplexTableSpec` | Output only. Fields specific to a Dataplex Universal Catalog table and present only in the Datapl... |
| `type` | `string` | Type of this table. |

### `GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec`

Specification that applies to database view.

| Property | Type | Description |
|----------|------|-------------|
| `baseTable` | `string` | Name of a singular table this view reflects one to one. |
| `sqlQuery` | `string` | SQL query used to generate this view. |
| `viewType` | `string` | Type of this view. |

### `GoogleCloudDatacatalogV1DataplexExternalTable`

External table registered by Dataplex Universal Catalog. Dataplex Universal Catalog publishes data discovered from an asset into multiple other systems (BigQuery, DPMS) in form of tables. We call them "external tables". External tables are also synced into the Data Catalog. This message contains pointers to those external tables (fully qualified name, resource name et cetera) within the Data Catalog.

| Property | Type | Description |
|----------|------|-------------|
| `dataCatalogEntry` | `string` | Name of the Data Catalog entry representing the external table. |
| `fullyQualifiedName` | `string` | Fully qualified name (FQN) of the external table. |
| `googleCloudResource` | `string` | Google Cloud resource name of the external table. |
| `system` | `string` | Service in which the external table is registered. |

### `GoogleCloudDatacatalogV1DataplexFilesetSpec`

Entry specification for a Dataplex Universal Catalog fileset.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexSpec` | `GoogleCloudDatacatalogV1DataplexSpec` | Common Dataplex Universal Catalog fields. |

### `GoogleCloudDatacatalogV1DataplexSpec`

Common Dataplex Universal Catalog fields.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Fully qualified resource name of an asset in Dataplex Universal Catalog, to which the underlying ... |
| `compressionFormat` | `string` | Compression format of the data, e.g., zip, gzip etc. |
| `dataFormat` | `GoogleCloudDatacatalogV1PhysicalSchema` | Format of the data. |
| `projectId` | `string` | Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same p... |

### `GoogleCloudDatacatalogV1DataplexTableSpec`

Entry specification for a Dataplex Universal Catalog table.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexSpec` | `GoogleCloudDatacatalogV1DataplexSpec` | Common Dataplex Universal Catalog fields. |
| `externalTables` | `array<GoogleCloudDatacatalogV1DataplexExternalTable>` | List of external tables registered by Dataplex Universal Catalog in other systems based on the sa... |
| `userManaged` | `boolean` | Indicates if the table schema is managed by the user or not. |

### `GoogleCloudDatacatalogV1DatasetSpec`

Specification that applies to a dataset. Valid only for entries with the `DATASET` type.

| Property | Type | Description |
|----------|------|-------------|
| `vertexDatasetSpec` | `GoogleCloudDatacatalogV1VertexDatasetSpec` | Vertex AI Dataset specific fields |

### `GoogleCloudDatacatalogV1DumpItem`

Wrapper for any item that can be contained in the dump.

| Property | Type | Description |
|----------|------|-------------|
| `taggedEntry` | `GoogleCloudDatacatalogV1TaggedEntry` | Entry and its tags. |

### `GoogleCloudDatacatalogV1Entry`

Entry metadata. A Data Catalog entry represents another resource in Google Cloud Platform (such as a BigQuery dataset or a Pub/Sub topic) or outside of it. You can use the `linked_resource` field in the entry resource to refer to the original resource ID of the source system. An entry resource contains resource details, for example, its schema. Additionally, you can attach flexible metadata to an entry in the form of a Tag.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDateShardedSpec` | `GoogleCloudDatacatalogV1BigQueryDateShardedSpec` | Output only. Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name patter... |
| `bigqueryTableSpec` | `GoogleCloudDatacatalogV1BigQueryTableSpec` | Output only. Specification that applies to a BigQuery table. Valid only for entries with the `TAB... |
| `businessContext` | `GoogleCloudDatacatalogV1BusinessContext` | Business Context of the entry. Not supported for BigQuery datasets |
| `cloudBigtableSystemSpec` | `GoogleCloudDatacatalogV1CloudBigtableSystemSpec` | Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is eq... |
| `dataSource` | `GoogleCloudDatacatalogV1DataSource` | Output only. Physical location of the entry. |
| `dataSourceConnectionSpec` | `GoogleCloudDatacatalogV1DataSourceConnectionSpec` | Specification that applies to a data source connection. Valid only for entries with the `DATA_SOU... |
| `databaseTableSpec` | `GoogleCloudDatacatalogV1DatabaseTableSpec` | Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLO... |
| `datasetSpec` | `GoogleCloudDatacatalogV1DatasetSpec` | Specification that applies to a dataset. |
| `description` | `string` | Entry description that can consist of several sentences or paragraphs that describe entry content... |
| `displayName` | `string` | Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is a... |
| `featureOnlineStoreSpec` | `GoogleCloudDatacatalogV1FeatureOnlineStoreSpec` | FeatureonlineStore spec for Vertex AI Feature Store. |
| `filesetSpec` | `GoogleCloudDatacatalogV1FilesetSpec` | Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type. |
| `fullyQualifiedName` | `string` | [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) o... |
| `gcsFilesetSpec` | `GoogleCloudDatacatalogV1GcsFilesetSpec` | Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` ... |
| `graphSpec` | `GoogleCloudDatacatalogV1GraphSpec` | Spec for graph. |
| `integratedSystem` | `string` | Output only. Indicates the entry's source system that Data Catalog integrates with, such as BigQu... |
| `labels` | `object` | Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached on... |
| `linkedResource` | `string` | The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource... |
| `lookerSystemSpec` | `GoogleCloudDatacatalogV1LookerSystemSpec` | Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal... |
| `modelSpec` | `GoogleCloudDatacatalogV1ModelSpec` | Model specification. |
| `name` | `string` | Output only. Identifier. The resource name of an entry in URL format. Note: The entry itself and ... |
| `personalDetails` | `GoogleCloudDatacatalogV1PersonalDetails` | Output only. Additional information related to the entry. Private to the current user. |
| `routineSpec` | `GoogleCloudDatacatalogV1RoutineSpec` | Specification that applies to a user-defined function or procedure. Valid only for entries with t... |
| `schema` | `GoogleCloudDatacatalogV1Schema` | Schema of the entry. An entry might not have any schema attached to it. |
| `serviceSpec` | `GoogleCloudDatacatalogV1ServiceSpec` | Specification that applies to a Service resource. |
| `sourceSystemTimestamps` | `GoogleCloudDatacatalogV1SystemTimestamps` | Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the en... |
| `spannerTableSpec` | `GoogleCloudDatacatalogV1SpannerTableSpec` | Specification of a Spanner table. |
| `sqlDatabaseSystemSpec` | `GoogleCloudDatacatalogV1SqlDatabaseSystemSpec` | Specification that applies to a relational database system. Only settable when `user_specified_sy... |
| `type` | `string` | The type of the entry. For details, see [`EntryType`](#entrytype). |
| `usageSignal` | `GoogleCloudDatacatalogV1UsageSignal` | Resource usage statistics. |
| `userSpecifiedSystem` | `string` | Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `... |
| `userSpecifiedType` | `string` | Custom entry type that doesn't match any of the values allowed for input and listed in the `Entry... |

### `GoogleCloudDatacatalogV1EntryGroup`

Entry group metadata. An `EntryGroup` resource represents a logical grouping of zero or more Data Catalog Entry resources.

| Property | Type | Description |
|----------|------|-------------|
| `dataCatalogTimestamps` | `GoogleCloudDatacatalogV1SystemTimestamps` | Output only. Timestamps of the entry group. Default value is empty. |
| `description` | `string` | Entry group description. Can consist of several sentences or paragraphs that describe the entry g... |
| `displayName` | `string` | A short name to identify the entry group, for example, "analytics data - jan 2011". Default value... |
| `name` | `string` | Identifier. The resource name of the entry group in URL format. Note: The entry group itself and ... |
| `transferredToDataplex` | `boolean` | Optional. When set to [true], it means DataCatalog EntryGroup was transferred to Dataplex Univers... |

### `GoogleCloudDatacatalogV1EntryOverview`

Entry overview fields for rich text descriptions of entries.

| Property | Type | Description |
|----------|------|-------------|
| `overview` | `string` | Entry overview with support for rich text. The overview must only contain Unicode characters, and... |

### `GoogleCloudDatacatalogV1ExportTaxonomiesResponse`

Response message for ExportTaxonomies.

| Property | Type | Description |
|----------|------|-------------|
| `taxonomies` | `array<GoogleCloudDatacatalogV1SerializedTaxonomy>` | List of taxonomies and policy tags as nested protocol buffers. |

### `GoogleCloudDatacatalogV1FeatureOnlineStoreSpec`

Detail description of the source information of a Vertex Feature Online Store.

| Property | Type | Description |
|----------|------|-------------|
| `storageType` | `string` | Output only. Type of underlying storage for the FeatureOnlineStore. |

### `GoogleCloudDatacatalogV1FieldType`

| Property | Type | Description |
|----------|------|-------------|
| `enumType` | `GoogleCloudDatacatalogV1FieldTypeEnumType` | An enum type. |
| `primitiveType` | `string` | Primitive types, such as string, boolean, etc. |

### `GoogleCloudDatacatalogV1FieldTypeEnumType`

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue>` | The set of allowed values for this enum. This set must not be empty and can include up to 100 all... |

### `GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue`

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display name of the enum value. Must not be an empty string. The name must contain ... |

### `GoogleCloudDatacatalogV1FilesetSpec`

Specification that applies to a fileset. Valid only for entries with the 'FILESET' type.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexFileset` | `GoogleCloudDatacatalogV1DataplexFilesetSpec` | Fields specific to a Dataplex Universal Catalog fileset and present only in the Dataplex Universa... |

### `GoogleCloudDatacatalogV1GcsFileSpec`

Specification of a single file in Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `filePath` | `string` | Required. Full file path. Example: `gs://bucket_name/a/b.txt`. |
| `gcsTimestamps` | `GoogleCloudDatacatalogV1SystemTimestamps` | Output only. Creation, modification, and expiration timestamps of a Cloud Storage file. |
| `sizeBytes` | `string` | Output only. File size in bytes. |

### `GoogleCloudDatacatalogV1GcsFilesetSpec`

Describes a Cloud Storage fileset entry.

| Property | Type | Description |
|----------|------|-------------|
| `filePatterns` | `array<string>` | Required. Patterns to identify a set of files in Google Cloud Storage. For more information, see ... |
| `sampleGcsFileSpecs` | `array<GoogleCloudDatacatalogV1GcsFileSpec>` | Output only. Sample files contained in this fileset, not all files contained in this fileset are ... |

### `GoogleCloudDatacatalogV1GraphSpec`

Specification that applies to a graph.

| Property | Type | Description |
|----------|------|-------------|
| `edgeTables` | `array<GoogleCloudDatacatalogV1GraphSpecGraphElementTable>` | Optional. Edge tables of the graph. |
| `name` | `string` | Output only. Fully qualified graph name. e.g. `named_catalog.MyGraph` |
| `nodeTables` | `array<GoogleCloudDatacatalogV1GraphSpecGraphElementTable>` | Required. Node tables of the graph. |

### `GoogleCloudDatacatalogV1GraphSpecGraphElementTable`

Element table definition.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Required. The alias name of the graph element. |
| `dataSource` | `string` | Required. The name of the data source. This is either a table name or a view name that is used fo... |
| `destinationNodeReference` | `GoogleCloudDatacatalogV1GraphSpecGraphElementTableGraphNodeReference` | Optional. The destination node reference of the edge. |
| `dynamicLabelColumn` | `string` | Optional. If set, this is the input column for dynamic label in schemaless data model. |
| `dynamicPropertiesColumn` | `string` | Optional. If set, this is the input column for dynamic properties in schemaless data model. |
| `elementKeys` | `array<string>` | Required. The name of the keys of the elements in the table. |
| `inputSource` | `string` | Required. The input source of the graph element. |
| `kind` | `string` | Required. The kind of the graph element. |
| `labelAndProperties` | `array<GoogleCloudDatacatalogV1GraphSpecGraphElementTableLabelAndProperties>` | Required. The labels and their properties for the graph element. |
| `sourceNodeReference` | `GoogleCloudDatacatalogV1GraphSpecGraphElementTableGraphNodeReference` | Optional. The source node reference of the edge. |

### `GoogleCloudDatacatalogV1GraphSpecGraphElementTableGraphNodeReference`

A reference to a source or destination node in a graph edge.

| Property | Type | Description |
|----------|------|-------------|
| `edgeTableColumns` | `array<string>` | Required. The referencing columns in the edge table. The size of `edge_table_columns` must be equ... |
| `nodeAlias` | `string` | Required. The reference to the source/destination node of the edge. This name must be a valid `al... |
| `nodeTableColumns` | `array<string>` | Required. The referenced columns of the source node table. |

### `GoogleCloudDatacatalogV1GraphSpecGraphElementTableLabelAndProperties`

The label and its properties. Each label is associated with a set of properties.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | Required. The name of the label. |
| `properties` | `array<GoogleCloudDatacatalogV1GraphSpecGraphElementTableProperty>` | Optional. The properties associated with the label. |

### `GoogleCloudDatacatalogV1GraphSpecGraphElementTableProperty`

A property declaration.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Property name. |
| `type` | `string` | Required. Property data type. |

### `GoogleCloudDatacatalogV1ImportEntriesMetadata`

Metadata message for long-running operation returned by the ImportEntries.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Status>` | Partial errors that are encountered during the ImportEntries operation. There is no guarantee tha... |
| `state` | `string` | State of the import operation. |

### `GoogleCloudDatacatalogV1ImportEntriesRequest`

Request message for ImportEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `gcsBucketPath` | `string` | Path to a Cloud Storage bucket that contains a dump ready for ingestion. |
| `jobId` | `string` | Optional. (Optional) Dataplex Universal Catalog task job id, if specified will be used as part of... |

### `GoogleCloudDatacatalogV1ImportEntriesResponse`

Response message for long-running operation returned by the ImportEntries.

| Property | Type | Description |
|----------|------|-------------|
| `deletedEntriesCount` | `string` | Number of entries deleted as a result of import operation. |
| `upsertedEntriesCount` | `string` | Cumulative number of entries created and entries updated as a result of import operation. |

### `GoogleCloudDatacatalogV1ImportTaxonomiesRequest`

Request message for ImportTaxonomies.

| Property | Type | Description |
|----------|------|-------------|
| `crossRegionalSource` | `GoogleCloudDatacatalogV1CrossRegionalSource` | Cross-regional source taxonomy to import. |
| `inlineSource` | `GoogleCloudDatacatalogV1InlineSource` | Inline source taxonomy to import. |

### `GoogleCloudDatacatalogV1ImportTaxonomiesResponse`

Response message for ImportTaxonomies.

| Property | Type | Description |
|----------|------|-------------|
| `taxonomies` | `array<GoogleCloudDatacatalogV1Taxonomy>` | Imported taxonomies. |

### `GoogleCloudDatacatalogV1InlineSource`

Inline source containing taxonomies to import.

| Property | Type | Description |
|----------|------|-------------|
| `taxonomies` | `array<GoogleCloudDatacatalogV1SerializedTaxonomy>` | Required. Taxonomies to import. |

### `GoogleCloudDatacatalogV1ListEntriesResponse`

Response message for ListEntries.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GoogleCloudDatacatalogV1Entry>` | Entry details. |
| `nextPageToken` | `string` | Pagination token of the next results page. Empty if there are no more items in results. |

### `GoogleCloudDatacatalogV1ListEntryGroupsResponse`

Response message for ListEntryGroups.

| Property | Type | Description |
|----------|------|-------------|
| `entryGroups` | `array<GoogleCloudDatacatalogV1EntryGroup>` | Entry group details. |
| `nextPageToken` | `string` | Pagination token to specify in the next call to retrieve the next page of results. Empty if there... |

### `GoogleCloudDatacatalogV1ListPolicyTagsResponse`

Response message for ListPolicyTags.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token of the next results page. Empty if there are no more results in the list. |
| `policyTags` | `array<GoogleCloudDatacatalogV1PolicyTag>` | The policy tags that belong to the taxonomy. |

### `GoogleCloudDatacatalogV1ListTagsResponse`

Response message for ListTags.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token of the next results page. Empty if there are no more items in results. |
| `tags` | `array<GoogleCloudDatacatalogV1Tag>` | Tag details. |

### `GoogleCloudDatacatalogV1ListTaxonomiesResponse`

Response message for ListTaxonomies.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token of the next results page. Empty if there are no more results in the list. |
| `taxonomies` | `array<GoogleCloudDatacatalogV1Taxonomy>` | Taxonomies that the project contains. |

### `GoogleCloudDatacatalogV1LookerSystemSpec`

Specification that applies to entries that are part `LOOKER` system (user_specified_type)

| Property | Type | Description |
|----------|------|-------------|
| `parentInstanceDisplayName` | `string` | Name of the parent Looker Instance. Empty if it does not exist. |
| `parentInstanceId` | `string` | ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker... |
| `parentModelDisplayName` | `string` | Name of the parent Model. Empty if it does not exist. |
| `parentModelId` | `string` | ID of the parent Model. Empty if it does not exist. |
| `parentViewDisplayName` | `string` | Name of the parent View. Empty if it does not exist. |
| `parentViewId` | `string` | ID of the parent View. Empty if it does not exist. |

### `GoogleCloudDatacatalogV1MigrationConfig`

The configuration related to the migration to Dataplex Universal Catalog applied to an organization or project. It is the response message for SetConfig and RetrieveEffectiveConfig.

| Property | Type | Description |
|----------|------|-------------|
| `catalogUiExperience` | `string` | Opt-in status for the UI switch to Dataplex Universal Catalog. |
| `tagTemplateMigration` | `string` | Opt-in status for the migration of Tag Templates to Dataplex Universal Catalog. |
| `templateMigrationEnabledTime` | `string` | The time when the Tag Template migration was enabled. If the Tag Template migration is not enable... |

### `GoogleCloudDatacatalogV1ModelSpec`

Specification that applies to a model. Valid only for entries with the `MODEL` type.

| Property | Type | Description |
|----------|------|-------------|
| `vertexModelSpec` | `GoogleCloudDatacatalogV1VertexModelSpec` | Specification for vertex model resources. |

### `GoogleCloudDatacatalogV1ModifyEntryContactsRequest`

Request message for ModifyEntryContacts.

| Property | Type | Description |
|----------|------|-------------|
| `contacts` | `GoogleCloudDatacatalogV1Contacts` | Required. The new value for the Contacts. |

### `GoogleCloudDatacatalogV1ModifyEntryOverviewRequest`

Request message for ModifyEntryOverview.

| Property | Type | Description |
|----------|------|-------------|
| `entryOverview` | `GoogleCloudDatacatalogV1EntryOverview` | Required. The new value for the Entry Overview. |

### `GoogleCloudDatacatalogV1OrganizationConfig`

The configuration related to the migration from Data Catalog to Dataplex Universal Catalog that has been applied to an organization and any projects under it. It is the response message for RetrieveConfig.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `object` | Map of organizations and project resource names and their configuration. The format for the map k... |

### `GoogleCloudDatacatalogV1PersonalDetails`

Entry metadata relevant only to the user and private to them.

| Property | Type | Description |
|----------|------|-------------|
| `starTime` | `string` | Set if the entry is starred; unset otherwise. |
| `starred` | `boolean` | True if the entry is starred by the user; false otherwise. |

### `GoogleCloudDatacatalogV1PhysicalSchema`

Native schema used by a resource represented as an entry. Used by query engines for deserializing and parsing source data.

| Property | Type | Description |
|----------|------|-------------|
| `avro` | `GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema` | Schema in Avro JSON format. |
| `csv` | `GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema` | Marks a CSV-encoded data source. |
| `orc` | `GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema` | Marks an ORC-encoded data source. |
| `parquet` | `GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema` | Marks a Parquet-encoded data source. |
| `protobuf` | `GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema` | Schema in protocol buffer format. |
| `thrift` | `GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema` | Schema in Thrift format. |

### `GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema`

Schema in Avro JSON format.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | JSON source of the Avro schema. |

### `GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema`

Marks a CSV-encoded data source.

### `GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema`

Marks an ORC-encoded data source.

### `GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema`

Marks a Parquet-encoded data source.

### `GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema`

Schema in protocol buffer format.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Protocol buffer source of the schema. |

### `GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema`

Schema in Thrift format.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Thrift IDL source of the schema. |

### `GoogleCloudDatacatalogV1PolicyTag`

Denotes one policy tag in a taxonomy, for example, SSN. Policy tags can be defined in a hierarchy. For example: ``` + Geolocation + LatLong + City + ZipCode ``` Where the "Geolocation" policy tag contains three children.

| Property | Type | Description |
|----------|------|-------------|
| `childPolicyTags` | `array<string>` | Output only. Resource names of child policy tags of this policy tag. |
| `description` | `string` | Description of this policy tag. If not set, defaults to empty. The description must contain only ... |
| `displayName` | `string` | Required. User-defined name of this policy tag. The name can't start or end with spaces and must ... |
| `name` | `string` | Identifier. Resource name of this policy tag in the URL format. The policy tag manager generates ... |
| `parentPolicyTag` | `string` | Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not s... |

### `GoogleCloudDatacatalogV1ReconcileTagsMetadata`

Long-running operation metadata message returned by the ReconcileTags.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `object` | Maps the name of each tagged column (or empty string for a sole entry) to tagging operation status. |
| `state` | `string` | State of the reconciliation operation. |

### `GoogleCloudDatacatalogV1ReconcileTagsRequest`

Request message for ReconcileTags.

| Property | Type | Description |
|----------|------|-------------|
| `forceDeleteMissing` | `boolean` |  |
| `tagTemplate` | `string` | Required. The name of the tag template, which is used for reconciliation. |
| `tags` | `array<GoogleCloudDatacatalogV1Tag>` | A list of tags to apply to an entry. A tag can specify a tag template, which must be the template... |

### `GoogleCloudDatacatalogV1ReconcileTagsResponse`

Long-running operation response message returned by ReconcileTags.

| Property | Type | Description |
|----------|------|-------------|
| `createdTagsCount` | `string` | Number of tags created in the request. |
| `deletedTagsCount` | `string` | Number of tags deleted in the request. |
| `updatedTagsCount` | `string` | Number of tags updated in the request. |

### `GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest`

Request message for RenameTagTemplateFieldEnumValue.

| Property | Type | Description |
|----------|------|-------------|
| `newEnumValueDisplayName` | `string` | Required. The new display name of the enum value. For example, `my_new_enum_value`. |

### `GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest`

Request message for RenameTagTemplateField.

| Property | Type | Description |
|----------|------|-------------|
| `newTagTemplateFieldId` | `string` | Required. The new ID of this tag template field. For example, `my_new_field`. |

### `GoogleCloudDatacatalogV1ReplaceTaxonomyRequest`

Request message for ReplaceTaxonomy.

| Property | Type | Description |
|----------|------|-------------|
| `serializedTaxonomy` | `GoogleCloudDatacatalogV1SerializedTaxonomy` | Required. Taxonomy to update along with its child policy tags. |

### `GoogleCloudDatacatalogV1RoutineSpec`

Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryRoutineSpec` | `GoogleCloudDatacatalogV1BigQueryRoutineSpec` | Fields specific for BigQuery routines. |
| `definitionBody` | `string` | The body of the routine. |
| `language` | `string` | The language the routine is written in. The exact value depends on the source system. For BigQuer... |
| `returnType` | `string` | Return type of the argument. The exact value depends on the source system and the language. |
| `routineArguments` | `array<GoogleCloudDatacatalogV1RoutineSpecArgument>` | Arguments of the routine. |
| `routineType` | `string` | The type of the routine. |

### `GoogleCloudDatacatalogV1RoutineSpecArgument`

Input or output argument of a function or stored procedure.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Specifies whether the argument is input or output. |
| `name` | `string` | The name of the argument. A return argument of a function might not have a name. |
| `type` | `string` | Type of the argument. The exact value depends on the source system and the language. |

### `GoogleCloudDatacatalogV1Schema`

Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<GoogleCloudDatacatalogV1ColumnSchema>` | The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested co... |

### `GoogleCloudDatacatalogV1SearchCatalogRequest`

Request message for SearchCatalog.

| Property | Type | Description |
|----------|------|-------------|
| `adminSearch` | `boolean` | Optional. If set, use searchAll permission granted on organizations from `include_org_ids` and pr... |
| `orderBy` | `string` | Specifies the order of results. Currently supported case-sensitive values are: * `relevance` that... |
| `pageSize` | `integer` | Upper bound on the number of results you can get in a single response. Can't be negative or 0, de... |
| `pageToken` | `string` | Optional. Pagination token that, if specified, returns the next page of search results. If empty,... |
| `query` | `string` | Optional. The query string with a minimum of 3 characters and specific syntax. For more informati... |
| `scope` | `GoogleCloudDatacatalogV1SearchCatalogRequestScope` | Required. The scope of this search request. The `scope` is invalid if `include_org_ids`, `include... |

### `GoogleCloudDatacatalogV1SearchCatalogRequestScope`

The criteria that select the subspace used for query matching.

| Property | Type | Description |
|----------|------|-------------|
| `includeGcpPublicDatasets` | `boolean` | If `true`, include Google Cloud public datasets in search results. By default, they are excluded.... |
| `includeOrgIds` | `array<string>` | The list of organization IDs to search within. To find your organization ID, follow the steps fro... |
| `includeProjectIds` | `array<string>` | The list of project IDs to search within. For more information on the distinction between project... |
| `includePublicTagTemplates` | `boolean` | Optional. This field is deprecated. The search mechanism for public and private tag templates is ... |
| `restrictedLocations` | `array<string>` | Optional. The list of locations to search within. If empty, all locations are searched. Returns a... |
| `starredOnly` | `boolean` | Optional. If `true`, search only among starred entries. By default, all results are returned, sta... |

### `GoogleCloudDatacatalogV1SearchCatalogResponse`

Response message for SearchCatalog.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token that can be used in subsequent calls to retrieve the next page of results. |
| `results` | `array<GoogleCloudDatacatalogV1SearchCatalogResult>` | Search results. |
| `totalSize` | `integer` | The approximate total number of entries matched by the query. |
| `unreachable` | `array<string>` | Unreachable locations. Search results don't include data from those locations. To get additional ... |

### `GoogleCloudDatacatalogV1SearchCatalogResult`

Result in the response to a search request. Each result captures details of one entry that matches the search.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Entry description that can consist of several sentences or paragraphs that describe entry contents. |
| `displayName` | `string` | The display name of the result. |
| `fullyQualifiedName` | `string` | Fully qualified name (FQN) of the resource. FQNs take two forms: * For non-regionalized resources... |
| `integratedSystem` | `string` | Output only. The source system that Data Catalog automatically integrates with, such as BigQuery,... |
| `linkedResource` | `string` | The full name of the Google Cloud resource the entry belongs to. For more information, see [Full ... |
| `modifyTime` | `string` | The last modification timestamp of the entry in the source system. |
| `relativeResourceName` | `string` | The relative name of the resource in URL format. Examples: * `projects/{PROJECT_ID}/locations/{LO... |
| `searchResultSubtype` | `string` | Sub-type of the search result. A dot-delimited full type of the resource. The same type you speci... |
| `searchResultType` | `string` | Type of the search result. You can use this field to determine which get method to call to fetch ... |
| `userSpecifiedSystem` | `string` | Custom source system that you can manually integrate Data Catalog with. |

### `GoogleCloudDatacatalogV1SerializedPolicyTag`

A nested protocol buffer that represents a policy tag and all its descendants.

| Property | Type | Description |
|----------|------|-------------|
| `childPolicyTags` | `array<GoogleCloudDatacatalogV1SerializedPolicyTag>` | Children of the policy tag, if any. |
| `description` | `string` | Description of the serialized policy tag. At most 2000 bytes when encoded in UTF-8. If not set, d... |
| `displayName` | `string` | Required. Display name of the policy tag. At most 200 bytes when encoded in UTF-8. |
| `policyTag` | `string` | Resource name of the policy tag. This field is ignored when calling `ImportTaxonomies`. |

### `GoogleCloudDatacatalogV1SerializedTaxonomy`

A nested protocol buffer that represents a taxonomy and the hierarchy of its policy tags. Used for taxonomy replacement, import, and export.

| Property | Type | Description |
|----------|------|-------------|
| `activatedPolicyTypes` | `array<string>` | A list of policy types that are activated per taxonomy. |
| `description` | `string` | Description of the serialized taxonomy. At most 2000 bytes when encoded in UTF-8. If not set, def... |
| `displayName` | `string` | Required. Display name of the taxonomy. At most 200 bytes when encoded in UTF-8. |
| `policyTags` | `array<GoogleCloudDatacatalogV1SerializedPolicyTag>` | Top level policy tags associated with the taxonomy, if any. |

### `GoogleCloudDatacatalogV1ServiceSpec`

Specification that applies to a Service resource. Valid only for entries with the `SERVICE` type.

| Property | Type | Description |
|----------|------|-------------|
| `cloudBigtableInstanceSpec` | `GoogleCloudDatacatalogV1CloudBigtableInstanceSpec` | Specification that applies to Instance entries of `CLOUD_BIGTABLE` system. |

### `GoogleCloudDatacatalogV1SetConfigRequest`

Request message for SetConfig.

| Property | Type | Description |
|----------|------|-------------|
| `catalogUiExperience` | `string` | Opt-in status for the UI switch to Dataplex Universal Catalog. |
| `tagTemplateMigration` | `string` | Opt-in status for the migration of Tag Templates to Dataplex Universal Catalog. |

### `GoogleCloudDatacatalogV1SpannerTableSpec`

Specification of a Spanner table.

| Property | Type | Description |
|----------|------|-------------|
| `foreignKeys` | `array<GoogleCloudDatacatalogV1SpannerTableSpecSpannerForeignKey>` | Output only. The foreign keys of the table. |
| `primaryKey` | `GoogleCloudDatacatalogV1SpannerTableSpecSpannerPrimaryKey` | Output only. The primary key of the table. |

### `GoogleCloudDatacatalogV1SpannerTableSpecSpannerForeignKey`

Specification of a Spanner foreign key.

| Property | Type | Description |
|----------|------|-------------|
| `columnMappings` | `array<GoogleCloudDatacatalogV1SpannerTableSpecSpannerForeignKeyForeignKeyColumnMapping>` | Output only. The ordered list of column mappings for this foreign key. |
| `entry` | `string` | Output only. The table name this foreign key referenced to. Format: `projects/{PROJECT_ID}/locati... |
| `name` | `string` | Output only. The constraint_name of the foreign key, for example, FK_CustomerOrder. |

### `GoogleCloudDatacatalogV1SpannerTableSpecSpannerForeignKeyForeignKeyColumnMapping`

Column mapping for a Spanner foreign key.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Output only. The column in the current table that is part of the foreign key. |
| `referenceColumn` | `string` | Output only. The column in the referenced table that is part of the foreign key. |

### `GoogleCloudDatacatalogV1SpannerTableSpecSpannerPrimaryKey`

Specification of a Spanner primary key.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Output only. Column names of the primary key. |

### `GoogleCloudDatacatalogV1SqlDatabaseSystemSpec`

Specification that applies to entries that are part `SQL_DATABASE` system (user_specified_type)

| Property | Type | Description |
|----------|------|-------------|
| `databaseVersion` | `string` | Version of the database engine. |
| `instanceHost` | `string` | Host of the SQL database enum InstanceHost { UNDEFINED = 0; SELF_HOSTED = 1; CLOUD_SQL = 2; AMAZO... |
| `sqlEngine` | `string` | SQL Database Engine. enum SqlEngine { UNDEFINED = 0; MY_SQL = 1; POSTGRE_SQL = 2; SQL_SERVER = 3;... |

### `GoogleCloudDatacatalogV1StarEntryRequest`

Request message for StarEntry.

### `GoogleCloudDatacatalogV1StarEntryResponse`

Response message for StarEntry. Empty for now

### `GoogleCloudDatacatalogV1StorageProperties`

Details the properties of the underlying storage.

| Property | Type | Description |
|----------|------|-------------|
| `filePattern` | `array<string>` | Patterns to identify a set of files for this fileset. Examples of a valid `file_pattern`: * `gs:/... |
| `fileType` | `string` | File type in MIME format, for example, `text/plain`. |

### `GoogleCloudDatacatalogV1SystemTimestamps`

Timestamps associated with this resource in a particular system.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Creation timestamp of the resource within the given system. |
| `expireTime` | `string` | Output only. Expiration timestamp of the resource within the given system. Currently only applica... |
| `updateTime` | `string` | Timestamp of the last modification of the resource or its metadata within a given system. Note: D... |

### `GoogleCloudDatacatalogV1TableSpec`

Normal BigQuery table specification.

| Property | Type | Description |
|----------|------|-------------|
| `groupedEntry` | `string` | Output only. If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD` name patter... |

### `GoogleCloudDatacatalogV1Tag`

Tags contain custom metadata and are attached to Data Catalog resources. Tags conform with the specification of their tag template. See [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for information on the permissions needed to create or view tags.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Resources like entry can have schemas associated with them. This scope allows you to attach tags ... |
| `dataplexTransferStatus` | `string` | Output only. Denotes the transfer status of the Tag Template. |
| `fields` | `object` | Required. Maps the ID of a tag field to its value and additional information about that field. Ta... |
| `name` | `string` | Identifier. The resource name of the tag in URL format where tag ID is a system-generated identif... |
| `template` | `string` | Required. The resource name of the tag template this tag uses. Example: `projects/{PROJECT_ID}/lo... |
| `templateDisplayName` | `string` | Output only. The display name of the tag template. |

### `GoogleCloudDatacatalogV1TagField`

Contains the value and additional information on a field within a Tag.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | The value of a tag field with a boolean type. |
| `displayName` | `string` | Output only. The display name of this field. |
| `doubleValue` | `number` | The value of a tag field with a double type. |
| `enumValue` | `GoogleCloudDatacatalogV1TagFieldEnumValue` | The value of a tag field with an enum type. This value must be one of the allowed values listed i... |
| `order` | `integer` | Output only. The order of this field with respect to other fields in this tag. Can be set by Tag.... |
| `richtextValue` | `string` | The value of a tag field with a rich text type. The maximum length is 10 MiB as this value holds ... |
| `stringValue` | `string` | The value of a tag field with a string type. The maximum length is 2000 UTF-8 characters. |
| `timestampValue` | `string` | The value of a tag field with a timestamp type. |

### `GoogleCloudDatacatalogV1TagFieldEnumValue`

An enum value.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the enum value. |

### `GoogleCloudDatacatalogV1TagTemplate`

A tag template defines a tag that can have one or more typed fields. The template is used to create tags that are attached to Google Cloud resources. [Tag template roles] (https://cloud.google.com/iam/docs/roles-permissions/datacatalog) provide permissions to create, edit, and use the template. For example, see the [TagTemplate User] (https://cloud.google.com/data-catalog/docs/how-to/template-user) role that includes a permission to use the tag template to tag resources.

| Property | Type | Description |
|----------|------|-------------|
| `dataplexTransferStatus` | `string` | Optional. Transfer status of the TagTemplate |
| `displayName` | `string` | Display name for this template. Defaults to an empty string. The name must contain only Unicode l... |
| `fields` | `object` | Required. Map of tag template field IDs to the settings for the field. This map is an exhaustive ... |
| `isPubliclyReadable` | `boolean` | Indicates whether tags created with this template are public. Public tags do not require tag temp... |
| `name` | `string` | Identifier. The resource name of the tag template in URL format. Note: The tag template itself an... |

### `GoogleCloudDatacatalogV1TagTemplateField`

The template for an individual field within a tag template.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description for this field. Defaults to an empty string. |
| `displayName` | `string` | The display name for this field. Defaults to an empty string. The name must contain only Unicode ... |
| `isRequired` | `boolean` | If true, this field is required. Defaults to false. |
| `name` | `string` | Identifier. The resource name of the tag template field in URL format. Example: `projects/{PROJEC... |
| `order` | `integer` | The order of this field with respect to other fields in this tag template. For example, a higher ... |
| `type` | `GoogleCloudDatacatalogV1FieldType` | Required. The type of value this tag field can contain. |

### `GoogleCloudDatacatalogV1TaggedEntry`

Wrapper containing Entry and information about Tags that should and should not be attached to it.

| Property | Type | Description |
|----------|------|-------------|
| `absentTags` | `array<GoogleCloudDatacatalogV1Tag>` | Optional. Tags that should be deleted from the Data Catalog. Caller should populate template name... |
| `presentTags` | `array<GoogleCloudDatacatalogV1Tag>` | Optional. Tags that should be ingested into the Data Catalog. Caller should populate template nam... |
| `v1Entry` | `GoogleCloudDatacatalogV1Entry` | Non-encrypted Data Catalog v1 Entry. |

### `GoogleCloudDatacatalogV1Taxonomy`

A taxonomy is a collection of hierarchical policy tags that classify data along a common axis. For example, a "data sensitivity" taxonomy might contain the following policy tags: ``` + PII + Account number + Age + SSN + Zipcode + Financials + Revenue ``` A "data origin" taxonomy might contain the following policy tags: ``` + User data + Employee data + Partner data + Public data ```

| Property | Type | Description |
|----------|------|-------------|
| `activatedPolicyTypes` | `array<string>` | Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an... |
| `description` | `string` | Optional. Description of this taxonomy. If not set, defaults to empty. The description must conta... |
| `displayName` | `string` | Required. User-defined name of this taxonomy. The name can't start or end with spaces, must conta... |
| `name` | `string` | Identifier. Resource name of this taxonomy in URL format. Note: Policy tag manager generates uniq... |
| `policyTagCount` | `integer` | Output only. Number of policy tags in this taxonomy. |
| `service` | `GoogleCloudDatacatalogV1TaxonomyService` | Output only. Identity of the service which owns the Taxonomy. This field is only populated when t... |
| `taxonomyTimestamps` | `GoogleCloudDatacatalogV1SystemTimestamps` | Output only. Creation and modification timestamps of this taxonomy. |

### `GoogleCloudDatacatalogV1TaxonomyService`

The source system of the Taxonomy.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `string` | The service agent for the service. |
| `name` | `string` | The Google Cloud service name. |

### `GoogleCloudDatacatalogV1UnstarEntryRequest`

Request message for UnstarEntry.

### `GoogleCloudDatacatalogV1UnstarEntryResponse`

Response message for UnstarEntry. Empty for now

### `GoogleCloudDatacatalogV1UsageSignal`

The set of all usage signals that Data Catalog stores. Note: Usually, these signals are updated daily. In rare cases, an update may fail but will be performed again on the next day.

| Property | Type | Description |
|----------|------|-------------|
| `commonUsageWithinTimeRange` | `object` | Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H... |
| `favoriteCount` | `string` | Favorite count in the source system. |
| `updateTime` | `string` | The end timestamp of the duration of usage statistics. |
| `usageWithinTimeRange` | `object` | Output only. BigQuery usage statistics over each of the predefined time ranges. Supported time ra... |

### `GoogleCloudDatacatalogV1UsageStats`

Detailed statistics on the entry's usage. Usage statistics have the following limitations: - Only BigQuery tables have them. - They only include BigQuery query jobs. - They might be underestimated because wildcard table references are not yet counted. For more information, see [Querying multiple tables using a wildcard table] (https://cloud.google.com/bigquery/docs/querying-wildcard-tables)

| Property | Type | Description |
|----------|------|-------------|
| `totalCancellations` | `number` | The number of cancelled attempts to use the underlying entry. |
| `totalCompletions` | `number` | The number of successful uses of the underlying entry. |
| `totalExecutionTimeForCompletionsMillis` | `number` | Total time spent only on successful uses, in milliseconds. |
| `totalFailures` | `number` | The number of failed attempts to use the underlying entry. |

### `GoogleCloudDatacatalogV1VertexDatasetSpec`

Specification for vertex dataset resources.

| Property | Type | Description |
|----------|------|-------------|
| `dataItemCount` | `string` | The number of DataItems in this Dataset. Only apply for non-structured Dataset. |
| `dataType` | `string` | Type of the dataset. |

### `GoogleCloudDatacatalogV1VertexModelSourceInfo`

Detail description of the source information of a Vertex model.

| Property | Type | Description |
|----------|------|-------------|
| `copy` | `boolean` | If this Model is copy of another Model. If true then source_type pertains to the original. |
| `sourceType` | `string` | Type of the model source. |

### `GoogleCloudDatacatalogV1VertexModelSpec`

Specification for vertex model resources.

| Property | Type | Description |
|----------|------|-------------|
| `containerImageUri` | `string` | URI of the Docker image to be used as the custom container for serving predictions. |
| `versionAliases` | `array<string>` | User provided version aliases so that a model version can be referenced via alias |
| `versionDescription` | `string` | The description of this version. |
| `versionId` | `string` | The version ID of the model. |
| `vertexModelSourceInfo` | `GoogleCloudDatacatalogV1VertexModelSourceInfo` | Source of a Vertex model. |

### `GoogleCloudDatacatalogV1ViewSpec`

Table view specification.

| Property | Type | Description |
|----------|------|-------------|
| `viewQuery` | `string` | Output only. The query that defines the table view. |

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

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

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

