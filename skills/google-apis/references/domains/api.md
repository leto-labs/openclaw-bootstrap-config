# Cloud Domains API - API Reference

**Version**: `v1` | **Methods**: 28 | **Schemas**: 57

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `domains.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `domains.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `domains.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `domains.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `domains.projects.locations.registrations.configureDnsSettings` | POST | `v1/{+registration}:configureDnsSettings` | Updates a `Registration`'s DNS settings. |
| `domains.projects.locations.registrations.retrieveGoogleDomainsForwardingConfig` | GET | `v1/{+registration}:retrieveGoogleDomainsForwardingConfig` | Lists the deprecated domain and email forwarding configurations you set up in the deprecated Goog... |
| `domains.projects.locations.registrations.configureContactSettings` | POST | `v1/{+registration}:configureContactSettings` | Updates a `Registration`'s contact settings. Some changes require confirmation by the domain's re... |
| `domains.projects.locations.registrations.register` | POST | `v1/{+parent}/registrations:register` | Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRe... |
| `domains.projects.locations.registrations.initiatePushTransfer` | POST | `v1/{+registration}:initiatePushTransfer` | Initiates the `Push Transfer` process to transfer the domain to another registrar. The process mi... |
| `domains.projects.locations.registrations.retrieveImportableDomains` | GET | `v1/{+location}/registrations:retrieveImportableDomains` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `domains.projects.locations.registrations.export` | POST | `v1/{+name}:export` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `domains.projects.locations.registrations.patch` | PATCH | `v1/{+name}` | Updates select fields of a `Registration` resource, notably `labels`. To update other fields, use... |
| `domains.projects.locations.registrations.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `domains.projects.locations.registrations.delete` | DELETE | `v1/{+name}` | Deletes a `Registration` resource. This method works on any `Registration` resource using [Subscr... |
| `domains.projects.locations.registrations.renewDomain` | POST | `v1/{+registration}:renewDomain` | Renews a recently expired domain. This method can only be called on domains that expired in the p... |
| `domains.projects.locations.registrations.list` | GET | `v1/{+parent}/registrations` | Lists the `Registration` resources in a project. |
| `domains.projects.locations.registrations.retrieveRegisterParameters` | GET | `v1/{+location}/registrations:retrieveRegisterParameters` | Gets parameters needed to register a new domain name, including price and up-to-date availability... |
| `domains.projects.locations.registrations.resetAuthorizationCode` | POST | `v1/{+registration}:resetAuthorizationCode` | Resets the authorization code of the `Registration` to a new random string. You can call this met... |
| `domains.projects.locations.registrations.transfer` | POST | `v1/{+parent}/registrations:transfer` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `domains.projects.locations.registrations.import` | POST | `v1/{+parent}/registrations:import` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `domains.projects.locations.registrations.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `domains.projects.locations.registrations.configureManagementSettings` | POST | `v1/{+registration}:configureManagementSettings` | Updates a `Registration`'s management settings. |
| `domains.projects.locations.registrations.searchDomains` | GET | `v1/{+location}/registrations:searchDomains` | Searches for available domain names similar to the provided query. Availability results from this... |
| `domains.projects.locations.registrations.retrieveTransferParameters` | GET | `v1/{+location}/registrations:retrieveTransferParameters` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `domains.projects.locations.registrations.retrieveAuthorizationCode` | GET | `v1/{+registration}:retrieveAuthorizationCode` | Gets the authorization code of the `Registration` for the purpose of transferring the domain to a... |
| `domains.projects.locations.registrations.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `domains.projects.locations.registrations.get` | GET | `v1/{+name}` | Gets the details of a `Registration` resource. |
| `domains.projects.locations.registrations.retrieveGoogleDomainsDnsRecords` | GET | `v1/{+registration}:retrieveGoogleDomainsDnsRecords` | Lists the DNS records from the Google Domains DNS zone for domains that use the deprecated `googl... |

### `domains.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await domains.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await domains.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await domains.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.operations.list`

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
const res = await domains.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.configureDnsSettings`

**POST** `v1/{+registration}:configureDnsSettings`

Updates a `Registration`'s DNS settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose DNS settings are being updated, in the format `projects/*/locations/*/... |

**Request body**: `ConfigureDnsSettingsRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.configureDnsSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveGoogleDomainsForwardingConfig`

**GET** `v1/{+registration}:retrieveGoogleDomainsForwardingConfig`

Lists the deprecated domain and email forwarding configurations you set up in the deprecated Google Domains UI. The configuration is present only for domains with the `google_domains_redirects_data_available` set to `true` in the `Registration`'s `dns_settings`. A forwarding configuration might not work correctly if required DNS records are not present in the domain's authoritative DNS Zone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose Google Domains forwarding configuration details are being retrieved, i... |

**Response**: `RetrieveGoogleDomainsForwardingConfigResponse`

```typescript
const res = await domains.registrations.retrieveGoogleDomainsForwardingConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.configureContactSettings`

**POST** `v1/{+registration}:configureContactSettings`

Updates a `Registration`'s contact settings. Some changes require confirmation by the domain's registrant contact . Caution: Please consider carefully any changes to contact privacy settings when changing from `REDACTED_CONTACT_DATA` to `PUBLIC_CONTACT_DATA.` There may be a delay in reflecting updates you make to registrant contact information such that any changes you make to contact privacy (including from `REDACTED_CONTACT_DATA` to `PUBLIC_CONTACT_DATA`) will be applied without delay but changes to registrant contact information may take a limited time to be publicized. This means that changes to contact privacy from `REDACTED_CONTACT_DATA` to `PUBLIC_CONTACT_DATA` may make the previous registrant contact data public until the modified registrant contact details are published.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose contact settings are being updated, in the format `projects/*/location... |

**Request body**: `ConfigureContactSettingsRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.configureContactSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.register`

**POST** `v1/{+parent}/registrations:register`

Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRegisterParameters` first to check availability of the domain name and determine parameters like price that are needed to build a call to this method. A successful call creates a `Registration` resource in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes, indicating that the domain was successfully registered. If the resource ends up in state `REGISTRATION_FAILED`, it indicates that the domain was not registered successfully, and you can safely delete the resource and retry registration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `Registration`. Must be in the format `projects/*/locations/*`. |

**Request body**: `RegisterDomainRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.register({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.initiatePushTransfer`

**POST** `v1/{+registration}:initiatePushTransfer`

Initiates the `Push Transfer` process to transfer the domain to another registrar. The process might complete instantly or might require confirmation or additional work. Check the emails sent to the email address of the registrant. The process is aborted after a timeout if it's not completed. This method is only supported for domains that have the `REQUIRE_PUSH_TRANSFER` property in the list of `domain_properties`. The domain must also be unlocked before it can be transferred to a different registrar. For more information, see [Transfer a registered domain to another registrar](https://cloud.google.com/domains/docs/transfer-domain-to-another-registrar).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` for which the push transfer is initiated, in the format `projects/*/location... |

**Request body**: `InitiatePushTransferRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.initiatePushTransfer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveImportableDomains`

**GET** `v1/{+location}/registrations:retrieveImportableDomains`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Lists domain names from [Google Domains](https://domains.google/) that can be imported to Cloud Domains using the `ImportDomain` method. Since individual users can own domains in Google Domains, the list of domains returned depends on the individual user making the call. Domains already managed by Cloud Domains are not returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location. Must be in the format `projects/*/locations/*`. |
| `pageSize` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | When set to the `next_page_token` from a prior response, provides the next page of results. |

**Response**: `RetrieveImportableDomainsResponse`

```typescript
const res = await domains.registrations.retrieveImportableDomains({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.export`

**POST** `v1/{+name}:export`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Exports a `Registration` resource, such that it is no longer managed by Cloud Domains. When an active domain is successfully exported, you can continue to use the domain in [Google Domains](https://domains.google/) until it expires. The calling user becomes the domain's sole owner in Google Domains, and permissions for the domain are subsequently managed there. The domain does not renew automatically unless the new owner sets up billing in Google Domains.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Registration` to export, in the format `projects/*/locations/*/registrations/*`. |

**Request body**: `ExportRegistrationRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.patch`

**PATCH** `v1/{+name}`

Updates select fields of a `Registration` resource, notably `labels`. To update other fields, use the appropriate custom update method: * To update management settings, see `ConfigureManagementSettings` * To update DNS configuration, see `ConfigureDnsSettings` * To update contact information, see `ConfigureContactSettings`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`. |
| `updateMask` | `string` | query | No | Required. The field mask describing which fields to update as a comma-separated list. For example, if only the labels... |

**Request body**: `Registration`

**Response**: `Operation`

```typescript
const res = await domains.registrations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await domains.registrations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.delete`

**DELETE** `v1/{+name}`

Deletes a `Registration` resource. This method works on any `Registration` resource using [Subscription or Commitment billing](/domains/pricing#billing-models), provided that the resource was created at least 1 day in the past. When an active registration is successfully deleted, you can continue to use the domain in [Google Domains](https://domains.google/) until it expires. The calling user becomes the domain's sole owner in Google Domains, and permissions for the domain are subsequently managed there. The domain does not renew automatically unless the new owner sets up billing in Google Domains. After January 2024 you will only be able to delete `Registration` resources when `state` is one of: `EXPORTED`, `EXPIRED`,`REGISTRATION_FAILED` or `TRANSFER_FAILED`. See [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) for more details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Registration` to delete, in the format `projects/*/locations/*/registrations/*`. |

**Response**: `Operation`

```typescript
const res = await domains.registrations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.renewDomain`

**POST** `v1/{+registration}:renewDomain`

Renews a recently expired domain. This method can only be called on domains that expired in the previous 30 days. After the renewal, the new expiration time of the domain is one year after the old expiration time and you are charged a `yearly_price` for the renewal.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whish is being renewed, in the format `projects/*/locations/*/registrations/*`. |

**Request body**: `RenewDomainRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.renewDomain({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.list`

**GET** `v1/{+parent}/registrations`

Lists the `Registration` resources in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which to list `Registration`s, specified in the format `projects/*/locations/*`. |
| `filter` | `string` | query | No | Filter expression to restrict the `Registration`s returned. The expression must specify the field name, a comparison ... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | When set to the `next_page_token` from a prior response, provides the next page of results. |

**Response**: `ListRegistrationsResponse`

```typescript
const res = await domains.registrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveRegisterParameters`

**GET** `v1/{+location}/registrations:retrieveRegisterParameters`

Gets parameters needed to register a new domain name, including price and up-to-date availability. Use the returned values to call `RegisterDomain`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location. Must be in the format `projects/*/locations/*`. |
| `domainName` | `string` | query | No | Required. The domain name. Unicode domain names must be expressed in Punycode format. |

**Response**: `RetrieveRegisterParametersResponse`

```typescript
const res = await domains.registrations.retrieveRegisterParameters({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.resetAuthorizationCode`

**POST** `v1/{+registration}:resetAuthorizationCode`

Resets the authorization code of the `Registration` to a new random string. You can call this method only after 60 days have elapsed since the initial domain registration. Domains that have the `REQUIRE_PUSH_TRANSFER` property in the list of `domain_properties` don't support authorization codes and must use the `InitiatePushTransfer` method to initiate the process to transfer the domain to a different registrar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose authorization code is being reset, in the format `projects/*/locations... |

**Request body**: `ResetAuthorizationCodeRequest`

**Response**: `AuthorizationCode`

```typescript
const res = await domains.registrations.resetAuthorizationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.transfer`

**POST** `v1/{+parent}/registrations:transfer`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Transfers a domain name from another registrar to Cloud Domains. For domains already managed by [Google Domains](https://domains.google/), use `ImportDomain` instead. Before calling this method, go to the domain's current registrar to unlock the domain for transfer and retrieve the domain's transfer authorization code. Then call `RetrieveTransferParameters` to confirm that the domain is unlocked and to get values needed to build a call to this method. A successful call creates a `Registration` resource in state `TRANSFER_PENDING`. It can take several days to complete the transfer process. The registrant can often speed up this process by approving the transfer through the current registrar, either by clicking a link in an email from the registrar or by visiting the registrar's website. A few minutes after transfer approval, the resource transitions to state `ACTIVE`, indicating that the transfer was successful. If the transfer is rejected or the request expires without being approved, the resource can end up in state `TRANSFER_FAILED`. If transfer fails, you can safely delete the resource and retry the transfer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `Registration`. Must be in the format `projects/*/locations/*`. |

**Request body**: `TransferDomainRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.transfer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.import`

**POST** `v1/{+parent}/registrations:import`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Imports a domain name from [Google Domains](https://domains.google/) for use in Cloud Domains. To transfer a domain from another registrar, use the `TransferDomain` method instead. Since individual users can own domains in Google Domains, the calling user must have ownership permission on the domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the Registration. Must be in the format `projects/*/locations/*`. |

**Request body**: `ImportDomainRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await domains.registrations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.configureManagementSettings`

**POST** `v1/{+registration}:configureManagementSettings`

Updates a `Registration`'s management settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose management settings are being updated, in the format `projects/*/locat... |

**Request body**: `ConfigureManagementSettingsRequest`

**Response**: `Operation`

```typescript
const res = await domains.registrations.configureManagementSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.searchDomains`

**GET** `v1/{+location}/registrations:searchDomains`

Searches for available domain names similar to the provided query. Availability results from this method are approximate; call `RetrieveRegisterParameters` on a domain before registering to confirm availability.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location. Must be in the format `projects/*/locations/*`. |
| `query` | `string` | query | No | Required. String used to search for available domain names. |

**Response**: `SearchDomainsResponse`

```typescript
const res = await domains.registrations.searchDomains({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveTransferParameters`

**GET** `v1/{+location}/registrations:retrieveTransferParameters`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Gets parameters needed to transfer a domain name from another registrar to Cloud Domains. For domains already managed by [Google Domains](https://domains.google/), use `ImportDomain` instead. Use the returned values to call `TransferDomain`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location. Must be in the format `projects/*/locations/*`. |
| `domainName` | `string` | query | No | Required. The domain name. Unicode domain names must be expressed in Punycode format. |

**Response**: `RetrieveTransferParametersResponse`

```typescript
const res = await domains.registrations.retrieveTransferParameters({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveAuthorizationCode`

**GET** `v1/{+registration}:retrieveAuthorizationCode`

Gets the authorization code of the `Registration` for the purpose of transferring the domain to another registrar. You can call this method only after 60 days have elapsed since the initial domain registration. Domains that have the `REQUIRE_PUSH_TRANSFER` property in the list of `domain_properties` don't support authorization codes and must use the `InitiatePushTransfer` method to initiate the process to transfer the domain to a different registrar.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose authorization code is being retrieved, in the format `projects/*/locat... |

**Response**: `AuthorizationCode`

```typescript
const res = await domains.registrations.retrieveAuthorizationCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await domains.registrations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.get`

**GET** `v1/{+name}`

Gets the details of a `Registration` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Registration` to get, in the format `projects/*/locations/*/registrations/*`. |

**Response**: `Registration`

```typescript
const res = await domains.registrations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `domains.projects.locations.registrations.retrieveGoogleDomainsDnsRecords`

**GET** `v1/{+registration}:retrieveGoogleDomainsDnsRecords`

Lists the DNS records from the Google Domains DNS zone for domains that use the deprecated `google_domains_dns` in the `Registration`'s `dns_settings`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registration` | `string` | path | Yes | Required. The name of the `Registration` whose Google Domains DNS records details you are retrieving, in the format `... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. |
| `pageToken` | `string` | query | No | Optional. When set to the `next_page_token` from a prior response, provides the next page of results. |

**Response**: `RetrieveGoogleDomainsDnsRecordsResponse`

```typescript
const res = await domains.registrations.retrieveGoogleDomainsDnsRecords({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

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

### `AuthorizationCode`

Defines an authorization code.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The Authorization Code in ASCII. It can be used to transfer the domain to or from another registrar. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ConfigureContactSettingsRequest`

Request for the `ConfigureContactSettings` method.

| Property | Type | Description |
|----------|------|-------------|
| `contactNotices` | `array<string>` | The list of contact notices that the caller acknowledges. The notices needed here depend on the v... |
| `contactSettings` | `ContactSettings` | Fields of the `ContactSettings` to update. |
| `updateMask` | `string` | Required. The field mask describing which fields to update as a comma-separated list. For example... |
| `validateOnly` | `boolean` | Validate the request without actually updating the contact settings. |

### `ConfigureDnsSettingsRequest`

Request for the `ConfigureDnsSettings` method.

| Property | Type | Description |
|----------|------|-------------|
| `dnsSettings` | `DnsSettings` | Fields of the `DnsSettings` to update. |
| `updateMask` | `string` | Required. The field mask describing which fields to update as a comma-separated list. For example... |
| `validateOnly` | `boolean` | Validate the request without actually updating the DNS settings. |

### `ConfigureManagementSettingsRequest`

Request for the `ConfigureManagementSettings` method.

| Property | Type | Description |
|----------|------|-------------|
| `managementSettings` | `ManagementSettings` | Fields of the `ManagementSettings` to update. |
| `updateMask` | `string` | Required. The field mask describing which fields to update as a comma-separated list. For example... |

### `Contact`

Details required for a contact associated with a `Registration`.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. Email address of the contact. |
| `faxNumber` | `string` | Fax number of the contact in international format. For example, `"+1-800-555-0123"`. |
| `phoneNumber` | `string` | Required. Phone number of the contact in international format. For example, `"+1-800-555-0123"`. |
| `postalAddress` | `PostalAddress` | Required. Postal address of the contact. |

### `ContactSettings`

Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.

| Property | Type | Description |
|----------|------|-------------|
| `adminContact` | `Contact` | Required. The administrative contact for the `Registration`. |
| `privacy` | `string` | Required. Privacy setting for the contacts associated with the `Registration`. |
| `registrantContact` | `Contact` | Required. The registrant contact for the `Registration`. *Caution: Anyone with access to this ema... |
| `technicalContact` | `Contact` | Required. The technical contact for the `Registration`. |

### `CustomDns`

Configuration for an arbitrary DNS provider.

| Property | Type | Description |
|----------|------|-------------|
| `dsRecords` | `array<DsRecord>` | The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provide... |
| `nameServers` | `array<string>` | Required. A list of name servers that store the DNS zone for this domain. Each name server is a d... |

### `DnsSettings`

Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.

| Property | Type | Description |
|----------|------|-------------|
| `customDns` | `CustomDns` | An arbitrary DNS provider identified by its name servers. |
| `glueRecords` | `array<GlueRecord>` | The list of glue records for this `Registration`. Commonly empty. |
| `googleDomainsDns` | `GoogleDomainsDns` | Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.co... |
| `googleDomainsRedirectsDataAvailable` | `boolean` | Output only. Indicates if this `Registration` has configured one of the following deprecated Goog... |

### `Domain`

A domain that the calling user manages in Google Domains.

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | The domain name. Unicode domain names are expressed in Punycode format. |
| `resourceState` | `string` | The state of this domain as a `Registration` resource. |
| `yearlyPrice` | `Money` | Price to renew the domain for one year. Only set when `resource_state` is `IMPORTABLE`. |

### `DomainForwarding`

Domain forwarding configuration.

| Property | Type | Description |
|----------|------|-------------|
| `pathForwarding` | `boolean` | If true, forwards the path after the domain name to the same path at the new address. |
| `pemCertificate` | `string` | The PEM-encoded certificate chain. |
| `redirectType` | `string` | The redirect type. |
| `sslEnabled` | `boolean` | If true, the forwarding works also over HTTPS. |
| `subdomain` | `string` | The subdomain of the registered domain that is being forwarded. E.g. `www.example.com`, `example.... |
| `targetUri` | `string` | The target of the domain forwarding, i.e. the path to redirect the `subdomain` to. |

### `DsRecord`

Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The algorithm used to generate the referenced DNSKEY. |
| `digest` | `string` | The digest generated from the referenced DNSKEY. |
| `digestType` | `string` | The hash function used to generate the digest of the referenced DNSKEY. |
| `keyTag` | `integer` | The key tag of the record. Must be set in range 0 -- 65535. |

### `EmailForwarding`

Email forwarding configuration.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | An alias recipient email that forwards emails to the `target_email_address`. For example, `admin@... |
| `targetEmailAddress` | `string` | Target email that receives emails sent to the `alias`. |

### `ExportRegistrationRequest`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Request for the `ExportRegistration` method.

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GeoPolicy`

Configures a `RRSetRoutingPolicy` that routes based on the geo location of the querying user.

| Property | Type | Description |
|----------|------|-------------|
| `enableFencing` | `boolean` | Without fencing, if health check fails for all configured items in the current geo bucket, we fai... |
| `item` | `array<GeoPolicyItem>` | The primary geo routing configuration. If there are multiple items with the same location, an err... |

### `GeoPolicyItem`

ResourceRecordSet data for one geo location.

| Property | Type | Description |
|----------|------|-------------|
| `healthCheckedTargets` | `HealthCheckTargets` | For A and AAAA types only. Endpoints to return in the query result only if they are healthy. Thes... |
| `location` | `string` | The geo-location granularity is a GCP region. This location string should correspond to a GCP reg... |
| `rrdata` | `array<string>` |  |
| `signatureRrdata` | `array<string>` | DNSSEC generated signatures for all the `rrdata` within this item. When using health-checked targ... |

### `GlueRecord`

Defines a host on your domain that is a DNS name server for your domain and/or other domains. Glue records are a way of making the IP address of a name server known, even when it serves DNS queries for its parent domain. For example, when `ns.example.com` is a name server for `example.com`, the host `ns.example.com` must have a glue record to break the circular DNS reference.

| Property | Type | Description |
|----------|------|-------------|
| `hostName` | `string` | Required. Domain name of the host in Punycode format. |
| `ipv4Addresses` | `array<string>` | List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.10... |
| `ipv6Addresses` | `array<string>` | List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:... |

### `GoogleDomainsDns`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).

| Property | Type | Description |
|----------|------|-------------|
| `dsRecords` | `array<DsRecord>` | Output only. The list of DS records published for this domain. The list is automatically populate... |
| `dsState` | `string` | Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC. |
| `nameServers` | `array<string>` | Output only. A list of name servers that store the DNS zone for this domain. Each name server is ... |

### `HealthCheckTargets`

HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response. Set either `internal_load_balancer` or `external_endpoints`. Do not set both.

| Property | Type | Description |
|----------|------|-------------|
| `externalEndpoints` | `array<string>` | The Internet IP addresses to be health checked. The format matches the format of ResourceRecordSe... |
| `internalLoadBalancer` | `array<LoadBalancerTarget>` | Configuration for internal load balancers to be health checked. |

### `ImportDomainRequest`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Request for the `ImportDomain` method.

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | Required. The domain name. Unicode domain names must be expressed in Punycode format. |
| `labels` | `object` | Set of labels associated with the `Registration`. |

### `InitiatePushTransferRequest`

Request for the `InitiatePushTransfer` method.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. The Tag of the new registrar. Can be found at [List of registrars](https://nominet.uk/r... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListRegistrationsResponse`

Response for the `ListRegistrations` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | When present, there are more results to retrieve. Set `page_token` to this value on a subsequent ... |
| `registrations` | `array<Registration>` | A list of `Registration`s. |

### `LoadBalancerTarget`

The configuration for an individual load balancer to health check.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | The frontend IP address of the load balancer to health check. |
| `ipProtocol` | `string` | The protocol of the load balancer to health check. |
| `loadBalancerType` | `string` | The type of load balancer specified by this target. This value must match the configuration of th... |
| `networkUrl` | `string` | The fully qualified URL of the network that the load balancer is attached to. This should be form... |
| `port` | `string` | The configured port of the load balancer. |
| `project` | `string` | The project ID in which the load balancer is located. |
| `region` | `string` | The region in which the load balancer is located. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ManagementSettings`

Defines renewal, billing, and transfer settings for a `Registration`.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveTransferLockState` | `string` | Output only. The actual transfer lock state for this `Registration`. |
| `preferredRenewalMethod` | `string` | Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is auto... |
| `renewalMethod` | `string` | Output only. The actual renewal method for this `Registration`. When `preferred_renewal_method` i... |
| `transferLockState` | `string` | This is the desired transfer lock state for this `Registration`. A transfer lock controls whether... |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of the long-running operation. Output only.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version used to start the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `statusDetail` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PostalAddress`

Represents a postal address, such as for postal delivery or payments addresses. With a postal address, a postal service can deliver items to a premise, P.O. box, or similar. A postal address is not intended to model geographical locations like roads, towns, or mountains. In typical usage, an address would be created by user input or from importing existing data, depending on the type of process. Advice on address input or editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput. - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, see: https://support.google.com/business/answer/6397478.

| Property | Type | Description |
|----------|------|-------------|
| `addressLines` | `array<string>` | Unstructured address lines describing the lower levels of an address. Because values in `address_... |
| `administrativeArea` | `string` | Optional. Highest administrative subdivision which is used for postal addresses of a country or r... |
| `languageCode` | `string` | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI l... |
| `locality` | `string` | Optional. Generally refers to the city or town portion of the address. Examples: US city, IT comu... |
| `organization` | `string` | Optional. The name of the organization at the address. |
| `postalCode` | `string` | Optional. Postal code of the address. Not all countries use or require postal codes to be present... |
| `recipients` | `array<string>` | Optional. The recipient at the address. This field may, under certain circumstances, contain mult... |
| `regionCode` | `string` | Required. CLDR region code of the country/region of the address. This is never inferred and it is... |
| `revision` | `integer` | The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. ... |
| `sortingCode` | `string` | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it ... |
| `sublocality` | `string` | Optional. Sublocality of the address. For example, this can be a neighborhood, borough, or district. |

### `PrimaryBackupPolicy`

Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.

| Property | Type | Description |
|----------|------|-------------|
| `backupGeoTargets` | `GeoPolicy` | Backup targets provide a regional failover policy for the otherwise global primary targets. If se... |
| `primaryTargets` | `HealthCheckTargets` | Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omi... |
| `trickleTraffic` | `number` | When serving state is `PRIMARY`, this field provides the option of sending a small percentage of ... |

### `RRSetRoutingPolicy`

A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.

| Property | Type | Description |
|----------|------|-------------|
| `geo` | `GeoPolicy` |  |
| `geoPolicy` | `GeoPolicy` |  |
| `healthCheck` | `string` | The fully qualified URL of the HealthCheck to use for this RRSetRoutingPolicy. Format this URL li... |
| `primaryBackup` | `PrimaryBackupPolicy` |  |
| `wrr` | `WrrPolicy` |  |
| `wrrPolicy` | `WrrPolicy` |  |

### `RegisterDomainRequest`

Request for the `RegisterDomain` method.

| Property | Type | Description |
|----------|------|-------------|
| `contactNotices` | `array<string>` | The list of contact notices that the caller acknowledges. The notices needed here depend on the v... |
| `domainNotices` | `array<string>` | The list of domain notices that you acknowledge. Call `RetrieveRegisterParameters` to see the not... |
| `registration` | `Registration` | Required. The complete `Registration` resource to be created. |
| `validateOnly` | `boolean` | When true, only validation is performed, without actually registering the domain. Follows: https:... |
| `yearlyPrice` | `Money` | Required. Yearly price to register or renew the domain. The value that should be put here can be ... |

### `RegisterParameters`

Parameters required to register a new domain.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | Indicates whether the domain is available for registration. This value is accurate when obtained ... |
| `domainName` | `string` | The domain name. Unicode domain names are expressed in Punycode format. |
| `domainNotices` | `array<string>` | Notices about special properties of the domain. |
| `supportedPrivacy` | `array<string>` | Contact privacy options that the domain supports. |
| `yearlyPrice` | `Money` | Price to register or renew the domain for one year. |

### `Registration`

The `Registration` resource facilitates managing and configuring domain name registrations. There are several ways to create a new `Registration` resource: To create a new `Registration` resource, find a suitable domain name by calling the `SearchDomains` method with a query to see available domain name options. After choosing a name, call `RetrieveRegisterParameters` to ensure availability and obtain information like pricing, which is needed to build a call to `RegisterDomain`. Another way to create a new `Registration` is to transfer an existing domain from another registrar (Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations)). First, go to the current registrar to unlock the domain for transfer and retrieve the domain's transfer authorization code. Then call `RetrieveTransferParameters` to confirm that the domain is unlocked and to get values needed to build a call to `TransferDomain`. Finally, you can create a new `Registration` by importing an existing domain managed with [Google Domains](https://domains.google/) (Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations)). First, call `RetrieveImportableDomains` to list domains to which the calling user has sufficient access. Then call `ImportDomain` on any domain names you want to use with Cloud Domains.

| Property | Type | Description |
|----------|------|-------------|
| `contactSettings` | `ContactSettings` | Required. Settings for contact information linked to the `Registration`. You cannot update these ... |
| `createTime` | `string` | Output only. The creation timestamp of the `Registration` resource. |
| `dnsSettings` | `DnsSettings` | Settings controlling the DNS configuration of the `Registration`. You cannot update these with th... |
| `domainName` | `string` | Required. Immutable. The domain name. Unicode domain names must be expressed in Punycode format. |
| `domainProperties` | `array<string>` | Output only. Special properties of the domain. |
| `expireTime` | `string` | Output only. The expiration timestamp of the `Registration`. |
| `issues` | `array<string>` | Output only. The set of issues with the `Registration` that require attention. |
| `labels` | `object` | Set of labels associated with the `Registration`. |
| `managementSettings` | `ManagementSettings` | Settings for management of the `Registration`, including renewal, billing, and transfer. You cann... |
| `name` | `string` | Output only. Name of the `Registration` resource, in the format `projects/*/locations/*/registrat... |
| `pendingContactSettings` | `ContactSettings` | Output only. Pending contact settings for the `Registration`. Updates to the `contact_settings` f... |
| `registerFailureReason` | `string` | Output only. The reason the domain registration failed. Only set for domains in REGISTRATION_FAIL... |
| `state` | `string` | Output only. The state of the `Registration` |
| `supportedPrivacy` | `array<string>` | Output only. Set of options for the `contact_settings.privacy` field that this `Registration` sup... |
| `transferFailureReason` | `string` | Output only. Deprecated: For more information, see [Cloud Domains feature deprecation](https://cl... |

### `RenewDomainRequest`

Request for the `RenewDomain` method.

| Property | Type | Description |
|----------|------|-------------|
| `validateOnly` | `boolean` | Optional. When true, only validation is performed, without actually renewing the domain. For more... |
| `yearlyPrice` | `Money` | Required. Acknowledgement of the price to renew the domain for one year. To get the price, see [C... |

### `ResetAuthorizationCodeRequest`

Request for the `ResetAuthorizationCode` method.

### `ResourceRecordSet`

A unit of data that is returned by the DNS servers.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | For example, www.example.com. |
| `routingPolicy` | `RRSetRoutingPolicy` | Configures dynamic query responses based on either the geo location of the querying user or a wei... |
| `rrdata` | `array<string>` | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples. |
| `signatureRrdata` | `array<string>` | As defined in RFC 4034 (section 3.2). |
| `ttl` | `integer` | Number of seconds that this `ResourceRecordSet` can be cached by resolvers. |
| `type` | `string` | The identifier of a supported record type. See the list of Supported DNS record types. |

### `RetrieveGoogleDomainsDnsRecordsResponse`

Response for the `RetrieveGoogleDomainsDnsRecords` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | When present, there are more results to retrieve. Set `page_token` to this value on a subsequent ... |
| `rrset` | `array<ResourceRecordSet>` | The resource record set resources (DNS Zone records). |

### `RetrieveGoogleDomainsForwardingConfigResponse`

Response for the `RetrieveGoogleDomainsForwardingConfig` method.

| Property | Type | Description |
|----------|------|-------------|
| `domainForwardings` | `array<DomainForwarding>` | The list of domain forwarding configurations. A forwarding configuration might not work correctly... |
| `emailForwardings` | `array<EmailForwarding>` | The list of email forwarding configurations. A forwarding configuration might not work correctly ... |

### `RetrieveImportableDomainsResponse`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Response for the `RetrieveImportableDomains` method.

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<Domain>` | A list of domains that the calling user manages in Google Domains. |
| `nextPageToken` | `string` | When present, there are more results to retrieve. Set `page_token` to this value on a subsequent ... |

### `RetrieveRegisterParametersResponse`

Response for the `RetrieveRegisterParameters` method.

| Property | Type | Description |
|----------|------|-------------|
| `registerParameters` | `RegisterParameters` | Parameters to use when calling the `RegisterDomain` method. |

### `RetrieveTransferParametersResponse`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Response for the `RetrieveTransferParameters` method.

| Property | Type | Description |
|----------|------|-------------|
| `transferParameters` | `TransferParameters` | Parameters to use when calling the `TransferDomain` method. |

### `SearchDomainsResponse`

Response for the `SearchDomains` method.

| Property | Type | Description |
|----------|------|-------------|
| `registerParameters` | `array<RegisterParameters>` | Results of the domain name search. |

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

### `TransferDomainRequest`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Request for the `TransferDomain` method.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationCode` | `AuthorizationCode` | The domain's transfer authorization code. You can obtain this from the domain's current registrar. |
| `contactNotices` | `array<string>` | The list of contact notices that you acknowledge. The notices needed here depend on the values sp... |
| `registration` | `Registration` | Required. The complete `Registration` resource to be created. You can leave `registration.dns_set... |
| `validateOnly` | `boolean` | Validate the request without actually transferring the domain. |
| `yearlyPrice` | `Money` | Required. Acknowledgement of the price to transfer or renew the domain for one year. Call `Retrie... |

### `TransferParameters`

Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). Parameters required to transfer a domain from another registrar.

| Property | Type | Description |
|----------|------|-------------|
| `currentRegistrar` | `string` | The registrar that currently manages the domain. |
| `currentRegistrarUri` | `string` | The URL of the registrar that currently manages the domain. |
| `domainName` | `string` | The domain name. Unicode domain names are expressed in Punycode format. |
| `nameServers` | `array<string>` | The name servers that currently store the configuration of the domain. |
| `supportedPrivacy` | `array<string>` | Contact privacy options that the domain supports. |
| `transferLockState` | `string` | Indicates whether the domain is protected by a transfer lock. For a transfer to succeed, this mus... |
| `yearlyPrice` | `Money` | Price to transfer or renew the domain for one year. |

### `WrrPolicy`

Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.

| Property | Type | Description |
|----------|------|-------------|
| `item` | `array<WrrPolicyItem>` |  |

### `WrrPolicyItem`

A routing block which contains the routing information for one WRR item.

| Property | Type | Description |
|----------|------|-------------|
| `healthCheckedTargets` | `HealthCheckTargets` | Endpoints that are health checked before making the routing decision. The unhealthy endpoints are... |
| `rrdata` | `array<string>` |  |
| `signatureRrdata` | `array<string>` | DNSSEC generated signatures for all the `rrdata` within this item. When using health-checked targ... |
| `weight` | `number` | The weight corresponding to this `WrrPolicyItem` object. When multiple `WrrPolicyItem` objects ar... |

