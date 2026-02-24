# BigQuery Data Policy API - API Reference

**Version**: `v2` | **Methods**: 10 | **Schemas**: 17

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigquerydatapolicy.projects.locations.dataPolicies.patch` | PATCH | `v2/{+name}` | Updates the metadata for an existing data policy. The target data policy can be specified by the ... |
| `bigquerydatapolicy.projects.locations.dataPolicies.list` | GET | `v2/{+parent}/dataPolicies` | List all of the data policies in the specified parent project. |
| `bigquerydatapolicy.projects.locations.dataPolicies.addGrantees` | POST | `v2/{+dataPolicy}:addGrantees` | Adds new grantees to a data policy. The new grantees will be added to the existing grantees. If t... |
| `bigquerydatapolicy.projects.locations.dataPolicies.get` | GET | `v2/{+name}` | Gets the data policy specified by its resource name. |
| `bigquerydatapolicy.projects.locations.dataPolicies.removeGrantees` | POST | `v2/{+dataPolicy}:removeGrantees` | Removes grantees from a data policy. The grantees will be removed from the existing grantees. If ... |
| `bigquerydatapolicy.projects.locations.dataPolicies.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the IAM policy for the specified data policy. |
| `bigquerydatapolicy.projects.locations.dataPolicies.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the IAM policy for the specified data policy. |
| `bigquerydatapolicy.projects.locations.dataPolicies.create` | POST | `v2/{+parent}/dataPolicies` | Creates a new data policy under a project with the given `data_policy_id` (used as the display na... |
| `bigquerydatapolicy.projects.locations.dataPolicies.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns the caller's permission on the specified data policy resource. |
| `bigquerydatapolicy.projects.locations.dataPolicies.delete` | DELETE | `v2/{+name}` | Deletes the data policy specified by its resource name. |

### `bigquerydatapolicy.projects.locations.dataPolicies.patch`

**PATCH** `v2/{+name}`

Updates the metadata for an existing data policy. The target data policy can be specified by the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/da... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the data policy is not found, a new data policy will be created. In this situation, upd... |
| `updateMask` | `string` | query | No | Optional. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `DataPolicy`

**Response**: `DataPolicy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.list`

**GET** `v2/{+parent}/dataPolicies`

List all of the data policies in the specified parent project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project for which to list data policies. Format is `projects/{project_number}/location... |
| `filter` | `string` | query | No | Optional. Filters the data policies by policy tags that they are associated with. Currently filter only supports "pol... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of data policies to return. Must be a value between 1 and 1000. If not set, defaults to 50. |
| `pageToken` | `string` | query | No | Optional. The `nextPageToken` value returned from a previous list request, if any. If not set, defaults to an empty s... |

**Response**: `ListDataPoliciesResponse`

```typescript
const res = await bigquerydatapolicy.dataPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.addGrantees`

**POST** `v2/{+dataPolicy}:addGrantees`

Adds new grantees to a data policy. The new grantees will be added to the existing grantees. If the request contains a duplicate grantee, the grantee will be ignored. If the request contains a grantee that already exists, the grantee will be ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataPolicy` | `string` | path | Yes | Required. Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/data... |

**Request body**: `AddGranteesRequest`

**Response**: `DataPolicy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.addGrantees({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.get`

**GET** `v2/{+name}`

Gets the data policy specified by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the requested data policy. Format is `projects/{project_number}/locations/{location_id}/da... |

**Response**: `DataPolicy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.removeGrantees`

**POST** `v2/{+dataPolicy}:removeGrantees`

Removes grantees from a data policy. The grantees will be removed from the existing grantees. If the request contains a grantee that does not exist, the grantee will be ignored.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataPolicy` | `string` | path | Yes | Required. Resource name of this data policy, in the format of `projects/{project_number}/locations/{location_id}/data... |

**Request body**: `RemoveGranteesRequest`

**Response**: `DataPolicy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.removeGrantees({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the IAM policy for the specified data policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the IAM policy for the specified data policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.create`

**POST** `v2/{+parent}/dataPolicies`

Creates a new data policy under a project with the given `data_policy_id` (used as the display name), and data policy type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource name of the project that the data policy will belong to. The format is `projects/{project_number}/... |

**Request body**: `CreateDataPolicyRequest`

**Response**: `DataPolicy`

```typescript
const res = await bigquerydatapolicy.dataPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns the caller's permission on the specified data policy resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigquerydatapolicy.dataPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatapolicy.projects.locations.dataPolicies.delete`

**DELETE** `v2/{+name}`

Deletes the data policy specified by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the data policy to delete. Format is `projects/{project_number}/locations/{location_id}/da... |

**Response**: `Empty`

```typescript
const res = await bigquerydatapolicy.dataPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddGranteesRequest`

Request message for the AddGrantees method.

| Property | Type | Description |
|----------|------|-------------|
| `grantees` | `array<string>` | Required. IAM principal that should be granted Fine Grained Access to the underlying data goveren... |

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

### `CreateDataPolicyRequest`

Request message for the CreateDataPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `dataPolicy` | `DataPolicy` | Required. The data policy to create. The `name` field does not need to be provided for the data p... |
| `dataPolicyId` | `string` | Required. User-assigned (human readable) ID of the data policy that needs to be unique within a p... |

### `DataMaskingPolicy`

The policy used to specify data masking rule.

| Property | Type | Description |
|----------|------|-------------|
| `predefinedExpression` | `string` | Optional. A predefined masking expression. |
| `routine` | `string` | Optional. The name of the BigQuery routine that contains the custom masking routine, in the forma... |

### `DataPolicy`

Represents the label-policy binding.

| Property | Type | Description |
|----------|------|-------------|
| `dataMaskingPolicy` | `DataMaskingPolicy` | Optional. The data masking policy that specifies the data masking rule to use. It must be set if ... |
| `dataPolicyId` | `string` | Output only. User-assigned (human readable) ID of the data policy that needs to be unique within ... |
| `dataPolicyType` | `string` | Required. Type of data policy. |
| `etag` | `string` | The etag for this Data Policy. This field is used for UpdateDataPolicy calls. If Data Policy exis... |
| `grantees` | `array<string>` | Optional. The list of IAM principals that have Fine Grained Access to the underlying data goveren... |
| `name` | `string` | Identifier. Resource name of this data policy, in the format of `projects/{project_number}/locati... |
| `policyTag` | `string` | Output only. Policy tag resource name, in the format of `projects/{project_number}/locations/{loc... |
| `version` | `string` | Output only. The version of the Data Policy resource. |

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

### `ListDataPoliciesResponse`

Response message for the ListDataPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `dataPolicies` | `array<DataPolicy>` | Data policies that belong to the requested project. |
| `nextPageToken` | `string` | Token used to retrieve the next page of results, or empty if there are no more results. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `RemoveGranteesRequest`

Request message for the RemoveGrantees method.

| Property | Type | Description |
|----------|------|-------------|
| `grantees` | `array<string>` | Required. IAM principal that should be revoked from Fine Grained Access to the underlying data go... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

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

