# Access Context Manager API - API Reference

**Version**: `v1` | **Methods**: 40 | **Schemas**: 61

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `accesscontextmanager.accessPolicies.delete` | DELETE | `v1/{+name}` | Deletes an access policy based on the resource name. The long-running operation has a successful ... |
| `accesscontextmanager.accessPolicies.get` | GET | `v1/{+name}` | Returns an access policy based on the name. |
| `accesscontextmanager.accessPolicies.patch` | PATCH | `v1/{+name}` | Updates an access policy. The long-running operation from this RPC has a successful status after ... |
| `accesscontextmanager.accessPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the IAM permissions that the caller has on the specified Access Context Manager resource.... |
| `accesscontextmanager.accessPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM policy for the specified Access Context Manager access policy. This method replaces ... |
| `accesscontextmanager.accessPolicies.create` | POST | `v1/accessPolicies` | Creates an access policy. This method fails if the organization already has an access policy. The... |
| `accesscontextmanager.accessPolicies.list` | GET | `v1/accessPolicies` | Lists all access policies in an organization. |
| `accesscontextmanager.accessPolicies.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the IAM policy for the specified Access Context Manager access policy. |
| `accesscontextmanager.accessPolicies.authorizedOrgsDescs.list` | GET | `v1/{+parent}/authorizedOrgsDescs` | Lists all authorized orgs descs for an access policy. |
| `accesscontextmanager.accessPolicies.authorizedOrgsDescs.get` | GET | `v1/{+name}` | Gets an authorized orgs desc based on the resource name. |
| `accesscontextmanager.accessPolicies.authorizedOrgsDescs.create` | POST | `v1/{+parent}/authorizedOrgsDescs` | Creates an authorized orgs desc. The long-running operation from this RPC has a successful status... |
| `accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch` | PATCH | `v1/{+name}` | Updates an authorized orgs desc. The long-running operation from this RPC has a successful status... |
| `accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete` | DELETE | `v1/{+name}` | Deletes an authorized orgs desc based on the resource name. The long-running operation from this ... |
| `accesscontextmanager.accessPolicies.servicePerimeters.patch` | PATCH | `v1/{+name}` | Updates a service perimeter. The long-running operation from this RPC has a successful status aft... |
| `accesscontextmanager.accessPolicies.servicePerimeters.list` | GET | `v1/{+parent}/servicePerimeters` | Lists all service perimeters for an access policy. |
| `accesscontextmanager.accessPolicies.servicePerimeters.delete` | DELETE | `v1/{+name}` | Deletes a service perimeter based on the resource name. The long-running operation from this RPC ... |
| `accesscontextmanager.accessPolicies.servicePerimeters.commit` | POST | `v1/{+parent}/servicePerimeters:commit` | Commits the dry-run specification for all the service perimeters in an access policy. A commit op... |
| `accesscontextmanager.accessPolicies.servicePerimeters.get` | GET | `v1/{+name}` | Gets a service perimeter based on the resource name. |
| `accesscontextmanager.accessPolicies.servicePerimeters.replaceAll` | POST | `v1/{+parent}/servicePerimeters:replaceAll` | Replace all existing service perimeters in an access policy with the service perimeters provided.... |
| `accesscontextmanager.accessPolicies.servicePerimeters.create` | POST | `v1/{+parent}/servicePerimeters` | Creates a service perimeter. The long-running operation from this RPC has a successful status aft... |
| `accesscontextmanager.accessPolicies.servicePerimeters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the IAM permissions that the caller has on the specified Access Context Manager resource.... |
| `accesscontextmanager.accessPolicies.accessLevels.create` | POST | `v1/{+parent}/accessLevels` | Creates an access level. The long-running operation from this RPC has a successful status after t... |
| `accesscontextmanager.accessPolicies.accessLevels.list` | GET | `v1/{+parent}/accessLevels` | Lists all access levels for an access policy. |
| `accesscontextmanager.accessPolicies.accessLevels.get` | GET | `v1/{+name}` | Gets an access level based on the resource name. |
| `accesscontextmanager.accessPolicies.accessLevels.patch` | PATCH | `v1/{+name}` | Updates an access level. The long-running operation from this RPC has a successful status after t... |
| `accesscontextmanager.accessPolicies.accessLevels.delete` | DELETE | `v1/{+name}` | Deletes an access level based on the resource name. The long-running operation from this RPC has ... |
| `accesscontextmanager.accessPolicies.accessLevels.replaceAll` | POST | `v1/{+parent}/accessLevels:replaceAll` | Replaces all existing access levels in an access policy with the access levels provided. This is ... |
| `accesscontextmanager.accessPolicies.accessLevels.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the IAM permissions that the caller has on the specified Access Context Manager resource.... |
| `accesscontextmanager.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `accesscontextmanager.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `accesscontextmanager.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `accesscontextmanager.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `accesscontextmanager.services.get` | GET | `v1/services/{name}` | Returns a VPC-SC supported service based on the service name. |
| `accesscontextmanager.services.list` | GET | `v1/services` | Lists all VPC-SC supported services. |
| `accesscontextmanager.permissions.list` | GET | `v1/permissions` | Lists all supported permissions in VPCSC Granular Controls. |
| `accesscontextmanager.organizations.gcpUserAccessBindings.patch` | PATCH | `v1/{+name}` | Updates a GcpUserAccessBinding. Completion of this long-running operation does not necessarily si... |
| `accesscontextmanager.organizations.gcpUserAccessBindings.delete` | DELETE | `v1/{+name}` | Deletes a GcpUserAccessBinding. Completion of this long-running operation does not necessarily si... |
| `accesscontextmanager.organizations.gcpUserAccessBindings.create` | POST | `v1/{+parent}/gcpUserAccessBindings` | Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a... |
| `accesscontextmanager.organizations.gcpUserAccessBindings.get` | GET | `v1/{+name}` | Gets the GcpUserAccessBinding with the given name. |
| `accesscontextmanager.organizations.gcpUserAccessBindings.list` | GET | `v1/{+parent}/gcpUserAccessBindings` | Lists all GcpUserAccessBindings for a Google Cloud organization. |

### `accesscontextmanager.accessPolicies.delete`

**DELETE** `v1/{+name}`

Deletes an access policy based on the resource name. The long-running operation has a successful status after the access policy is removed from long-lasting storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the access policy to delete. Format `accessPolicies/{policy_id}` |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.get`

**GET** `v1/{+name}`

Returns an access policy based on the name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the access policy to get. Format `accessPolicies/{policy_id}` |

**Response**: `AccessPolicy`

```typescript
const res = await accesscontextmanager.accessPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.patch`

**PATCH** `v1/{+name}`

Updates an access policy. The long-running operation from this RPC has a successful status after the changes to the access policy propagate to long-lasting storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}` |
| `updateMask` | `string` | query | No | Required. Mask to control which fields get updated. Must be non-empty. |

**Request body**: `AccessPolicy`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await accesscontextmanager.accessPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM policy for the specified Access Context Manager access policy. This method replaces the existing IAM policy on the access policy. The IAM policy controls the set of users who can perform specific operations on the Access Context Manager access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await accesscontextmanager.accessPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.create`

**POST** `v1/accessPolicies`

Creates an access policy. This method fails if the organization already has an access policy. The long-running operation has a successful status after the access policy propagates to long-lasting storage. Syntactic and basic semantic errors are returned in `metadata` as a BadRequest proto.

**Request body**: `AccessPolicy`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.list`

**GET** `v1/accessPolicies`

Lists all access policies in an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Number of AccessPolicy instances to include in the list. Default 100. |
| `pageToken` | `string` | query | No | Next page token for the next batch of AccessPolicy instances. Defaults to the first page of results. |
| `parent` | `string` | query | No | Required. Resource name for the container to list AccessPolicy instances from. Format: `organizations/{org_id}` |

**Response**: `ListAccessPoliciesResponse`

```typescript
const res = await accesscontextmanager.accessPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the IAM policy for the specified Access Context Manager access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await accesscontextmanager.accessPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.authorizedOrgsDescs.list`

**GET** `v1/{+parent}/authorizedOrgsDescs`

Lists all authorized orgs descs for an access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy to list Authorized Orgs Desc from. Format: `accessPolicies/{policy_id}` |
| `pageSize` | `integer` | query | No | Number of Authorized Orgs Descs to include in the list. Default 100. |
| `pageToken` | `string` | query | No | Next page token for the next batch of Authorized Orgs Desc instances. Defaults to the first page of results. |

**Response**: `ListAuthorizedOrgsDescsResponse`

```typescript
const res = await accesscontextmanager.authorizedOrgsDescs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.authorizedOrgsDescs.get`

**GET** `v1/{+name}`

Gets an authorized orgs desc based on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/{policy_id}/authorizedOrgsDescs/{author... |

**Response**: `AuthorizedOrgsDesc`

```typescript
const res = await accesscontextmanager.authorizedOrgsDescs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.authorizedOrgsDescs.create`

**POST** `v1/{+parent}/authorizedOrgsDescs`

Creates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. The name of this `AuthorizedOrgsDesc` will be assigned during creation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy which owns this Authorized Orgs Desc. Format: `accessPolicies/{policy_id}` |

**Request body**: `AuthorizedOrgsDesc`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.authorizedOrgsDescs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch`

**PATCH** `v1/{+name}`

Updates an authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. Only the organization list in `AuthorizedOrgsDesc` can be updated. The name, authorization_type, asset_type and authorization_direction cannot be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{... |
| `updateMask` | `string` | query | No | Required. Mask to control which fields get updated. Must be non-empty. |

**Request body**: `AuthorizedOrgsDesc`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.authorizedOrgsDescs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete`

**DELETE** `v1/{+name}`

Deletes an authorized orgs desc based on the resource name. The long-running operation from this RPC has a successful status after the authorized orgs desc is removed from long-lasting storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/{policy_id}/authorizedOrgsDesc/{authori... |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.authorizedOrgsDescs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.patch`

**PATCH** `v1/{+name}`

Updates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{serv... |
| `updateMask` | `string` | query | No | Required. Mask to control which fields get updated. Must be non-empty. |

**Request body**: `ServicePerimeter`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.servicePerimeters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.list`

**GET** `v1/{+parent}/servicePerimeters`

Lists all service perimeters for an access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy to list Service Perimeters from. Format: `accessPolicies/{policy_id}` |
| `pageSize` | `integer` | query | No | Number of Service Perimeters to include in the list. Default 100. |
| `pageToken` | `string` | query | No | Next page token for the next batch of Service Perimeter instances. Defaults to the first page of results. |

**Response**: `ListServicePerimetersResponse`

```typescript
const res = await accesscontextmanager.servicePerimeters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.delete`

**DELETE** `v1/{+name}`

Deletes a service perimeter based on the resource name. The long-running operation from this RPC has a successful status after the service perimeter is removed from long-lasting storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Service Perimeter. Format: `accessPolicies/{policy_id}/servicePerimeters/{service_per... |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.servicePerimeters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.commit`

**POST** `v1/{+parent}/servicePerimeters:commit`

Commits the dry-run specification for all the service perimeters in an access policy. A commit operation on a service perimeter involves copying its `spec` field to the `status` field of the service perimeter. Only service perimeters with `use_explicit_dry_run_spec` field set to true are affected by a commit operation. The long-running operation from this RPC has a successful status after the dry-run specifications for all the service perimeters have been committed. If a commit fails, it causes the long-running operation to return an error response and the entire commit operation is cancelled. When successful, the Operation.response field contains CommitServicePerimetersResponse. The `dry_run` and the `spec` fields are cleared after a successful commit operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the parent Access Policy which owns all Service Perimeters in scope for the commit operat... |

**Request body**: `CommitServicePerimetersRequest`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.servicePerimeters.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.get`

**GET** `v1/{+name}`

Gets a service perimeter based on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Service Perimeter. Format: `accessPolicies/{policy_id}/servicePerimeters/{service_per... |

**Response**: `ServicePerimeter`

```typescript
const res = await accesscontextmanager.servicePerimeters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.replaceAll`

**POST** `v1/{+parent}/servicePerimeters:replaceAll`

Replace all existing service perimeters in an access policy with the service perimeters provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. Replacements containing errors result in an error response for the first error encountered. Upon an error, replacement are cancelled and existing service perimeters are not affected. The Operation.response field contains ReplaceServicePerimetersResponse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy which owns these Service Perimeters. Format: `accessPolicies/{policy_id}` |

**Request body**: `ReplaceServicePerimetersRequest`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.servicePerimeters.replaceAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.create`

**POST** `v1/{+parent}/servicePerimeters`

Creates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy which owns this Service Perimeter. Format: `accessPolicies/{policy_id}` |

**Request body**: `ServicePerimeter`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.servicePerimeters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.servicePerimeters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await accesscontextmanager.servicePerimeters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.create`

**POST** `v1/{+parent}/accessLevels`

Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy which owns this Access Level. Format: `accessPolicies/{policy_id}` |

**Request body**: `AccessLevel`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessLevels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.list`

**GET** `v1/{+parent}/accessLevels`

Lists all access levels for an access policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy to list Access Levels from. Format: `accessPolicies/{policy_id}` |
| `accessLevelFormat` | `string` | query | No | Whether to return `BasicLevels` in the Cloud Common Expression language, as `CustomLevels`, rather than as `BasicLeve... |
| `pageSize` | `integer` | query | No | Number of Access Levels to include in the list. Default 100. |
| `pageToken` | `string` | query | No | Next page token for the next batch of Access Level instances. Defaults to the first page of results. |

**Response**: `ListAccessLevelsResponse`

```typescript
const res = await accesscontextmanager.accessLevels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.get`

**GET** `v1/{+name}`

Gets an access level based on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Access Level. Format: `accessPolicies/{policy_id}/accessLevels/{access_level_id}` |
| `accessLevelFormat` | `string` | query | No | Whether to return `BasicLevels` in the Cloud Common Expression Language rather than as `BasicLevels`. Defaults to AS_... |

**Response**: `AccessLevel`

```typescript
const res = await accesscontextmanager.accessLevels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.patch`

**PATCH** `v1/{+name}`

Updates an access level. The long-running operation from this RPC has a successful status after the changes to the access level propagate to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`... |
| `updateMask` | `string` | query | No | Required. Mask to control which fields get updated. Must be non-empty. |

**Request body**: `AccessLevel`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessLevels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.delete`

**DELETE** `v1/{+name}`

Deletes an access level based on the resource name. The long-running operation from this RPC has a successful status after the access level has been removed from long-lasting storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the Access Level. Format: `accessPolicies/{policy_id}/accessLevels/{access_level_id}` |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessLevels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.replaceAll`

**POST** `v1/{+parent}/accessLevels:replaceAll`

Replaces all existing access levels in an access policy with the access levels provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. If the replacement contains errors, an error response is returned for the first error encountered. Upon error, the replacement is cancelled, and existing access levels are not affected. The Operation.response field contains ReplaceAccessLevelsResponse. Removing access levels contained in existing service perimeters result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name for the access policy which owns these Access Levels. Format: `accessPolicies/{policy_id}` |

**Request body**: `ReplaceAccessLevelsRequest`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.accessLevels.replaceAll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.accessPolicies.accessLevels.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await accesscontextmanager.accessLevels.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.operations.list`

**GET** `v1/{+name}`

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
const res = await accesscontextmanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await accesscontextmanager.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await accesscontextmanager.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.services.get`

**GET** `v1/services/{name}`

Returns a VPC-SC supported service based on the service name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the service to get information about. The names must be in the same format as used in defining a service ... |

**Response**: `SupportedService`

```typescript
const res = await accesscontextmanager.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.services.list`

**GET** `v1/services`

Lists all VPC-SC supported services.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | This flag specifies the maximum number of services to return per page. Default is 100. |
| `pageToken` | `string` | query | No | Token to start on a later page. Default is the first page. |

**Response**: `ListSupportedServicesResponse`

```typescript
const res = await accesscontextmanager.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.permissions.list`

**GET** `v1/permissions`

Lists all supported permissions in VPCSC Granular Controls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. This flag specifies the maximum number of services to return per page. Default is 100. |
| `pageToken` | `string` | query | No | Optional. Token to start on a later page. Default is the first page. |

**Response**: `ListSupportedPermissionsResponse`

```typescript
const res = await accesscontextmanager.permissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.organizations.gcpUserAccessBindings.patch`

**PATCH** `v1/{+name}`

Updates a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the changed binding is deployed onto all affected users, which may take more time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserv... |
| `append` | `boolean` | query | No | Optional. This field controls whether or not certain repeated settings in the update request overwrite or append to e... |
| `updateMask` | `string` | query | No | Required. Only the fields specified in this mask are updated. Because name and group_key cannot be changed, update_ma... |

**Request body**: `GcpUserAccessBinding`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.gcpUserAccessBindings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.organizations.gcpUserAccessBindings.delete`

**DELETE** `v1/{+name}`

Deletes a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the binding deletion is deployed onto all affected users, which may take more time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N" |

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.gcpUserAccessBindings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.organizations.gcpUserAccessBindings.create`

**POST** `v1/{+parent}/gcpUserAccessBindings`

Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a resource already exists with the same group_key. Completion of this long-running operation does not necessarily signify that the new binding is deployed onto all affected users, which may take more time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example: "organizations/256" |

**Request body**: `GcpUserAccessBinding`

**Response**: `Operation`

```typescript
const res = await accesscontextmanager.gcpUserAccessBindings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.organizations.gcpUserAccessBindings.get`

**GET** `v1/{+name}`

Gets the GcpUserAccessBinding with the given name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N" |

**Response**: `GcpUserAccessBinding`

```typescript
const res = await accesscontextmanager.gcpUserAccessBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `accesscontextmanager.organizations.gcpUserAccessBindings.list`

**GET** `v1/{+parent}/gcpUserAccessBindings`

Lists all GcpUserAccessBindings for a Google Cloud organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Example: "organizations/256" |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. The server may return fewer items. If left blank, the server may return ... |
| `pageToken` | `string` | query | No | Optional. If left blank, returns the first page. To enumerate all items, use the next_page_token from your previous l... |

**Response**: `ListGcpUserAccessBindingsResponse`

```typescript
const res = await accesscontextmanager.gcpUserAccessBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessContextManagerOperationMetadata`

Metadata of Access Context Manager's Long Running Operations.

### `AccessLevel`

An `AccessLevel` is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.

| Property | Type | Description |
|----------|------|-------------|
| `basic` | `BasicLevel` | A `BasicLevel` composed of `Conditions`. |
| `custom` | `CustomLevel` | A `CustomLevel` written in the Common Expression Language. |
| `description` | `string` | Description of the `AccessLevel` and its use. Does not affect behavior. |
| `name` | `string` | Identifier. Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLe... |
| `title` | `string` | Human readable title. Must be unique within the Policy. |

### `AccessPolicy`

`AccessPolicy` is a container for `AccessLevels` (which define the necessary attributes to use Google Cloud services) and `ServicePerimeters` (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Output only. An opaque identifier for the current version of the `AccessPolicy`. This will always... |
| `name` | `string` | Output only. Identifier. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_pol... |
| `parent` | `string` | Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable ... |
| `scopes` | `array<string>` | The scopes of the AccessPolicy. Scopes define which resources a policy can restrict and where its... |
| `title` | `string` | Required. Human readable title. Does not affect behavior. |

### `AccessScope`

Access scope represents the client scope, etc. to which the settings will be applied to.

| Property | Type | Description |
|----------|------|-------------|
| `clientScope` | `ClientScope` | Optional. Client scope for this access scope. |

### `AccessSettings`

Access settings represent the set of conditions that must be met for access to be granted. At least one of the fields must be set.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<string>` | Optional. Access level that a user must have to be granted access. Only one access level is suppo... |
| `sessionSettings` | `SessionSettings` | Optional. Session settings applied to user access on a given AccessScope. |

### `ApiOperation`

Identification for an API Operation.

| Property | Type | Description |
|----------|------|-------------|
| `methodSelectors` | `array<MethodSelector>` | API methods or permissions to allow. Method or permission must belong to the service specified by... |
| `serviceName` | `string` | The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow.... |

### `Application`

An application that accesses Google Cloud APIs.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | The OAuth client ID of the application. |
| `name` | `string` | The name of the application. Example: "Cloud Console" |

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

### `AuthorizedOrgsDesc`

`AuthorizedOrgsDesc` contains data for an organization's authorization policy.

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYP... |
| `authorizationDirection` | `string` | The direction of the authorization relationship between this organization and the organizations l... |
| `authorizationType` | `string` | A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`. |
| `name` | `string` | Identifier. Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/a... |
| `orgs` | `array<string>` | The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organ... |

### `BasicLevel`

`BasicLevel` is an `AccessLevel` using a set of recommended features.

| Property | Type | Description |
|----------|------|-------------|
| `combiningFunction` | `string` | How the `conditions` list should be combined to determine if a request is granted this `AccessLev... |
| `conditions` | `array<Condition>` | Required. A list of requirements for the `AccessLevel` to be granted. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ClientScope`

Client scope represents the application, etc. subject to this binding's restrictions.

| Property | Type | Description |
|----------|------|-------------|
| `restrictedClientApplication` | `Application` | Optional. The application that is subject to this binding's scope. |

### `CommitServicePerimetersRequest`

A request to commit dry-run specs in all Service Perimeters belonging to an Access Policy.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag for the version of the Access Policy that this commit operation is to be perfo... |

### `CommitServicePerimetersResponse`

A response to CommitServicePerimetersRequest. This will be put inside of Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `servicePerimeters` | `array<ServicePerimeter>` | List of all the Service Perimeter instances in the Access Policy. |

### `Condition`

A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.

| Property | Type | Description |
|----------|------|-------------|
| `devicePolicy` | `DevicePolicy` | Device specific restrictions, all restrictions must hold for the Condition to be true. If not spe... |
| `ipSubnetworks` | `array<string>` | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address bloc... |
| `members` | `array<string>` | The request must be made by one of the provided user or service accounts. Groups are not supporte... |
| `negate` | `boolean` | Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields.... |
| `regions` | `array<string>` | The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 a... |
| `requiredAccessLevels` | `array<string>` | A list of other access levels defined in the same `Policy`, referenced by resource name. Referenc... |
| `vpcNetworkSources` | `array<VpcNetworkSource>` | The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify ... |

### `CustomLevel`

`CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec

| Property | Type | Description |
|----------|------|-------------|
| `expr` | `Expr` | Required. A Cloud CEL expression evaluating to a boolean. |

### `DevicePolicy`

`DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.

| Property | Type | Description |
|----------|------|-------------|
| `allowedDeviceManagementLevels` | `array<string>` | Allowed device management levels, an empty list allows all management levels. |
| `allowedEncryptionStatuses` | `array<string>` | Allowed encryptions statuses, an empty list allows all statuses. |
| `osConstraints` | `array<OsConstraint>` | Allowed OS versions, an empty list allows all types and all versions. |
| `requireAdminApproval` | `boolean` | Whether the device needs to be approved by the customer admin. |
| `requireCorpOwned` | `boolean` | Whether the device needs to be corp owned. |
| `requireScreenlock` | `boolean` | Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`. |

### `EgressFrom`

Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.

| Property | Type | Description |
|----------|------|-------------|
| `identities` | `array<string>` | A list of identities that are allowed access through [EgressPolicy]. Identities can be an individ... |
| `identityType` | `string` | Specifies the type of identities that are allowed access to outside the perimeter. If left unspec... |
| `sourceRestriction` | `string` | Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-... |
| `sources` | `array<EgressSource>` | Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_r... |

### `EgressPolicy`

Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.

| Property | Type | Description |
|----------|------|-------------|
| `egressFrom` | `EgressFrom` | Defines conditions on the source of a request causing this EgressPolicy to apply. |
| `egressTo` | `EgressTo` | Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy... |
| `title` | `string` | Optional. Human-readable title for the egress rule. The title must be unique within the perimeter... |

### `EgressSource`

The source that EgressPolicy authorizes access from inside the ServicePerimeter to somewhere outside the ServicePerimeter boundaries.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `string` | An AccessLevel resource name that allows protected resources inside the ServicePerimeters to acce... |
| `resource` | `string` | A Google Cloud resource from the service perimeter that you want to allow to access data outside ... |

### `EgressTo`

Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.

| Property | Type | Description |
|----------|------|-------------|
| `externalResources` | `array<string>` | A list of external resources that are allowed to be accessed. Only AWS and Azure resources are su... |
| `operations` | `array<ApiOperation>` | A list of ApiOperations allowed to be performed by the sources specified in the corresponding Egr... |
| `resources` | `array<string>` | A list of resources, currently only projects in the form `projects/`, that are allowed to be acce... |
| `roles` | `array<string>` | IAM roles that represent the set of operations that the sources specified in the corresponding Eg... |

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

### `GcpUserAccessBinding`

Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<string>` | Optional. Access level that a user must have to be granted access. Only one access level is suppo... |
| `dryRunAccessLevels` | `array<string>` | Optional. Dry run access level that will be evaluated but will not be enforced. The access denial... |
| `groupKey` | `string` | Optional. Immutable. Google Group id whose users are subject to this binding's restrictions. See ... |
| `name` | `string` | Immutable. Assigned by the server during creation. The last segment has an arbitrary length and h... |
| `restrictedClientApplications` | `array<Application>` | Optional. A list of applications that are subject to this binding's restrictions. If the list is ... |
| `scopedAccessSettings` | `array<ScopedAccessSettings>` | Optional. A list of scoped access settings that set this binding's restrictions on a subset of ap... |
| `sessionSettings` | `SessionSettings` | Optional. The Google Cloud session length (GCSL) policy for the group key. |

### `GcpUserAccessBindingOperationMetadata`

Metadata of Google Cloud Access Binding Long Running Operations.

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

### `IngressFrom`

Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.

| Property | Type | Description |
|----------|------|-------------|
| `identities` | `array<string>` | A list of identities that are allowed access through [IngressPolicy]. Identities can be an indivi... |
| `identityType` | `string` | Specifies the type of identities that are allowed access from outside the perimeter. If left unsp... |
| `sources` | `array<IngressSource>` | Sources that this IngressPolicy authorizes access from. |

### `IngressPolicy`

Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.

| Property | Type | Description |
|----------|------|-------------|
| `ingressFrom` | `IngressFrom` | Defines the conditions on the source of a request causing this IngressPolicy to apply. |
| `ingressTo` | `IngressTo` | Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy ... |
| `title` | `string` | Optional. Human-readable title for the ingress rule. The title must be unique within the perimete... |

### `IngressSource`

The source that IngressPolicy authorizes access from.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevel` | `string` | An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed fro... |
| `resource` | `string` | A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources w... |

### `IngressTo`

Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.

| Property | Type | Description |
|----------|------|-------------|
| `operations` | `array<ApiOperation>` | A list of ApiOperations allowed to be performed by the sources specified in corresponding Ingress... |
| `resources` | `array<string>` | A list of resources, currently only projects in the form `projects/`, protected by this ServicePe... |
| `roles` | `array<string>` | IAM roles that represent the set of operations that the sources specified in the corresponding In... |

### `ListAccessLevelsResponse`

A response to `ListAccessLevelsRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<AccessLevel>` | List of the Access Level instances. |
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |

### `ListAccessPoliciesResponse`

A response to `ListAccessPoliciesRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `accessPolicies` | `array<AccessPolicy>` | List of the AccessPolicy instances. |
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |

### `ListAuthorizedOrgsDescsResponse`

A response to `ListAuthorizedOrgsDescsRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedOrgsDescs` | `array<AuthorizedOrgsDesc>` | List of all the Authorized Orgs Desc instances. |
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |

### `ListGcpUserAccessBindingsResponse`

Response of ListGcpUserAccessBindings.

| Property | Type | Description |
|----------|------|-------------|
| `gcpUserAccessBindings` | `array<GcpUserAccessBinding>` | GcpUserAccessBinding |
| `nextPageToken` | `string` | Token to get the next page of items. If blank, there are no more items. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListServicePerimetersResponse`

A response to `ListServicePerimetersRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |
| `servicePerimeters` | `array<ServicePerimeter>` | List of the Service Perimeter instances. |

### `ListSupportedPermissionsResponse`

A response to `ListSupportedPermissionsRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |
| `supportedPermissions` | `array<string>` | List of VPC-SC supported permissions. |

### `ListSupportedServicesResponse`

A response to `ListSupportedServicesRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The pagination token to retrieve the next page of results. If the value is empty, no further resu... |
| `supportedServices` | `array<SupportedService>` | List of services supported by VPC Service Controls instances. |

### `MethodSelector`

An allowed method or permission of a service specified in ApiOperation.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | A valid method name for the corresponding `service_name` in ApiOperation. If `*` is used as the v... |
| `permission` | `string` | A valid Cloud IAM permission for the corresponding `service_name` in ApiOperation. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OsConstraint`

A restriction on the OS type and version of devices making requests.

| Property | Type | Description |
|----------|------|-------------|
| `minimumVersion` | `string` | The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Form... |
| `osType` | `string` | Required. The allowed OS type. |
| `requireVerifiedChromeOs` | `boolean` | Only allows requests from devices with a verified Chrome OS. Verifications includes requirements ... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ReplaceAccessLevelsRequest`

A request to replace all existing Access Levels in an Access Policy with the Access Levels provided. This is done atomically.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<AccessLevel>` | Required. The desired Access Levels that should replace all existing Access Levels in the Access ... |
| `etag` | `string` | Optional. The etag for the version of the Access Policy that this replace operation is to be perf... |

### `ReplaceAccessLevelsResponse`

A response to ReplaceAccessLevelsRequest. This will be put inside of Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<AccessLevel>` | List of the Access Level instances. |

### `ReplaceServicePerimetersRequest`

A request to replace all existing Service Perimeters in an Access Policy with the Service Perimeters provided. This is done atomically.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag for the version of the Access Policy that this replace operation is to be perf... |
| `servicePerimeters` | `array<ServicePerimeter>` | Required. The desired Service Perimeters that should replace all existing Service Perimeters in t... |

### `ReplaceServicePerimetersResponse`

A response to ReplaceServicePerimetersRequest. This will be put inside of Operation.response field.

| Property | Type | Description |
|----------|------|-------------|
| `servicePerimeters` | `array<ServicePerimeter>` | List of the Service Perimeter instances. |

### `ScopedAccessSettings`

A relationship between access settings and its scope.

| Property | Type | Description |
|----------|------|-------------|
| `activeSettings` | `AccessSettings` | Optional. Access settings for this scoped access settings. This field may be empty if dry_run_set... |
| `dryRunSettings` | `AccessSettings` | Optional. Dry-run access settings for this scoped access settings. This field may be empty if act... |
| `scope` | `AccessScope` | Optional. Application, etc. to which the access settings will be applied to. Implicitly, this is ... |

### `ServicePerimeter`

`ServicePerimeter` describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the `ServicePerimeter`. If a request with a source within this `ServicePerimeter` has a target outside of the `ServicePerimeter`, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project or VPC network can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the `ServicePerimeter` and its use. Does not affect behavior. |
| `etag` | `string` | Optional. An opaque identifier for the current version of the `ServicePerimeter`. This identifier... |
| `name` | `string` | Identifier. Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/ser... |
| `perimeterType` | `string` | Perimeter type indicator. A single project or VPC network is allowed to be a member of single reg... |
| `spec` | `ServicePerimeterConfig` | Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and te... |
| `status` | `ServicePerimeterConfig` | Current ServicePerimeter configuration. Specifies sets of resources, restricted services and acce... |
| `title` | `string` | Human readable title. Must be unique within the Policy. |
| `useExplicitDryRunSpec` | `boolean` | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Peri... |

### `ServicePerimeterConfig`

`ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.

| Property | Type | Description |
|----------|------|-------------|
| `accessLevels` | `array<string>` | A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be a... |
| `egressPolicies` | `array<EgressPolicy>` | List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, e... |
| `ingressPolicies` | `array<IngressPolicy>` | List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies,... |
| `resources` | `array<string>` | A list of Google Cloud resources that are inside of the service perimeter. Currently only project... |
| `restrictedServices` | `array<string>` | Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `st... |
| `vpcAccessibleServices` | `VpcAccessibleServices` | Configuration for APIs allowed within Perimeter. |

### `SessionSettings`

Stores settings related to Google Cloud Session Length including session duration, the type of challenge (i.e. method) they should face when their session expires, and other related settings.

| Property | Type | Description |
|----------|------|-------------|
| `maxInactivity` | `string` | Optional. How long a user is allowed to take between actions before a new access token must be is... |
| `sessionLength` | `string` | Optional. The session length. Setting this field to zero is equal to disabling session. Also can ... |
| `sessionLengthEnabled` | `boolean` | Optional. This field enables or disables Google Cloud session length. When false, all fields set ... |
| `sessionReauthMethod` | `string` | Optional. Session method when user's Google Cloud session is up. |
| `useOidcMaxAge` | `boolean` | Optional. Only useful for OIDC apps. When false, the OIDC max_age param, if passed in the authent... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SupportedService`

`SupportedService` specifies the VPC Service Controls and its properties.

| Property | Type | Description |
|----------|------|-------------|
| `availableOnRestrictedVip` | `boolean` | True if the service is available on the restricted VIP. Services on the restricted VIP typically ... |
| `knownLimitations` | `boolean` | True if the service is supported with some limitations. Check [documentation](https://cloud.googl... |
| `name` | `string` | The service name or address of the supported service, such as `service.googleapis.com`. |
| `serviceSupportStage` | `string` | The support stage of the service. |
| `supportStage` | `string` | The support stage of the service. |
| `supportedMethods` | `array<MethodSelector>` | The list of the supported methods. This field exists only in response to GetSupportedService |
| `title` | `string` | The name of the supported product, such as 'Cloud Product API'. |

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

### `VpcAccessibleServices`

Specifies how APIs are allowed to communicate within the Service Perimeter.

| Property | Type | Description |
|----------|------|-------------|
| `allowedServices` | `array<string>` | The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' i... |
| `enableRestriction` | `boolean` | Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allo... |

### `VpcNetworkSource`

The originating network source in Google Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `vpcSubnetwork` | `VpcSubNetwork` | Sub-segment ranges of a VPC network. |

### `VpcSubNetwork`

Sub-segment ranges inside of a VPC Network.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. Network name. If the network is not part of the organization, the `compute.network.get`... |
| `vpcIpSubnetworks` | `array<string>` | CIDR block IP subnetwork specification. The IP address must be an IPv4 address and can be a publi... |

