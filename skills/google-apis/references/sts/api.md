# Security Token Service API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `sts.token` | POST | `v1/token` | Exchanges a credential for a Google OAuth 2.0 access token. The token asserts an external identit... |

### `sts.token`

**POST** `v1/token`

Exchanges a credential for a Google OAuth 2.0 access token. The token asserts an external identity within an identity pool, or it applies a Credential Access Boundary to a Google access token. Note that workforce pools do not support Credential Access Boundaries. When you call this method, do not send the `Authorization` HTTP header in the request. This method does not require the `Authorization` header, and using the header can cause the request to fail.

**Request body**: `GoogleIdentityStsV1ExchangeTokenRequest`

**Response**: `GoogleIdentityStsV1ExchangeTokenResponse`

```typescript
const res = await sts.token({
  // parameters
});
```

---

## Schemas

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIdentityStsV1AccessBoundary`

An access boundary defines the upper bound of what a principal may access. It includes a list of access boundary rules that each defines the resource that may be allowed as well as permissions that may be used on those resources.

| Property | Type | Description |
|----------|------|-------------|
| `accessBoundaryRules` | `array<GoogleIdentityStsV1AccessBoundaryRule>` | A list of access boundary rules which defines the upper bound of the permission a principal may c... |

### `GoogleIdentityStsV1AccessBoundaryRule`

An access boundary rule defines an upper bound of IAM permissions on a single resource.

| Property | Type | Description |
|----------|------|-------------|
| `availabilityCondition` | `GoogleTypeExpr` | The availability condition further constrains the access allowed by the access boundary rule. If ... |
| `availablePermissions` | `array<string>` | A list of permissions that may be allowed for use on the specified resource. The only supported v... |
| `availableResource` | `string` | The full resource name of a Google Cloud resource entity. The format definition is at https://clo... |

### `GoogleIdentityStsV1ExchangeTokenRequest`

Request message for ExchangeToken.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | The full resource name of the identity provider; for example: `//iam.googleapis.com/projects//loc... |
| `grantType` | `string` | Required. The grant type. Must be `urn:ietf:params:oauth:grant-type:token-exchange`, which indica... |
| `options` | `string` | A set of features that Security Token Service supports, in addition to the standard OAuth 2.0 tok... |
| `requestedTokenType` | `string` | Required. An identifier for the type of requested security token. Can be `urn:ietf:params:oauth:t... |
| `scope` | `string` | The OAuth 2.0 scopes to include on the resulting access token, formatted as a list of space-delim... |
| `subjectToken` | `string` | Required. The input token. This token is either an external credential issued by a workload ident... |
| `subjectTokenType` | `string` | Required. An identifier that indicates the type of the security token in the `subject_token` para... |

### `GoogleIdentityStsV1ExchangeTokenResponse`

Response message for ExchangeToken.

| Property | Type | Description |
|----------|------|-------------|
| `access_boundary_session_key` | `string` | The access boundary session key. This key is used along with the access boundary intermediary tok... |
| `access_token` | `string` | An OAuth 2.0 security token, issued by Google, in response to the token exchange request. Tokens ... |
| `expires_in` | `integer` | The amount of time, in seconds, between the time when the access token was issued and the time wh... |
| `issued_token_type` | `string` | The token type. Always matches the value of `requested_token_type` from the request. |
| `token_type` | `string` | The type of access token. Always has the value `Bearer`. |

### `GoogleIdentityStsV1Options`

An `Options` object configures features that the Security Token Service supports, but that are not supported by standard OAuth 2.0 token exchange endpoints, as defined in https://tools.ietf.org/html/rfc8693.

| Property | Type | Description |
|----------|------|-------------|
| `accessBoundary` | `GoogleIdentityStsV1AccessBoundary` | An access boundary that defines the upper bound of permissions the credential may have. The value... |
| `bindCertFingerprint` | `string` | The unpadded, base64url-encoded SHA-256 hash of the certificate's DER encoding and it must be 43 ... |
| `userProject` | `string` | A Google project used for quota and billing purposes when the credential is used to access Google... |

### `GoogleIdentityStsV1betaAccessBoundary`

An access boundary defines the upper bound of what a principal may access. It includes a list of access boundary rules that each defines the resource that may be allowed as well as permissions that may be used on those resources.

| Property | Type | Description |
|----------|------|-------------|
| `accessBoundaryRules` | `array<GoogleIdentityStsV1betaAccessBoundaryRule>` | A list of access boundary rules which defines the upper bound of the permission a principal may c... |

### `GoogleIdentityStsV1betaAccessBoundaryRule`

An access boundary rule defines an upper bound of IAM permissions on a single resource.

| Property | Type | Description |
|----------|------|-------------|
| `availabilityCondition` | `GoogleTypeExpr` | The availability condition further constrains the access allowed by the access boundary rule. If ... |
| `availablePermissions` | `array<string>` | A list of permissions that may be allowed for use on the specified resource. The only supported v... |
| `availableResource` | `string` | The full resource name of a Google Cloud resource entity. The format definition is at https://clo... |

### `GoogleIdentityStsV1betaOptions`

An `Options` object configures features that the Security Token Service supports, but that are not supported by standard OAuth 2.0 token exchange endpoints, as defined in https://tools.ietf.org/html/rfc8693.

| Property | Type | Description |
|----------|------|-------------|
| `accessBoundary` | `GoogleIdentityStsV1betaAccessBoundary` | An access boundary that defines the upper bound of permissions the credential may have. The value... |
| `userProject` | `string` | A Google project used for quota and billing purposes when the credential is used to access Google... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

