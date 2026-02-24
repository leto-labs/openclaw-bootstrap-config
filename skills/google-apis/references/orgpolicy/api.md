# Organization Policy API - API Reference

**Version**: `v2` | **Methods**: 26 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `orgpolicy.projects.constraints.list` | GET | `v2/{+parent}/constraints` | Lists constraints that could be applied on the specified resource. |
| `orgpolicy.projects.policies.list` | GET | `v2/{+parent}/policies` | Retrieves all of the policies that exist on a particular resource. |
| `orgpolicy.projects.policies.getEffectivePolicy` | GET | `v2/{+name}:getEffectivePolicy` | Gets the effective policy on a resource. This is the result of merging policies in the resource h... |
| `orgpolicy.projects.policies.create` | POST | `v2/{+parent}/policies` | Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.projects.policies.get` | GET | `v2/{+name}` | Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `e... |
| `orgpolicy.projects.policies.delete` | DELETE | `v2/{+name}` | Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.projects.policies.patch` | PATCH | `v2/{+name}` | Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.folders.constraints.list` | GET | `v2/{+parent}/constraints` | Lists constraints that could be applied on the specified resource. |
| `orgpolicy.folders.policies.patch` | PATCH | `v2/{+name}` | Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.folders.policies.delete` | DELETE | `v2/{+name}` | Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.folders.policies.getEffectivePolicy` | GET | `v2/{+name}:getEffectivePolicy` | Gets the effective policy on a resource. This is the result of merging policies in the resource h... |
| `orgpolicy.folders.policies.get` | GET | `v2/{+name}` | Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `e... |
| `orgpolicy.folders.policies.list` | GET | `v2/{+parent}/policies` | Retrieves all of the policies that exist on a particular resource. |
| `orgpolicy.folders.policies.create` | POST | `v2/{+parent}/policies` | Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.organizations.policies.get` | GET | `v2/{+name}` | Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `e... |
| `orgpolicy.organizations.policies.delete` | DELETE | `v2/{+name}` | Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.organizations.policies.list` | GET | `v2/{+parent}/policies` | Retrieves all of the policies that exist on a particular resource. |
| `orgpolicy.organizations.policies.getEffectivePolicy` | GET | `v2/{+name}:getEffectivePolicy` | Gets the effective policy on a resource. This is the result of merging policies in the resource h... |
| `orgpolicy.organizations.policies.patch` | PATCH | `v2/{+name}` | Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.organizations.policies.create` | POST | `v2/{+parent}/policies` | Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constrain... |
| `orgpolicy.organizations.constraints.list` | GET | `v2/{+parent}/constraints` | Lists constraints that could be applied on the specified resource. |
| `orgpolicy.organizations.customConstraints.patch` | PATCH | `v2/{+name}` | Updates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if th... |
| `orgpolicy.organizations.customConstraints.get` | GET | `v2/{+name}` | Gets a custom or managed constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUN... |
| `orgpolicy.organizations.customConstraints.create` | POST | `v2/{+parent}/customConstraints` | Creates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if th... |
| `orgpolicy.organizations.customConstraints.list` | GET | `v2/{+parent}/customConstraints` | Retrieves all of the custom constraints that exist on a particular organization resource. |
| `orgpolicy.organizations.customConstraints.delete` | DELETE | `v2/{+name}` | Deletes a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if th... |

### `orgpolicy.projects.constraints.list`

**GET** `v2/{+parent}/constraints`

Lists constraints that could be applied on the specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListConstraintsResponse`

```typescript
const res = await orgpolicy.constraints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.list`

**GET** `v2/{+parent}/policies`

Retrieves all of the policies that exist on a particular resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The target Google Cloud resource that parents the set of constraints and policies that will be returned fro... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListPoliciesResponse`

```typescript
const res = await orgpolicy.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.getEffectivePolicy`

**GET** `v2/{+name}:getEffectivePolicy`

Gets the effective policy on a resource. This is the result of merging policies in the resource hierarchy and evaluating conditions. The returned policy will not have an `etag` or `condition` set because it is an evaluated policy across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The effective policy to compute. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.getEffectivePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.create`

**POST** `v2/{+parent}/policies`

Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Google Cloud resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that will parent the new policy. Must be in one of the following forms: * `projec... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.get`

**GET** `v2/{+name}`

Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the policy. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.delete`

**DELETE** `v2/{+name}`

Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or organization policy does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the policy to delete. See the policy entry for naming rules. |
| `etag` | `string` | query | No | Optional. The current etag of policy. If an etag is provided and does not match the current etag of the policy, delet... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await orgpolicy.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.projects.policies.patch`

**PATCH** `v2/{+name}`

Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name o... |
| `updateMask` | `string` | query | No | Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.constraints.list`

**GET** `v2/{+parent}/constraints`

Lists constraints that could be applied on the specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListConstraintsResponse`

```typescript
const res = await orgpolicy.constraints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.patch`

**PATCH** `v2/{+name}`

Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name o... |
| `updateMask` | `string` | query | No | Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.delete`

**DELETE** `v2/{+name}`

Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or organization policy does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the policy to delete. See the policy entry for naming rules. |
| `etag` | `string` | query | No | Optional. The current etag of policy. If an etag is provided and does not match the current etag of the policy, delet... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await orgpolicy.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.getEffectivePolicy`

**GET** `v2/{+name}:getEffectivePolicy`

Gets the effective policy on a resource. This is the result of merging policies in the resource hierarchy and evaluating conditions. The returned policy will not have an `etag` or `condition` set because it is an evaluated policy across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The effective policy to compute. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.getEffectivePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.get`

**GET** `v2/{+name}`

Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the policy. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.list`

**GET** `v2/{+parent}/policies`

Retrieves all of the policies that exist on a particular resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The target Google Cloud resource that parents the set of constraints and policies that will be returned fro... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListPoliciesResponse`

```typescript
const res = await orgpolicy.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.folders.policies.create`

**POST** `v2/{+parent}/policies`

Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Google Cloud resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that will parent the new policy. Must be in one of the following forms: * `projec... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.get`

**GET** `v2/{+name}`

Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the policy. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.delete`

**DELETE** `v2/{+name}`

Deletes a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or organization policy does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the policy to delete. See the policy entry for naming rules. |
| `etag` | `string` | query | No | Optional. The current etag of policy. If an etag is provided and does not match the current etag of the policy, delet... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await orgpolicy.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.list`

**GET** `v2/{+parent}/policies`

Retrieves all of the policies that exist on a particular resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The target Google Cloud resource that parents the set of constraints and policies that will be returned fro... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListPoliciesResponse`

```typescript
const res = await orgpolicy.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.getEffectivePolicy`

**GET** `v2/{+name}:getEffectivePolicy`

Gets the effective policy on a resource. This is the result of merging policies in the resource hierarchy and evaluating conditions. The returned policy will not have an `etag` or `condition` set because it is an evaluated policy across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The effective policy to compute. See Policy for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.getEffectivePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.patch`

**PATCH** `v2/{+name}`

Updates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name o... |
| `updateMask` | `string` | query | No | Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.policies.create`

**POST** `v2/{+parent}/policies`

Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Google Cloud resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that will parent the new policy. Must be in one of the following forms: * `projec... |

**Request body**: `GoogleCloudOrgpolicyV2Policy`

**Response**: `GoogleCloudOrgpolicyV2Policy`

```typescript
const res = await orgpolicy.policies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.constraints.list`

**GET** `v2/{+parent}/constraints`

Lists constraints that could be applied on the specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Google Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListConstraintsResponse`

```typescript
const res = await orgpolicy.constraints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.customConstraints.patch`

**PATCH** `v2/{+name}`

Updates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Note: the supplied policy will perform a full overwrite of all fields.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizati... |

**Request body**: `GoogleCloudOrgpolicyV2CustomConstraint`

**Response**: `GoogleCloudOrgpolicyV2CustomConstraint`

```typescript
const res = await orgpolicy.customConstraints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.customConstraints.get`

**GET** `v2/{+name}`

Gets a custom or managed constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the custom or managed constraint does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the custom or managed constraint. See the custom constraint entry for naming requirements. |

**Response**: `GoogleCloudOrgpolicyV2CustomConstraint`

```typescript
const res = await orgpolicy.customConstraints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.customConstraints.create`

**POST** `v2/{+parent}/customConstraints`

Creates a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the organization does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the constraint already exists on the given organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Must be in the following form: * `organizations/{organization_id}` |

**Request body**: `GoogleCloudOrgpolicyV2CustomConstraint`

**Response**: `GoogleCloudOrgpolicyV2CustomConstraint`

```typescript
const res = await orgpolicy.customConstraints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.customConstraints.list`

**GET** `v2/{+parent}/customConstraints`

Retrieves all of the custom constraints that exist on a particular organization resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The target Google Cloud resource that parents the set of custom constraints that will be returned from this... |
| `pageSize` | `integer` | query | No | Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point star... |
| `pageToken` | `string` | query | No | Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any p... |

**Response**: `GoogleCloudOrgpolicyV2ListCustomConstraintsResponse`

```typescript
const res = await orgpolicy.customConstraints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `orgpolicy.organizations.customConstraints.delete`

**DELETE** `v2/{+name}`

Deletes a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the custom constraint to delete. See the custom constraint entry for naming rules. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await orgpolicy.customConstraints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudOrgpolicyV2AlternatePolicySpec`

Similar to PolicySpec but with an extra 'launch' field for launch reference. The PolicySpec here is specific for dry-run.

| Property | Type | Description |
|----------|------|-------------|
| `launch` | `string` | Reference to the launch that will be used while audit logging and to control the launch. Should b... |
| `spec` | `GoogleCloudOrgpolicyV2PolicySpec` | Specify constraint for configurations of Google Cloud resources. |

### `GoogleCloudOrgpolicyV2Constraint`

A constraint describes a way to restrict resource's configuration. For example, you could enforce a constraint that controls which Google Cloud services can be activated across an organization, or whether a Compute Engine instance can have serial port connections established. Constraints can be configured by the organization policy administrator to fit the needs of the organization by setting a policy that includes constraints at different locations in the organization's resource hierarchy. Policies are inherited down the resource hierarchy from higher levels, but can also be overridden. For details about the inheritance rules, see `Policy`. Constraints have a default behavior determined by the `constraint_default` field, which is the enforcement behavior that is used in the absence of a policy being defined or inherited for the resource in question.

| Property | Type | Description |
|----------|------|-------------|
| `booleanConstraint` | `GoogleCloudOrgpolicyV2ConstraintBooleanConstraint` | Defines this constraint as being a boolean constraint. |
| `constraintDefault` | `string` | The evaluation behavior of this constraint in the absence of a policy. |
| `description` | `string` | Detailed description of what this constraint controls as well as how and where it is enforced. Mu... |
| `displayName` | `string` | The human readable name. Mutable. |
| `equivalentConstraint` | `string` | Managed constraint and canned constraint sometimes can have equivalents. This field is used to st... |
| `listConstraint` | `GoogleCloudOrgpolicyV2ConstraintListConstraint` | Defines this constraint as being a list constraint. |
| `name` | `string` | Immutable. The resource name of the constraint. Must be in one of the following forms: * `project... |
| `supportsDryRun` | `boolean` | Shows if dry run is supported for this constraint or not. |
| `supportsSimulation` | `boolean` | Shows if simulation is supported for this constraint or not. |

### `GoogleCloudOrgpolicyV2ConstraintBooleanConstraint`

A constraint type is enforced or not enforced, which is configured in the `PolicyRule`. If `customConstraintDefinition` is defined, this constraint is a managed constraint.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraintDefinition` | `GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinition` | Custom constraint definition. Defines this as a managed constraint. |

### `GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinition`

Custom constraint definition. Defines this as a managed constraint.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Allow or deny type. |
| `condition` | `string` | Org policy condition/expression. For example: `resource.instanceName.matches("(production|test)_(... |
| `methodTypes` | `array<string>` | All the operations being applied for this constraint. |
| `parameters` | `object` | Stores the structure of `Parameters` used by the constraint condition. The key of `map` represent... |
| `resourceTypes` | `array<string>` | The resource instance type on which this policy applies. Format will be of the form : `/` Example... |

### `GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinitionParameter`

Defines a parameter structure.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `any` | Sets the value of the parameter in an assignment if no value is given. |
| `item` | `string` | Determines the parameter's value structure. For example, `LIST` can be specified by defining `typ... |
| `metadata` | `GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinitionParameterMetadata` | Defines subproperties primarily used by the UI to display user-friendly information. |
| `type` | `string` | Type of the parameter. |
| `validValuesExpr` | `string` | Provides a CEL expression to specify the acceptable parameter values during assignment. For examp... |

### `GoogleCloudOrgpolicyV2ConstraintCustomConstraintDefinitionParameterMetadata`

Defines Metadata structure.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Detailed description of what this `parameter` is and use of it. Mutable. |

### `GoogleCloudOrgpolicyV2ConstraintListConstraint`

A constraint type that allows or disallows a list of string values, which are configured in the `PolicyRule`.

| Property | Type | Description |
|----------|------|-------------|
| `supportsIn` | `boolean` | Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Poli... |
| `supportsUnder` | `boolean` | Indicates whether subtrees of the Resource Manager resource hierarchy can be used in `Policy.allo... |

### `GoogleCloudOrgpolicyV2CustomConstraint`

A custom constraint defined by customers which can *only* be applied to the given resource types and organization. By creating a custom constraint, customers can apply policies of this custom constraint. *Creating a custom constraint itself does NOT apply any policy enforcement*.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Allow or deny type. |
| `condition` | `string` | A Common Expression Language (CEL) condition which is used in the evaluation of the constraint. F... |
| `description` | `string` | Detailed information about this custom policy constraint. The max length of the description is 20... |
| `displayName` | `string` | One line display name for the UI. The max length of the display_name is 200 characters. |
| `methodTypes` | `array<string>` | All the operations being applied for this constraint. |
| `name` | `string` | Immutable. Name of the constraint. This is unique within the organization. Format of the name sho... |
| `resourceTypes` | `array<string>` | Immutable. The resource instance type on which this policy applies. Format will be of the form : ... |
| `updateTime` | `string` | Output only. The last time this custom constraint was updated. This represents the last time that... |

### `GoogleCloudOrgpolicyV2ListConstraintsResponse`

The response returned from the ListConstraints method.

| Property | Type | Description |
|----------|------|-------------|
| `constraints` | `array<GoogleCloudOrgpolicyV2Constraint>` | The collection of constraints that are available on the targeted resource. |
| `nextPageToken` | `string` | Page token used to retrieve the next page. This is currently not used. |

### `GoogleCloudOrgpolicyV2ListCustomConstraintsResponse`

The response returned from the ListCustomConstraints method. It will be empty if no custom or managed constraints are set on the organization resource.

| Property | Type | Description |
|----------|------|-------------|
| `customConstraints` | `array<GoogleCloudOrgpolicyV2CustomConstraint>` | All custom and managed constraints that exist on the organization resource. It will be empty if n... |
| `nextPageToken` | `string` | Page token used to retrieve the next page. This is currently not used, but the server may at any ... |

### `GoogleCloudOrgpolicyV2ListPoliciesResponse`

The response returned from the ListPolicies method. It will be empty if no policies are set on the resource.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token used to retrieve the next page. This is currently not used, but the server may at any ... |
| `policies` | `array<GoogleCloudOrgpolicyV2Policy>` | All policies that exist on the resource. It will be empty if no policies are set. |

### `GoogleCloudOrgpolicyV2Policy`

Defines an organization policy which is used to specify constraints for configurations of Google Cloud resources.

| Property | Type | Description |
|----------|------|-------------|
| `alternate` | `GoogleCloudOrgpolicyV2AlternatePolicySpec` | Deprecated. |
| `dryRunSpec` | `GoogleCloudOrgpolicyV2PolicySpec` | Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the ... |
| `etag` | `string` | Optional. An opaque tag indicating the current state of the policy, used for concurrency control.... |
| `name` | `string` | Immutable. The resource name of the policy. Must be one of the following forms, where `constraint... |
| `spec` | `GoogleCloudOrgpolicyV2PolicySpec` | Basic information about the organization policy. |

### `GoogleCloudOrgpolicyV2PolicySpec`

Defines a Google Cloud policy specification which is used to specify constraints for configurations of Google Cloud resources.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | An opaque tag indicating the current version of the policySpec, used for concurrency control. Thi... |
| `inheritFromParent` | `boolean` | Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rul... |
| `reset` | `boolean` | Ignores policies set above this resource and restores the `constraint_default` enforcement behavi... |
| `rules` | `array<GoogleCloudOrgpolicyV2PolicySpecPolicyRule>` | In policies for boolean constraints, the following requirements apply: - There must be one and on... |
| `updateTime` | `string` | Output only. The time stamp this was previously updated. This represents the last time a call to ... |

### `GoogleCloudOrgpolicyV2PolicySpecPolicyRule`

A rule used to express this policy.

| Property | Type | Description |
|----------|------|-------------|
| `allowAll` | `boolean` | Setting this to true means that all values are allowed. This field can be set only in policies fo... |
| `condition` | `GoogleTypeExpr` | A condition that determines whether this rule is used to evaluate the policy. When set, the googl... |
| `denyAll` | `boolean` | Setting this to true means that all values are denied. This field can be set only in policies for... |
| `enforce` | `boolean` | If `true`, then the policy is enforced. If `false`, then any configuration is acceptable. This fi... |
| `parameters` | `object` | Optional. Required for managed constraints if parameters are defined. Passes parameter values whe... |
| `values` | `GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues` | List of values to be used for this policy rule. This field can be set only in policies for list c... |

### `GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues`

A message that holds specific allowed and denied values. This message can define specific values and subtrees of the Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a ":". Values prefixed with "is:" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - `projects/` (for example, `projects/tokyo-rain-123`) - `folders/` (for example, `folders/1234`) - `organizations/` (for example, `organizations/1234`) The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | List of values allowed at this resource. |
| `deniedValues` | `array<string>` | List of values denied at this resource. |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

