# Chrome Policy API - API Reference

**Version**: `v1` | **Methods**: 14 | **Schemas**: 52

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `chromepolicy.media.upload` | POST | `v1/{+customer}/policies/files:uploadPolicyFile` | Creates an enterprise file from the content provided by user. Returns a public download url for e... |
| `chromepolicy.customers.policies.resolve` | POST | `v1/{+customer}/policies:resolve` | Gets the resolved policy values for a list of policies that match a search query. |
| `chromepolicy.customers.policies.orgunits.batchModify` | POST | `v1/{+customer}/policies/orgunits:batchModify` | Modify multiple policy values that are applied to a specific org unit. All targets must have the ... |
| `chromepolicy.customers.policies.orgunits.batchInherit` | POST | `v1/{+customer}/policies/orgunits:batchInherit` | Modify multiple policy values that are applied to a specific org unit so that they now inherit th... |
| `chromepolicy.customers.policies.groups.batchModify` | POST | `v1/{+customer}/policies/groups:batchModify` | Modify multiple policy values that are applied to a specific group. All targets must have the sam... |
| `chromepolicy.customers.policies.groups.batchDelete` | POST | `v1/{+customer}/policies/groups:batchDelete` | Delete multiple policy values that are applied to a specific group. All targets must have the sam... |
| `chromepolicy.customers.policies.groups.listGroupPriorityOrdering` | POST | `v1/{+customer}/policies/groups:listGroupPriorityOrdering` | Retrieve a group priority ordering for an app. The target app must be supplied in `additionalTarg... |
| `chromepolicy.customers.policies.groups.updateGroupPriorityOrdering` | POST | `v1/{+customer}/policies/groups:updateGroupPriorityOrdering` | Update a group priority ordering for an app. The target app must be supplied in `additionalTarget... |
| `chromepolicy.customers.policies.networks.defineCertificate` | POST | `v1/{+customer}/policies/networks:defineCertificate` | Creates a certificate at a specified OU for a customer. |
| `chromepolicy.customers.policies.networks.removeCertificate` | POST | `v1/{+customer}/policies/networks:removeCertificate` | Remove an existing certificate by guid. |
| `chromepolicy.customers.policies.networks.removeNetwork` | POST | `v1/{+customer}/policies/networks:removeNetwork` | Remove an existing network by guid. |
| `chromepolicy.customers.policies.networks.defineNetwork` | POST | `v1/{+customer}/policies/networks:defineNetwork` | Define a new network. |
| `chromepolicy.customers.policySchemas.get` | GET | `v1/{+name}` | Get a specific policy schema for a customer by its resource name. |
| `chromepolicy.customers.policySchemas.list` | GET | `v1/{+parent}/policySchemas` | Gets a list of policy schemas that match a specified filter value for a given customer. |

### `chromepolicy.media.upload`

**POST** `v1/{+customer}/policies/files:uploadPolicyFile`

Creates an enterprise file from the content provided by user. Returns a public download url for end user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer for which the file upload will apply. |

**Request body**: `GoogleChromePolicyVersionsV1UploadPolicyFileRequest`

**Response**: `GoogleChromePolicyVersionsV1UploadPolicyFileResponse`

```typescript
const res = await chromepolicy.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.resolve`

**POST** `v1/{+customer}/policies:resolve`

Gets the resolved policy values for a list of policies that match a search query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | ID of the G Suite account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1ResolveRequest`

**Response**: `GoogleChromePolicyVersionsV1ResolveResponse`

```typescript
const res = await chromepolicy.policies.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`
- `https://www.googleapis.com/auth/chrome.management.policy.readonly`

---

### `chromepolicy.customers.policies.orgunits.batchModify`

**POST** `v1/{+customer}/policies/orgunits:batchModify`

Modify multiple policy values that are applied to a specific org unit. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | ID of the G Suite account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromepolicy.orgunits.batchModify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.orgunits.batchInherit`

**POST** `v1/{+customer}/policies/orgunits:batchInherit`

Modify multiple policy values that are applied to a specific org unit so that they now inherit the value from a parent (if applicable). All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | ID of the G Suite account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromepolicy.orgunits.batchInherit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.groups.batchModify`

**POST** `v1/{+customer}/policies/groups:batchModify`

Modify multiple policy values that are applied to a specific group. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | ID of the Google Workspace account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromepolicy.groups.batchModify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.groups.batchDelete`

**POST** `v1/{+customer}/policies/groups:batchDelete`

Delete multiple policy values that are applied to a specific group. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | ID of the Google Workspace account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromepolicy.groups.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.groups.listGroupPriorityOrdering`

**POST** `v1/{+customer}/policies/groups:listGroupPriorityOrdering`

Retrieve a group priority ordering for an app. The target app must be supplied in `additionalTargetKeyNames` in the PolicyTargetKey. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. ID of the Google Workspace account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest`

**Response**: `GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse`

```typescript
const res = await chromepolicy.groups.listGroupPriorityOrdering({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`
- `https://www.googleapis.com/auth/chrome.management.policy.readonly`

---

### `chromepolicy.customers.policies.groups.updateGroupPriorityOrdering`

**POST** `v1/{+customer}/policies/groups:updateGroupPriorityOrdering`

Update a group priority ordering for an app. The target app must be supplied in `additionalTargetKeyNames` in the PolicyTargetKey. On failure the request will return the error details as part of the google.rpc.Status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. ID of the Google Workspace account or literal "my_customer" for the customer associated to the request. |

**Request body**: `GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await chromepolicy.groups.updateGroupPriorityOrdering({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.networks.defineCertificate`

**POST** `v1/{+customer}/policies/networks:defineCertificate`

Creates a certificate at a specified OU for a customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer for which the certificate will apply. |

**Request body**: `GoogleChromePolicyVersionsV1DefineCertificateRequest`

**Response**: `GoogleChromePolicyVersionsV1DefineCertificateResponse`

```typescript
const res = await chromepolicy.networks.defineCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.networks.removeCertificate`

**POST** `v1/{+customer}/policies/networks:removeCertificate`

Remove an existing certificate by guid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer whose certificate will be removed. |

**Request body**: `GoogleChromePolicyVersionsV1RemoveCertificateRequest`

**Response**: `GoogleChromePolicyVersionsV1RemoveCertificateResponse`

```typescript
const res = await chromepolicy.networks.removeCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.networks.removeNetwork`

**POST** `v1/{+customer}/policies/networks:removeNetwork`

Remove an existing network by guid.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer whose network will be removed. |

**Request body**: `GoogleChromePolicyVersionsV1RemoveNetworkRequest`

**Response**: `GoogleChromePolicyVersionsV1RemoveNetworkResponse`

```typescript
const res = await chromepolicy.networks.removeNetwork({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policies.networks.defineNetwork`

**POST** `v1/{+customer}/policies/networks:defineNetwork`

Define a new network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customer` | `string` | path | Yes | Required. The customer who will own this new network. |

**Request body**: `GoogleChromePolicyVersionsV1DefineNetworkRequest`

**Response**: `GoogleChromePolicyVersionsV1DefineNetworkResponse`

```typescript
const res = await chromepolicy.networks.defineNetwork({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`

---

### `chromepolicy.customers.policySchemas.get`

**GET** `v1/{+name}`

Get a specific policy schema for a customer by its resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The policy schema resource name to query. |

**Response**: `GoogleChromePolicyVersionsV1PolicySchema`

```typescript
const res = await chromepolicy.policySchemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`
- `https://www.googleapis.com/auth/chrome.management.policy.readonly`

---

### `chromepolicy.customers.policySchemas.list`

**GET** `v1/{+parent}/policySchemas`

Gets a list of policy schemas that match a specified filter value for a given customer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The customer for which the listing request will apply. |
| `filter` | `string` | query | No | The schema filter used to find a particular schema based on fields like its resource name, description and `additiona... |
| `pageSize` | `integer` | query | No | The maximum number of policy schemas to return, defaults to 100 and has a maximum of 1000. |
| `pageToken` | `string` | query | No | The page token used to retrieve a specific page of the listing request. |

**Response**: `GoogleChromePolicyVersionsV1ListPolicySchemasResponse`

```typescript
const res = await chromepolicy.policySchemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chrome.management.policy`
- `https://www.googleapis.com/auth/chrome.management.policy.readonly`

---

## Schemas

### `GoogleChromePolicyVersionsV1AdditionalTargetKeyName`

Additional key names that will be used to identify the target of the policy value.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key name. |
| `keyDescription` | `string` | Key description. |

### `GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest`

Request message for specifying that multiple policy values will be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest>` | List of policies that will be deleted as defined by the `requests`. All requests in the list must... |

### `GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest`

Request message for specifying that multiple policy values inherit their value from their parents.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest>` | List of policies that have to inherit their values as defined by the `requests`. All requests in ... |

### `GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest`

Request message for modifying multiple policy values for a specific group-based target.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest>` | List of policies to modify as defined by the `requests`. All requests in the list must follow the... |

### `GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest`

Request message for modifying multiple policy values for a specific target.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest>` | List of policies to modify as defined by the `requests`. All requests in the list must follow the... |

### `GoogleChromePolicyVersionsV1CertificateReference`

Error information for removing of a specific certificate on a specific target. A reference to a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Output only. The name of the referencing network. |
| `orgUnitId` | `string` | Output only. The obfuscated id of the org unit the referencing network is in. |

### `GoogleChromePolicyVersionsV1DefineCertificateRequest`

Request object for creating a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `ceritificateName` | `string` | Optional. The optional name of the certificate. If not specified, the certificate issuer will be ... |
| `certificate` | `string` | Required. The raw contents of the .PEM, .CRT, or .CER file. |
| `settings` | `array<GoogleChromePolicyVersionsV1NetworkSetting>` | Optional. Certificate settings within the chrome.networks.certificates namespace. |
| `targetResource` | `string` | Required. The target resource on which this certificate is applied. The following resources are s... |

### `GoogleChromePolicyVersionsV1DefineCertificateResponse`

Response object for creating a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `networkId` | `string` | The guid of the certificate created by the action. |
| `settings` | `array<GoogleChromePolicyVersionsV1NetworkSetting>` | the affiliated settings of the certificate (NOT IMPLEMENTED) |
| `targetResource` | `string` | the resource at which the certificate is defined. |

### `GoogleChromePolicyVersionsV1DefineNetworkRequest`

Request object for creating a new network.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Name of the new created network. |
| `settings` | `array<GoogleChromePolicyVersionsV1NetworkSetting>` | Required. Detailed network settings. |
| `targetResource` | `string` | Required. The target resource on which this new network will be defined. The following resources ... |

### `GoogleChromePolicyVersionsV1DefineNetworkResponse`

Response object for creating a network.

| Property | Type | Description |
|----------|------|-------------|
| `networkId` | `string` | Network ID of the new created network. |
| `settings` | `array<GoogleChromePolicyVersionsV1NetworkSetting>` | Detailed network settings of the new created network |
| `targetResource` | `string` | The target resource on which this new network will be defined. The following resources are suppor... |

### `GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest`

Request parameters for deleting the policy value of a specific group target.

| Property | Type | Description |
|----------|------|-------------|
| `policySchema` | `string` | The fully qualified name of the policy schema that is being inherited. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to modify a policy. The target resource must po... |

### `GoogleChromePolicyVersionsV1FieldConstraints`

Information about any range constraints.

| Property | Type | Description |
|----------|------|-------------|
| `numericRangeConstraint` | `GoogleChromePolicyVersionsV1NumericRangeConstraint` | The allowed range for numeric fields. |
| `uploadedFileConstraints` | `GoogleChromePolicyVersionsV1UploadedFileConstraints` | Constraints on the uploaded file of a file policy. If present, this policy requires a URL that ca... |

### `GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest`

Request parameters for inheriting policy value of a specific org unit target from the policy value of its parent org unit.

| Property | Type | Description |
|----------|------|-------------|
| `policySchema` | `string` | The fully qualified name of the policy schema that is being inherited. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to modify a policy. The target resource must po... |

### `GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest`

Request message for listing the group priority ordering of an app.

| Property | Type | Description |
|----------|------|-------------|
| `policyNamespace` | `string` | The namespace of the policy type for the request. |
| `policySchema` | `string` | The schema name of the policy for the request. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to retrieve the group priority ordering. The ta... |

### `GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse`

Response message for listing the group priority ordering of an app.

| Property | Type | Description |
|----------|------|-------------|
| `groupIds` | `array<string>` | Output only. The group IDs, in priority ordering. |
| `policyNamespace` | `string` | Output only. The namespace of the policy type of the group IDs. |
| `policySchema` | `string` | Output only. The schema name of the policy for the group IDs. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Output only. The target resource for which the group priority ordering has been retrieved. |

### `GoogleChromePolicyVersionsV1ListPolicySchemasResponse`

Response message for listing policy schemas that match a filter.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The page token used to get the next page of policy schemas. |
| `policySchemas` | `array<GoogleChromePolicyVersionsV1PolicySchema>` | The list of policy schemas that match the query. |

### `GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest`

Request parameters for modifying a policy value for a specific group target.

| Property | Type | Description |
|----------|------|-------------|
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to modify a policy. The target resource must po... |
| `policyValue` | `GoogleChromePolicyVersionsV1PolicyValue` | The new value for the policy. |
| `updateMask` | `string` | Required. Policy fields to update. Only fields in this mask will be updated; other fields in `pol... |

### `GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest`

Request parameters for modifying a policy value for a specific org unit target.

| Property | Type | Description |
|----------|------|-------------|
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to modify a policy. The target resource must po... |
| `policyValue` | `GoogleChromePolicyVersionsV1PolicyValue` | The new value for the policy. |
| `updateMask` | `string` | Required. Policy fields to update. Only fields in this mask will be updated; other fields in `pol... |

### `GoogleChromePolicyVersionsV1NetworkSetting`

A network setting contains network configurations. It adheres to the PolicyAPI formats defined under the namespace chrome.networks.{wifi/ethernet/cellular/vpn}.Details

| Property | Type | Description |
|----------|------|-------------|
| `policySchema` | `string` | The fully qualified name of the network setting. |
| `value` | `object` | The value of the network setting. |

### `GoogleChromePolicyVersionsV1NumericRangeConstraint`

A constraint on upper and/or lower bounds, with at least one being set.

| Property | Type | Description |
|----------|------|-------------|
| `maximum` | `string` | Maximum value. |
| `minimum` | `string` | Minimum value. |

### `GoogleChromePolicyVersionsV1PolicyApiLifecycle`

Lifecycle information.

| Property | Type | Description |
|----------|------|-------------|
| `deprecatedInFavorOf` | `array<string>` | In the event that this policy was deprecated in favor of another policy, the fully qualified name... |
| `description` | `string` | Description about current life cycle. |
| `endSupport` | `GoogleTypeDate` | End supporting date for current policy. Attempting to modify a policy after its end support date ... |
| `policyApiLifecycleStage` | `string` | Indicates current life cycle stage of the policy API. |
| `scheduledToDeprecatePolicies` | `array<string>` | Corresponding to deprecated_in_favor_of, the fully qualified namespace(s) of the old policies tha... |

### `GoogleChromePolicyVersionsV1PolicyModificationError`

Error information for a modification request of a specific policy on a specific target.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<string>` | Output only. The non-field errors related to the modification. |
| `fieldErrors` | `array<GoogleChromePolicyVersionsV1PolicyModificationFieldError>` | Output only. The error messages related to the modification. |
| `policySchema` | `string` | Output only. The specific policy schema modification that had an error. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Output only. The specific policy target modification that had error. |

### `GoogleChromePolicyVersionsV1PolicyModificationErrorDetails`

Details of the errors encountered during a policy modification request. This message will be returned as part of the details of a google.rpc.Status returned to the user when there is an error in their request.

| Property | Type | Description |
|----------|------|-------------|
| `modificationErrors` | `array<GoogleChromePolicyVersionsV1PolicyModificationError>` | Output only. List of specific policy modifications errors that may have occurred during a modifyi... |

### `GoogleChromePolicyVersionsV1PolicyModificationFieldError`

Error information for a modification request of a specific field on a specific policy.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `string` | Output only. The error message related to the field. |
| `field` | `string` | Output only. The name of the field with the error. |

### `GoogleChromePolicyVersionsV1PolicySchema`

Resource representing a policy schema.

| Property | Type | Description |
|----------|------|-------------|
| `accessRestrictions` | `array<string>` | Output only. Specific access restrictions related to this policy. |
| `additionalTargetKeyNames` | `array<GoogleChromePolicyVersionsV1AdditionalTargetKeyName>` | Output only. Additional key names that will be used to identify the target of the policy value. W... |
| `categoryTitle` | `string` | Title of the category in which a setting belongs. |
| `definition` | `Proto2FileDescriptorProto` | Schema definition using proto descriptor. |
| `fieldDescriptions` | `array<GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>` | Output only. Detailed description of each field that is part of the schema. Fields are suggested ... |
| `name` | `string` | Format: name=customers/{customer}/policySchemas/{schema_namespace} |
| `notices` | `array<GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription>` | Output only. Special notice messages related to setting certain values in certain fields in the s... |
| `policyApiLifecycle` | `GoogleChromePolicyVersionsV1PolicyApiLifecycle` | Output only. Current lifecycle information. |
| `policyDescription` | `string` | Output only. Description about the policy schema for user consumption. |
| `schemaName` | `string` | Output only. The fully qualified name of the policy schema. This value is used to fill the field ... |
| `supportUri` | `string` | Output only. URI to related support article for this schema. |
| `supportedPlatforms` | `array<string>` | Output only. List indicates that the policy will only apply to devices/users on these platforms. |
| `validTargetResources` | `array<string>` | Output only. Information about applicable target resources for the policy. |

### `GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies`

The field and the value it must have for another field to be allowed to be set.

| Property | Type | Description |
|----------|------|-------------|
| `sourceField` | `string` | The source field which this field depends on. |
| `sourceFieldValue` | `string` | The value which the source field must have for this field to be allowed to be set. |

### `GoogleChromePolicyVersionsV1PolicySchemaFieldDescription`

Provides detailed information for a particular field that is part of a PolicySchema.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `any` | Output only. Client default if the policy is unset. |
| `description` | `string` | Deprecated. Use name and field_description instead. The description for the field. |
| `field` | `string` | Output only. The name of the field for associated with this description. |
| `fieldConstraints` | `GoogleChromePolicyVersionsV1FieldConstraints` | Output only. Information on any input constraints associated on the values for the field. |
| `fieldDependencies` | `array<GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>` | Output only. Provides a list of fields and values. At least one of the fields must have the corre... |
| `fieldDescription` | `string` | Output only. The description of the field. |
| `inputConstraint` | `string` | Output only. Any input constraints associated on the values for the field. |
| `knownValueDescriptions` | `array<GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription>` | Output only. If the field has a set of known values, this field will provide a description for th... |
| `name` | `string` | Output only. The name of the field. |
| `nestedFieldDescriptions` | `array<GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>` | Output only. Provides the description of the fields nested in this field, if the field is a messa... |
| `requiredItems` | `array<GoogleChromePolicyVersionsV1PolicySchemaRequiredItems>` | Output only. Provides a list of fields that are required to be set if this field has a certain va... |

### `GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription`

Provides detailed information about a known value that is allowed for a particular field in a PolicySchema.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Additional description for this value. |
| `fieldDependencies` | `array<GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>` | Output only. Field conditions required for this value to be valid. |
| `value` | `string` | Output only. The string represenstation of the value that can be set for the field. |

### `GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription`

Provides special notice messages related to a particular value in a field that is part of a PolicySchema.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementRequired` | `boolean` | Output only. Whether the user needs to acknowledge the notice message before the value can be set. |
| `field` | `string` | Output only. The field name associated with the notice. |
| `noticeMessage` | `string` | Output only. The notice message associate with the value of the field. |
| `noticeValue` | `string` | Output only. The value of the field that has a notice. When setting the field to this value, the ... |

### `GoogleChromePolicyVersionsV1PolicySchemaRequiredItems`

The fields that will become required based on the value of this field.

| Property | Type | Description |
|----------|------|-------------|
| `fieldConditions` | `array<string>` | The value(s) of the field that provoke required field enforcement. An empty field_conditions impl... |
| `requiredFields` | `array<string>` | The fields that are required as a consequence of the field conditions. |

### `GoogleChromePolicyVersionsV1PolicyTargetKey`

The key used to identify the target on which the policy will be applied.

| Property | Type | Description |
|----------|------|-------------|
| `additionalTargetKeys` | `object` | Map containing the additional target key name and value pairs used to further identify the target... |
| `targetResource` | `string` | The target resource on which this policy is applied. The following resources are supported: * Org... |

### `GoogleChromePolicyVersionsV1PolicyValue`

A particular value for a policy managed by the service.

| Property | Type | Description |
|----------|------|-------------|
| `policySchema` | `string` | The fully qualified name of the policy schema associated with this policy. |
| `value` | `object` | The value of the policy that is compatible with the schema that it is associated with. |

### `GoogleChromePolicyVersionsV1RemoveCertificateErrorDetails`

Details of the errors encountered during a remove certificate request. This message will be returned as part of the details of a google.rpc.Status returned to the user when there is an error in their request.

| Property | Type | Description |
|----------|------|-------------|
| `certificateReferences` | `array<GoogleChromePolicyVersionsV1CertificateReference>` | Output only. If the certificate was not removed, a list of references to the certificate that pre... |

### `GoogleChromePolicyVersionsV1RemoveCertificateRequest`

Request object for removing a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `networkId` | `string` | Required. The GUID of the certificate to remove. |
| `targetResource` | `string` | Required. The target resource on which this certificate will be removed. The following resources ... |

### `GoogleChromePolicyVersionsV1RemoveCertificateResponse`

Response object for removing a certificate.

### `GoogleChromePolicyVersionsV1RemoveNetworkRequest`

Request object for removing a network

| Property | Type | Description |
|----------|------|-------------|
| `networkId` | `string` | Required. The GUID of the network to remove. |
| `targetResource` | `string` | Required. The target resource on which this network will be removed. The following resources are ... |

### `GoogleChromePolicyVersionsV1RemoveNetworkResponse`

Response object for removing a network.

### `GoogleChromePolicyVersionsV1ResolveRequest`

Request message for getting the resolved policy value for a specific target.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | The maximum number of policies to return, defaults to 100 and has a maximum of 1000. |
| `pageToken` | `string` | The page token used to retrieve a specific page of the request. |
| `policySchemaFilter` | `string` | Required. The schema filter to apply to the resolve request. Specify a schema name to view a part... |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target resource on which the policies should be resolved. |

### `GoogleChromePolicyVersionsV1ResolveResponse`

Response message for getting the resolved policy value for a specific target.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The page token used to get the next set of resolved policies found by the request. |
| `resolvedPolicies` | `array<GoogleChromePolicyVersionsV1ResolvedPolicy>` | The list of resolved policies found by the resolve request. |

### `GoogleChromePolicyVersionsV1ResolvedPolicy`

The resolved value of a policy for a given target.

| Property | Type | Description |
|----------|------|-------------|
| `addedSourceKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Output only. The added source key establishes at which level an entity was explicitly added for m... |
| `sourceKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Output only. The source resource from which this policy value is obtained. May be the same as `ta... |
| `targetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Output only. The target resource for which the resolved policy value applies. |
| `value` | `GoogleChromePolicyVersionsV1PolicyValue` | Output only. The resolved value of the policy. |

### `GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest`

Request message for updating the group priority ordering of an app.

| Property | Type | Description |
|----------|------|-------------|
| `groupIds` | `array<string>` | Required. The group IDs, in desired priority ordering. |
| `policyNamespace` | `string` | The namespace of the policy type for the request. |
| `policySchema` | `string` | The schema name of the policy for the request. |
| `policyTargetKey` | `GoogleChromePolicyVersionsV1PolicyTargetKey` | Required. The key of the target for which we want to update the group priority ordering. The targ... |

### `GoogleChromePolicyVersionsV1UploadPolicyFileRequest`

Request message for uploading a file for a policy.

| Property | Type | Description |
|----------|------|-------------|
| `policyField` | `string` | Required. The fully qualified policy schema and field name this file is uploaded for. This inform... |

### `GoogleChromePolicyVersionsV1UploadPolicyFileResponse`

Response message for downloading an uploaded file.

| Property | Type | Description |
|----------|------|-------------|
| `downloadUri` | `string` | The uri for end user to download the file. |

### `GoogleChromePolicyVersionsV1UploadedFileConstraints`

Constraints on the uploaded file of a file policy.

| Property | Type | Description |
|----------|------|-------------|
| `sizeLimitBytes` | `string` | The size limit of uploaded files for a setting, in bytes. |
| `supportedContentTypes` | `array<string>` | File types that can be uploaded for a setting. |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `Proto2DescriptorProto`

Describes a message type.

| Property | Type | Description |
|----------|------|-------------|
| `enumType` | `array<Proto2EnumDescriptorProto>` |  |
| `field` | `array<Proto2FieldDescriptorProto>` |  |
| `name` | `string` |  |
| `nestedType` | `array<Proto2DescriptorProto>` |  |
| `oneofDecl` | `array<Proto2OneofDescriptorProto>` |  |
| `visibility` | `string` | Support for `export` and `local` keywords on enums. |

### `Proto2EnumDescriptorProto`

Describes an enum type.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `value` | `array<Proto2EnumValueDescriptorProto>` |  |
| `visibility` | `string` | Support for `export` and `local` keywords on enums. |

### `Proto2EnumValueDescriptorProto`

Describes a value within an enum.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |
| `number` | `integer` |  |

### `Proto2FieldDescriptorProto`

Describes a field within a message.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `string` | For numeric types, contains the original text representation of the value. For booleans, "true" o... |
| `jsonName` | `string` | JSON name of this field. The value is set by protocol compiler. If the user has set a "json_name"... |
| `label` | `string` |  |
| `name` | `string` |  |
| `number` | `integer` |  |
| `oneofIndex` | `integer` | If set, gives the index of a oneof in the containing type's oneof_decl list. This field is a memb... |
| `proto3Optional` | `boolean` | If true, this is a proto3 "optional". When a proto3 field is optional, it tracks presence regardl... |
| `type` | `string` | If type_name is set, this need not be set. If both this and type_name are set, this must be one o... |
| `typeName` | `string` | For message and enum types, this is the name of the type. If the name starts with a '.', it is fu... |

### `Proto2FileDescriptorProto`

Describes a complete .proto file.

| Property | Type | Description |
|----------|------|-------------|
| `editionDeprecated` | `string` | copybara:strip_begin TODO(b/297898292) Deprecate and remove this field in favor of enums. copybar... |
| `enumType` | `array<Proto2EnumDescriptorProto>` |  |
| `messageType` | `array<Proto2DescriptorProto>` | All top-level definitions in this file. |
| `name` | `string` | file name, relative to root of source tree |
| `optionDependency` | `array<string>` | Names of files imported by this file purely for the purpose of providing option extensions. These... |
| `package` | `string` | e.g. "foo", "foo.bar", etc. |
| `syntax` | `string` | The syntax of the proto file. The supported values are "proto2", "proto3", and "editions". If `ed... |

### `Proto2OneofDescriptorProto`

Describes a oneof.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` |  |

