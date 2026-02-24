# Cloud DNS API - API Reference

**Version**: `v1` | **Methods**: 40 | **Schemas**: 67

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dns.policies.delete` | DELETE | `dns/v1/projects/{project}/policies/{policy}` | Deletes a previously created policy. Fails if the policy is still being referenced by a network. |
| `dns.policies.list` | GET | `dns/v1/projects/{project}/policies` | Enumerates all policies associated with a project. |
| `dns.policies.update` | PUT | `dns/v1/projects/{project}/policies/{policy}` | Updates an existing policy. |
| `dns.policies.create` | POST | `dns/v1/projects/{project}/policies` | Creates a new policy. |
| `dns.policies.get` | GET | `dns/v1/projects/{project}/policies/{policy}` | Fetches the representation of an existing policy. |
| `dns.policies.patch` | PATCH | `dns/v1/projects/{project}/policies/{policy}` | Applies a partial update to an existing policy. |
| `dns.responsePolicyRules.update` | PUT | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}` | Updates an existing Response Policy Rule. |
| `dns.responsePolicyRules.list` | GET | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules` | Enumerates all Response Policy Rules associated with a project. |
| `dns.responsePolicyRules.create` | POST | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules` | Creates a new Response Policy Rule. |
| `dns.responsePolicyRules.patch` | PATCH | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}` | Applies a partial update to an existing Response Policy Rule. |
| `dns.responsePolicyRules.delete` | DELETE | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}` | Deletes a previously created Response Policy Rule. |
| `dns.responsePolicyRules.get` | GET | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}` | Fetches the representation of an existing Response Policy Rule. |
| `dns.changes.create` | POST | `dns/v1/projects/{project}/managedZones/{managedZone}/changes` | Atomically updates the ResourceRecordSet collection. |
| `dns.changes.list` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/changes` | Enumerates Changes to a ResourceRecordSet collection. |
| `dns.changes.get` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}` | Fetches the representation of an existing Change. |
| `dns.resourceRecordSets.get` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}` | Fetches the representation of an existing ResourceRecordSet. |
| `dns.resourceRecordSets.create` | POST | `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets` | Creates a new ResourceRecordSet. |
| `dns.resourceRecordSets.delete` | DELETE | `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}` | Deletes a previously created ResourceRecordSet. |
| `dns.resourceRecordSets.patch` | PATCH | `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}` | Applies a partial update to an existing ResourceRecordSet. |
| `dns.resourceRecordSets.list` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets` | Enumerates ResourceRecordSets that you have created but not yet deleted. |
| `dns.dnsKeys.list` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys` | Enumerates DnsKeys to a ResourceRecordSet collection. |
| `dns.dnsKeys.get` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}` | Fetches the representation of an existing DnsKey. |
| `dns.responsePolicies.patch` | PATCH | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}` | Applies a partial update to an existing Response Policy. |
| `dns.responsePolicies.delete` | DELETE | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}` | Deletes a previously created Response Policy. Fails if the response policy is non-empty or still ... |
| `dns.responsePolicies.list` | GET | `dns/v1/projects/{project}/responsePolicies` | Enumerates all Response Policies associated with a project. |
| `dns.responsePolicies.create` | POST | `dns/v1/projects/{project}/responsePolicies` | Creates a new Response Policy |
| `dns.responsePolicies.get` | GET | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}` | Fetches the representation of an existing Response Policy. |
| `dns.responsePolicies.update` | PUT | `dns/v1/projects/{project}/responsePolicies/{responsePolicy}` | Updates an existing Response Policy. |
| `dns.managedZoneOperations.list` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/operations` | Enumerates Operations for the given ManagedZone. |
| `dns.managedZoneOperations.get` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}` | Fetches the representation of an existing Operation. |
| `dns.projects.get` | GET | `dns/v1/projects/{project}` | Fetches the representation of an existing Project. |
| `dns.managedZones.getIamPolicy` | POST | `dns/v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dns.managedZones.patch` | PATCH | `dns/v1/projects/{project}/managedZones/{managedZone}` | Applies a partial update to an existing ManagedZone. |
| `dns.managedZones.list` | GET | `dns/v1/projects/{project}/managedZones` | Enumerates ManagedZones that have been created but not yet deleted. |
| `dns.managedZones.create` | POST | `dns/v1/projects/{project}/managedZones` | Creates a new ManagedZone. |
| `dns.managedZones.update` | PUT | `dns/v1/projects/{project}/managedZones/{managedZone}` | Updates an existing ManagedZone. |
| `dns.managedZones.setIamPolicy` | POST | `dns/v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `dns.managedZones.delete` | DELETE | `dns/v1/projects/{project}/managedZones/{managedZone}` | Deletes a previously created ManagedZone. |
| `dns.managedZones.get` | GET | `dns/v1/projects/{project}/managedZones/{managedZone}` | Fetches the representation of an existing ManagedZone. |
| `dns.managedZones.testIamPermissions` | POST | `dns/v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |

### `dns.policies.delete`

**DELETE** `dns/v1/projects/{project}/policies/{policy}`

Deletes a previously created policy. Fails if the policy is still being referenced by a network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `policy` | `string` | path | Yes | User given friendly name of the policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

```typescript
const res = await dns.policies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.policies.list`

**GET** `dns/v1/projects/{project}/policies`

Enumerates all policies associated with a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |

**Response**: `PoliciesListResponse`

```typescript
const res = await dns.policies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.policies.update`

**PUT** `dns/v1/projects/{project}/policies/{policy}`

Updates an existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `policy` | `string` | path | Yes | User given friendly name of the policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `Policy`

**Response**: `PoliciesUpdateResponse`

```typescript
const res = await dns.policies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.policies.create`

**POST** `dns/v1/projects/{project}/policies`

Creates a new policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `Policy`

**Response**: `Policy`

```typescript
const res = await dns.policies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.policies.get`

**GET** `dns/v1/projects/{project}/policies/{policy}`

Fetches the representation of an existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `policy` | `string` | path | Yes | User given friendly name of the policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `Policy`

```typescript
const res = await dns.policies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.policies.patch`

**PATCH** `dns/v1/projects/{project}/policies/{policy}`

Applies a partial update to an existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `policy` | `string` | path | Yes | User given friendly name of the policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `Policy`

**Response**: `PoliciesPatchResponse`

```typescript
const res = await dns.policies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.update`

**PUT** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}`

Updates an existing Response Policy Rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy containing the Response Policy Rule. |
| `responsePolicyRule` | `string` | path | Yes | User assigned name of the Response Policy Rule addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicyRule`

**Response**: `ResponsePolicyRulesUpdateResponse`

```typescript
const res = await dns.responsePolicyRules.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.list`

**GET** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules`

Enumerates all Response Policy Rules associated with a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy to list. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |

**Response**: `ResponsePolicyRulesListResponse`

```typescript
const res = await dns.responsePolicyRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.create`

**POST** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules`

Creates a new Response Policy Rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy containing the Response Policy Rule. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicyRule`

**Response**: `ResponsePolicyRule`

```typescript
const res = await dns.responsePolicyRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.patch`

**PATCH** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}`

Applies a partial update to an existing Response Policy Rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy containing the Response Policy Rule. |
| `responsePolicyRule` | `string` | path | Yes | User assigned name of the Response Policy Rule addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicyRule`

**Response**: `ResponsePolicyRulesPatchResponse`

```typescript
const res = await dns.responsePolicyRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.delete`

**DELETE** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}`

Deletes a previously created Response Policy Rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy containing the Response Policy Rule. |
| `responsePolicyRule` | `string` | path | Yes | User assigned name of the Response Policy Rule addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

```typescript
const res = await dns.responsePolicyRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicyRules.get`

**GET** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}`

Fetches the representation of an existing Response Policy Rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy containing the Response Policy Rule. |
| `responsePolicyRule` | `string` | path | Yes | User assigned name of the Response Policy Rule addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `ResponsePolicyRule`

```typescript
const res = await dns.responsePolicyRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.changes.create`

**POST** `dns/v1/projects/{project}/managedZones/{managedZone}/changes`

Atomically updates the ResourceRecordSet collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `Change`

**Response**: `Change`

```typescript
const res = await dns.changes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.changes.list`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/changes`

Enumerates Changes to a ResourceRecordSet collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |
| `sortBy` | `string` | query | No | Sorting criterion. The only supported value is change sequence. |
| `sortOrder` | `string` | query | No | Sorting order direction: 'ascending' or 'descending'. |

**Response**: `ChangesListResponse`

```typescript
const res = await dns.changes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.changes.get`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}`

Fetches the representation of an existing Change.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `changeId` | `string` | path | Yes | The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `Change`

```typescript
const res = await dns.changes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.resourceRecordSets.get`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}`

Fetches the representation of an existing ResourceRecordSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `name` | `string` | path | Yes | Fully qualified domain name. |
| `type` | `string` | path | Yes | RRSet type. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `ResourceRecordSet`

```typescript
const res = await dns.resourceRecordSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.resourceRecordSets.create`

**POST** `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets`

Creates a new ResourceRecordSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResourceRecordSet`

**Response**: `ResourceRecordSet`

```typescript
const res = await dns.resourceRecordSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.resourceRecordSets.delete`

**DELETE** `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}`

Deletes a previously created ResourceRecordSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `name` | `string` | path | Yes | Fully qualified domain name. |
| `type` | `string` | path | Yes | RRSet type. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `ResourceRecordSetsDeleteResponse`

```typescript
const res = await dns.resourceRecordSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.resourceRecordSets.patch`

**PATCH** `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}`

Applies a partial update to an existing ResourceRecordSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `name` | `string` | path | Yes | Fully qualified domain name. |
| `type` | `string` | path | Yes | RRSet type. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResourceRecordSet`

**Response**: `ResourceRecordSet`

```typescript
const res = await dns.resourceRecordSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.resourceRecordSets.list`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/rrsets`

Enumerates ResourceRecordSets that you have created but not yet deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `name` | `string` | query | No | Specify a fully qualified domain name to view only those records. The name parameter is not supported and must be omi... |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |
| `type` | `string` | query | No | Specify a record type to view only those records. You must also specify the name parameter. The type parameter is not... |

**Response**: `ResourceRecordSetsListResponse`

```typescript
const res = await dns.resourceRecordSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.dnsKeys.list`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys`

Enumerates DnsKeys to a ResourceRecordSet collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `digestType` | `string` | query | No | An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recomme... |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |

**Response**: `DnsKeysListResponse`

```typescript
const res = await dns.dnsKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.dnsKeys.get`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}`

Fetches the representation of an existing DnsKey.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `dnsKeyId` | `string` | path | Yes | The identifier of the requested DnsKey. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |
| `digestType` | `string` | query | No | An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recomme... |

**Response**: `DnsKey`

```typescript
const res = await dns.dnsKeys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.patch`

**PATCH** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}`

Applies a partial update to an existing Response Policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the response policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicy`

**Response**: `ResponsePoliciesPatchResponse`

```typescript
const res = await dns.responsePolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.delete`

**DELETE** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}`

Deletes a previously created Response Policy. Fails if the response policy is non-empty or still being referenced by a network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

```typescript
const res = await dns.responsePolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.list`

**GET** `dns/v1/projects/{project}/responsePolicies`

Enumerates all Response Policies associated with a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |

**Response**: `ResponsePoliciesListResponse`

```typescript
const res = await dns.responsePolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.create`

**POST** `dns/v1/projects/{project}/responsePolicies`

Creates a new Response Policy

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicy`

**Response**: `ResponsePolicy`

```typescript
const res = await dns.responsePolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.get`

**GET** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}`

Fetches the representation of an existing Response Policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `ResponsePolicy`

```typescript
const res = await dns.responsePolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.responsePolicies.update`

**PUT** `dns/v1/projects/{project}/responsePolicies/{responsePolicy}`

Updates an existing Response Policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `responsePolicy` | `string` | path | Yes | User assigned name of the Response Policy addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ResponsePolicy`

**Response**: `ResponsePoliciesUpdateResponse`

```typescript
const res = await dns.responsePolicies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZoneOperations.list`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/operations`

Enumerates Operations for the given ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |
| `sortBy` | `string` | query | No | Sorting criterion. The only supported values are START_TIME and ID. |

**Response**: `ManagedZoneOperationsListResponse`

```typescript
const res = await dns.managedZoneOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZoneOperations.get`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}`

Fetches the representation of an existing Operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. |
| `operation` | `string` | path | Yes | Identifies the operation addressed by this request (ID of the operation). |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `Operation`

```typescript
const res = await dns.managedZoneOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.projects.get`

**GET** `dns/v1/projects/{project}`

Fetches the representation of an existing Project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `Project`

```typescript
const res = await dns.projects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.getIamPolicy`

**POST** `dns/v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1GetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dns.managedZones.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.patch`

**PATCH** `dns/v1/projects/{project}/managedZones/{managedZone}`

Applies a partial update to an existing ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ManagedZone`

**Response**: `Operation`

```typescript
const res = await dns.managedZones.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.list`

**GET** `dns/v1/projects/{project}/managedZones`

Enumerates ManagedZones that have been created but not yet deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `dnsName` | `string` | query | No | Restricts the list to return only zones with this domain name. |
| `maxResults` | `integer` | query | No | Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return. |
| `pageToken` | `string` | query | No | Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous lis... |

**Response**: `ManagedZonesListResponse`

```typescript
const res = await dns.managedZones.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.create`

**POST** `dns/v1/projects/{project}/managedZones`

Creates a new ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ManagedZone`

**Response**: `ManagedZone`

```typescript
const res = await dns.managedZones.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.update`

**PUT** `dns/v1/projects/{project}/managedZones/{managedZone}`

Updates an existing ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Request body**: `ManagedZone`

**Response**: `Operation`

```typescript
const res = await dns.managedZones.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.setIamPolicy`

**POST** `dns/v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await dns.managedZones.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.delete`

**DELETE** `dns/v1/projects/{project}/managedZones/{managedZone}`

Deletes a previously created ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

```typescript
const res = await dns.managedZones.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.get`

**GET** `dns/v1/projects/{project}/managedZones/{managedZone}`

Fetches the representation of an existing ManagedZone.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Identifies the project addressed by this request. |
| `managedZone` | `string` | path | Yes | Identifies the managed zone addressed by this request. Can be the managed zone name or ID. |
| `clientOperationId` | `string` | query | No | For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation re... |

**Response**: `ManagedZone`

```typescript
const res = await dns.managedZones.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

### `dns.managedZones.testIamPermissions`

**POST** `dns/v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this returns an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await dns.managedZones.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/ndev.clouddns.readonly`
- `https://www.googleapis.com/auth/ndev.clouddns.readwrite`

---

## Schemas

### `Change`

A Change represents a set of `ResourceRecordSet` additions and deletions applied atomically to a ManagedZone. ResourceRecordSets within a ManagedZone are modified by creating a new Change element in the Changes collection. In turn the Changes collection also records the past modifications to the `ResourceRecordSets` in a `ManagedZone`. The current state of the `ManagedZone` is the sum effect of applying all `Change` elements in the `Changes` collection in sequence.

| Property | Type | Description |
|----------|------|-------------|
| `additions` | `array<ResourceRecordSet>` | Which ResourceRecordSets to add? |
| `deletions` | `array<ResourceRecordSet>` | Which ResourceRecordSets to remove? Must match existing data exactly. |
| `id` | `string` | Unique identifier for the resource; defined by the server (output only). |
| `isServing` | `boolean` | If the DNS queries for the zone will be served. |
| `kind` | `string` |  |
| `startTime` | `string` | The time that this operation was started by the server (output only). This is in RFC3339 text for... |
| `status` | `string` | Status of the operation (output only). A status of "done" means that the request to update the au... |

### `ChangesListResponse`

The response to a request to enumerate Changes to a ResourceRecordSets collection.

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<Change>` | The requested changes. |
| `kind` | `string` | Type of resource. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |

### `DnsKey`

A DNSSEC key pair.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time. |
| `creationTime` | `string` | The time that this resource was created in the control plane. This is in RFC3339 text format. Out... |
| `description` | `string` | A mutable string of at most 1024 characters associated with this resource for the user's convenie... |
| `digests` | `array<DnsKeyDigest>` | Cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are... |
| `id` | `string` | Unique identifier for the resource; defined by the server (output only). |
| `isActive` | `boolean` | Active keys are used to sign subsequent changes to the ManagedZone. Inactive keys are still prese... |
| `keyLength` | `integer` | Length of the key in bits. Specified at creation time, and then immutable. |
| `keyTag` | `integer` | The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsK... |
| `kind` | `string` |  |
| `publicKey` | `string` | Base64 encoded public half of this key. Output only. |
| `type` | `string` | One of "KEY_SIGNING" or "ZONE_SIGNING". Keys of type KEY_SIGNING have the Secure Entry Point flag... |

### `DnsKeyDigest`

| Property | Type | Description |
|----------|------|-------------|
| `digest` | `string` | The base-16 encoded bytes of this digest. Suitable for use in a DS resource record. |
| `type` | `string` | Specifies the algorithm used to calculate this digest. |

### `DnsKeySpec`

Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | String mnemonic specifying the DNSSEC algorithm of this key. |
| `keyLength` | `integer` | Length of the keys in bits. |
| `keyType` | `string` | Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys h... |
| `kind` | `string` |  |

### `DnsKeysListResponse`

The response to a request to enumerate DnsKeys in a ManagedZone.

| Property | Type | Description |
|----------|------|-------------|
| `dnsKeys` | `array<DnsKey>` | The requested resources. |
| `kind` | `string` | Type of resource. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

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
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GoogleIamV1GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GoogleIamV1GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `ManagedZone`

A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.

| Property | Type | Description |
|----------|------|-------------|
| `cloudLoggingConfig` | `ManagedZoneCloudLoggingConfig` |  |
| `creationTime` | `string` | The time that this resource was created on the server. This is in RFC3339 text format. Output only. |
| `description` | `string` | A mutable string of at most 1024 characters associated with this resource for the user's convenie... |
| `dnsName` | `string` | The DNS name of this managed zone, for instance "example.com.". |
| `dnssecConfig` | `ManagedZoneDnsSecConfig` | DNSSEC configuration. |
| `forwardingConfig` | `ManagedZoneForwardingConfig` | The presence for this field indicates that outbound forwarding is enabled for this zone. The valu... |
| `id` | `string` | Unique identifier for the resource; defined by the server (output only) |
| `kind` | `string` |  |
| `labels` | `object` | User labels. |
| `name` | `string` | User assigned name for this resource. Must be unique within the project. The name must be 1-63 ch... |
| `nameServerSet` | `string` | Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name... |
| `nameServers` | `array<string>` | Delegate your managed_zone to these virtual name servers; defined by the server (output only) |
| `peeringConfig` | `ManagedZonePeeringConfig` | The presence of this field indicates that DNS Peering is enabled for this zone. The value of this... |
| `privateVisibilityConfig` | `ManagedZonePrivateVisibilityConfig` | For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible ... |
| `reverseLookupConfig` | `ManagedZoneReverseLookupConfig` | The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS res... |
| `serviceDirectoryConfig` | `ManagedZoneServiceDirectoryConfig` | This field links to the associated service directory namespace. Do not set this field for public ... |
| `visibility` | `string` | The zone's visibility: public zones are exposed to the Internet, while private zones are visible ... |

### `ManagedZoneCloudLoggingConfig`

Cloud Logging configurations for publicly visible zones.

| Property | Type | Description |
|----------|------|-------------|
| `enableLogging` | `boolean` | If set, enable query logging for this ManagedZone. False by default, making logging opt-in. |
| `kind` | `string` |  |

### `ManagedZoneDnsSecConfig`

| Property | Type | Description |
|----------|------|-------------|
| `defaultKeySpecs` | `array<DnsKeySpec>` | Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed whi... |
| `kind` | `string` |  |
| `nonExistence` | `string` | Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed whil... |
| `state` | `string` | Specifies whether DNSSEC is enabled, and what mode it is in. |

### `ManagedZoneForwardingConfig`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `targetNameServers` | `array<ManagedZoneForwardingConfigNameServerTarget>` | List of target name servers to forward to. Cloud DNS selects the best available name server if mo... |

### `ManagedZoneForwardingConfigNameServerTarget`

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | Fully qualified domain name for the forwarding target. |
| `forwardingPath` | `string` | Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding... |
| `ipv4Address` | `string` | IPv4 address of a target name server. |
| `ipv6Address` | `string` | IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. ... |
| `kind` | `string` |  |

### `ManagedZoneOperationsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Type of resource. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |
| `operations` | `array<Operation>` | The operation resources. |

### `ManagedZonePeeringConfig`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `targetNetwork` | `ManagedZonePeeringConfigTargetNetwork` | The network with which to peer. |

### `ManagedZonePeeringConfigTargetNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `deactivateTime` | `string` | The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicat... |
| `kind` | `string` |  |
| `networkUrl` | `string` | The fully qualified URL of the VPC network to forward queries to. This should be formatted like `... |

### `ManagedZonePrivateVisibilityConfig`

| Property | Type | Description |
|----------|------|-------------|
| `gkeClusters` | `array<ManagedZonePrivateVisibilityConfigGKECluster>` | The list of Google Kubernetes Engine clusters that can see this zone. |
| `kind` | `string` |  |
| `networks` | `array<ManagedZonePrivateVisibilityConfigNetwork>` | The list of VPC networks that can see this zone. |

### `ManagedZonePrivateVisibilityConfigGKECluster`

| Property | Type | Description |
|----------|------|-------------|
| `gkeClusterName` | `string` | The resource name of the cluster to bind this ManagedZone to. This should be specified in the for... |
| `kind` | `string` |  |

### `ManagedZonePrivateVisibilityConfigNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `networkUrl` | `string` | The fully qualified URL of the VPC network to bind to. Format this URL like `https://www.googleap... |

### `ManagedZoneReverseLookupConfig`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |

### `ManagedZoneServiceDirectoryConfig`

Contains information about Service Directory-backed zones.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `namespace` | `ManagedZoneServiceDirectoryConfigNamespace` | Contains information about the namespace associated with the zone. |

### `ManagedZoneServiceDirectoryConfigNamespace`

| Property | Type | Description |
|----------|------|-------------|
| `deletionTime` | `string` | The time that the namespace backing this zone was deleted; an empty string if it still exists. Th... |
| `kind` | `string` |  |
| `namespaceUrl` | `string` | The fully qualified URL of the namespace associated with the zone. Format must be `https://servic... |

### `ManagedZonesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Type of resource. |
| `managedZones` | `array<ManagedZone>` | The managed zone resources. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |

### `Operation`

An operation represents a successful mutation performed on a Cloud DNS resource. Operations provide: - An audit log of server resource mutations. - A way to recover/retry API calls in the case where the response is never received by the caller. Use the caller specified client_operation_id.

| Property | Type | Description |
|----------|------|-------------|
| `dnsKeyContext` | `OperationDnsKeyContext` | Only populated if the operation targeted a DnsKey (output only). |
| `id` | `string` | Unique identifier for the resource. This is the client_operation_id if the client specified it wh... |
| `kind` | `string` |  |
| `startTime` | `string` | The time that this operation was started by the server. This is in RFC3339 text format (output on... |
| `status` | `string` | Status of the operation. Can be one of the following: "PENDING" or "DONE" (output only). A status... |
| `type` | `string` | Type of the operation. Operations include insert, update, and delete (output only). |
| `user` | `string` | User who requested the operation, for example: user@example.com. cloud-dns-system for operations ... |
| `zoneContext` | `OperationManagedZoneContext` | Only populated if the operation targeted a ManagedZone (output only). |

### `OperationDnsKeyContext`

| Property | Type | Description |
|----------|------|-------------|
| `newValue` | `DnsKey` | The post-operation DnsKey resource. |
| `oldValue` | `DnsKey` | The pre-operation DnsKey resource. |

### `OperationManagedZoneContext`

| Property | Type | Description |
|----------|------|-------------|
| `newValue` | `ManagedZone` | The post-operation ManagedZone resource. |
| `oldValue` | `ManagedZone` | The pre-operation ManagedZone resource. |

### `PoliciesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Type of resource. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |
| `policies` | `array<Policy>` | The policy resources. |

### `PoliciesPatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` |  |

### `PoliciesUpdateResponse`

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` |  |

### `Policy`

A policy is a collection of DNS rules applied to one or more Virtual Private Cloud resources.

| Property | Type | Description |
|----------|------|-------------|
| `alternativeNameServerConfig` | `PolicyAlternativeNameServerConfig` | Sets an alternative name server for the associated networks. When specified, all DNS queries are ... |
| `description` | `string` | A mutable string of at most 1024 characters associated with this resource for the user's convenie... |
| `dns64Config` | `PolicyDns64Config` | Configurations related to DNS64 for this policy. |
| `enableInboundForwarding` | `boolean` | Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN ... |
| `enableLogging` | `boolean` | Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging... |
| `id` | `string` | Unique identifier for the resource; defined by the server (output only). |
| `kind` | `string` |  |
| `name` | `string` | User-assigned name for this policy. |
| `networks` | `array<PolicyNetwork>` | List of network names specifying networks to which this policy is applied. |

### `PolicyAlternativeNameServerConfig`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `targetNameServers` | `array<PolicyAlternativeNameServerConfigTargetNameServer>` | Sets an alternative name server for the associated networks. When specified, all DNS queries are ... |

### `PolicyAlternativeNameServerConfigTargetNameServer`

| Property | Type | Description |
|----------|------|-------------|
| `forwardingPath` | `string` | Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding... |
| `ipv4Address` | `string` | IPv4 address to forward queries to. |
| `ipv6Address` | `string` | IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public pre... |
| `kind` | `string` |  |

### `PolicyDns64Config`

DNS64 policies

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `scope` | `PolicyDns64ConfigScope` | The scope to which DNS64 config will be applied to. |

### `PolicyDns64ConfigScope`

| Property | Type | Description |
|----------|------|-------------|
| `allQueries` | `boolean` | Controls whether DNS64 is enabled globally for all networks bound to the policy. |
| `kind` | `string` |  |

### `PolicyNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `networkUrl` | `string` | The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.... |

### `Project`

A project resource. The project is a top level container for resources including Cloud DNS ManagedZones. Projects can be created only in the APIs console.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | User assigned unique identifier for the resource (output only). |
| `kind` | `string` |  |
| `number` | `string` | Unique numeric identifier for the resource; defined by the server (output only). |
| `quota` | `Quota` | Quotas assigned to this project (output only). |

### `Quota`

Limits associated with a Project.

| Property | Type | Description |
|----------|------|-------------|
| `dnsKeysPerManagedZone` | `integer` | Maximum allowed number of DnsKeys per ManagedZone. |
| `gkeClustersPerManagedZone` | `integer` | Maximum allowed number of GKE clusters to which a privately scoped zone can be attached. |
| `gkeClustersPerPolicy` | `integer` | Maximum allowed number of GKE clusters per policy. |
| `gkeClustersPerResponsePolicy` | `integer` | Maximum allowed number of GKE clusters per response policy. |
| `internetHealthChecksPerManagedZone` | `integer` |  |
| `itemsPerRoutingPolicy` | `integer` | Maximum allowed number of items per routing policy. |
| `kind` | `string` |  |
| `managedZones` | `integer` | Maximum allowed number of managed zones in the project. |
| `managedZonesPerGkeCluster` | `integer` | Maximum allowed number of managed zones which can be attached to a GKE cluster. |
| `managedZonesPerNetwork` | `integer` | Maximum allowed number of managed zones which can be attached to a network. |
| `nameserversPerDelegation` | `integer` | Maximum number of nameservers per delegation, meant to prevent abuse |
| `networksPerManagedZone` | `integer` | Maximum allowed number of networks to which a privately scoped zone can be attached. |
| `networksPerPolicy` | `integer` | Maximum allowed number of networks per policy. |
| `networksPerResponsePolicy` | `integer` | Maximum allowed number of networks per response policy. |
| `peeringZonesPerTargetNetwork` | `integer` | Maximum allowed number of consumer peering zones per target network owned by this producer project |
| `policies` | `integer` | Maximum allowed number of policies per project. |
| `resourceRecordsPerRrset` | `integer` | Maximum allowed number of ResourceRecords per ResourceRecordSet. |
| `responsePolicies` | `integer` | Maximum allowed number of response policies per project. |
| `responsePolicyRulesPerResponsePolicy` | `integer` | Maximum allowed number of rules per response policy. |
| `rrsetAdditionsPerChange` | `integer` | Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest. |
| `rrsetDeletionsPerChange` | `integer` | Maximum allowed number of ResourceRecordSets to delete per ChangesCreateRequest. |
| `rrsetsPerManagedZone` | `integer` | Maximum allowed number of ResourceRecordSets per zone in the project. |
| `targetNameServersPerManagedZone` | `integer` | Maximum allowed number of target name servers per managed forwarding zone. |
| `targetNameServersPerPolicy` | `integer` | Maximum allowed number of alternative target name servers per policy. |
| `totalRrdataSizePerChange` | `integer` | Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes. |
| `whitelistedKeySpecs` | `array<DnsKeySpec>` | DNSSEC algorithm and key length types that can be used for DnsKeys. |

### `RRSetRoutingPolicy`

A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.

| Property | Type | Description |
|----------|------|-------------|
| `geo` | `RRSetRoutingPolicyGeoPolicy` |  |
| `healthCheck` | `string` | The fully qualified URL of the HealthCheck to use for this RRSetRoutingPolicy. Format this URL li... |
| `kind` | `string` |  |
| `primaryBackup` | `RRSetRoutingPolicyPrimaryBackupPolicy` |  |
| `wrr` | `RRSetRoutingPolicyWrrPolicy` |  |

### `RRSetRoutingPolicyGeoPolicy`

Configures a `RRSetRoutingPolicy` that routes based on the geo location of the querying user.

| Property | Type | Description |
|----------|------|-------------|
| `enableFencing` | `boolean` | Without fencing, if health check fails for all configured items in the current geo bucket, we fai... |
| `items` | `array<RRSetRoutingPolicyGeoPolicyGeoPolicyItem>` | The primary geo routing configuration. If there are multiple items with the same location, an err... |
| `kind` | `string` |  |

### `RRSetRoutingPolicyGeoPolicyGeoPolicyItem`

ResourceRecordSet data for one geo location.

| Property | Type | Description |
|----------|------|-------------|
| `healthCheckedTargets` | `RRSetRoutingPolicyHealthCheckTargets` | For A and AAAA types only. Endpoints to return in the query result only if they are healthy. Thes... |
| `kind` | `string` |  |
| `location` | `string` | The geo-location granularity is a GCP region. This location string should correspond to a GCP reg... |
| `rrdatas` | `array<string>` |  |
| `signatureRrdatas` | `array<string>` | DNSSEC generated signatures for all the `rrdata` within this item. When using health-checked targ... |

### `RRSetRoutingPolicyHealthCheckTargets`

HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response. Set either `internal_load_balancer` or `external_endpoints`. Do not set both.

| Property | Type | Description |
|----------|------|-------------|
| `externalEndpoints` | `array<string>` | The Internet IP addresses to be health checked. The format matches the format of ResourceRecordSe... |
| `internalLoadBalancers` | `array<RRSetRoutingPolicyLoadBalancerTarget>` | Configuration for internal load balancers to be health checked. |

### `RRSetRoutingPolicyLoadBalancerTarget`

The configuration for an individual load balancer to health check.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | The frontend IP address of the load balancer to health check. |
| `ipProtocol` | `string` | The protocol of the load balancer to health check. |
| `kind` | `string` |  |
| `loadBalancerType` | `string` | The type of load balancer specified by this target. This value must match the configuration of th... |
| `networkUrl` | `string` | The fully qualified URL of the network that the load balancer is attached to. This should be form... |
| `port` | `string` | The configured port of the load balancer. |
| `project` | `string` | The project ID in which the load balancer is located. |
| `region` | `string` | The region in which the load balancer is located. |

### `RRSetRoutingPolicyPrimaryBackupPolicy`

Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.

| Property | Type | Description |
|----------|------|-------------|
| `backupGeoTargets` | `RRSetRoutingPolicyGeoPolicy` | Backup targets provide a regional failover policy for the otherwise global primary targets. If se... |
| `kind` | `string` |  |
| `primaryTargets` | `RRSetRoutingPolicyHealthCheckTargets` | Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omi... |
| `trickleTraffic` | `number` | When serving state is `PRIMARY`, this field provides the option of sending a small percentage of ... |

### `RRSetRoutingPolicyWrrPolicy`

Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>` |  |
| `kind` | `string` |  |

### `RRSetRoutingPolicyWrrPolicyWrrPolicyItem`

A routing block which contains the routing information for one WRR item.

| Property | Type | Description |
|----------|------|-------------|
| `healthCheckedTargets` | `RRSetRoutingPolicyHealthCheckTargets` | Endpoints that are health checked before making the routing decision. The unhealthy endpoints are... |
| `kind` | `string` |  |
| `rrdatas` | `array<string>` |  |
| `signatureRrdatas` | `array<string>` | DNSSEC generated signatures for all the `rrdata` within this item. When using health-checked targ... |
| `weight` | `number` | The weight corresponding to this `WrrPolicyItem` object. When multiple `WrrPolicyItem` objects ar... |

### `ResourceRecordSet`

A unit of data that is returned by the DNS servers.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `name` | `string` | For example, www.example.com. |
| `routingPolicy` | `RRSetRoutingPolicy` | Configures dynamic query responses based on either the geo location of the querying user or a wei... |
| `rrdatas` | `array<string>` | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples. |
| `signatureRrdatas` | `array<string>` | As defined in RFC 4034 (section 3.2). |
| `ttl` | `integer` | Number of seconds that this `ResourceRecordSet` can be cached by resolvers. |
| `type` | `string` | The identifier of a supported record type. See the list of Supported DNS record types. |

### `ResourceRecordSetsDeleteResponse`

### `ResourceRecordSetsListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Type of resource. |
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |
| `rrsets` | `array<ResourceRecordSet>` | The resource record set resources. |

### `ResponsePoliciesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |
| `responsePolicies` | `array<ResponsePolicy>` | The Response Policy resources. |

### `ResponsePoliciesPatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `responsePolicy` | `ResponsePolicy` |  |

### `ResponsePoliciesUpdateResponse`

| Property | Type | Description |
|----------|------|-------------|
| `responsePolicy` | `ResponsePolicy` |  |

### `ResponsePolicy`

A Response Policy is a collection of selectors that apply to queries made against one or more Virtual Private Cloud networks.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User-provided description for this Response Policy. |
| `gkeClusters` | `array<ResponsePolicyGKECluster>` | The list of Google Kubernetes Engine clusters to which this response policy is applied. |
| `id` | `string` | Unique identifier for the resource; defined by the server (output only). |
| `kind` | `string` |  |
| `labels` | `object` | User labels. |
| `networks` | `array<ResponsePolicyNetwork>` | List of network names specifying networks to which this policy is applied. |
| `responsePolicyName` | `string` | User assigned name for this Response Policy. |

### `ResponsePolicyGKECluster`

| Property | Type | Description |
|----------|------|-------------|
| `gkeClusterName` | `string` | The resource name of the cluster to bind this response policy to. This should be specified in the... |
| `kind` | `string` |  |

### `ResponsePolicyNetwork`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` |  |
| `networkUrl` | `string` | The fully qualified URL of the VPC network to bind to. This should be formatted like `https://www... |

### `ResponsePolicyRule`

A Response Policy Rule is a selector that applies its behavior to queries that match the selector. Selectors are DNS names, which may be wildcards or exact matches. Each DNS query subject to a Response Policy matches at most one ResponsePolicyRule, as identified by the dns_name field with the longest matching suffix.

| Property | Type | Description |
|----------|------|-------------|
| `behavior` | `string` | Answer this query with a behavior rather than DNS data. |
| `dnsName` | `string` | The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy... |
| `kind` | `string` |  |
| `localData` | `ResponsePolicyRuleLocalData` | Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavio... |
| `ruleName` | `string` | An identifier for this rule. Must be unique with the ResponsePolicy. |

### `ResponsePolicyRuleLocalData`

| Property | Type | Description |
|----------|------|-------------|
| `localDatas` | `array<ResourceRecordSet>` | All resource record sets for this selector, one per resource record type. The name must match the... |

### `ResponsePolicyRulesListResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This field indicates that more results are available beyond the last page displayed. To fetch the... |
| `responsePolicyRules` | `array<ResponsePolicyRule>` | The Response Policy Rule resources. |

### `ResponsePolicyRulesPatchResponse`

| Property | Type | Description |
|----------|------|-------------|
| `responsePolicyRule` | `ResponsePolicyRule` |  |

### `ResponsePolicyRulesUpdateResponse`

| Property | Type | Description |
|----------|------|-------------|
| `responsePolicyRule` | `ResponsePolicyRule` |  |

