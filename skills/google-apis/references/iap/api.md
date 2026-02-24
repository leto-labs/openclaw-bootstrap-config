# Cloud Identity-Aware Proxy API - API Reference

**Version**: `v1` | **Methods**: 19 | **Schemas**: 37

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `iap.updateIapSettings` | PATCH | `v1/{+name}:iapSettings` | Updates the IAP settings on a particular IAP protected resource. It replaces all fields unless th... |
| `iap.getIapSettings` | GET | `v1/{+name}:iapSettings` | Gets the IAP settings on a particular IAP protected resource. |
| `iap.validateAttributeExpression` | POST | `v1/{+name}:validateAttributeExpression` | Validates that a given CEL expression conforms to IAP restrictions. |
| `iap.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for an Identity-Aware Proxy protected resource. More information a... |
| `iap.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy for an Identity-Aware Proxy protected resource. Replaces any exist... |
| `iap.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the Identity-Aware Proxy protected resource. More inform... |
| `iap.projects.iap_tunnel.locations.destGroups.delete` | DELETE | `v1/{+name}` | Deletes a TunnelDestGroup. |
| `iap.projects.iap_tunnel.locations.destGroups.list` | GET | `v1/{+parent}/destGroups` | Lists the existing TunnelDestGroups. To group across all locations, use a `-` as the location ID.... |
| `iap.projects.iap_tunnel.locations.destGroups.get` | GET | `v1/{+name}` | Retrieves an existing TunnelDestGroup. |
| `iap.projects.iap_tunnel.locations.destGroups.patch` | PATCH | `v1/{+name}` | Updates a TunnelDestGroup. |
| `iap.projects.iap_tunnel.locations.destGroups.create` | POST | `v1/{+parent}/destGroups` | Creates a new TunnelDestGroup. |
| `iap.projects.brands.create` | POST | `v1/{+parent}/brands` | Constructs a new OAuth brand for the project if one does not exist. The created brand is "interna... |
| `iap.projects.brands.list` | GET | `v1/{+parent}/brands` | Lists the existing brands for the project. |
| `iap.projects.brands.get` | GET | `v1/{+name}` | Retrieves the OAuth brand of the project. |
| `iap.projects.brands.identityAwareProxyClients.list` | GET | `v1/{+parent}/identityAwareProxyClients` | Lists the existing clients for the brand. |
| `iap.projects.brands.identityAwareProxyClients.create` | POST | `v1/{+parent}/identityAwareProxyClients` | Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the... |
| `iap.projects.brands.identityAwareProxyClients.resetSecret` | POST | `v1/{+name}:resetSecret` | Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret was compromised. R... |
| `iap.projects.brands.identityAwareProxyClients.get` | GET | `v1/{+name}` | Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP. |
| `iap.projects.brands.identityAwareProxyClients.delete` | DELETE | `v1/{+name}` | Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing obsolete clients, managin... |

### `iap.updateIapSettings`

**PATCH** `v1/{+name}:iapSettings`

Updates the IAP settings on a particular IAP protected resource. It replaces all fields unless the `update_mask` is set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the IAP protected resource. |
| `updateMask` | `string` | query | No | The field mask specifying which IAP settings should be updated. If omitted, then all of the settings are updated. See... |

**Request body**: `IapSettings`

**Response**: `IapSettings`

```typescript
const res = await iap.updateIapSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.getIapSettings`

**GET** `v1/{+name}:iapSettings`

Gets the IAP settings on a particular IAP protected resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for which to retrieve the settings. Authorization: Requires the `getSettings` permission ... |

**Response**: `IapSettings`

```typescript
const res = await iap.getIapSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.validateAttributeExpression`

**POST** `v1/{+name}:validateAttributeExpression`

Validates that a given CEL expression conforms to IAP restrictions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the IAP protected resource. |
| `expression` | `string` | query | No | Required. User input string expression. Should be of the form `attributes.saml_attributes.filter(attribute, attribute... |

**Response**: `ValidateIapAttributeExpressionResponse`

```typescript
const res = await iap.validateAttributeExpression({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await iap.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy for an Identity-Aware Proxy protected resource. Replaces any existing policy. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await iap.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await iap.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.iap_tunnel.locations.destGroups.delete`

**DELETE** `v1/{+name}`

Deletes a TunnelDestGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the TunnelDestGroup to delete. In the following format: `projects/{project_number/id}/iap_tunnel/lo... |

**Response**: `Empty`

```typescript
const res = await iap.destGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.iap_tunnel.locations.destGroups.list`

**GET** `v1/{+parent}/destGroups`

Lists the existing TunnelDestGroups. To group across all locations, use a `-` as the location ID. For example: `/v1/projects/123/iap_tunnel/locations/-/destGroups`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Google Cloud Project ID and location. In the following format: `projects/{project_number/id}/iap_tunnel/loc... |
| `pageSize` | `integer` | query | No | The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 100 g... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTunnelDestGroups` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `ListTunnelDestGroupsResponse`

```typescript
const res = await iap.destGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.iap_tunnel.locations.destGroups.get`

**GET** `v1/{+name}`

Retrieves an existing TunnelDestGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the TunnelDestGroup to be fetched. In the following format: `projects/{project_number/id}/iap_tunne... |

**Response**: `TunnelDestGroup`

```typescript
const res = await iap.destGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.iap_tunnel.locations.destGroups.patch`

**PATCH** `v1/{+name}`

Updates a TunnelDestGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters... |
| `updateMask` | `string` | query | No | A field mask that specifies which IAP settings to update. If omitted, then all of the settings are updated. See https... |

**Request body**: `TunnelDestGroup`

**Response**: `TunnelDestGroup`

```typescript
const res = await iap.destGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.iap_tunnel.locations.destGroups.create`

**POST** `v1/{+parent}/destGroups`

Creates a new TunnelDestGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Google Cloud Project ID and location. In the following format: `projects/{project_number/id}/iap_tunnel/loc... |
| `tunnelDestGroupId` | `string` | query | No | Required. The ID to use for the TunnelDestGroup, which becomes the final component of the resource name. This value m... |

**Request body**: `TunnelDestGroup`

**Response**: `TunnelDestGroup`

```typescript
const res = await iap.destGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.create`

**POST** `v1/{+parent}/brands`

Constructs a new OAuth brand for the project if one does not exist. The created brand is "internal only", meaning that OAuth clients created under it only accept requests from users who belong to the same Google Workspace organization as the project. The brand is created in an un-reviewed status. NOTE: The "internal only" status can be manually changed in the Google Cloud Console. Requires that a brand does not already exist for the project, and that the specified support email is owned by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. GCP Project number/id under which the brand is to be created. In the following format: projects/{project_nu... |

**Request body**: `Brand`

**Response**: `Brand`

```typescript
const res = await iap.brands.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.list`

**GET** `v1/{+parent}/brands`

Lists the existing brands for the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. GCP Project number/id. In the following format: projects/{project_number/id}. |

**Response**: `ListBrandsResponse`

```typescript
const res = await iap.brands.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.get`

**GET** `v1/{+name}`

Retrieves the OAuth brand of the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the brand to be fetched. In the following format: projects/{project_number/id}/brands/{brand}. |

**Response**: `Brand`

```typescript
const res = await iap.brands.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.identityAwareProxyClients.list`

**GET** `v1/{+parent}/identityAwareProxyClients`

Lists the existing clients for the brand.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full brand path. In the following format: projects/{project_number/id}/brands/{brand}. |
| `pageSize` | `integer` | query | No | The maximum number of clients to return. The service may return fewer than this value. If unspecified, at most 100 cl... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIdentityAwareProxyClients` call. Provide this to retrieve the subsequent ... |

**Response**: `ListIdentityAwareProxyClientsResponse`

```typescript
const res = await iap.identityAwareProxyClients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.identityAwareProxyClients.create`

**POST** `v1/{+parent}/identityAwareProxyClients`

Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Path to create the client in. In the following format: projects/{project_number/id}/brands/{brand}. The pro... |

**Request body**: `IdentityAwareProxyClient`

**Response**: `IdentityAwareProxyClient`

```typescript
const res = await iap.identityAwareProxyClients.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.identityAwareProxyClients.resetSecret`

**POST** `v1/{+name}:resetSecret`

Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret was compromised. Requires that the client is owned by IAP.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Identity Aware Proxy client to that will have its secret reset. In the following format: projec... |

**Request body**: `ResetIdentityAwareProxyClientSecretRequest`

**Response**: `IdentityAwareProxyClient`

```typescript
const res = await iap.identityAwareProxyClients.resetSecret({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.identityAwareProxyClients.get`

**GET** `v1/{+name}`

Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Identity Aware Proxy client to be fetched. In the following format: projects/{project_number/id... |

**Response**: `IdentityAwareProxyClient`

```typescript
const res = await iap.identityAwareProxyClients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `iap.projects.brands.identityAwareProxyClients.delete`

**DELETE** `v1/{+name}`

Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing obsolete clients, managing the number of clients in a given project, and cleaning up after tests. Requires that the client is owned by IAP.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Identity Aware Proxy client to be deleted. In the following format: projects/{project_number/id... |

**Response**: `Empty`

```typescript
const res = await iap.identityAwareProxyClients.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessDeniedPageSettings`

Custom content configuration for access denied page. IAP allows customers to define a custom URI to use as the error page when access is denied to users. If IAP prevents access to this page, the default IAP error page will be displayed instead.

| Property | Type | Description |
|----------|------|-------------|
| `accessDeniedPageUri` | `string` | The URI to be redirected to when access is denied. |
| `generateTroubleshootingUri` | `boolean` | Whether to generate a troubleshooting URL on access denied events to this application. |
| `remediationTokenGenerationEnabled` | `boolean` | Whether to generate remediation token on access denied events to this application. |

### `AccessSettings`

Access related settings for IAP protected apps.

| Property | Type | Description |
|----------|------|-------------|
| `allowedDomainsSettings` | `AllowedDomainsSettings` | Optional. Settings to configure and enable allowed domains. |
| `corsSettings` | `CorsSettings` | Optional. Configuration to allow cross-origin requests via IAP. |
| `gcipSettings` | `GcipSettings` | Optional. GCIP claims and endpoint configurations for 3p identity providers. |
| `identitySources` | `array<string>` | Optional. Identity sources that IAP can use to authenticate the end user. Only one identity sourc... |
| `oauthSettings` | `OAuthSettings` | Optional. Settings to configure IAP's OAuth behavior. |
| `policyDelegationSettings` | `PolicyDelegationSettings` | Optional. Settings to allow google-internal teams to use IAP for apps hosted in a tenant project. |
| `reauthSettings` | `ReauthSettings` | Optional. Settings to configure reauthentication policies in IAP. |
| `workforceIdentitySettings` | `WorkforceIdentitySettings` | Optional. Settings to configure the workforce identity federation, including workforce pools and ... |

### `AllowedDomainsSettings`

Configuration for IAP allowed domains. Lets you to restrict access to an app and allow access to only the domains that you list.

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<string>` | Optional. List of trusted domains. |
| `enable` | `boolean` | Optional. Configuration for customers to opt in for the feature. |

### `ApplicationSettings`

Wrapper over application specific settings for IAP.

| Property | Type | Description |
|----------|------|-------------|
| `accessDeniedPageSettings` | `AccessDeniedPageSettings` | Optional. Customization for Access Denied page. |
| `attributePropagationSettings` | `AttributePropagationSettings` | Optional. Settings to configure attribute propagation. |
| `cookieDomain` | `string` | The Domain value to set for cookies generated by IAP. This value is not validated by the API, but... |
| `csmSettings` | `CsmSettings` | Optional. Settings to configure IAP's behavior for a service mesh. |

### `AttributePropagationSettings`

Configuration for propagating attributes to applications protected by IAP.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | Optional. Whether the provided attribute propagation settings should be evaluated on user request... |
| `expression` | `string` | Optional. Raw string CEL expression. Must return a list of attributes. A maximum of 45 attributes... |
| `outputCredentials` | `array<string>` | Optional. Which output credentials attributes selected by the CEL expression should be propagated... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Brand`

OAuth brand data. NOTE: Only contains a portion of the data that describes a brand.

| Property | Type | Description |
|----------|------|-------------|
| `applicationTitle` | `string` | Application name displayed on OAuth consent screen. |
| `name` | `string` | Output only. Identifier of the brand. NOTE: GCP project number achieves the same brand identifica... |
| `orgInternalOnly` | `boolean` | Output only. Whether the brand is only intended for usage inside the G Suite organization only. |
| `supportEmail` | `string` | Support email displayed on the OAuth consent screen. |

### `CorsSettings`

Allows customers to configure HTTP request paths that'll allow HTTP `OPTIONS` call to bypass authentication and authorization.

| Property | Type | Description |
|----------|------|-------------|
| `allowHttpOptions` | `boolean` | Configuration to allow HTTP `OPTIONS` calls to skip authentication and authorization. If undefine... |

### `CsmSettings`

Configuration for RCToken generated for service mesh workloads protected by IAP. RCToken are IAP generated JWTs that can be verified at the application. The RCToken is primarily used for service mesh deployments, and can be scoped to a single mesh by configuring the audience field accordingly.

| Property | Type | Description |
|----------|------|-------------|
| `rctokenAud` | `string` | Audience claim set in the generated RCToken. This value is not validated by IAP. |

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

### `GcipSettings`

Allows customers to configure tenant IDs for a Cloud Identity Platform (GCIP) instance for each application.

| Property | Type | Description |
|----------|------|-------------|
| `loginPageUri` | `string` | Login page URI associated with the GCIP tenants. Typically, all resources within the same project... |
| `tenantIds` | `array<string>` | Optional. GCIP tenant IDs that are linked to the IAP resource. `tenant_ids` could be a string beg... |

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

### `IapSettings`

The IAP configurable settings.

| Property | Type | Description |
|----------|------|-------------|
| `accessSettings` | `AccessSettings` | Optional. Top level wrapper for all access related setting in IAP |
| `applicationSettings` | `ApplicationSettings` | Optional. Top level wrapper for all application related settings in IAP |
| `name` | `string` | Required. The resource name of the IAP protected resource. |

### `IdentityAwareProxyClient`

Contains the data that describes an Identity Aware Proxy owned client.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Human-friendly name given to the OAuth client. |
| `name` | `string` | Output only. Unique identifier of the OAuth client. |
| `secret` | `string` | Output only. Client secret of the OAuth client. |

### `ListBrandsResponse`

Response message for ListBrands.

| Property | Type | Description |
|----------|------|-------------|
| `brands` | `array<Brand>` | Brands existing in the project. |

### `ListIdentityAwareProxyClientsResponse`

Response message for ListIdentityAwareProxyClients.

| Property | Type | Description |
|----------|------|-------------|
| `identityAwareProxyClients` | `array<IdentityAwareProxyClient>` | Clients existing in the brand. |
| `nextPageToken` | `string` | A token, which can be send as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListTunnelDestGroupsResponse`

The response from ListTunnelDestGroups.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that you can send as `page_token` to retrieve the next page. If this field is omitted, th... |
| `tunnelDestGroups` | `array<TunnelDestGroup>` | TunnelDestGroup existing in the project. |

### `NextStateOfTags`

Used for calculating the next state of tags on the resource being passed for the CheckCustomConstraints RPC call. The detail evaluation of each field is described in go/op-create-update-time-tags and go/tags-in-orgpolicy-requests.

| Property | Type | Description |
|----------|------|-------------|
| `tagsFullState` | `TagsFullState` |  |
| `tagsFullStateForChildResource` | `TagsFullStateForChildResource` |  |
| `tagsPartialState` | `TagsPartialState` |  |

### `OAuth2`

The OAuth 2.0 Settings

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | The OAuth 2.0 client ID registered in the workforce identity federation OAuth 2.0 Server. |
| `clientSecret` | `string` | Input only. The OAuth 2.0 client secret created while registering the client ID. |
| `clientSecretSha256` | `string` | Output only. SHA256 hash value for the client secret. This field is returned by IAP when the sett... |

### `OAuthSettings`

Configuration for OAuth login&consent flow behavior as well as for OAuth Credentials.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Optional. OAuth 2.0 client ID used in the OAuth flow to generate an access token. If this field i... |
| `clientSecret` | `string` | Optional. Input only. OAuth secret paired with client ID |
| `clientSecretSha256` | `string` | Output only. OAuth secret sha256 paired with client ID |
| `loginHint` | `string` | Domain hint to send as hd=? parameter in OAuth request flow. Enables redirect to primary IDP by s... |
| `programmaticClients` | `array<string>` | Optional. List of client ids allowed to use IAP programmatically. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyDelegationSettings`

PolicyDelegationConfig allows google-internal teams to use IAP for apps hosted in a tenant project. Using these settings, the app can delegate permission check to happen against the linked customer project. This is only ever supposed to be used by google internal teams, hence the restriction on the proto.

| Property | Type | Description |
|----------|------|-------------|
| `iamPermission` | `string` | Permission to check in IAM. |
| `iamServiceName` | `string` | The DNS name of the service (e.g. "resourcemanager.googleapis.com"). This should be the domain na... |
| `policyName` | `PolicyName` | Policy name to be checked |
| `resource` | `Resource` | IAM resource to check permission on |

### `PolicyName`

An internal name for an IAM policy, based on the resource to which the policy applies. Not to be confused with a resource's external full resource name. For more information on this distinction, see go/iam-full-resource-names.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Identifies an instance of the type. ID format varies by type. The ID format is defined in the IAM... |
| `region` | `string` | For Cloud IAM: The location of the Policy. Must be empty or "global" for Policies owned by global... |
| `type` | `string` | Resource type. Types are defined in IAM's .service files. Valid values for type might be 'storage... |

### `ReauthSettings`

Configuration for IAP reauthentication policies.

| Property | Type | Description |
|----------|------|-------------|
| `maxAge` | `string` | Optional. Reauth session lifetime, how long before a user has to reauthenticate again. |
| `method` | `string` | Optional. Reauth method requested. |
| `policyType` | `string` | Optional. How IAP determines the effective policy in cases of hierarchical policies. Policies are... |

### `ResetIdentityAwareProxyClientSecretRequest`

The request sent to ResetIdentityAwareProxyClientSecret.

### `Resource`

| Property | Type | Description |
|----------|------|-------------|
| `expectedNextState` | `object` | The proto or JSON formatted expected next state of the resource, wrapped in a google.protobuf.Any... |
| `labels` | `object` | The service defined labels of the resource on which the conditions will be evaluated. The semanti... |
| `locations` | `array<string>` | The locations of the resource. This field is used to determine whether the request is compliant w... |
| `name` | `string` | The **relative** name of the resource, which is the URI path of the resource without the leading ... |
| `nextStateOfTags` | `NextStateOfTags` | Used for calculating the next state of tags on the resource being passed for Custom Org Policy en... |
| `service` | `string` | The name of the service this resource belongs to. It is configured using the official_service_nam... |
| `type` | `string` | The public resource type name of the resource. It is configured using the official_name of the Re... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `TagsFullState`

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | If TagsFullState is initialized, the values in this field fully represent all the tags in the nex... |

### `TagsFullStateForChildResource`

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | If TagsFullStateForChildResource is initialized, the values in this field represent all the tags ... |

### `TagsPartialState`

| Property | Type | Description |
|----------|------|-------------|
| `tagKeysToRemove` | `array<string>` | Keys of the tags that should be removed for evaluation purposes. IMPORTANT: Currently only numeri... |
| `tagsToUpsert` | `object` | Tags that’ll be updated or added to the current state of tags for evaluation purposes. If a key e... |

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

### `TunnelDestGroup`

A TunnelDestGroup.

| Property | Type | Description |
|----------|------|-------------|
| `cidrs` | `array<string>` | Optional. Unordered list. List of CIDRs that this group applies to. |
| `fqdns` | `array<string>` | Optional. Unordered list. List of FQDNs that this group applies to. |
| `name` | `string` | Identifier. Identifier for the TunnelDestGroup. Must be unique within the project and contain onl... |

### `ValidateIapAttributeExpressionResponse`

IAP Expression Linter endpoint returns empty response body.

### `WorkforceIdentitySettings`

WorkforceIdentitySettings allows customers to configure workforce pools and OAuth 2.0 settings to gate their applications using a third-party IdP with access control.

| Property | Type | Description |
|----------|------|-------------|
| `oauth2` | `OAuth2` | OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity federation services. |
| `workforcePools` | `array<string>` | The workforce pool resources. Only one workforce pool is accepted. |

