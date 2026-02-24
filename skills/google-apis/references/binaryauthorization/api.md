# Binary Authorization API - API Reference

**Version**: `v1` | **Methods**: 21 | **Schemas**: 49

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `binaryauthorization.projects.getPolicy` | GET | `v1/{+name}` | A policy specifies the attestors that must attest to a container image, before the project is all... |
| `binaryauthorization.projects.updatePolicy` | PUT | `v1/{+name}` | Creates or updates a project's policy, and returns a copy of the new policy. A policy is always u... |
| `binaryauthorization.projects.platforms.gke.policies.evaluate` | POST | `v1/{+name}:evaluate` | Evaluates a Kubernetes object versus a GKE platform policy. Returns `NOT_FOUND` if the policy doe... |
| `binaryauthorization.projects.platforms.policies.create` | POST | `v1/{+parent}/policies` | Creates a platform policy, and returns a copy of it. Returns `NOT_FOUND` if the project or platfo... |
| `binaryauthorization.projects.platforms.policies.get` | GET | `v1/{+name}` | Gets a platform policy. Returns `NOT_FOUND` if the policy doesn't exist. |
| `binaryauthorization.projects.platforms.policies.replacePlatformPolicy` | PUT | `v1/{+name}` | Replaces a platform policy. Returns `NOT_FOUND` if the policy doesn't exist. |
| `binaryauthorization.projects.platforms.policies.list` | GET | `v1/{+parent}/policies` | Lists platform policies owned by a project in the specified platform. Returns `INVALID_ARGUMENT` ... |
| `binaryauthorization.projects.platforms.policies.delete` | DELETE | `v1/{+name}` | Deletes a platform policy. Returns `NOT_FOUND` if the policy doesn't exist. |
| `binaryauthorization.projects.attestors.create` | POST | `v1/{+parent}/attestors` | Creates an attestor, and returns a copy of the new attestor. Returns `NOT_FOUND` if the project d... |
| `binaryauthorization.projects.attestors.get` | GET | `v1/{+name}` | Gets an attestor. Returns `NOT_FOUND` if the attestor does not exist. |
| `binaryauthorization.projects.attestors.update` | PUT | `v1/{+name}` | Updates an attestor. Returns `NOT_FOUND` if the attestor does not exist. |
| `binaryauthorization.projects.attestors.list` | GET | `v1/{+parent}/attestors` | Lists attestors. Returns `INVALID_ARGUMENT` if the project does not exist. |
| `binaryauthorization.projects.attestors.delete` | DELETE | `v1/{+name}` | Deletes an attestor. Returns `NOT_FOUND` if the attestor does not exist. |
| `binaryauthorization.projects.attestors.validateAttestationOccurrence` | POST | `v1/{+attestor}:validateAttestationOccurrence` | Returns whether the given `Attestation` for the given image URI was signed by the given `Attestor` |
| `binaryauthorization.projects.attestors.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `binaryauthorization.projects.attestors.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `binaryauthorization.projects.attestors.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `binaryauthorization.projects.policy.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `binaryauthorization.projects.policy.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `binaryauthorization.projects.policy.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `binaryauthorization.systempolicy.getPolicy` | GET | `v1/{+name}` | Gets the current system policy in the specified location. |

### `binaryauthorization.projects.getPolicy`

**GET** `v1/{+name}`

A policy specifies the attestors that must attest to a container image, before the project is allowed to deploy that image. There is at most one policy per project. All image admission requests are permitted if a project has no policy. Gets the policy for this project. Returns a default policy if the project does not have one.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy to retrieve, in the format `projects/*/policy`. |

**Response**: `Policy`

```typescript
const res = await binaryauthorization.projects.getPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.updatePolicy`

**PUT** `v1/{+name}`

Creates or updates a project's policy, and returns a copy of the new policy. A policy is always updated as a whole, to avoid race conditions with concurrent policy enforcement (or management!) requests. Returns `NOT_FOUND` if the project does not exist, `INVALID_ARGUMENT` if the request is malformed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name, in the format `projects/*/policy`. There is at most one policy per project. |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await binaryauthorization.projects.updatePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.gke.policies.evaluate`

**POST** `v1/{+name}:evaluate`

Evaluates a Kubernetes object versus a GKE platform policy. Returns `NOT_FOUND` if the policy doesn't exist, `INVALID_ARGUMENT` if the policy or request is malformed and `PERMISSION_DENIED` if the client does not have sufficient permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the platform policy to evaluate in the format `projects/*/platforms/*/policies/*`. |

**Request body**: `EvaluateGkePolicyRequest`

**Response**: `EvaluateGkePolicyResponse`

```typescript
const res = await binaryauthorization.policies.evaluate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.policies.create`

**POST** `v1/{+parent}/policies`

Creates a platform policy, and returns a copy of it. Returns `NOT_FOUND` if the project or platform doesn't exist, `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the policy already exists, and `INVALID_ARGUMENT` if the policy contains a platform-specific policy that does not match the platform value specified in the URL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of this platform policy. |
| `policyId` | `string` | query | No | Required. The platform policy ID. |

**Request body**: `PlatformPolicy`

**Response**: `PlatformPolicy`

```typescript
const res = await binaryauthorization.policies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.policies.get`

**GET** `v1/{+name}`

Gets a platform policy. Returns `NOT_FOUND` if the policy doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the platform policy to retrieve in the format `projects/*/platforms/*/policies/*`. |

**Response**: `PlatformPolicy`

```typescript
const res = await binaryauthorization.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.policies.replacePlatformPolicy`

**PUT** `v1/{+name}`

Replaces a platform policy. Returns `NOT_FOUND` if the policy doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platf... |

**Request body**: `PlatformPolicy`

**Response**: `PlatformPolicy`

```typescript
const res = await binaryauthorization.policies.replacePlatformPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.policies.list`

**GET** `v1/{+parent}/policies`

Lists platform policies owned by a project in the specified platform. Returns `INVALID_ARGUMENT` if the project or the platform doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the platform associated with the platform policies using the format `projects/*/platfo... |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server picks an appropri... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListPlatformPoliciesR... |

**Response**: `ListPlatformPoliciesResponse`

```typescript
const res = await binaryauthorization.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.platforms.policies.delete`

**DELETE** `v1/{+name}`

Deletes a platform policy. Returns `NOT_FOUND` if the policy doesn't exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the platform policy to delete, in the format `projects/*/platforms/*/policies/*`. |
| `etag` | `string` | query | No | Optional. Used to prevent deleting the policy when another request has updated it since it was retrieved. |

**Response**: `Empty`

```typescript
const res = await binaryauthorization.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.create`

**POST** `v1/{+parent}/attestors`

Creates an attestor, and returns a copy of the new attestor. Returns `NOT_FOUND` if the project does not exist, `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the attestor already exists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of this attestor. |
| `attestorId` | `string` | query | No | Required. The attestors ID. |

**Request body**: `Attestor`

**Response**: `Attestor`

```typescript
const res = await binaryauthorization.attestors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.get`

**GET** `v1/{+name}`

Gets an attestor. Returns `NOT_FOUND` if the attestor does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attestor to retrieve, in the format `projects/*/attestors/*`. |

**Response**: `Attestor`

```typescript
const res = await binaryauthorization.attestors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.update`

**PUT** `v1/{+name}`

Updates an attestor. Returns `NOT_FOUND` if the attestor does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name, in the format: `projects/*/attestors/*`. This field may not be updated. |

**Request body**: `Attestor`

**Response**: `Attestor`

```typescript
const res = await binaryauthorization.attestors.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.list`

**GET** `v1/{+parent}/attestors`

Lists attestors. Returns `INVALID_ARGUMENT` if the project does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project associated with the attestors, in the format `projects/*`. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListAttestorsResponse... |

**Response**: `ListAttestorsResponse`

```typescript
const res = await binaryauthorization.attestors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.delete`

**DELETE** `v1/{+name}`

Deletes an attestor. Returns `NOT_FOUND` if the attestor does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the attestors to delete, in the format `projects/*/attestors/*`. |

**Response**: `Empty`

```typescript
const res = await binaryauthorization.attestors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.validateAttestationOccurrence`

**POST** `v1/{+attestor}:validateAttestationOccurrence`

Returns whether the given `Attestation` for the given image URI was signed by the given `Attestor`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `attestor` | `string` | path | Yes | Required. The resource name of the Attestor of the occurrence, in the format `projects/*/attestors/*`. |

**Request body**: `ValidateAttestationOccurrenceRequest`

**Response**: `ValidateAttestationOccurrenceResponse`

```typescript
const res = await binaryauthorization.attestors.validateAttestationOccurrence({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `IamPolicy`

```typescript
const res = await binaryauthorization.attestors.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `IamPolicy`

```typescript
const res = await binaryauthorization.attestors.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.attestors.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await binaryauthorization.attestors.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.policy.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `IamPolicy`

```typescript
const res = await binaryauthorization.policy.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.policy.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `IamPolicy`

```typescript
const res = await binaryauthorization.policy.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.projects.policy.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await binaryauthorization.policy.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `binaryauthorization.systempolicy.getPolicy`

**GET** `v1/{+name}`

Gets the current system policy in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name, in the format `locations/*/policy`. Note that the system policy is not associated with a... |

**Response**: `Policy`

```typescript
const res = await binaryauthorization.systempolicy.getPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AdmissionRule`

An admission rule specifies either that all container images used in a pod creation request must be attested to by one or more attestors, that all pod creations will be allowed, or that all pod creations will be denied. Images matching an admission allowlist pattern are exempted from admission rules and will never block a pod creation.

| Property | Type | Description |
|----------|------|-------------|
| `enforcementMode` | `string` | Required. The action when a pod creation is denied by the admission rule. |
| `evaluationMode` | `string` | Required. How this admission rule will be evaluated. |
| `requireAttestationsBy` | `array<string>` | Optional. The resource names of the attestors that must attest to a container image, in the forma... |

### `AdmissionWhitelistPattern`

An admission allowlist pattern exempts images from checks by admission rules.

| Property | Type | Description |
|----------|------|-------------|
| `namePattern` | `string` | An image name pattern to allowlist, in the form `registry/path/to/image`. This supports a trailin... |

### `AllowlistResult`

Result of evaluating an image name allowlist.

| Property | Type | Description |
|----------|------|-------------|
| `matchedPattern` | `string` | The allowlist pattern that the image matched. |

### `AttestationAuthenticator`

An attestation authenticator that will be used to verify attestations. Typically this is just a set of public keys. Conceptually, an authenticator can be treated as always returning either "authenticated" or "not authenticated" when presented with a signed attestation (almost always assumed to be a [DSSE](https://github.com/secure-systems-lab/dsse) attestation). The details of how an authenticator makes this decision are specific to the type of 'authenticator' that this message wraps.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. A user-provided name for this `AttestationAuthenticator`. This field has no effect on t... |
| `pkixPublicKeySet` | `PkixPublicKeySet` | Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set... |

### `AttestationOccurrence`

Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.

| Property | Type | Description |
|----------|------|-------------|
| `jwts` | `array<Jwt>` | One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it veri... |
| `serializedPayload` | `string` | Required. The serialized payload that is verified by one or more `signatures`. |
| `signatures` | `array<Signature>` | One or more signatures over `serialized_payload`. Verifier implementations should consider this a... |

### `AttestationSource`

Specifies the locations for fetching the provenance attestations.

| Property | Type | Description |
|----------|------|-------------|
| `containerAnalysisAttestationProjects` | `array<string>` | The IDs of the Google Cloud projects that store the SLSA attestations as Container Analysis Occur... |

### `Attestor`

An attestor that attests to container image artifacts. An existing attestor cannot be modified except where indicated.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser... |
| `etag` | `string` | Optional. A checksum, returned by the server, that can be sent on update requests to ensure the a... |
| `name` | `string` | Required. The resource name, in the format: `projects/*/attestors/*`. This field may not be updated. |
| `updateTime` | `string` | Output only. Time when the attestor was last updated. |
| `userOwnedGrafeasNote` | `UserOwnedGrafeasNote` | This specifies how an attestation will be read, and how it will be used during policy enforcement. |

### `AttestorPublicKey`

An attestor public key that will be used to verify attestations signed by this attestor.

| Property | Type | Description |
|----------|------|-------------|
| `asciiArmoredPgpPublicKey` | `string` | ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --expo... |
| `comment` | `string` | Optional. A descriptive comment. This field may be updated. |
| `id` | `string` | The ID of this public key. Signatures verified by Binary Authorization must include the ID of the... |
| `pkixPublicKey` | `PkixPublicKey` | A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the c... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Check`

A single check to perform against a Pod. Checks are grouped into `CheckSet` objects, which are defined by the top-level policy.

| Property | Type | Description |
|----------|------|-------------|
| `alwaysDeny` | `boolean` | Optional. A special-case check that always denies. Note that this still only applies when the sco... |
| `displayName` | `string` | Optional. A user-provided name for this check. This field has no effect on the policy evaluation ... |
| `imageAllowlist` | `ImageAllowlist` | Optional. Images exempted from this check. If any of the patterns match the image url, the check ... |
| `imageFreshnessCheck` | `ImageFreshnessCheck` | Optional. Require that an image is no older than a configured expiration time. Image age is deter... |
| `sigstoreSignatureCheck` | `SigstoreSignatureCheck` | Optional. Require that an image was signed by Cosign with a trusted key. This check requires that... |
| `simpleSigningAttestationCheck` | `SimpleSigningAttestationCheck` | Optional. Require a SimpleSigning-type attestation for every image in the deployment. |
| `slsaCheck` | `SlsaCheck` | Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meet... |
| `trustedDirectoryCheck` | `TrustedDirectoryCheck` | Optional. Require that an image lives in a trusted directory. |
| `vulnerabilityCheck` | `VulnerabilityCheck` | Optional. Require that an image does not contain vulnerabilities that violate the configured rule... |

### `CheckResult`

Result of evaluating one check.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistResult` | `AllowlistResult` | If the image was exempted by an allow_pattern in the check, contains the pattern that the image n... |
| `displayName` | `string` | The name of the check. |
| `evaluationResult` | `EvaluationResult` | If a check was evaluated, contains the result of the check. |
| `explanation` | `string` | Explanation of this check result. |
| `index` | `string` | The index of the check. |
| `type` | `string` | The type of the check. |

### `CheckResults`

Result of evaluating one or more checks.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<CheckResult>` | Per-check details. |

### `CheckSet`

A conjunction of policy checks, scoped to a particular namespace or Kubernetes service account. In order for evaluation of a `CheckSet` to return "allowed" for a given image in a given Pod, one of the following conditions must be satisfied: * The image is explicitly exempted by an entry in `image_allowlist`, OR * ALL of the `checks` evaluate to "allowed".

| Property | Type | Description |
|----------|------|-------------|
| `checks` | `array<Check>` | Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if... |
| `displayName` | `string` | Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evalua... |
| `imageAllowlist` | `ImageAllowlist` | Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being eval... |
| `scope` | `Scope` | Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), ... |

### `CheckSetResult`

Result of evaluating one check set.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistResult` | `AllowlistResult` | If the image was exempted by an allow_pattern in the check set, contains the pattern that the ima... |
| `checkResults` | `CheckResults` | If checks were evaluated, contains the results of evaluating each check. |
| `displayName` | `string` | The name of the check set. |
| `explanation` | `string` | Explanation of this check set result. Only populated if no checks were evaluated. |
| `index` | `string` | The index of the check set. |
| `scope` | `Scope` | The scope of the check set. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EvaluateGkePolicyRequest`

Request message for PlatformPolicyEvaluationService.EvaluateGkePolicy.

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `object` | Required. JSON or YAML blob representing a Kubernetes resource. |

### `EvaluateGkePolicyResponse`

Response message for PlatformPolicyEvaluationService.EvaluateGkePolicy.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<PodResult>` | Evaluation result for each Pod contained in the request. |
| `verdict` | `string` | The result of evaluating all Pods in the request. |

### `EvaluationResult`

Result of evaluating one check.

| Property | Type | Description |
|----------|------|-------------|
| `verdict` | `string` | The result of evaluating this check. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GkePolicy`

A Binary Authorization policy for a GKE cluster. This is one type of policy that can occur as a `PlatformPolicy`.

| Property | Type | Description |
|----------|------|-------------|
| `checkSets` | `array<CheckSet>` | Optional. The `CheckSet` objects to apply, scoped by namespace or namespace and service account. ... |
| `imageAllowlist` | `ImageAllowlist` | Optional. Images exempted from this policy. If any of the patterns match the image being evaluate... |

### `IamPolicy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ImageAllowlist`

Images that are exempted from normal checks based on name pattern only.

| Property | Type | Description |
|----------|------|-------------|
| `allowPattern` | `array<string>` | Required. A disjunction of image patterns to allow. If any of these patterns match, then the imag... |

### `ImageFreshnessCheck`

An image freshness check, which rejects images that were uploaded before the set number of days ago to the supported repositories.

| Property | Type | Description |
|----------|------|-------------|
| `maxUploadAgeDays` | `integer` | Required. The max number of days that is allowed since the image was uploaded. Must be greater th... |

### `ImageResult`

Result of evaluating one image.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistResult` | `AllowlistResult` | If the image was exempted by a top-level allow_pattern, contains the allowlist pattern that the i... |
| `checkSetResult` | `CheckSetResult` | If a check set was evaluated, contains the result of the check set. Empty if there were no check ... |
| `explanation` | `string` | Explanation of this image result. Only populated if no check sets were evaluated. |
| `imageUri` | `string` | Image URI from the request. |
| `verdict` | `string` | The result of evaluating this image. |

### `Jwt`

| Property | Type | Description |
|----------|------|-------------|
| `compactJwt` | `string` | The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. Fo... |

### `ListAttestorsResponse`

Response message for BinauthzManagementServiceV1.ListAttestors.

| Property | Type | Description |
|----------|------|-------------|
| `attestors` | `array<Attestor>` | The list of attestors. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListAttestorsRequest.page_to... |

### `ListPlatformPoliciesResponse`

Response message for PlatformPolicyManagementService.ListPlatformPolicies.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the ListPlatformPoliciesRequest.... |
| `platformPolicies` | `array<PlatformPolicy>` | The list of platform policies. |

### `PkixPublicKey`

A public key in the PkixPublicKey [format](https://tools.ietf.org/html/rfc5280#section-4.1.2.7). Public keys of this type are typically textually encoded using the PEM format.

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | Optional. The ID of this public key. Signatures verified by Binary Authorization must include the... |
| `publicKeyPem` | `string` | A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#section-13 |
| `signatureAlgorithm` | `string` | The signature algorithm used to verify a message against a signature using this key. These signat... |

### `PkixPublicKeySet`

A bundle of PKIX public keys, used to authenticate attestation signatures. Generally, a signature is considered to be authenticated by a `PkixPublicKeySet` if any of the public keys verify it (i.e. it is an "OR" of the keys).

| Property | Type | Description |
|----------|------|-------------|
| `pkixPublicKeys` | `array<PkixPublicKey>` | Required. `pkix_public_keys` must have at least one entry. |

### `PlatformPolicy`

A Binary Authorization platform policy for deployments on various platforms.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A description comment about the policy. |
| `etag` | `string` | Optional. Used to prevent updating the policy when another request has updated it since it was re... |
| `gkePolicy` | `GkePolicy` | Optional. GKE platform-specific policy. |
| `name` | `string` | Output only. The relative resource name of the Binary Authorization platform policy, in the form ... |
| `updateTime` | `string` | Output only. Time when the policy was last updated. |

### `PodResult`

Result of evaluating the whole GKE policy for one Pod.

| Property | Type | Description |
|----------|------|-------------|
| `imageResults` | `array<ImageResult>` | Per-image details. |
| `kubernetesNamespace` | `string` | The Kubernetes namespace of the Pod. |
| `kubernetesServiceAccount` | `string` | The Kubernetes service account of the Pod. |
| `podName` | `string` | The name of the Pod. |
| `verdict` | `string` | The result of evaluating this Pod. |

### `Policy`

A policy for container image binary authorization.

| Property | Type | Description |
|----------|------|-------------|
| `admissionWhitelistPatterns` | `array<AdmissionWhitelistPattern>` | Optional. Admission policy allowlisting. A matching admission request will always be permitted. T... |
| `clusterAdmissionRules` | `object` | Optional. A valid policy has only one of the following rule maps non-empty, i.e. only one of `clu... |
| `defaultAdmissionRule` | `AdmissionRule` | Required. Default admission rule for a cluster without a per-cluster, per- kubernetes-service-acc... |
| `description` | `string` | Optional. A descriptive comment. |
| `etag` | `string` | Optional. A checksum, returned by the server, that can be sent on update requests to ensure the p... |
| `globalPolicyEvaluationMode` | `string` | Optional. Controls the evaluation of a Google-maintained global admission policy for common syste... |
| `istioServiceIdentityAdmissionRules` | `object` | Optional. Per-istio-service-identity admission rules. Istio service identity spec format: `spiffe... |
| `kubernetesNamespaceAdmissionRules` | `object` | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format: `[a-z.-]+`, e.g. `... |
| `kubernetesServiceAccountAdmissionRules` | `object` | Optional. Per-kubernetes-service-account admission rules. Service account spec format: `namespace... |
| `name` | `string` | Output only. The resource name, in the format `projects/*/policy`. There is at most one policy pe... |
| `updateTime` | `string` | Output only. Time when the policy was last updated. |

### `Scope`

A scope specifier for `CheckSet` objects.

| Property | Type | Description |
|----------|------|-------------|
| `kubernetesNamespace` | `string` | Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specif... |
| `kubernetesServiceAccount` | `string` | Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `k... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `IamPolicy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Signature`

Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from `public_key_id` to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature `public_key_id` as anything more than a key lookup hint. The `public_key_id` DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The `public_key_id` is not recognized by the verifier. * The public key that `public_key_id` refers to does not verify the signature with respect to the payload. The `signature` contents SHOULD NOT be "attached" (where the payload is included with the serialized `signature` bytes). Verifiers MUST ignore any "attached" payload and only verify signatures with respect to explicitly provided payload (e.g. a `payload` field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).

| Property | Type | Description |
|----------|------|-------------|
| `publicKeyId` | `string` | The identifier for the public key that verifies this signature. * The `public_key_id` is required... |
| `signature` | `string` | The content of the signature, an opaque bytestring. The payload that this signature verifies MUST... |

### `SigstoreAuthority`

A Sigstore authority, used to verify signatures that are created by Sigstore. An authority is analogous to an attestation authenticator, verifying that a signature is valid or invalid.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. A user-provided name for this `SigstoreAuthority`. This field has no effect on the poli... |
| `publicKeySet` | `SigstorePublicKeySet` | Required. A simple set of public keys. A signature is considered valid if any keys in the set val... |

### `SigstorePublicKey`

A Sigstore public key. `SigstorePublicKey` is the public key material used to authenticate Sigstore signatures.

| Property | Type | Description |
|----------|------|-------------|
| `publicKeyPem` | `string` | The public key material in PEM format. |

### `SigstorePublicKeySet`

A bundle of Sigstore public keys, used to verify Sigstore signatures. A signature is authenticated by a `SigstorePublicKeySet` if any of the keys verify it.

| Property | Type | Description |
|----------|------|-------------|
| `publicKeys` | `array<SigstorePublicKey>` | Required. `public_keys` must have at least one entry. |

### `SigstoreSignatureCheck`

A Sigstore signature check, which verifies the Sigstore signature associated with an image.

| Property | Type | Description |
|----------|------|-------------|
| `sigstoreAuthorities` | `array<SigstoreAuthority>` | Required. The authorities required by this check to verify the signature. A signature only needs ... |

### `SimpleSigningAttestationCheck`

Require a signed [DSSE](https://github.com/secure-systems-lab/dsse) attestation with type SimpleSigning.

| Property | Type | Description |
|----------|------|-------------|
| `attestationAuthenticators` | `array<AttestationAuthenticator>` | Required. The authenticators required by this check to verify an attestation. Typically this is o... |
| `containerAnalysisAttestationProjects` | `array<string>` | Optional. The projects where attestations are stored as Container Analysis Occurrences, in the fo... |

### `SlsaCheck`

A SLSA provenance attestation check, which ensures that images are built by a trusted builder using source code from its trusted repositories only.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<VerificationRule>` | Specifies a list of verification rules for the SLSA attestations. An image is considered complian... |

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

### `TrustedDirectoryCheck`

A trusted directory check, which rejects images that do not come from the set of user-configured trusted directories.

| Property | Type | Description |
|----------|------|-------------|
| `trustedDirPatterns` | `array<string>` | Required. List of trusted directory patterns. A pattern is in the form "registry/path/to/director... |

### `UserOwnedGrafeasNote`

An user owned Grafeas note references a Grafeas Attestation.Authority Note created by the user.

| Property | Type | Description |
|----------|------|-------------|
| `delegationServiceAccountEmail` | `string` | Output only. This field will contain the service account email address that this attestor will us... |
| `noteReference` | `string` | Required. The Grafeas resource name of a Attestation.Authority Note, created by the user, in the ... |
| `publicKeys` | `array<AttestorPublicKey>` | Optional. Public keys that verify attestations signed by this attestor. This field may be updated... |

### `ValidateAttestationOccurrenceRequest`

Request message for ValidationHelperV1.ValidateAttestationOccurrence.

| Property | Type | Description |
|----------|------|-------------|
| `attestation` | `AttestationOccurrence` | Required. An AttestationOccurrence to be checked that it can be verified by the `Attestor`. It do... |
| `occurrenceNote` | `string` | Required. The resource name of the Note to which the containing Occurrence is associated. |
| `occurrenceResourceUri` | `string` | Required. The URI of the artifact (e.g. container image) that is the subject of the containing Oc... |

### `ValidateAttestationOccurrenceResponse`

Response message for ValidationHelperV1.ValidateAttestationOccurrence.

| Property | Type | Description |
|----------|------|-------------|
| `denialReason` | `string` | The reason for denial if the Attestation couldn't be validated. |
| `result` | `string` | The result of the Attestation validation. |

### `VerificationRule`

Specifies verification rules for evaluating the SLSA attestations including: which builders to trust, where to fetch the SLSA attestations generated by those builders, and other builder-specific evaluation rules such as which source repositories are trusted. An image is considered verified by the rule if any of the fetched SLSA attestations is verified.

| Property | Type | Description |
|----------|------|-------------|
| `attestationSource` | `AttestationSource` | Specifies where to fetch the provenances attestations generated by the builder (group). |
| `configBasedBuildRequired` | `boolean` | If true, require the image to be built from a top-level configuration. `trusted_source_repo_patte... |
| `customConstraints` | `string` | Optional. A CEL expression for specifying custom constraints on the provenance payload. This can ... |
| `trustedBuilder` | `string` | Each verification rule is used for evaluation against provenances generated by a specific builder... |
| `trustedSourceRepoPatterns` | `array<string>` | List of trusted source code repository URL patterns. These patterns match the full repository URL... |

### `VulnerabilityCheck`

An image vulnerability check, which rejects images that violate the configured vulnerability rules.

| Property | Type | Description |
|----------|------|-------------|
| `allowedCves` | `array<string>` | Optional. A list of specific CVEs to ignore even if the vulnerability level violates `maximumUnfi... |
| `blockedCves` | `array<string>` | Optional. A list of specific CVEs to always raise warnings about even if the vulnerability level ... |
| `containerAnalysisVulnerabilityProjects` | `array<string>` | Optional. The projects where vulnerabilities are stored as Container Analysis Occurrences. Each p... |
| `maximumFixableSeverity` | `string` | Required. The threshold for severity for which a fix is currently available. This field is requir... |
| `maximumUnfixableSeverity` | `string` | Required. The threshold for severity for which a fix isn't currently available. This field is req... |

