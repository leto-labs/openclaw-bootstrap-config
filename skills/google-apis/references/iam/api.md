# Identity and Access Management (IAM) API - API Reference

**Version**: `v2` | **Methods**: 6 | **Schemas**: 20

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `iam.policies.get` | GET | `v2/{+name}` | Gets a policy. |
| `iam.policies.listPolicies` | GET | `v2/{+parent}` | Retrieves the policies of the specified kind that are attached to a resource. The response lists ... |
| `iam.policies.update` | PUT | `v2/{+name}` | Updates the specified policy. You can update only the rules and the display name for the policy. ... |
| `iam.policies.createPolicy` | POST | `v2/{+parent}` | Creates a policy. |
| `iam.policies.delete` | DELETE | `v2/{+name}` | Deletes a policy. This action is permanent. |
| `iam.policies.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `iam.policies.get`

**GET** `v2/{+name}`

Gets a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy to retrieve. Format: `policies/{attachment_point}/denypolicies/{policy_id}`... |

**Response**: `GoogleIamV2Policy`

```typescript
const res = await iam.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iam.policies.listPolicies`

**GET** `v2/{+parent}`

Retrieves the policies of the specified kind that are attached to a resource. The response lists only policy metadata. In particular, policy rules are omitted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource that the policy is attached to, along with the kind of policy to list. Format: `policies/{atta... |
| `pageSize` | `integer` | query | No | The maximum number of policies to return. IAM ignores this value and uses the value 1000. |
| `pageToken` | `string` | query | No | A page token received in a ListPoliciesResponse. Provide this token to retrieve the next page. |

**Response**: `GoogleIamV2ListPoliciesResponse`

```typescript
const res = await iam.policies.listPolicies({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iam.policies.update`

**PUT** `v2/{+name}`

Updates the specified policy. You can update only the rules and the display name for the policy. To update a policy, you should use a read-modify-write loop: 1. Use GetPolicy to read the current version of the policy. 2. Modify the policy as needed. 3. Use `UpdatePolicy` to write the updated policy. This pattern helps prevent conflicts between concurrent updates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the `Policy`, which must be unique. Format: `policies/{attachment_point}/denypolicies... |

**Request body**: `GoogleIamV2Policy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await iam.policies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iam.policies.createPolicy`

**POST** `v2/{+parent}`

Creates a policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource that the policy is attached to, along with the kind of policy to create. Format: `policies/{at... |
| `policyId` | `string` | query | No | The ID to use for this policy, which will become the final component of the policy's resource name. The ID must conta... |

**Request body**: `GoogleIamV2Policy`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await iam.policies.createPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iam.policies.delete`

**DELETE** `v2/{+name}`

Deletes a policy. This action is permanent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy to delete. Format: `policies/{attachment_point}/denypolicies/{policy_id}` U... |
| `etag` | `string` | query | No | Optional. The expected `etag` of the policy to delete. If the value does not match the value that is stored in IAM, t... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await iam.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iam.policies.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await iam.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CloudControl2SharedOperationsReconciliationOperationMetadata`

Operation metadata returned by the CLH during resource state reconciliation.

| Property | Type | Description |
|----------|------|-------------|
| `deleteResource` | `boolean` | DEPRECATED. Use exclusive_action instead. |
| `exclusiveAction` | `string` | Excluisive action returned by the CLH. |

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

### `GoogleIamAdminV1AuditData`

Audit log information specific to Cloud IAM admin APIs. This message is serialized as an `Any` type in the `ServiceData` message of an `AuditLog` message.

| Property | Type | Description |
|----------|------|-------------|
| `permissionDelta` | `GoogleIamAdminV1AuditDataPermissionDelta` | The permission_delta when when creating or updating a Role. |

### `GoogleIamAdminV1AuditDataPermissionDelta`

A PermissionDelta message to record the added_permissions and removed_permissions inside a role.

| Property | Type | Description |
|----------|------|-------------|
| `addedPermissions` | `array<string>` | Added permissions. |
| `removedPermissions` | `array<string>` | Removed permissions. |

### `GoogleIamV1BindingDelta`

One delta entry for Binding. Each individual change (only one member in each entry) to a binding will be a separate entry.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action that was performed on a Binding. Required |
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. |
| `member` | `string` | A single identity requesting access for a Google Cloud resource. Follows the same format of Bindi... |
| `role` | `string` | Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`, or `roles/owner`... |

### `GoogleIamV1LoggingAuditData`

Audit log information specific to Cloud IAM. This message is serialized as an `Any` type in the `ServiceData` message of an `AuditLog` message.

| Property | Type | Description |
|----------|------|-------------|
| `policyDelta` | `GoogleIamV1PolicyDelta` | Policy delta between the original policy and the newly set policy. |

### `GoogleIamV1PolicyDelta`

The difference delta between two policies.

| Property | Type | Description |
|----------|------|-------------|
| `bindingDeltas` | `array<GoogleIamV1BindingDelta>` | The delta for Bindings between two policies. |

### `GoogleIamV1betaWorkloadIdentityPoolOperationMetadata`

Metadata for long-running WorkloadIdentityPool operations.

### `GoogleIamV2DenyRule`

A deny rule in an IAM deny policy.

| Property | Type | Description |
|----------|------|-------------|
| `denialCondition` | `GoogleTypeExpr` | The condition that determines whether this deny rule applies to a request. If the condition expre... |
| `deniedPermissions` | `array<string>` | The permissions that are explicitly denied by this rule. Each permission uses the format `{servic... |
| `deniedPrincipals` | `array<string>` | The identities that are prevented from using one or more permissions on Google Cloud resources. T... |
| `exceptionPermissions` | `array<string>` | Specifies the permissions that this rule excludes from the set of denied permissions given by `de... |
| `exceptionPrincipals` | `array<string>` | The identities that are excluded from the deny rule, even if they are listed in the `denied_princ... |

### `GoogleIamV2ListPoliciesResponse`

Response message for `ListPolicies`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that you can use in a ListPoliciesRequest to retrieve the next page. If this field i... |
| `policies` | `array<GoogleIamV2Policy>` | Metadata for the policies that are attached to the resource. |

### `GoogleIamV2Policy`

Data for an IAM policy.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | A key-value map to store arbitrary metadata for the `Policy`. Keys can be up to 63 characters. Va... |
| `createTime` | `string` | Output only. The time when the `Policy` was created. |
| `deleteTime` | `string` | Output only. The time when the `Policy` was deleted. Empty if the policy is not deleted. |
| `displayName` | `string` | A user-specified description of the `Policy`. This value can be up to 63 characters. |
| `etag` | `string` | An opaque tag that identifies the current version of the `Policy`. IAM uses this value to help ma... |
| `kind` | `string` | Output only. The kind of the `Policy`. Always contains the value `DenyPolicy`. |
| `name` | `string` | Immutable. The resource name of the `Policy`, which must be unique. Format: `policies/{attachment... |
| `rules` | `array<GoogleIamV2PolicyRule>` | A list of rules that specify the behavior of the `Policy`. All of the rules should be of the `kin... |
| `uid` | `string` | Immutable. The globally unique ID of the `Policy`. Assigned automatically when the `Policy` is cr... |
| `updateTime` | `string` | Output only. The time when the `Policy` was last updated. |

### `GoogleIamV2PolicyOperationMetadata`

Metadata for long-running `Policy` operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when the `google.longrunning.Operation` was created. |

### `GoogleIamV2PolicyRule`

A single rule in a `Policy`.

| Property | Type | Description |
|----------|------|-------------|
| `denyRule` | `GoogleIamV2DenyRule` | A rule for a deny policy. |
| `description` | `string` | A user-specified description of the rule. This value can be up to 256 characters. |

### `GoogleIamV3OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleIamV3alphaOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleIamV3betaOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleIamV3mainOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

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

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

