# reCAPTCHA Enterprise API - API Reference

**Version**: `v1` | **Methods**: 22 | **Schemas**: 77

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `recaptchaenterprise.projects.relatedaccountgroups.list` | GET | `v1/{+parent}/relatedaccountgroups` | List groups of related accounts. |
| `recaptchaenterprise.projects.relatedaccountgroups.memberships.list` | GET | `v1/{+parent}/memberships` | Get memberships in a group of related accounts. |
| `recaptchaenterprise.projects.keys.retrieveLegacySecretKey` | GET | `v1/{+key}:retrieveLegacySecretKey` | Returns the secret key related to the specified public key. You must use the legacy secret key on... |
| `recaptchaenterprise.projects.keys.delete` | DELETE | `v1/{+name}` | Deletes the specified key. |
| `recaptchaenterprise.projects.keys.migrate` | POST | `v1/{+name}:migrate` | Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise. Once a key is migrated, it can b... |
| `recaptchaenterprise.projects.keys.create` | POST | `v1/{+parent}/keys` | Creates a new reCAPTCHA Enterprise key. |
| `recaptchaenterprise.projects.keys.getMetrics` | GET | `v1/{+name}` | Get some aggregated metrics for a Key. This data can be used to build dashboards. |
| `recaptchaenterprise.projects.keys.patch` | PATCH | `v1/{+name}` | Updates the specified key. |
| `recaptchaenterprise.projects.keys.listIpOverrides` | GET | `v1/{+parent}:listIpOverrides` | Lists all IP overrides for a key. |
| `recaptchaenterprise.projects.keys.removeIpOverride` | POST | `v1/{+name}:removeIpOverride` | Removes an IP override from a key. The following restrictions hold: * If the IP isn't found in an... |
| `recaptchaenterprise.projects.keys.addIpOverride` | POST | `v1/{+name}:addIpOverride` | Adds an IP override to a key. The following restrictions hold: * The maximum number of IP overrid... |
| `recaptchaenterprise.projects.keys.list` | GET | `v1/{+parent}/keys` | Returns the list of all keys that belong to a project. |
| `recaptchaenterprise.projects.keys.get` | GET | `v1/{+name}` | Returns the specified key. |
| `recaptchaenterprise.projects.relatedaccountgroupmemberships.search` | POST | `v1/{+project}/relatedaccountgroupmemberships:search` | Search group memberships related to a given account. |
| `recaptchaenterprise.projects.firewallpolicies.delete` | DELETE | `v1/{+name}` | Deletes the specified firewall policy. |
| `recaptchaenterprise.projects.firewallpolicies.list` | GET | `v1/{+parent}/firewallpolicies` | Returns the list of all firewall policies that belong to a project. |
| `recaptchaenterprise.projects.firewallpolicies.patch` | PATCH | `v1/{+name}` | Updates the specified firewall policy. |
| `recaptchaenterprise.projects.firewallpolicies.create` | POST | `v1/{+parent}/firewallpolicies` | Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA Enterprise actions can be ... |
| `recaptchaenterprise.projects.firewallpolicies.reorder` | POST | `v1/{+parent}/firewallpolicies:reorder` | Reorders all firewall policies. |
| `recaptchaenterprise.projects.firewallpolicies.get` | GET | `v1/{+name}` | Returns the specified firewall policy. |
| `recaptchaenterprise.projects.assessments.create` | POST | `v1/{+parent}/assessments` | Creates an Assessment of the likelihood an event is legitimate. |
| `recaptchaenterprise.projects.assessments.annotate` | POST | `v1/{+name}:annotate` | Annotates a previously created Assessment to provide additional information on whether the event ... |

### `recaptchaenterprise.projects.relatedaccountgroups.list`

**GET** `v1/{+parent}/relatedaccountgroups`

List groups of related accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list related account groups from, in the format `projects/{project}`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of groups to return. The service might return fewer than this value. If unspecified, at ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListRelatedAccountGroups` call. Provide this to retrieve the subseq... |

**Response**: `GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse`

```typescript
const res = await recaptchaenterprise.relatedaccountgroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.relatedaccountgroups.memberships.list`

**GET** `v1/{+parent}/memberships`

Get memberships in a group of related accounts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name for the related account group in the format `projects/{project}/relatedaccountgroups/{rel... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of accounts to return. The service might return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListRelatedAccountGroupMemberships` call. When paginating, all othe... |

**Response**: `GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse`

```typescript
const res = await recaptchaenterprise.memberships.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.retrieveLegacySecretKey`

**GET** `v1/{+key}:retrieveLegacySecretKey`

Returns the secret key related to the specified public key. You must use the legacy secret key only in a 3rd party integration with legacy reCAPTCHA.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `key` | `string` | path | Yes | Required. The public key name linked to the requested secret key in the format `projects/{project}/keys/{key}`. |

**Response**: `GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse`

```typescript
const res = await recaptchaenterprise.keys.retrieveLegacySecretKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.delete`

**DELETE** `v1/{+name}`

Deletes the specified key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the key to be deleted, in the format `projects/{project}/keys/{key}`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await recaptchaenterprise.keys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.migrate`

**POST** `v1/{+name}:migrate`

Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise. Once a key is migrated, it can be used from either product. SiteVerify requests are billed as CreateAssessment calls. You must be authenticated as one of the current owners of the reCAPTCHA Key, and your user must have the reCAPTCHA Enterprise Admin IAM role in the destination project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the key to be migrated, in the format `projects/{project}/keys/{key}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1Key`

```typescript
const res = await recaptchaenterprise.keys.migrate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.create`

**POST** `v1/{+parent}/keys`

Creates a new reCAPTCHA Enterprise key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which the key is created, in the format `projects/{project}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1Key`

**Response**: `GoogleCloudRecaptchaenterpriseV1Key`

```typescript
const res = await recaptchaenterprise.keys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.getMetrics`

**GET** `v1/{+name}`

Get some aggregated metrics for a Key. This data can be used to build dashboards.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested metrics, in the format `projects/{project}/keys/{key}/metrics`. |

**Response**: `GoogleCloudRecaptchaenterpriseV1Metrics`

```typescript
const res = await recaptchaenterprise.keys.getMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.patch`

**PATCH** `v1/{+name}`

Updates the specified key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`. |
| `updateMask` | `string` | query | No | Optional. The mask to control which fields of the key get updated. If the mask is not present, all fields are updated. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1Key`

**Response**: `GoogleCloudRecaptchaenterpriseV1Key`

```typescript
const res = await recaptchaenterprise.keys.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.listIpOverrides`

**GET** `v1/{+parent}:listIpOverrides`

Lists all IP overrides for a key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent key for which the IP overrides are listed, in the format `projects/{project}/keys/{key}`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of overrides to return. Default is 10. Max limit is 100. If the number of overrides is l... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListIpOverridesRequest, if any. |

**Response**: `GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse`

```typescript
const res = await recaptchaenterprise.keys.listIpOverrides({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.removeIpOverride`

**POST** `v1/{+name}:removeIpOverride`

Removes an IP override from a key. The following restrictions hold: * If the IP isn't found in an existing IP override, a `NOT_FOUND` error is returned. * If the IP is found in an existing IP override, but the override type does not match, a `NOT_FOUND` error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the key from which the IP override is removed, in the format `projects/{project}/keys/{key}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse`

```typescript
const res = await recaptchaenterprise.keys.removeIpOverride({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.addIpOverride`

**POST** `v1/{+name}:addIpOverride`

Adds an IP override to a key. The following restrictions hold: * The maximum number of IP overrides per key is 1000. * For any conflict (such as IP already exists or IP part of an existing IP range), an error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the key to which the IP override is added, in the format `projects/{project}/keys/{key}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse`

```typescript
const res = await recaptchaenterprise.keys.addIpOverride({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.list`

**GET** `v1/{+parent}/keys`

Returns the list of all keys that belong to a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project that contains the keys that is listed, in the format `projects/{project}`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of keys to return. Default is 10. Max limit is 1000. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous. ListKeysRequest, if any. |

**Response**: `GoogleCloudRecaptchaenterpriseV1ListKeysResponse`

```typescript
const res = await recaptchaenterprise.keys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.keys.get`

**GET** `v1/{+name}`

Returns the specified key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested key, in the format `projects/{project}/keys/{key}`. |

**Response**: `GoogleCloudRecaptchaenterpriseV1Key`

```typescript
const res = await recaptchaenterprise.keys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.relatedaccountgroupmemberships.search`

**POST** `v1/{+project}/relatedaccountgroupmemberships:search`

Search group memberships related to a given account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project to search related account group memberships from. Specify the project name in the f... |

**Request body**: `GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse`

```typescript
const res = await recaptchaenterprise.relatedaccountgroupmemberships.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.delete`

**DELETE** `v1/{+name}`

Deletes the specified firewall policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the policy to be deleted, in the format `projects/{project}/firewallpolicies/{firewallpolicy}`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await recaptchaenterprise.firewallpolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.list`

**GET** `v1/{+parent}/firewallpolicies`

Returns the list of all firewall policies that belong to a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list the policies for, in the format `projects/{project}`. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of policies to return. Default is 10. Max limit is 1000. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous. ListFirewallPoliciesRequest, if any. |

**Response**: `GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse`

```typescript
const res = await recaptchaenterprise.firewallpolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.patch`

**PATCH** `v1/{+name}`

Updates the specified firewall policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpoli... |
| `updateMask` | `string` | query | No | Optional. The mask to control which fields of the policy get updated. If the mask is not present, all fields are upda... |

**Request body**: `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

**Response**: `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

```typescript
const res = await recaptchaenterprise.firewallpolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.create`

**POST** `v1/{+parent}/firewallpolicies`

Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA Enterprise actions can be executed. A project may have a maximum of 1000 policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project this policy applies to, in the format `projects/{project}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

**Response**: `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

```typescript
const res = await recaptchaenterprise.firewallpolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.reorder`

**POST** `v1/{+parent}/firewallpolicies:reorder`

Reorders all firewall policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project to list the policies for, in the format `projects/{project}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse`

```typescript
const res = await recaptchaenterprise.firewallpolicies.reorder({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.firewallpolicies.get`

**GET** `v1/{+name}`

Returns the specified firewall policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested policy, in the format `projects/{project}/firewallpolicies/{firewallpolicy}`. |

**Response**: `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

```typescript
const res = await recaptchaenterprise.firewallpolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.assessments.create`

**POST** `v1/{+parent}/assessments`

Creates an Assessment of the likelihood an event is legitimate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which the assessment is created, in the format `projects/{project}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1Assessment`

**Response**: `GoogleCloudRecaptchaenterpriseV1Assessment`

```typescript
const res = await recaptchaenterprise.assessments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `recaptchaenterprise.projects.assessments.annotate`

**POST** `v1/{+name}:annotate`

Annotates a previously created Assessment to provide additional information on whether the event turned out to be authentic or fraudulent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Assessment, in the format `projects/{project}/assessments/{assessment}`. |

**Request body**: `GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest`

**Response**: `GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse`

```typescript
const res = await recaptchaenterprise.assessments.annotate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment`

Account defender risk assessment.

| Property | Type | Description |
|----------|------|-------------|
| `accountTakeoverVerdict` | `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountTakeoverVerdict` | Output only. Account takeover risk assessment for this request. |
| `labels` | `array<string>` | Output only. Labels for this request. |

### `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountRiskReason`

Risk explainability reasons for account defender.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Output only. A risk reason associated with this request. |

### `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountTakeoverVerdict`

Account takeover risk assessment.

| Property | Type | Description |
|----------|------|-------------|
| `risk` | `number` | Output only. Account takeover attempt probability. Values are from 0.0 (lowest risk) to 1.0 (high... |
| `riskReasons` | `array<GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountRiskReason>` | Output only. Unordered list. Reasons why the request appears risky. Risk reasons can be returned ... |
| `trustReasons` | `array<GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountTrustReason>` | Output only. Unordered list. Reasons why the request appears trustworthy. Trust reasons can be re... |

### `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessmentAccountTrustReason`

Trust explainability reasons for account defender.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Output only. A trust reason associated with this request. |

### `GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo`

Information about account verification, used for identity verification.

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo>` | Optional. Endpoints that can be used for identity verification. |
| `languageCode` | `string` | Optional. Language code preference for the verification message, set as a IETF BCP 47 language code. |
| `latestVerificationResult` | `string` | Output only. Result of the latest account verification challenge. |
| `username` | `string` | Username of the account that is being verified. Deprecated. Customers should now provide the `acc... |

### `GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest`

The AddIpOverride request message.

| Property | Type | Description |
|----------|------|-------------|
| `ipOverrideData` | `GoogleCloudRecaptchaenterpriseV1IpOverrideData` | Required. IP override added to the key. |

### `GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse`

Response for AddIpOverride.

### `GoogleCloudRecaptchaenterpriseV1AndroidKeySettings`

Settings specific to keys that can be used by Android apps.

| Property | Type | Description |
|----------|------|-------------|
| `allowAllPackageNames` | `boolean` | Optional. If set to true, allowed_package_names are not enforced. |
| `allowedPackageNames` | `array<string>` | Optional. Android package names of apps allowed to use the key. Example: 'com.companyname.appname... |
| `supportNonGoogleAppStoreDistribution` | `boolean` | Optional. Set to true for keys that are used in an Android application that is available for down... |

### `GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest`

The request message to annotate an Assessment.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Optional. A stable account identifier to apply to the assessment. This is an alternative to setti... |
| `annotation` | `string` | Optional. The annotation that is assigned to the Event. This field can be left empty to provide r... |
| `hashedAccountId` | `string` | Optional. A stable hashed account identifier to apply to the assessment. This is an alternative t... |
| `phoneAuthenticationEvent` | `GoogleCloudRecaptchaenterpriseV1PhoneAuthenticationEvent` | Optional. If using an external multi-factor authentication provider, provide phone authentication... |
| `reasons` | `array<string>` | Optional. Reasons for the annotation that are assigned to the event. |
| `transactionEvent` | `GoogleCloudRecaptchaenterpriseV1TransactionEvent` | Optional. If the assessment is part of a payment transaction, provide details on payment lifecycl... |

### `GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse`

Empty response for AnnotateAssessment.

### `GoogleCloudRecaptchaenterpriseV1AppleDeveloperId`

Contains fields that are required to perform Apple-specific integrity checks.

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | Required. The Apple developer key ID (10-character string). |
| `privateKey` | `string` | Required. Input only. A private key (downloaded as a text file with a .p8 file extension) generat... |
| `teamId` | `string` | Required. The Apple team ID (10-character string) owning the provisioning profile used to build y... |

### `GoogleCloudRecaptchaenterpriseV1Assessment`

A reCAPTCHA Enterprise assessment resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountDefenderAssessment` | `GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment` | Output only. Assessment returned by account defender when an account identifier is provided. |
| `accountVerification` | `GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo` | Optional. Account verification information for identity verification. The assessment event must i... |
| `assessmentEnvironment` | `GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment` | Optional. The environment creating the assessment. This describes your environment (the system in... |
| `event` | `GoogleCloudRecaptchaenterpriseV1Event` | Optional. The event being assessed. |
| `firewallPolicyAssessment` | `GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment` | Output only. Assessment returned when firewall policies belonging to the project are evaluated us... |
| `fraudPreventionAssessment` | `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment` | Output only. Assessment returned by Fraud Prevention when TransactionData is provided. |
| `fraudSignals` | `GoogleCloudRecaptchaenterpriseV1FraudSignals` | Output only. Fraud Signals specific to the users involved in a payment transaction. |
| `name` | `string` | Output only. Identifier. The resource name for the Assessment in the format `projects/{project}/a... |
| `phoneFraudAssessment` | `GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment` | Output only. Assessment returned when a site key, a token, and a phone number as `user_id` are pr... |
| `privatePasswordLeakVerification` | `GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification` | Optional. The private password leak verification field contains the parameters that are used to t... |
| `riskAnalysis` | `GoogleCloudRecaptchaenterpriseV1RiskAnalysis` | Output only. The risk analysis result for the event being assessed. |
| `tokenProperties` | `GoogleCloudRecaptchaenterpriseV1TokenProperties` | Output only. Properties of the provided event token. |

### `GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment`

The environment creating the assessment. This describes your environment (the system invoking CreateAssessment), NOT the environment of your user.

| Property | Type | Description |
|----------|------|-------------|
| `client` | `string` | Optional. Identifies the client module initiating the CreateAssessment request. This can be the l... |
| `version` | `string` | Optional. The version of the client module. For example, "1.0.0". |

### `GoogleCloudRecaptchaenterpriseV1Bot`

Bot information and metadata.

| Property | Type | Description |
|----------|------|-------------|
| `botType` | `string` | Optional. Enumerated field representing the type of bot. |
| `name` | `string` | Optional. Enumerated string value that indicates the identity of the bot, formatted in kebab-case. |

### `GoogleCloudRecaptchaenterpriseV1ChallengeMetrics`

Metrics related to challenges.

| Property | Type | Description |
|----------|------|-------------|
| `failedCount` | `string` | Count of submitted challenge solutions that were incorrect or otherwise deemed suspicious such th... |
| `nocaptchaCount` | `string` | Count of nocaptchas (successful verification without a challenge) issued. |
| `pageloadCount` | `string` | Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to a count of pageloa... |
| `passedCount` | `string` | Count of nocaptchas (successful verification without a challenge) plus submitted challenge soluti... |

### `GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo`

Information about a verification endpoint that can be used for 2FA.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | Email address for which to trigger a verification request. |
| `lastVerificationTime` | `string` | Output only. Timestamp of the last successful verification for the endpoint, if any. |
| `phoneNumber` | `string` | Phone number for which to trigger a verification request. Should be given in E.164 format. |
| `requestToken` | `string` | Output only. Token to provide to the client to trigger endpoint verification. It must be used wit... |

### `GoogleCloudRecaptchaenterpriseV1Event`

The event being assessed.

| Property | Type | Description |
|----------|------|-------------|
| `expectedAction` | `string` | Optional. The expected action for this type of event. This should be the same action provided at ... |
| `express` | `boolean` | Optional. Flag for a reCAPTCHA express request for an assessment without a token. If enabled, `si... |
| `firewallPolicyEvaluation` | `boolean` | Optional. Flag for enabling firewall policy config assessment. If this flag is enabled, the firew... |
| `fraudPrevention` | `string` | Optional. The Fraud Prevention setting for this assessment. |
| `hashedAccountId` | `string` | Optional. Deprecated: use `user_info.account_id` instead. Unique stable hashed user identifier fo... |
| `headers` | `array<string>` | Optional. HTTP header information about the request. |
| `ja3` | `string` | Optional. JA3 fingerprint for SSL clients. To learn how to compute this fingerprint, please refer... |
| `ja4` | `string` | Optional. JA4 fingerprint for SSL clients. To learn how to compute this fingerprint, please refer... |
| `requestedUri` | `string` | Optional. The URI resource the user requested that triggered an assessment. |
| `siteKey` | `string` | Optional. The site key that was used to invoke reCAPTCHA Enterprise on your site and generate the... |
| `token` | `string` | Optional. The user response token provided by the reCAPTCHA Enterprise client-side integration on... |
| `transactionData` | `GoogleCloudRecaptchaenterpriseV1TransactionData` | Optional. Data describing a payment transaction to be assessed. Sending this data enables reCAPTC... |
| `userAgent` | `string` | Optional. The user agent present in the request from the user's device related to this event. |
| `userInfo` | `GoogleCloudRecaptchaenterpriseV1UserInfo` | Optional. Information about the user that generates this event, when they can be identified. They... |
| `userIpAddress` | `string` | Optional. The IP address in the request from the user's device related to this event. |
| `wafTokenAssessment` | `boolean` | Optional. Flag for running Web Application Firewall (WAF) token assessment. If enabled, the token... |

### `GoogleCloudRecaptchaenterpriseV1ExpressKeySettings`

Settings specific to keys that can be used for reCAPTCHA Express.

### `GoogleCloudRecaptchaenterpriseV1FirewallAction`

An individual action. Each action represents what to do if a policy matches.

| Property | Type | Description |
|----------|------|-------------|
| `allow` | `GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction` | The user request did not match any policy and should be allowed access to the requested resource. |
| `block` | `GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction` | This action denies access to a given page. The user gets an HTTP error code. |
| `includeRecaptchaScript` | `GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction` | This action injects reCAPTCHA JavaScript code into the HTML page returned by the site backend. |
| `redirect` | `GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction` | This action redirects the request to a reCAPTCHA interstitial to attach a token. |
| `setHeader` | `GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction` | This action sets a custom header but allow the request to continue to the customer backend. |
| `substitute` | `GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction` | This action transparently serves a different page to an offending user. |

### `GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction`

An allow action continues processing a request unimpeded.

### `GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction`

A block action serves an HTTP error code a prevents the request from hitting the backend.

### `GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction`

An include reCAPTCHA script action involves injecting reCAPTCHA JavaScript code into the HTML returned by the site backend. This reCAPTCHA script is tasked with collecting user signals on the requested web page, issuing tokens as a cookie within the site domain, and enabling their utilization in subsequent page requests.

### `GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction`

A redirect action returns a 307 (temporary redirect) response, pointing the user to a reCAPTCHA interstitial page to attach a token.

### `GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction`

A set header action sets a header and forwards the request to the backend. This can be used to trigger custom protection implemented on the backend.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. The header key to set in the request to the backend server. |
| `value` | `string` | Optional. The header value to set in the request to the backend server. |

### `GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction`

A substitute action transparently serves a different page than the one requested.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. The address to redirect to. The target is a relative path in the current host. Example:... |

### `GoogleCloudRecaptchaenterpriseV1FirewallPolicy`

A FirewallPolicy represents a single matching pattern and resulting actions to take.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudRecaptchaenterpriseV1FirewallAction>` | Optional. The actions that the caller should take regarding user access. There should be at most ... |
| `condition` | `string` | Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy... |
| `description` | `string` | Optional. A description of what this policy aims to achieve, for convenience purposes. The descri... |
| `name` | `string` | Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpo... |
| `path` | `string` | Optional. The path for which this policy applies, specified as a glob pattern. For more informati... |

### `GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment`

Policy config assessment.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Output only. If the processing of a policy config fails, an error is populated and the firewall_p... |
| `firewallPolicy` | `GoogleCloudRecaptchaenterpriseV1FirewallPolicy` | Output only. The policy that matched the request. If more than one policy may match, this is the ... |

### `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment`

Assessment for Fraud Prevention.

| Property | Type | Description |
|----------|------|-------------|
| `behavioralTrustVerdict` | `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict` | Output only. Assessment of this transaction for behavioral trust. |
| `cardTestingVerdict` | `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict` | Output only. Assessment of this transaction for risk of being part of a card testing attack. |
| `riskReasons` | `array<GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason>` | Output only. Reasons why the transaction is probably fraudulent and received a high transaction r... |
| `stolenInstrumentVerdict` | `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict` | Output only. Assessment of this transaction for risk of a stolen instrument. |
| `transactionRisk` | `number` | Output only. Probability of this transaction being fraudulent. Summarizes the combined risk of at... |

### `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict`

Information about behavioral trust of the transaction.

| Property | Type | Description |
|----------|------|-------------|
| `trust` | `number` | Output only. Probability of this transaction attempt being executed in a behaviorally trustworthy... |

### `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict`

Information about card testing fraud, where an adversary is testing fraudulently obtained cards or brute forcing their details.

| Property | Type | Description |
|----------|------|-------------|
| `risk` | `number` | Output only. Probability of this transaction attempt being part of a card testing attack. Values ... |

### `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason`

Risk reasons applicable to the Fraud Prevention assessment.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Output only. Risk reasons applicable to the Fraud Prevention assessment. |

### `GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict`

Information about stolen instrument fraud, where the user is not the legitimate owner of the instrument being used for the purchase.

| Property | Type | Description |
|----------|------|-------------|
| `risk` | `number` | Output only. Probability of this transaction being executed with a stolen instrument. Values are ... |

### `GoogleCloudRecaptchaenterpriseV1FraudSignals`

Fraud signals describing users and cards involved in the transaction.

| Property | Type | Description |
|----------|------|-------------|
| `cardSignals` | `GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals` | Output only. Signals describing the payment card or cards used in this transaction. |
| `userSignals` | `GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals` | Output only. Signals describing the end user in this transaction. |

### `GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals`

Signals describing the payment card used in this transaction.

| Property | Type | Description |
|----------|------|-------------|
| `cardLabels` | `array<string>` | Output only. The labels for the payment card in this transaction. |

### `GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals`

Signals describing the user involved in this transaction.

| Property | Type | Description |
|----------|------|-------------|
| `activeDaysLowerBound` | `integer` | Output only. This user (based on email, phone, and other identifiers) has been seen on the intern... |
| `syntheticRisk` | `number` | Output only. Likelihood (from 0.0 to 1.0) this user includes synthetic components in their identi... |

### `GoogleCloudRecaptchaenterpriseV1IOSKeySettings`

Settings specific to keys that can be used by iOS apps.

| Property | Type | Description |
|----------|------|-------------|
| `allowAllBundleIds` | `boolean` | Optional. If set to true, allowed_bundle_ids are not enforced. |
| `allowedBundleIds` | `array<string>` | Optional. iOS bundle IDs of apps allowed to use the key. Example: 'com.companyname.productname.ap... |
| `appleDeveloperId` | `GoogleCloudRecaptchaenterpriseV1AppleDeveloperId` | Optional. Apple Developer account details for the app that is protected by the reCAPTCHA Key. reC... |

### `GoogleCloudRecaptchaenterpriseV1IpOverrideData`

Information about the IP or IP range override.

| Property | Type | Description |
|----------|------|-------------|
| `ip` | `string` | Required. The IP address to override (can be IPv4, IPv6 or CIDR). The IP override must be a valid... |
| `overrideType` | `string` | Required. Describes the type of IP override. |

### `GoogleCloudRecaptchaenterpriseV1Key`

A key used to identify and configure applications (web and/or mobile) that use reCAPTCHA Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `androidSettings` | `GoogleCloudRecaptchaenterpriseV1AndroidKeySettings` | Settings for keys that can be used by Android apps. |
| `createTime` | `string` | Output only. The timestamp corresponding to the creation of this key. |
| `displayName` | `string` | Required. Human-readable display name of this key. Modifiable by user. |
| `expressSettings` | `GoogleCloudRecaptchaenterpriseV1ExpressKeySettings` | Settings for keys that can be used by reCAPTCHA Express. |
| `iosSettings` | `GoogleCloudRecaptchaenterpriseV1IOSKeySettings` | Settings for keys that can be used by iOS apps. |
| `labels` | `object` | Optional. See [Creating and managing labels] (https://cloud.google.com/recaptcha/docs/labels). |
| `name` | `string` | Identifier. The resource name for the Key in the format `projects/{project}/keys/{key}`. |
| `testingOptions` | `GoogleCloudRecaptchaenterpriseV1TestingOptions` | Optional. Options for user acceptance testing. |
| `wafSettings` | `GoogleCloudRecaptchaenterpriseV1WafSettings` | Optional. Settings for Web Application Firewall (WAF). |
| `webSettings` | `GoogleCloudRecaptchaenterpriseV1WebKeySettings` | Settings for keys that can be used by websites. |

### `GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse`

Response to request to list firewall policies belonging to a project.

| Property | Type | Description |
|----------|------|-------------|
| `firewallPolicies` | `array<GoogleCloudRecaptchaenterpriseV1FirewallPolicy>` | Policy details. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. It is set to empty if no policies remain in results. |

### `GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse`

Response for ListIpOverrides.

| Property | Type | Description |
|----------|------|-------------|
| `ipOverrides` | `array<GoogleCloudRecaptchaenterpriseV1IpOverrideData>` | IP Overrides details. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. If this field is empty, no keys remain in the results. |

### `GoogleCloudRecaptchaenterpriseV1ListKeysResponse`

Response to request to list keys in a project.

| Property | Type | Description |
|----------|------|-------------|
| `keys` | `array<GoogleCloudRecaptchaenterpriseV1Key>` | Key details. |
| `nextPageToken` | `string` | Token to retrieve the next page of results. It is set to empty if no keys remain in results. |

### `GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse`

The response to a `ListRelatedAccountGroupMemberships` call.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `relatedAccountGroupMemberships` | `array<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>` | The memberships listed by the query. |

### `GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse`

The response to a `ListRelatedAccountGroups` call.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `relatedAccountGroups` | `array<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup>` | The groups of related accounts listed by the query. |

### `GoogleCloudRecaptchaenterpriseV1Metrics`

Metrics for a single Key.

| Property | Type | Description |
|----------|------|-------------|
| `challengeMetrics` | `array<GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>` | Metrics are continuous and in order by dates, and in the granularity of day. Only challenge-based... |
| `name` | `string` | Output only. Identifier. The name of the metrics, in the format `projects/{project}/keys/{key}/me... |
| `scoreMetrics` | `array<GoogleCloudRecaptchaenterpriseV1ScoreMetrics>` | Metrics are continuous and in order by dates, and in the granularity of day. All Key types should... |
| `startTime` | `string` | Inclusive start time aligned to a day in the America/Los_Angeles (Pacific) timezone. |

### `GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest`

The migrate key request message.

| Property | Type | Description |
|----------|------|-------------|
| `skipBillingCheck` | `boolean` | Optional. If true, skips the billing check. A reCAPTCHA Enterprise key or migrated key behaves di... |

### `GoogleCloudRecaptchaenterpriseV1PhoneAuthenticationEvent`

Details on a phone authentication event

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | Optional. The time at which the multi-factor authentication event (challenge or verification) occ... |
| `phoneNumber` | `string` | Required. Phone number in E.164 format for which a multi-factor authentication challenge was init... |

### `GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment`

Assessment for Phone Fraud

| Property | Type | Description |
|----------|------|-------------|
| `smsTollFraudVerdict` | `GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict` | Output only. Assessment of this phone event for risk of SMS toll fraud. |

### `GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification`

Private password leak verification info.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedLeakMatchPrefixes` | `array<string>` | Output only. List of prefixes of the encrypted potential password leaks that matched the given pa... |
| `encryptedUserCredentialsHash` | `string` | Optional. Encrypted Scrypt hash of the canonicalized username+password. It is re-encrypted by the... |
| `lookupHashPrefix` | `string` | Required. Exactly 26-bit prefix of the SHA-256 hash of the canonicalized username. It is used to ... |
| `reencryptedUserCredentialsHash` | `string` | Output only. Corresponds to the re-encryption of the `encrypted_user_credentials_hash` field. It ... |

### `GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup`

A group of related accounts.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Identifier. The resource name for the related account group in the format `projects/{pr... |

### `GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership`

A membership in a group of related accounts.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The unique stable account identifier of the member. The identifier corresponds to an `account_id`... |
| `hashedAccountId` | `string` | Deprecated: use `account_id` instead. The unique stable hashed account identifier of the member. ... |
| `name` | `string` | Required. Identifier. The resource name for this membership in the format `projects/{project}/rel... |

### `GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest`

The RemoveIpOverride request message.

| Property | Type | Description |
|----------|------|-------------|
| `ipOverrideData` | `GoogleCloudRecaptchaenterpriseV1IpOverrideData` | Required. IP override to be removed from the key. |

### `GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse`

Response for RemoveIpOverride.

### `GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest`

The reorder firewall policies request message.

| Property | Type | Description |
|----------|------|-------------|
| `names` | `array<string>` | Required. A list containing all policy names, in the new order. Each name is in the format `proje... |

### `GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse`

The reorder firewall policies response message.

### `GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse`

Secret key is used only in legacy reCAPTCHA. It must be used in a 3rd party integration with legacy reCAPTCHA.

| Property | Type | Description |
|----------|------|-------------|
| `legacySecretKey` | `string` | The secret key (also known as shared secret) authorizes communication between your application ba... |

### `GoogleCloudRecaptchaenterpriseV1RiskAnalysis`

Risk analysis result for an event.

| Property | Type | Description |
|----------|------|-------------|
| `challenge` | `string` | Output only. Challenge information for POLICY_BASED_CHALLENGE and INVISIBLE keys. |
| `extendedVerdictReasons` | `array<string>` | Output only. Advanced reasons contributing to the risk analysis verdict. These reasons are availa... |
| `reasons` | `array<string>` | Output only. Reasons contributing to the risk analysis verdict. |
| `score` | `number` | Output only. Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate traffic wh... |
| `verifiedBots` | `array<GoogleCloudRecaptchaenterpriseV1Bot>` | Output only. Bots with identities that have been verified by reCAPTCHA and detected in the event. |

### `GoogleCloudRecaptchaenterpriseV1ScoreDistribution`

Score distribution.

| Property | Type | Description |
|----------|------|-------------|
| `scoreBuckets` | `object` | Map key is score value multiplied by 100. The scores are discrete values between [0, 1]. The maxi... |

### `GoogleCloudRecaptchaenterpriseV1ScoreMetrics`

Metrics related to scoring.

| Property | Type | Description |
|----------|------|-------------|
| `actionMetrics` | `object` | Action-based metrics. The map key is the action name which specified by the site owners at time o... |
| `overallMetrics` | `GoogleCloudRecaptchaenterpriseV1ScoreDistribution` | Aggregated score metrics for all traffic. |

### `GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest`

The request message to search related account group memberships.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Optional. The unique stable account identifier used to search connections. The identifier should ... |
| `hashedAccountId` | `string` | Optional. Deprecated: use `account_id` instead. The unique stable hashed account identifier used ... |
| `pageSize` | `integer` | Optional. The maximum number of groups to return. The service might return fewer than this value.... |
| `pageToken` | `string` | Optional. A page token, received from a previous `SearchRelatedAccountGroupMemberships` call. Pro... |

### `GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse`

The response to a `SearchRelatedAccountGroupMemberships` call.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `relatedAccountGroupMemberships` | `array<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>` | The queried memberships. |

### `GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict`

Information about SMS toll fraud.

| Property | Type | Description |
|----------|------|-------------|
| `reasons` | `array<string>` | Output only. Reasons contributing to the SMS toll fraud verdict. |
| `risk` | `number` | Output only. Probability of an SMS event being fraudulent. Values are from 0.0 (lowest) to 1.0 (h... |

### `GoogleCloudRecaptchaenterpriseV1TestingOptions`

Options for user acceptance testing.

| Property | Type | Description |
|----------|------|-------------|
| `testingChallenge` | `string` | Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this si... |
| `testingScore` | `number` | Optional. All assessments for this Key return this score. Must be between 0 (likely not legitimat... |

### `GoogleCloudRecaptchaenterpriseV1TokenProperties`

Properties of the provided event token.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Output only. Action name provided at token generation. |
| `androidPackageName` | `string` | Output only. The name of the Android package with which the token was generated (Android keys only). |
| `createTime` | `string` | Output only. The timestamp corresponding to the generation of the token. |
| `hostname` | `string` | Output only. The hostname of the page on which the token was generated (Web keys only). |
| `invalidReason` | `string` | Output only. Reason associated with the response when valid = false. |
| `iosBundleId` | `string` | Output only. The ID of the iOS bundle with which the token was generated (iOS keys only). |
| `valid` | `boolean` | Output only. Whether the provided user response token is valid. When valid = false, the reason co... |

### `GoogleCloudRecaptchaenterpriseV1TransactionData`

Transaction data associated with a payment protected by reCAPTCHA Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `billingAddress` | `GoogleCloudRecaptchaenterpriseV1TransactionDataAddress` | Optional. Address associated with the payment method when applicable. |
| `cardBin` | `string` | Optional. The Bank Identification Number - generally the first 6 or 8 digits of the card. |
| `cardLastFour` | `string` | Optional. The last four digits of the card. |
| `currencyCode` | `string` | Optional. The currency code in ISO-4217 format. |
| `gatewayInfo` | `GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo` | Optional. Information about the payment gateway's response to the transaction. |
| `items` | `array<GoogleCloudRecaptchaenterpriseV1TransactionDataItem>` | Optional. Items purchased in this transaction. |
| `merchants` | `array<GoogleCloudRecaptchaenterpriseV1TransactionDataUser>` | Optional. Information about the user or users fulfilling the transaction. |
| `paymentMethod` | `string` | Optional. The payment method for the transaction. The allowed values are: * credit-card * debit-c... |
| `shippingAddress` | `GoogleCloudRecaptchaenterpriseV1TransactionDataAddress` | Optional. Destination address if this transaction involves shipping a physical item. |
| `shippingValue` | `number` | Optional. The value of shipping in the specified currency. 0 for free or no shipping. |
| `transactionId` | `string` | Unique identifier for the transaction. This custom identifier can be used to reference this trans... |
| `user` | `GoogleCloudRecaptchaenterpriseV1TransactionDataUser` | Optional. Information about the user paying/initiating the transaction. |
| `value` | `number` | Optional. The decimal value of the transaction in the specified currency. |

### `GoogleCloudRecaptchaenterpriseV1TransactionDataAddress`

Structured address format for billing and shipping addresses.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `array<string>` | Optional. The first lines of the address. The first line generally contains the street name and n... |
| `administrativeArea` | `string` | Optional. The state, province, or otherwise administrative area of the address. |
| `locality` | `string` | Optional. The town/city of the address. |
| `postalCode` | `string` | Optional. The postal or ZIP code of the address. |
| `recipient` | `string` | Optional. The recipient name, potentially including information such as "care of". |
| `regionCode` | `string` | Optional. The CLDR country/region of the address. |

### `GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo`

Details about the transaction from the gateway.

| Property | Type | Description |
|----------|------|-------------|
| `avsResponseCode` | `string` | Optional. AVS response code from the gateway (available only when reCAPTCHA Enterprise is called ... |
| `cvvResponseCode` | `string` | Optional. CVV response code from the gateway (available only when reCAPTCHA Enterprise is called ... |
| `gatewayResponseCode` | `string` | Optional. Gateway response code describing the state of the transaction. |
| `name` | `string` | Optional. Name of the gateway service (for example, stripe, square, paypal). |

### `GoogleCloudRecaptchaenterpriseV1TransactionDataItem`

Line items being purchased in this transaction.

| Property | Type | Description |
|----------|------|-------------|
| `merchantAccountId` | `string` | Optional. When a merchant is specified, its corresponding account_id. Necessary to populate marke... |
| `name` | `string` | Optional. The full name of the item. |
| `quantity` | `string` | Optional. The quantity of this item that is being purchased. |
| `value` | `number` | Optional. The value per item that the user is paying, in the transaction currency, after discounts. |

### `GoogleCloudRecaptchaenterpriseV1TransactionDataUser`

Details about a user's account involved in the transaction.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Optional. Unique account identifier for this user. If using account defender, this should match t... |
| `creationMs` | `string` | Optional. The epoch milliseconds of the user's account creation. |
| `email` | `string` | Optional. The email address of the user. |
| `emailVerified` | `boolean` | Optional. Whether the email has been verified to be accessible by the user (OTP or similar). |
| `phoneNumber` | `string` | Optional. The phone number of the user, with country code. |
| `phoneVerified` | `boolean` | Optional. Whether the phone number has been verified to be accessible by the user (OTP or similar). |

### `GoogleCloudRecaptchaenterpriseV1TransactionEvent`

Describes an event in the lifecycle of a payment transaction.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | Optional. Timestamp when this transaction event occurred; otherwise assumed to be the time of the... |
| `eventType` | `string` | Optional. The type of this transaction event. |
| `reason` | `string` | Optional. The reason or standardized code that corresponds with this transaction event, if one ex... |
| `value` | `number` | Optional. The value that corresponds with this transaction event, if one exists. For example, a r... |

### `GoogleCloudRecaptchaenterpriseV1UserId`

An identifier associated with a user.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Optional. An email address. |
| `phoneNumber` | `string` | Optional. A phone number. Should use the E.164 format. |
| `username` | `string` | Optional. A unique username, if different from all the other identifiers and `account_id` that ar... |

### `GoogleCloudRecaptchaenterpriseV1UserInfo`

User information associated with a request protected by reCAPTCHA Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Optional. For logged-in requests or login/registration requests, the unique account identifier as... |
| `createAccountTime` | `string` | Optional. Creation time for this account associated with this user. Leave blank for non logged-in... |
| `userIds` | `array<GoogleCloudRecaptchaenterpriseV1UserId>` | Optional. Identifiers associated with this user or request. |

### `GoogleCloudRecaptchaenterpriseV1WafSettings`

Settings specific to keys that can be used for WAF (Web Application Firewall).

| Property | Type | Description |
|----------|------|-------------|
| `wafFeature` | `string` | Required. The Web Application Firewall (WAF) feature for which this key is enabled. |
| `wafService` | `string` | Required. The Web Application Firewall (WAF) service that uses this key. |

### `GoogleCloudRecaptchaenterpriseV1WebKeySettings`

Settings specific to keys that can be used by websites.

| Property | Type | Description |
|----------|------|-------------|
| `allowAllDomains` | `boolean` | Optional. If set to true, it means allowed_domains are not enforced. |
| `allowAmpTraffic` | `boolean` | Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is... |
| `allowedDomains` | `array<string>` | Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed ... |
| `challengeSecurityPreference` | `string` | Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges... |
| `challengeSettings` | `GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings` | Optional. Challenge settings. |
| `integrationType` | `string` | Required. Describes how this key is integrated with the website. |

### `GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings`

Per-action challenge settings.

| Property | Type | Description |
|----------|------|-------------|
| `scoreThreshold` | `number` | Required. A challenge is triggered if the end-user score is below that threshold. Value must be b... |

### `GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings`

Settings for POLICY_BASED_CHALLENGE keys to control when a challenge is triggered.

| Property | Type | Description |
|----------|------|-------------|
| `actionSettings` | `object` | Optional. The action to score threshold map. The action name should be the same as the action nam... |
| `defaultSettings` | `GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings` | Required. Defines when a challenge is triggered (unless the default threshold is overridden for t... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

