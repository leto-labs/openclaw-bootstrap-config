# Managed Service for Microsoft Active Directory API - API Reference

**Version**: `v1` | **Methods**: 45 | **Schemas**: 62

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `managedidentities.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `managedidentities.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `managedidentities.projects.locations.global.peerings.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `managedidentities.projects.locations.global.peerings.delete` | DELETE | `v1/{+name}` | Deletes identified Peering. |
| `managedidentities.projects.locations.global.peerings.get` | GET | `v1/{+name}` | Gets details of a single Peering. |
| `managedidentities.projects.locations.global.peerings.patch` | PATCH | `v1/{+name}` | Updates the labels for specified Peering. |
| `managedidentities.projects.locations.global.peerings.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `managedidentities.projects.locations.global.peerings.list` | GET | `v1/{+parent}/peerings` | Lists Peerings in a given project. |
| `managedidentities.projects.locations.global.peerings.create` | POST | `v1/{+parent}/peerings` | Creates a Peering for Managed AD instance. |
| `managedidentities.projects.locations.global.peerings.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `managedidentities.projects.locations.global.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `managedidentities.projects.locations.global.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `managedidentities.projects.locations.global.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `managedidentities.projects.locations.global.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `managedidentities.projects.locations.global.domains.restore` | POST | `v1/{+name}:restore` | RestoreDomain restores domain backup mentioned in the RestoreDomainRequest |
| `managedidentities.projects.locations.global.domains.checkMigrationPermission` | POST | `v1/{+domain}:checkMigrationPermission` | CheckMigrationPermission API gets the current state of DomainMigration |
| `managedidentities.projects.locations.global.domains.get` | GET | `v1/{+name}` | Gets information about a domain. |
| `managedidentities.projects.locations.global.domains.delete` | DELETE | `v1/{+name}` | Deletes a domain. |
| `managedidentities.projects.locations.global.domains.updateLdapssettings` | PATCH | `v1/{+name}/ldapssettings` | Patches a single ldaps settings. |
| `managedidentities.projects.locations.global.domains.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `managedidentities.projects.locations.global.domains.detachTrust` | POST | `v1/{+name}:detachTrust` | Removes an AD trust. |
| `managedidentities.projects.locations.global.domains.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `managedidentities.projects.locations.global.domains.validateTrust` | POST | `v1/{+name}:validateTrust` | Validates a trust state, that the target domain is reachable, and that the target domain is able ... |
| `managedidentities.projects.locations.global.domains.list` | GET | `v1/{+parent}/domains` | Lists domains in a project. |
| `managedidentities.projects.locations.global.domains.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `managedidentities.projects.locations.global.domains.reconfigureTrust` | POST | `v1/{+name}:reconfigureTrust` | Updates the DNS conditional forwarder. |
| `managedidentities.projects.locations.global.domains.getLdapssettings` | GET | `v1/{+name}/ldapssettings` | Gets the domain ldaps settings. |
| `managedidentities.projects.locations.global.domains.domainJoinMachine` | POST | `v1/{+domain}:domainJoinMachine` | DomainJoinMachine API joins a Compute Engine VM to the domain |
| `managedidentities.projects.locations.global.domains.extendSchema` | POST | `v1/{+domain}:extendSchema` | Extend Schema for Domain |
| `managedidentities.projects.locations.global.domains.create` | POST | `v1/{+parent}/domains` | Creates a Microsoft AD domain. |
| `managedidentities.projects.locations.global.domains.attachTrust` | POST | `v1/{+name}:attachTrust` | Adds an AD trust to a domain. |
| `managedidentities.projects.locations.global.domains.patch` | PATCH | `v1/{+name}` | Updates the metadata and configuration of a domain. |
| `managedidentities.projects.locations.global.domains.resetAdminPassword` | POST | `v1/{+name}:resetAdminPassword` | Resets a domain's administrator password. |
| `managedidentities.projects.locations.global.domains.enableMigration` | POST | `v1/{+domain}:enableMigration` | Enable Domain Migration |
| `managedidentities.projects.locations.global.domains.disableMigration` | POST | `v1/{+domain}:disableMigration` | Disable Domain Migration |
| `managedidentities.projects.locations.global.domains.sqlIntegrations.list` | GET | `v1/{+parent}/sqlIntegrations` | Lists SqlIntegrations in a given domain. |
| `managedidentities.projects.locations.global.domains.sqlIntegrations.get` | GET | `v1/{+name}` | Gets details of a single sqlIntegration. |
| `managedidentities.projects.locations.global.domains.backups.patch` | PATCH | `v1/{+name}` | Updates the labels for specified Backup. |
| `managedidentities.projects.locations.global.domains.backups.get` | GET | `v1/{+name}` | Gets details of a single Backup. |
| `managedidentities.projects.locations.global.domains.backups.create` | POST | `v1/{+parent}/backups` | Creates a Backup for a domain. |
| `managedidentities.projects.locations.global.domains.backups.delete` | DELETE | `v1/{+name}` | Deletes identified Backup. |
| `managedidentities.projects.locations.global.domains.backups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `managedidentities.projects.locations.global.domains.backups.list` | GET | `v1/{+parent}/backups` | Lists Backup in a given project. |
| `managedidentities.projects.locations.global.domains.backups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `managedidentities.projects.locations.global.domains.backups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |

### `managedidentities.projects.locations.list`

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
const res = await managedidentities.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await managedidentities.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await managedidentities.peerings.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.delete`

**DELETE** `v1/{+name}`

Deletes identified Peering.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Peering resource name using the form: `projects/{project_id}/locations/global/peerings/{peering_id}` |

**Response**: `Operation`

```typescript
const res = await managedidentities.peerings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.get`

**GET** `v1/{+name}`

Gets details of a single Peering.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Peering resource name using the form: `projects/{project_id}/locations/global/peerings/{peering_id}` |

**Response**: `Peering`

```typescript
const res = await managedidentities.peerings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.patch`

**PATCH** `v1/{+name}`

Updates the labels for specified Peering.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Unique name of the peering in this scope including projects and location using the form: `projects/{proj... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |

**Request body**: `Peering`

**Response**: `Operation`

```typescript
const res = await managedidentities.peerings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await managedidentities.peerings.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.list`

**GET** `v1/{+parent}/peerings`

Lists Peerings in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the peering location using the form: `projects/{project_id}/locations/global` |
| `filter` | `string` | query | No | Optional. Filter specifying constraints of a list operation. For example, `peering.authorized_network="projects/mypro... |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the servic... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListPeeringsResponse`

```typescript
const res = await managedidentities.peerings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.create`

**POST** `v1/{+parent}/peerings`

Creates a Peering for Managed AD instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Resource project name and location using the form: `projects/{project_id}/locations/global` |
| `peeringId` | `string` | query | No | Required. Peering Id, unique name to identify peering. It should follow the regex format "^(?:[a-z](?:[-a-z0-9]{0,61}... |

**Request body**: `Peering`

**Response**: `Operation`

```typescript
const res = await managedidentities.peerings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.peerings.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await managedidentities.peerings.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await managedidentities.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await managedidentities.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await managedidentities.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.operations.list`

**GET** `v1/{+name}`

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
const res = await managedidentities.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.restore`

**POST** `v1/{+name}:restore`

RestoreDomain restores domain backup mentioned in the RestoreDomainRequest

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for the domain to which the backup belongs |

**Request body**: `RestoreDomainRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.checkMigrationPermission`

**POST** `v1/{+domain}:checkMigrationPermission`

CheckMigrationPermission API gets the current state of DomainMigration

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Request body**: `CheckMigrationPermissionRequest`

**Response**: `CheckMigrationPermissionResponse`

```typescript
const res = await managedidentities.domains.checkMigrationPermission({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.get`

**GET** `v1/{+name}`

Gets information about a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Response**: `Domain`

```typescript
const res = await managedidentities.domains.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.delete`

**DELETE** `v1/{+name}`

Deletes a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.updateLdapssettings`

**PATCH** `v1/{+name}/ldapssettings`

Patches a single ldaps settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the LDAPS settings. Uses the form: `projects/{project}/locations/{location}/domains/{domain}`. |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. For the `FieldMask` definition,... |

**Request body**: `LDAPSSettings`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.updateLdapssettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await managedidentities.domains.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.detachTrust`

**POST** `v1/{+name}:detachTrust`

Removes an AD trust.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource domain name, project name, and location using the form: `projects/{project_id}/locations/globa... |

**Request body**: `DetachTrustRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.detachTrust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await managedidentities.domains.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.validateTrust`

**POST** `v1/{+name}:validateTrust`

Validates a trust state, that the target domain is reachable, and that the target domain is able to accept incoming trust requests.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource domain name, project name, and location using the form: `projects/{project_id}/locations/globa... |

**Request body**: `ValidateTrustRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.validateTrust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.list`

**GET** `v1/{+parent}/domains`

Lists domains in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the domain location using the form: `projects/{project_id}/locations/global` |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. For example, `Domain.fqdn="mydomain.myorginization"`. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used. Regardless o... |
| `pageToken` | `string` | query | No | Optional. The `next_page_token` value returned from a previous ListDomainsRequest request, if any. |

**Response**: `ListDomainsResponse`

```typescript
const res = await managedidentities.domains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await managedidentities.domains.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.reconfigureTrust`

**POST** `v1/{+name}:reconfigureTrust`

Updates the DNS conditional forwarder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource domain name, project name and location using the form: `projects/{project_id}/locations/global... |

**Request body**: `ReconfigureTrustRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.reconfigureTrust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.getLdapssettings`

**GET** `v1/{+name}/ldapssettings`

Gets the domain ldaps settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Response**: `LDAPSSettings`

```typescript
const res = await managedidentities.domains.getLdapssettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.domainJoinMachine`

**POST** `v1/{+domain}:domainJoinMachine`

DomainJoinMachine API joins a Compute Engine VM to the domain

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | path | Yes | Required. The domain resource name using the form: projects/{project_id}/locations/global/domains/{domain_name} |

**Request body**: `DomainJoinMachineRequest`

**Response**: `DomainJoinMachineResponse`

```typescript
const res = await managedidentities.domains.domainJoinMachine({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.extendSchema`

**POST** `v1/{+domain}:extendSchema`

Extend Schema for Domain

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Request body**: `ExtendSchemaRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.extendSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.create`

**POST** `v1/{+parent}/domains`

Creates a Microsoft AD domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource project name and location using the form: `projects/{project_id}/locations/global` |
| `domainName` | `string` | query | No | Required. The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must ... |

**Request body**: `Domain`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.attachTrust`

**POST** `v1/{+name}:attachTrust`

Adds an AD trust to a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource domain name, project name and location using the form: `projects/{project_id}/locations/global... |

**Request body**: `AttachTrustRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.attachTrust({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.patch`

**PATCH** `v1/{+name}`

Updates the metadata and configuration of a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`. |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |

**Request body**: `Domain`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.resetAdminPassword`

**POST** `v1/{+name}:resetAdminPassword`

Resets a domain's administrator password.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Request body**: `ResetAdminPasswordRequest`

**Response**: `ResetAdminPasswordResponse`

```typescript
const res = await managedidentities.domains.resetAdminPassword({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.enableMigration`

**POST** `v1/{+domain}:enableMigration`

Enable Domain Migration

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Request body**: `EnableMigrationRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.enableMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.disableMigration`

**POST** `v1/{+domain}:disableMigration`

Disable Domain Migration

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `domain` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |

**Request body**: `DisableMigrationRequest`

**Response**: `Operation`

```typescript
const res = await managedidentities.domains.disableMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.sqlIntegrations.list`

**GET** `v1/{+parent}/sqlIntegrations`

Lists SqlIntegrations in a given domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the SqlIntegrations using the form: `projects/{project_id}/locations/global/domains/*` |
| `filter` | `string` | query | No | Optional. Filter specifying constraints of a list operation. For example, `SqlIntegration.name="sql"`. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the servic... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListSqlIntegrationsResponse`

```typescript
const res = await managedidentities.sqlIntegrations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.sqlIntegrations.get`

**GET** `v1/{+name}`

Gets details of a single sqlIntegration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. SQLIntegration resource name using the form: `projects/{project_id}/locations/global/domains/{domain}/sqlIn... |

**Response**: `SqlIntegration`

```typescript
const res = await managedidentities.sqlIntegrations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.patch`

**PATCH** `v1/{+name}`

Updates the labels for specified Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_nam... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await managedidentities.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.get`

**GET** `v1/{+name}`

Gets details of a single Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}/back... |

**Response**: `Backup`

```typescript
const res = await managedidentities.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.create`

**POST** `v1/{+parent}/backups`

Creates a Backup for a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |
| `backupId` | `string` | query | No | Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await managedidentities.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.delete`

**DELETE** `v1/{+name}`

Deletes identified Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}/back... |

**Response**: `Operation`

```typescript
const res = await managedidentities.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await managedidentities.backups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.list`

**GET** `v1/{+parent}/backups`

Lists Backup in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}` |
| `filter` | `string` | query | No | Optional. Filter specifying constraints of a list operation. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the servic... |
| `pageToken` | `string` | query | No | Optional. The `next_page_token` value returned from a previous List request, if any. |

**Response**: `ListBackupsResponse`

```typescript
const res = await managedidentities.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await managedidentities.backups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedidentities.projects.locations.global.domains.backups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await managedidentities.backups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AttachTrustRequest`

Request message for AttachTrust

| Property | Type | Description |
|----------|------|-------------|
| `trust` | `Trust` | Required. The domain trust resource. |

### `Backup`

Represents a Managed Microsoft Identities backup.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the backups was created. |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. |
| `name` | `string` | Output only. The unique name of the Backup in the form of `projects/{project_id}/locations/global... |
| `state` | `string` | Output only. The current state of the backup. |
| `statusMessage` | `string` | Output only. Additional information about the current status of this backup, if available. |
| `type` | `string` | Output only. Indicates whether it’s an on-demand backup or scheduled. |
| `updateTime` | `string` | Output only. Last update time. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Certificate`

Certificate used to configure LDAPS.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The certificate expire time. |
| `issuingCertificate` | `Certificate` | The issuer of this certificate. |
| `subject` | `string` | The certificate subject. |
| `subjectAlternativeName` | `array<string>` | The additional hostnames for the domain. |
| `thumbprint` | `string` | The certificate thumbprint which uniquely identifies the certificate. |

### `CheckMigrationPermissionRequest`

CheckMigrationPermissionRequest is the request message for CheckMigrationPermission method.

### `CheckMigrationPermissionResponse`

CheckMigrationPermissionResponse is the response message for CheckMigrationPermission method.

| Property | Type | Description |
|----------|------|-------------|
| `onpremDomains` | `array<OnPremDomainSIDDetails>` | The state of SID filtering of all the domains which has trust established. |
| `state` | `string` | The state of DomainMigration. |

### `DailyCycle`

Time window specified for daily operations.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the day to start the operations. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DenyMaintenancePeriod`

DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A m... |
| `startDate` | `Date` | Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A... |
| `time` | `TimeOfDay` | Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Fu... |

### `DetachTrustRequest`

Request message for DetachTrust

| Property | Type | Description |
|----------|------|-------------|
| `trust` | `Trust` | Required. The domain trust resource to removed. |

### `DisableMigrationRequest`

DisableMigrationRequest is the request message for DisableMigration method.

### `Domain`

Represents a managed Microsoft Active Directory domain. If the domain is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.

| Property | Type | Description |
|----------|------|-------------|
| `admin` | `string` | Optional. The name of delegated administrator account used to perform Active Directory operations... |
| `auditLogsEnabled` | `boolean` | Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is au... |
| `authorizedNetworks` | `array<string>` | Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firew... |
| `createTime` | `string` | Output only. The time the instance was created. |
| `fqdn` | `string` | Output only. The fully-qualified domain name of the exposed domain used by clients to connect to ... |
| `labels` | `object` | Optional. Resource labels that can contain user-provided metadata. |
| `locations` | `array<string>` | Required. Locations where domain needs to be provisioned. The locations can be specified accordin... |
| `name` | `string` | Required. The unique name of the domain using the form: `projects/{project_id}/locations/global/d... |
| `reservedIpRange` | `string` | Required. The CIDR range of internal addresses that are reserved for this domain. Reserved networ... |
| `state` | `string` | Output only. The current state of this domain. |
| `statusMessage` | `string` | Output only. Additional information about the current status of this domain, if available. |
| `trusts` | `array<Trust>` | Output only. The current trusts associated with the domain. |
| `updateTime` | `string` | Output only. The last update time. |

### `DomainJoinMachineRequest`

DomainJoinMachineRequest is the request message for DomainJoinMachine method

| Property | Type | Description |
|----------|------|-------------|
| `force` | `boolean` | Optional. force if True, forces domain join even if the computer account already exists. |
| `ouName` | `string` | Optional. OU name where the VM needs to be domain joined |
| `vmIdToken` | `string` | Required. Full instance id token of compute engine VM to verify instance identity. More about thi... |

### `DomainJoinMachineResponse`

DomainJoinMachineResponse is the response message for DomainJoinMachine method

| Property | Type | Description |
|----------|------|-------------|
| `domainJoinBlob` | `string` | Offline domain join blob as the response |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableMigrationRequest`

EnableMigrationRequest is the request message for EnableMigration method.

| Property | Type | Description |
|----------|------|-------------|
| `migratingDomains` | `array<OnPremDomainDetails>` | Required. List of the on-prem domains to be migrated. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExtendSchemaRequest`

ExtendSchemaRequest is the request message for ExtendSchema method.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Required. Description for Schema Change. |
| `fileContents` | `string` | File uploaded as a byte stream input. |
| `gcsPath` | `string` | File stored in Cloud Storage bucket and represented in the form projects/{project_id}/buckets/{bu... |

### `GoogleCloudManagedidentitiesV1OpMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudManagedidentitiesV1alpha1OpMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudManagedidentitiesV1beta1OpMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudSaasacceleratorManagementProvidersV1Instance`

Instance represents the interface for SLM services to actuate the state of control plane resources. Example Instance in JSON, where consumer-project-number=123456, producer-project-id=cloud-sql: ```json Instance: { "name": "projects/123456/locations/us-east1/instances/prod-instance", "create_time": { "seconds": 1526406431, }, "labels": { "env": "prod", "foo": "bar" }, "state": READY, "software_versions": { "software_update": "cloud-sql-09-28-2018", }, "maintenance_policy_names": { "UpdatePolicy": "projects/123456/locations/us-east1/maintenancePolicies/prod-update-policy", } "tenant_project_id": "cloud-sql-test-tenant", "producer_metadata": { "cloud-sql-tier": "basic", "cloud-sql-instance-size": "1G", }, "provisioned_resources": [ { "resource-type": "compute-instance", "resource-url": "https://www.googleapis.com/compute/v1/projects/cloud-sql/zones/us-east1-b/instances/vm-1", } ], "maintenance_schedules": { "csa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, }, "ncsa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, } }, "consumer_defined_name": "my-sql-instance1", } ``` LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `consumerDefinedName` | `string` | consumer_defined_name is the name of the instance set by the service consumers. Generally this is... |
| `consumerProjectNumber` | `string` | Optional. The consumer_project_number associated with this Apigee instance. This field is added s... |
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `instanceType` | `string` | Optional. The instance_type of this instance of format: projects/{project_number}/locations/{loca... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `maintenancePolicyNames` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |
| `maintenanceSchedules` | `object` | The MaintenanceSchedule contains the scheduling information of published maintenance schedule wit... |
| `maintenanceSettings` | `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings` | Optional. The MaintenanceSettings associated with instance. |
| `name` | `string` | Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}... |
| `notificationParameters` | `object` | Optional. notification_parameter are information that service producers may like to include that ... |
| `producerMetadata` | `object` | Output only. Custom string attributes used primarily to expose producer-specific information in m... |
| `provisionedResources` | `array<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>` | Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. Se... |
| `slmInstanceTemplate` | `string` | Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation... |
| `sloMetadata` | `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata` | Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform.... |
| `softwareVersions` | `object` | Software versions that are used to deploy this instance. This can be mutated by rollout services. |
| `state` | `string` | Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use). |
| `tenantProjectId` | `string` | Output only. ID of the associated GCP tenant project. See go/get-instance-metadata. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule`

Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | This field is deprecated, and will be always set to true since reschedule can happen multiple tim... |
| `endTime` | `string` | The scheduled end time for the maintenance. |
| `rolloutManagementPolicy` | `string` | The rollout management policy this maintenance schedule is associated with. When doing reschedule... |
| `scheduleDeadlineTime` | `string` | schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including r... |
| `startTime` | `string` | The scheduled start time for the maintenance. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings`

Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.

| Property | Type | Description |
|----------|------|-------------|
| `exclude` | `boolean` | Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintena... |
| `isRollback` | `boolean` | Optional. If the update call is triggered from rollback, set the value as true. |
| `maintenancePolicies` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata`

Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location of the node, if different from instance location. |
| `nodeId` | `string` | The id of the node. This should be equal to SaasInstanceNode.node_id. |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | If present, this will override eligibility for the node coming from instance or exclusions for sp... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter`

Contains notification related data.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. Array of string values. e.g. instance's replica information. |

### `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility`

PerSliSloEligibility is a mapping from an SLI name to eligibility.

| Property | Type | Description |
|----------|------|-------------|
| `eligibilities` | `object` | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given ins... |

### `GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource`

Describes provisioned dataplane resources.

| Property | Type | Description |
|----------|------|-------------|
| `resourceType` | `string` | Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provi... |
| `resourceUrl` | `string` | URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/projects/...)". |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility`

SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.

| Property | Type | Description |
|----------|------|-------------|
| `eligible` | `boolean` | Whether an instance is eligible or ineligible. |
| `reason` | `string` | User-defined reason for the current value of instance eligibility. Usually, this can be directly ... |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata`

SloMetadata contains resources required for proper SLO classification of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>` | Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This fiel... |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs. |
| `tier` | `string` | Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers speci... |

### `LDAPSSettings`

LDAPSSettings represents the ldaps settings for domain resource. LDAP is the Lightweight Directory Access Protocol, defined in https://tools.ietf.org/html/rfc4511. The settings object configures LDAP over SSL/TLS, whether it is over port 636 or the StartTLS operation. If LDAPSSettings is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.

| Property | Type | Description |
|----------|------|-------------|
| `certificate` | `Certificate` | Output only. The certificate used to configure LDAPS. Certificates can be chained with a maximum ... |
| `certificatePassword` | `string` | Input only. The password used to encrypt the uploaded PFX certificate. |
| `certificatePfx` | `string` | Input only. The uploaded PKCS12-formatted certificate to configure LDAPS with. It will enable the... |
| `name` | `string` | The resource name of the LDAPS settings. Uses the form: `projects/{project}/locations/{location}/... |
| `state` | `string` | Output only. The current state of this LDAPS settings. |
| `updateTime` | `string` | Output only. Last update time. |

### `ListBackupsResponse`

ListBackupsResponse is the response message for ListBackups method.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | A list of Cloud AD backups in the domain. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDomainsResponse`

Response message for ListDomains

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<Domain>` | A list of Managed Identities Service domains in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

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

### `ListPeeringsResponse`

ListPeeringsResponse is the response message for ListPeerings method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `peerings` | `array<Peering>` | A list of Managed Identities Service Peerings in the project. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListSqlIntegrationsResponse`

ListSqlIntegrationsResponse is the response message for ListSqlIntegrations method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `sqlIntegrations` | `array<SqlIntegration>` | A list of SQLIntegrations of a domain. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MaintenancePolicy`

Defines policies to service maintenance events.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the resource was created. |
| `description` | `string` | Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT i... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `name` | `string` | Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/m... |
| `state` | `string` | Optional. The state of the policy. |
| `updatePolicy` | `UpdatePolicy` | Maintenance policy applicable to instance update. |
| `updateTime` | `string` | Output only. The time when the resource was updated. |

### `MaintenanceWindow`

MaintenanceWindow definition.

| Property | Type | Description |
|----------|------|-------------|
| `dailyCycle` | `DailyCycle` | Daily cycle. |
| `weeklyCycle` | `WeeklyCycle` | Weekly cycle. |

### `OnPremDomainDetails`

OnPremDomainDetails is the message which contains details of on-prem domain which is trusted and needs to be migrated.

| Property | Type | Description |
|----------|------|-------------|
| `disableSidFiltering` | `boolean` | Optional. Option to disable SID filtering. |
| `domainName` | `string` | Required. FQDN of the on-prem domain being migrated. |

### `OnPremDomainSIDDetails`

OnPremDomainDetails is the message which contains details of on-prem domain which is trusted and needs to be migrated.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | FQDN of the on-prem domain being migrated. |
| `sidFilteringState` | `string` | Current SID filtering state. |

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

### `Peering`

Represents a Managed Service for Microsoft Active Directory Peering.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedNetwork` | `string` | Required. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firew... |
| `createTime` | `string` | Output only. The time the instance was created. |
| `domainResource` | `string` | Required. Full domain resource path for the Managed AD Domain involved in peering. The resource p... |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. |
| `name` | `string` | Output only. Unique name of the peering in this scope including projects and location using the f... |
| `state` | `string` | Output only. The current state of this Peering. |
| `statusMessage` | `string` | Output only. Additional information about the current status of this peering, if available. |
| `updateTime` | `string` | Output only. Last update time. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ReconfigureTrustRequest`

Request message for ReconfigureTrust

| Property | Type | Description |
|----------|------|-------------|
| `targetDnsIpAddresses` | `array<string>` | Required. The target DNS server IP addresses to resolve the remote domain involved in the trust. |
| `targetDomainName` | `string` | Required. The fully-qualified target domain name which will be in trust with current domain. |

### `ResetAdminPasswordRequest`

Request message for ResetAdminPassword

### `ResetAdminPasswordResponse`

Response message for ResetAdminPassword

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | A random password. See admin for more information. |

### `RestoreDomainRequest`

RestoreDomainRequest is the request received by RestoreDomain rpc

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Required. ID of the backup to be restored |

### `Schedule`

Configure the schedule.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Allows to define schedule that runs specified day of the week. |
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the window to start the operations. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `SqlIntegration`

Represents the SQL instance integrated with Managed AD.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the SQL integration was created. |
| `name` | `string` | The unique name of the SQL integration in the form of `projects/{project_id}/locations/global/dom... |
| `sqlInstance` | `string` | The full resource name of an integrated SQL instance |
| `state` | `string` | Output only. The current state of the SQL integration. |
| `updateTime` | `string` | Output only. The time the SQL integration was updated. |

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

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `Trust`

Represents a relationship between two domains. This allows a controller in one domain to authenticate a user in another domain. If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the instance was created. |
| `lastTrustHeartbeatTime` | `string` | Output only. The last heartbeat time when the trust was known to be connected. |
| `selectiveAuthentication` | `boolean` | Optional. The trust authentication type, which decides whether the trusted side has forest/domain... |
| `state` | `string` | Output only. The current state of the trust. |
| `stateDescription` | `string` | Output only. Additional information about the current state of the trust, if available. |
| `targetDnsIpAddresses` | `array<string>` | Required. The target DNS server IP addresses which can resolve the remote domain involved in the ... |
| `targetDomainName` | `string` | Required. The fully qualified target domain name which will be in trust with the current domain. |
| `trustDirection` | `string` | Required. The trust direction, which decides if the current domain is trusted, trusting, or both. |
| `trustHandshakeSecret` | `string` | Required. The trust secret used for the handshake with the target domain. This will not be stored. |
| `trustType` | `string` | Required. The type of trust represented by the trust resource. |
| `updateTime` | `string` | Output only. The last update time. |

### `UpdatePolicy`

Maintenance policy applicable to instance updates.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Optional. Relative scheduling channel applied to resource. |
| `denyMaintenancePeriods` | `array<DenyMaintenancePeriod>` | Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. Th... |
| `window` | `MaintenanceWindow` | Optional. Maintenance window that is applied to resources covered by this policy. |

### `ValidateTrustRequest`

Request message for ValidateTrust

| Property | Type | Description |
|----------|------|-------------|
| `trust` | `Trust` | Required. The domain trust to validate trust state for. |

### `WeeklyCycle`

Time window specified for weekly operations.

| Property | Type | Description |
|----------|------|-------------|
| `schedule` | `array<Schedule>` | User can specify multiple windows in a week. Minimum of 1 window. |

