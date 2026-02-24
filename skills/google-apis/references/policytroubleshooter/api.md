# Policy Troubleshooter API - API Reference

**Version**: `v3` | **Methods**: 1 | **Schemas**: 29

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `policytroubleshooter.iam.troubleshoot` | POST | `v3/iam:troubleshoot` | Checks whether a principal has a specific permission for a specific resource, and explains why th... |

### `policytroubleshooter.iam.troubleshoot`

**POST** `v3/iam:troubleshoot`

Checks whether a principal has a specific permission for a specific resource, and explains why the principal does or doesn't have that permission.

**Request body**: `GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest`

**Response**: `GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse`

```typescript
const res = await policytroubleshooter.iam.troubleshoot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudPolicytroubleshooterIamV3AccessTuple`

Information about the principal, resource, and permission to check.

| Property | Type | Description |
|----------|------|-------------|
| `conditionContext` | `GoogleCloudPolicytroubleshooterIamV3ConditionContext` | Optional. Additional context for the request, such as the request time or IP address. This contex... |
| `fullResourceName` | `string` | Required. The full resource name that identifies the resource. For example, `//compute.googleapis... |
| `permission` | `string` | Required. The IAM permission to check for, either in the `v1` permission format or the `v2` permi... |
| `permissionFqdn` | `string` | Output only. The permission that Policy Troubleshooter checked for, in the `v2` format. |
| `principal` | `string` | Required. The email address of the principal whose access you want to check. For example, `alice@... |

### `GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation`

Details about how a role binding in an allow policy affects a principal's ability to use a permission.

| Property | Type | Description |
|----------|------|-------------|
| `allowAccessState` | `string` | Required. Indicates whether _this role binding_ gives the specified permission to the specified p... |
| `combinedMembership` | `GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership` | The combined result of all memberships. Indicates if the principal is included in any role bindin... |
| `condition` | `GoogleTypeExpr` | A condition expression that specifies when the role binding grants access. To learn about IAM Con... |
| `conditionExplanation` | `GoogleCloudPolicytroubleshooterIamV3ConditionExplanation` | Condition evaluation state for this role binding. |
| `memberships` | `object` | Indicates whether each role binding includes the principal specified in the request, either direc... |
| `relevance` | `string` | The relevance of this role binding to the overall determination for the entire policy. |
| `role` | `string` | The role that this role binding grants. For example, `roles/compute.admin`. For a complete list o... |
| `rolePermission` | `string` | Indicates whether the role granted by this role binding contains the specified permission. |
| `rolePermissionRelevance` | `string` | The relevance of the permission's existence, or nonexistence, in the role to the overall determin... |

### `GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanationAnnotatedAllowMembership`

Details about whether the role binding includes the principal.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Indicates whether the role binding includes the principal. |
| `relevance` | `string` | The relevance of the principal's status to the overall determination for the role binding. |

### `GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation`

Details about how the relevant IAM allow policies affect the final access state.

| Property | Type | Description |
|----------|------|-------------|
| `allowAccessState` | `string` | Indicates whether the principal has the specified permission for the specified resource, based on... |
| `explainedPolicies` | `array<GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy>` | List of IAM allow policies that were evaluated to check the principal's permissions, with annotat... |
| `relevance` | `string` | The relevance of the allow policy type to the overall access state. |

### `GoogleCloudPolicytroubleshooterIamV3ConditionContext`

Additional context for troubleshooting conditional role bindings and deny rules.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer` | The destination of a network activity, such as accepting a TCP connection. In a multi-hop network... |
| `effectiveTags` | `array<GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag>` | Output only. The effective tags on the resource. The effective tags are fetched during troublesho... |
| `request` | `GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest` | Represents a network request, such as an HTTP request. |
| `resource` | `GoogleCloudPolicytroubleshooterIamV3ConditionContextResource` | Represents a target resource that is involved with a network activity. If multiple resources are ... |

### `GoogleCloudPolicytroubleshooterIamV3ConditionContextEffectiveTag`

A tag that applies to a resource during policy evaluation. Tags can be either directly bound to a resource or inherited from its ancestor. `EffectiveTag` contains the `name` and `namespaced_name` of the tag value and tag key, with additional fields of `inherited` to indicate the inheritance status of the effective tag.

| Property | Type | Description |
|----------|------|-------------|
| `inherited` | `boolean` | Output only. Indicates the inheritance status of a tag value attached to the given resource. If t... |
| `namespacedTagKey` | `string` | Output only. The namespaced name of the TagKey. Can be in the form `{organization_id}/{tag_key_sh... |
| `namespacedTagValue` | `string` | Output only. The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_... |
| `tagKey` | `string` | Output only. The name of the TagKey, in the format `tagKeys/{id}`, such as `tagKeys/123`. |
| `tagKeyParentName` | `string` | The parent name of the tag key. Must be in the format `organizations/{organization_id}` or `proje... |
| `tagValue` | `string` | Output only. Resource name for TagValue in the format `tagValues/456`. |

### `GoogleCloudPolicytroubleshooterIamV3ConditionContextPeer`

This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in `principal` and `labels` as appropriate.

| Property | Type | Description |
|----------|------|-------------|
| `ip` | `string` | The IPv4 or IPv6 address of the peer. |
| `port` | `string` | The network port of the peer. |

### `GoogleCloudPolicytroubleshooterIamV3ConditionContextRequest`

This message defines attributes for an HTTP request. If the actual request is not an HTTP request, the runtime system should try to map the actual request to an equivalent HTTP request.

| Property | Type | Description |
|----------|------|-------------|
| `receiveTime` | `string` | Optional. The timestamp when the destination service receives the first byte of the request. |

### `GoogleCloudPolicytroubleshooterIamV3ConditionContextResource`

Core attributes for a resource. A resource is an addressable (named) entity provided by the destination service. For example, a Compute Engine instance.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The stable identifier (name) of a resource on the `service`. A resource can be logically identifi... |
| `service` | `string` | The name of the service that this resource belongs to, such as `compute.googleapis.com`. The serv... |
| `type` | `string` | The type of the resource, in the format `{service}/{kind}`. For a full list of resource type valu... |

### `GoogleCloudPolicytroubleshooterIamV3ConditionExplanation`

Explanation for how a condition affects a principal's access

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleRpcStatus>` | Any errors that prevented complete evaluation of the condition expression. |
| `evaluationStates` | `array<GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState>` | The value of each statement of the condition expression. The value can be `true`, `false`, or `nu... |
| `value` | `any` | Value of the condition. |

### `GoogleCloudPolicytroubleshooterIamV3ConditionExplanationEvaluationState`

Evaluated state of a condition expression.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `integer` | End position of an expression in the condition, by character, end included, for example: the end ... |
| `errors` | `array<GoogleRpcStatus>` | Any errors that prevented complete evaluation of the condition expression. |
| `start` | `integer` | Start position of an expression in the condition, by character. |
| `value` | `any` | Value of this expression. |

### `GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation`

Details about how the relevant IAM deny policies affect the final access state.

| Property | Type | Description |
|----------|------|-------------|
| `denyAccessState` | `string` | Indicates whether the principal is denied the specified permission for the specified resource, ba... |
| `explainedResources` | `array<GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource>` | List of resources with IAM deny policies that were evaluated to check the principal's denied perm... |
| `permissionDeniable` | `boolean` | Indicates whether the permission to troubleshoot is supported in deny policies. |
| `relevance` | `string` | The relevance of the deny policy result to the overall access state. |

### `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation`

Details about how a deny rule in a deny policy affects a principal's ability to use a permission.

| Property | Type | Description |
|----------|------|-------------|
| `combinedDeniedPermission` | `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching` | Indicates whether the permission in the request is listed as a denied permission in the deny rule. |
| `combinedDeniedPrincipal` | `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching` | Indicates whether the principal is listed as a denied principal in the deny rule, either directly... |
| `combinedExceptionPermission` | `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching` | Indicates whether the permission in the request is listed as an exception permission in the deny ... |
| `combinedExceptionPrincipal` | `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching` | Indicates whether the principal is listed as an exception principal in the deny rule, either dire... |
| `condition` | `GoogleTypeExpr` | A condition expression that specifies when the deny rule denies the principal access. To learn ab... |
| `conditionExplanation` | `GoogleCloudPolicytroubleshooterIamV3ConditionExplanation` | Condition evaluation state for this role binding. |
| `deniedPermissions` | `object` | Lists all denied permissions in the deny rule and indicates whether each permission matches the p... |
| `deniedPrincipals` | `object` | Lists all denied principals in the deny rule and indicates whether each principal matches the pri... |
| `denyAccessState` | `string` | Required. Indicates whether _this rule_ denies the specified permission to the specified principa... |
| `exceptionPermissions` | `object` | Lists all exception permissions in the deny rule and indicates whether each permission matches th... |
| `exceptionPrincipals` | `object` | Lists all exception principals in the deny rule and indicates whether each principal matches the ... |
| `relevance` | `string` | The relevance of this role binding to the overall determination for the entire policy. |

### `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedDenyPrincipalMatching`

Details about whether the principal in the request is listed as a denied principal in the deny rule, either directly or through membership in a principal set.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Indicates whether the principal is listed as a denied principal in the deny rule, either directly... |
| `relevance` | `string` | The relevance of the principal's status to the overall determination for the role binding. |

### `GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanationAnnotatedPermissionMatching`

Details about whether the permission in the request is denied by the deny rule.

| Property | Type | Description |
|----------|------|-------------|
| `permissionMatchingState` | `string` | Indicates whether the permission in the request is denied by the deny rule. |
| `relevance` | `string` | The relevance of the permission status to the overall determination for the rule. |

### `GoogleCloudPolicytroubleshooterIamV3ExplainedAllowPolicy`

Details about how a specific IAM allow policy contributed to the final access state.

| Property | Type | Description |
|----------|------|-------------|
| `allowAccessState` | `string` | Required. Indicates whether _this policy_ provides the specified permission to the specified prin... |
| `bindingExplanations` | `array<GoogleCloudPolicytroubleshooterIamV3AllowBindingExplanation>` | Details about how each role binding in the policy affects the principal's ability, or inability, ... |
| `fullResourceName` | `string` | The full resource name that identifies the resource. For example, `//compute.googleapis.com/proje... |
| `policy` | `GoogleIamV1Policy` | The IAM allow policy attached to the resource. If the sender of the request does not have access ... |
| `relevance` | `string` | The relevance of this policy to the overall access state in the TroubleshootIamPolicyResponse. If... |

### `GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy`

Details about how a specific IAM deny policy Policy contributed to the access check.

| Property | Type | Description |
|----------|------|-------------|
| `denyAccessState` | `string` | Required. Indicates whether _this policy_ denies the specified permission to the specified princi... |
| `policy` | `GoogleIamV2Policy` | The IAM deny policy attached to the resource. If the sender of the request does not have access t... |
| `relevance` | `string` | The relevance of this policy to the overall access state in the TroubleshootIamPolicyResponse. If... |
| `ruleExplanations` | `array<GoogleCloudPolicytroubleshooterIamV3DenyRuleExplanation>` | Details about how each rule in the policy affects the principal's inability to use the permission... |

### `GoogleCloudPolicytroubleshooterIamV3ExplainedDenyResource`

Details about how a specific resource contributed to the deny policy evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `denyAccessState` | `string` | Required. Indicates whether any policies attached to _this resource_ deny the specific permission... |
| `explainedPolicies` | `array<GoogleCloudPolicytroubleshooterIamV3ExplainedDenyPolicy>` | List of IAM deny policies that were evaluated to check the principal's denied permissions, with a... |
| `fullResourceName` | `string` | The full resource name that identifies the resource. For example, `//compute.googleapis.com/proje... |
| `relevance` | `string` | The relevance of this policy to the overall access state in the TroubleshootIamPolicyResponse. If... |

### `GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyRequest`

Request for TroubleshootIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `accessTuple` | `GoogleCloudPolicytroubleshooterIamV3AccessTuple` | The information to use for checking whether a principal has a permission for a resource. |

### `GoogleCloudPolicytroubleshooterIamV3TroubleshootIamPolicyResponse`

Response for TroubleshootIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `accessTuple` | `GoogleCloudPolicytroubleshooterIamV3AccessTuple` | The access tuple from the request, including any provided context used to evaluate the condition. |
| `allowPolicyExplanation` | `GoogleCloudPolicytroubleshooterIamV3AllowPolicyExplanation` | An explanation of how the applicable IAM allow policies affect the final access state. |
| `denyPolicyExplanation` | `GoogleCloudPolicytroubleshooterIamV3DenyPolicyExplanation` | An explanation of how the applicable IAM deny policies affect the final access state. |
| `overallAccessState` | `string` | Indicates whether the principal has the specified permission for the specified resource, based on... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV2DenyRule`

A deny rule in an IAM deny policy.

| Property | Type | Description |
|----------|------|-------------|
| `denialCondition` | `GoogleTypeExpr` | The condition that determines whether this deny rule applies to a request. If the condition expre... |
| `deniedPermissions` | `array<string>` | The permissions that are explicitly denied by this rule. Each permission uses the format `{servic... |
| `deniedPrincipals` | `array<string>` | The identities that are prevented from using one or more permissions on Google Cloud resources. T... |
| `exceptionPermissions` | `array<string>` | Specifies the permissions that this rule excludes from the set of denied permissions given by `de... |
| `exceptionPrincipals` | `array<string>` | The identities that are excluded from the deny rule, even if they are listed in the `denied_princ... |

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

### `GoogleIamV2PolicyRule`

A single rule in a `Policy`.

| Property | Type | Description |
|----------|------|-------------|
| `denyRule` | `GoogleIamV2DenyRule` | A rule for a deny policy. |
| `description` | `string` | A user-specified description of the rule. This value can be up to 256 characters. |

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

