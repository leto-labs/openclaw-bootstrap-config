# Certificate Authority API - API Reference

**Version**: `v1` | **Methods**: 44 | **Schemas**: 71

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `privateca.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `privateca.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `privateca.projects.locations.certificateTemplates.patch` | PATCH | `v1/{+name}` | Update a CertificateTemplate. |
| `privateca.projects.locations.certificateTemplates.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `privateca.projects.locations.certificateTemplates.get` | GET | `v1/{+name}` | Returns a CertificateTemplate. |
| `privateca.projects.locations.certificateTemplates.create` | POST | `v1/{+parent}/certificateTemplates` | Create a new CertificateTemplate in a given Project and Location. |
| `privateca.projects.locations.certificateTemplates.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `privateca.projects.locations.certificateTemplates.delete` | DELETE | `v1/{+name}` | DeleteCertificateTemplate deletes a CertificateTemplate. |
| `privateca.projects.locations.certificateTemplates.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `privateca.projects.locations.certificateTemplates.list` | GET | `v1/{+parent}/certificateTemplates` | Lists CertificateTemplates. |
| `privateca.projects.locations.caPools.delete` | DELETE | `v1/{+name}` | Delete a CaPool. |
| `privateca.projects.locations.caPools.list` | GET | `v1/{+parent}/caPools` | Lists CaPools. |
| `privateca.projects.locations.caPools.patch` | PATCH | `v1/{+name}` | Update a CaPool. |
| `privateca.projects.locations.caPools.get` | GET | `v1/{+name}` | Returns a CaPool. |
| `privateca.projects.locations.caPools.fetchCaCerts` | POST | `v1/{+caPool}:fetchCaCerts` | FetchCaCerts returns the current trust anchor for the CaPool. This will include CA certificate ch... |
| `privateca.projects.locations.caPools.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `privateca.projects.locations.caPools.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `privateca.projects.locations.caPools.create` | POST | `v1/{+parent}/caPools` | Create a CaPool. |
| `privateca.projects.locations.caPools.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `privateca.projects.locations.caPools.certificates.create` | POST | `v1/{+parent}/certificates` | Create a new Certificate in a given Project, Location from a particular CaPool. |
| `privateca.projects.locations.caPools.certificates.patch` | PATCH | `v1/{+name}` | Update a Certificate. Currently, the only field you can update is the labels field. |
| `privateca.projects.locations.caPools.certificates.revoke` | POST | `v1/{+name}:revoke` | Revoke a Certificate. |
| `privateca.projects.locations.caPools.certificates.get` | GET | `v1/{+name}` | Returns a Certificate. |
| `privateca.projects.locations.caPools.certificates.list` | GET | `v1/{+parent}/certificates` | Lists Certificates. |
| `privateca.projects.locations.caPools.certificateAuthorities.undelete` | POST | `v1/{+name}:undelete` | Undelete a CertificateAuthority that has been deleted. |
| `privateca.projects.locations.caPools.certificateAuthorities.create` | POST | `v1/{+parent}/certificateAuthorities` | Create a new CertificateAuthority in a given Project and Location. |
| `privateca.projects.locations.caPools.certificateAuthorities.fetch` | GET | `v1/{+name}:fetch` | Fetch a certificate signing request (CSR) from a CertificateAuthority that is in state AWAITING_U... |
| `privateca.projects.locations.caPools.certificateAuthorities.get` | GET | `v1/{+name}` | Returns a CertificateAuthority. |
| `privateca.projects.locations.caPools.certificateAuthorities.list` | GET | `v1/{+parent}/certificateAuthorities` | Lists CertificateAuthorities. |
| `privateca.projects.locations.caPools.certificateAuthorities.activate` | POST | `v1/{+name}:activate` | Activate a CertificateAuthority that is in state AWAITING_USER_ACTIVATION and is of type SUBORDIN... |
| `privateca.projects.locations.caPools.certificateAuthorities.disable` | POST | `v1/{+name}:disable` | Disable a CertificateAuthority. |
| `privateca.projects.locations.caPools.certificateAuthorities.delete` | DELETE | `v1/{+name}` | Delete a CertificateAuthority. |
| `privateca.projects.locations.caPools.certificateAuthorities.patch` | PATCH | `v1/{+name}` | Update a CertificateAuthority. |
| `privateca.projects.locations.caPools.certificateAuthorities.enable` | POST | `v1/{+name}:enable` | Enable a CertificateAuthority. |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.get` | GET | `v1/{+name}` | Returns a CertificateRevocationList. |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.list` | GET | `v1/{+parent}/certificateRevocationLists` | Lists CertificateRevocationLists. |
| `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.patch` | PATCH | `v1/{+name}` | Update a CertificateRevocationList. |
| `privateca.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `privateca.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `privateca.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `privateca.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `privateca.projects.locations.list`

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
const res = await privateca.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await privateca.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.patch`

**PATCH** `v1/{+name}`

Update a CertificateTemplate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `updateMask` | `string` | query | No | Required. A list of fields to be updated in this request. |

**Request body**: `CertificateTemplate`

**Response**: `Operation`

```typescript
const res = await privateca.certificateTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await privateca.certificateTemplates.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.get`

**GET** `v1/{+name}`

Returns a CertificateTemplate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CertificateTemplate to get. |

**Response**: `CertificateTemplate`

```typescript
const res = await privateca.certificateTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.create`

**POST** `v1/{+parent}/certificateTemplates`

Create a new CertificateTemplate in a given Project and Location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the CertificateTemplate, in the format `projects/*/locati... |
| `certificateTemplateId` | `string` | query | No | Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}` |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |

**Request body**: `CertificateTemplate`

**Response**: `Operation`

```typescript
const res = await privateca.certificateTemplates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await privateca.certificateTemplates.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.delete`

**DELETE** `v1/{+name}`

DeleteCertificateTemplate deletes a CertificateTemplate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`. |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |

**Response**: `Operation`

```typescript
const res = await privateca.certificateTemplates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await privateca.certificateTemplates.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.certificateTemplates.list`

**GET** `v1/{+parent}/certificateTemplates`

Lists CertificateTemplates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the CertificateTemplates, in the format `projects/*/locat... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of CertificateTemplates to include in the response. Further CertificateTemplates can su... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListCertificateTemplatesResponse.next_page_token. |

**Response**: `ListCertificateTemplatesResponse`

```typescript
const res = await privateca.certificateTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.delete`

**DELETE** `v1/{+name}`

Delete a CaPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`. |
| `ignoreDependentResources` | `boolean` | query | No | Optional. This field allows this pool to be deleted even if it's being depended on by another resource. However, doin... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |

**Response**: `Operation`

```typescript
const res = await privateca.caPools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.list`

**GET** `v1/{+parent}/caPools`

Lists CaPools.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the CaPools, in the format `projects/*/locations/*`. |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of CaPools to include in the response. Further CaPools can subsequently be obtained by ... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListCaPoolsResponse.next_page_token. |

**Response**: `ListCaPoolsResponse`

```typescript
const res = await privateca.caPools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.patch`

**PATCH** `v1/{+name}`

Update a CaPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`. |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `updateMask` | `string` | query | No | Required. A list of fields to be updated in this request. |

**Request body**: `CaPool`

**Response**: `Operation`

```typescript
const res = await privateca.caPools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.get`

**GET** `v1/{+name}`

Returns a CaPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CaPool to get. |

**Response**: `CaPool`

```typescript
const res = await privateca.caPools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.fetchCaCerts`

**POST** `v1/{+caPool}:fetchCaCerts`

FetchCaCerts returns the current trust anchor for the CaPool. This will include CA certificate chains for all certificate authorities in the ENABLED, DISABLED, or STAGED states.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `caPool` | `string` | path | Yes | Required. The resource name for the CaPool in the format `projects/*/locations/*/caPools/*`. |

**Request body**: `FetchCaCertsRequest`

**Response**: `FetchCaCertsResponse`

```typescript
const res = await privateca.caPools.fetchCaCerts({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await privateca.caPools.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await privateca.caPools.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.create`

**POST** `v1/{+parent}/caPools`

Create a CaPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the CaPool, in the format `projects/*/locations/*`. |
| `caPoolId` | `string` | query | No | Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}` |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |

**Request body**: `CaPool`

**Response**: `Operation`

```typescript
const res = await privateca.caPools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await privateca.caPools.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificates.create`

**POST** `v1/{+parent}/certificates`

Create a new Certificate in a given Project, Location from a particular CaPool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the CaPool associated with the Certificate, in the format `projects/*/locations/*/caPo... |
| `certificateId` | `string` | query | No | Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is r... |
| `issuingCertificateAuthorityId` | `string` | query | No | Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ign... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `validateOnly` | `boolean` | query | No | Optional. If this is true, no Certificate resource will be persisted regardless of the CaPool's tier, and the returne... |

**Request body**: `Certificate`

**Response**: `Certificate`

```typescript
const res = await privateca.certificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificates.patch`

**PATCH** `v1/{+name}`

Update a Certificate. Currently, the only field you can update is the labels field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`. |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `updateMask` | `string` | query | No | Required. A list of fields to be updated in this request. |

**Request body**: `Certificate`

**Response**: `Certificate`

```typescript
const res = await privateca.certificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificates.revoke`

**POST** `v1/{+name}:revoke`

Revoke a Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`. |

**Request body**: `RevokeCertificateRequest`

**Response**: `Certificate`

```typescript
const res = await privateca.certificates.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificates.get`

**GET** `v1/{+name}`

Returns a Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Certificate to get. |

**Response**: `Certificate`

```typescript
const res = await privateca.certificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificates.list`

**GET** `v1/{+parent}/certificates`

Lists Certificates.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent associated with the Certificates, in the format `projects/*/locations/*/caP... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. For details on supported filters and syntax, ... |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. For details on supported fields and syntax, see [Certificates Sor... |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of Certificates to include in the response. Further Certificates can subsequently be ob... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListCertificatesResponse.next_page_token. |

**Response**: `ListCertificatesResponse`

```typescript
const res = await privateca.certificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.undelete`

**POST** `v1/{+name}:undelete`

Undelete a CertificateAuthority that has been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |

**Request body**: `UndeleteCertificateAuthorityRequest`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.create`

**POST** `v1/{+parent}/certificateAuthorities`

Create a new CertificateAuthority in a given Project and Location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the CaPool associated with the CertificateAuthorities, in the format `projects/*/locat... |
| `certificateAuthorityId` | `string` | query | No | Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}` |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |

**Request body**: `CertificateAuthority`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.fetch`

**GET** `v1/{+name}:fetch`

Fetch a certificate signing request (CSR) from a CertificateAuthority that is in state AWAITING_USER_ACTIVATION and is of type SUBORDINATE. The CSR must then be signed by the desired parent Certificate Authority, which could be another CertificateAuthority resource, or could be an on-prem certificate authority. See also ActivateCertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |

**Response**: `FetchCertificateAuthorityCsrResponse`

```typescript
const res = await privateca.certificateAuthorities.fetch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.get`

**GET** `v1/{+name}`

Returns a CertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CertificateAuthority to get. |

**Response**: `CertificateAuthority`

```typescript
const res = await privateca.certificateAuthorities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.list`

**GET** `v1/{+parent}/certificateAuthorities`

Lists CertificateAuthorities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the CaPool associated with the CertificateAuthorities, in the format `projects/*/locat... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of CertificateAuthorities to include in the response. Further CertificateAuthorities ca... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListCertificateAuthoritiesResponse.next_page_token. |

**Response**: `ListCertificateAuthoritiesResponse`

```typescript
const res = await privateca.certificateAuthorities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.activate`

**POST** `v1/{+name}:activate`

Activate a CertificateAuthority that is in state AWAITING_USER_ACTIVATION and is of type SUBORDINATE. After the parent Certificate Authority signs a certificate signing request from FetchCertificateAuthorityCsr, this method can complete the activation process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |

**Request body**: `ActivateCertificateAuthorityRequest`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.disable`

**POST** `v1/{+name}:disable`

Disable a CertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |

**Request body**: `DisableCertificateAuthorityRequest`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.delete`

**DELETE** `v1/{+name}`

Delete a CertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |
| `ignoreActiveCertificates` | `boolean` | query | No | Optional. This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked... |
| `ignoreDependentResources` | `boolean` | query | No | Optional. This field allows this CA to be deleted even if it's being depended on by another resource. However, doing ... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `skipGracePeriod` | `boolean` | query | No | Optional. If this flag is set, the Certificate Authority will be deleted as soon as possible without a 30-day grace p... |

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.patch`

**PATCH** `v1/{+name}`

Update a CertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certifica... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `updateMask` | `string` | query | No | Required. A list of fields to be updated in this request. |

**Request body**: `CertificateAuthority`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.enable`

**POST** `v1/{+name}:enable`

Enable a CertificateAuthority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificate... |

**Request body**: `EnableCertificateAuthorityRequest`

**Response**: `Operation`

```typescript
const res = await privateca.certificateAuthorities.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.get`

**GET** `v1/{+name}`

Returns a CertificateRevocationList.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CertificateRevocationList to get. |

**Response**: `CertificateRevocationList`

```typescript
const res = await privateca.certificateRevocationLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await privateca.certificateRevocationLists.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await privateca.certificateRevocationLists.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await privateca.certificateRevocationLists.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.list`

**GET** `v1/{+parent}/certificateRevocationLists`

Lists CertificateRevocationLists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location associated with the CertificateRevocationLists, in the format `projects/*... |
| `filter` | `string` | query | No | Optional. Only include resources that match the filter in the response. |
| `orderBy` | `string` | query | No | Optional. Specify how the results should be sorted. |
| `pageSize` | `integer` | query | No | Optional. Limit on the number of CertificateRevocationLists to include in the response. Further CertificateRevocation... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListCertificateRevocationListsResponse.next_page_token. |

**Response**: `ListCertificateRevocationListsResponse`

```typescript
const res = await privateca.certificateRevocationLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.patch`

**PATCH** `v1/{+name}`

Update a CertificateRevocationList.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name for this CertificateRevocationList in the format `projects/*/locations/*/caPools/*certi... |
| `requestId` | `string` | query | No | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server ... |
| `updateMask` | `string` | query | No | Required. A list of fields to be updated in this request. |

**Request body**: `CertificateRevocationList`

**Response**: `Operation`

```typescript
const res = await privateca.certificateRevocationLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await privateca.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await privateca.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.operations.list`

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
const res = await privateca.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `privateca.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await privateca.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessUrls`

URLs where a CertificateAuthority will publish content.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificateAccessUrl` | `string` | The URL where this CertificateAuthority's CA certificate is published. This will only be set for ... |
| `crlAccessUrls` | `array<string>` | The URLs where this CertificateAuthority's CRLs are published. This will only be set for CAs that... |

### `ActivateCertificateAuthorityRequest`

Request message for CertificateAuthorityService.ActivateCertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `pemCaCertificate` | `string` | Required. The signed CA certificate issued from FetchCertificateAuthorityCsrResponse.pem_csr. |
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |
| `subordinateConfig` | `SubordinateConfig` | Required. Must include information about the issuer of 'pem_ca_certificate', and any further issu... |

### `AllowedKeyType`

Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.

| Property | Type | Description |
|----------|------|-------------|
| `ellipticCurve` | `EcKeyType` | Represents an allowed Elliptic Curve key type. |
| `rsa` | `RsaKeyType` | Represents an allowed RSA key type. |

### `AttributeTypeAndValue`

AttributeTypeAndValue specifies an attribute type and value. It can use either a OID or enum value to specify the attribute type.

| Property | Type | Description |
|----------|------|-------------|
| `objectId` | `ObjectId` | Object ID for an attribute type of an attribute and value pair. |
| `type` | `string` | The attribute type of the attribute and value pair. |
| `value` | `string` | The value for the attribute type. |

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

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CaOptions`

Describes the X.509 basic constraints extension, per [RFC 5280 section 4.2.1.9](https://tools.ietf.org/html/rfc5280#section-4.2.1.9)

| Property | Type | Description |
|----------|------|-------------|
| `isCa` | `boolean` | Optional. Refers to the "CA" boolean field in the X.509 extension. When this value is missing, th... |
| `maxIssuerPathLength` | `integer` | Optional. Refers to the path length constraint field in the X.509 extension. For a CA certificate... |

### `CaPool`

A CaPool represents a group of CertificateAuthorities that form a trust anchor. A CaPool can be used to manage issuance policies for one or more CertificateAuthority resources and to rotate CA certificates in and out of the trust anchor.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `EncryptionSpec` | Optional. When EncryptionSpec is provided, the Subject, SubjectAltNames, and the PEM-encoded cert... |
| `issuancePolicy` | `IssuancePolicy` | Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool. |
| `labels` | `object` | Optional. Labels with user-defined metadata. |
| `name` | `string` | Identifier. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`. |
| `publishingOptions` | `PublishingOptions` | Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority... |
| `tier` | `string` | Required. Immutable. The Tier of this CaPool. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CertChain`

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<string>` | The certificates that form the CA chain, from leaf to root order. |

### `Certificate`

A Certificate corresponds to a signed X.509 certificate issued by a CertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `certificateDescription` | `CertificateDescription` | Output only. A structured description of the issued X.509 certificate. |
| `certificateTemplate` | `string` | Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the for... |
| `config` | `CertificateConfig` | Immutable. A description of the certificate and key that does not require X.509 or ASN.1. |
| `createTime` | `string` | Output only. The time at which this Certificate was created. |
| `issuerCertificateAuthority` | `string` | Output only. The resource name of the issuing CertificateAuthority in the format `projects/*/loca... |
| `labels` | `object` | Optional. Labels with user-defined metadata. |
| `lifetime` | `string` | Required. Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" ... |
| `name` | `string` | Identifier. The resource name for this Certificate in the format `projects/*/locations/*/caPools/... |
| `pemCertificate` | `string` | Output only. The pem-encoded, signed X.509 certificate. |
| `pemCertificateChain` | `array<string>` | Output only. The chain that may be used to verify the X.509 certificate. Expected to be in issuer... |
| `pemCsr` | `string` | Immutable. A pem-encoded X.509 certificate signing request (CSR). |
| `revocationDetails` | `RevocationDetails` | Output only. Details regarding the revocation of this Certificate. This Certificate is considered... |
| `subjectMode` | `string` | Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted,... |
| `updateTime` | `string` | Output only. The time at which this Certificate was updated. |

### `CertificateAuthority`

A CertificateAuthority represents an individual Certificate Authority. A CertificateAuthority can be used to create Certificates.

| Property | Type | Description |
|----------|------|-------------|
| `accessUrls` | `AccessUrls` | Output only. URLs for accessing content published by this CA, such as the CA certificate and CRLs. |
| `caCertificateDescriptions` | `array<CertificateDescription>` | Output only. A structured description of this CertificateAuthority's CA certificate and its issue... |
| `config` | `CertificateConfig` | Required. Immutable. The config used to create a self-signed X.509 certificate or CSR. |
| `createTime` | `string` | Output only. The time at which this CertificateAuthority was created. |
| `deleteTime` | `string` | Output only. The time at which this CertificateAuthority was soft deleted, if it is in the DELETE... |
| `expireTime` | `string` | Output only. The time at which this CertificateAuthority will be permanently purged, if it is in ... |
| `gcsBucket` | `string` | Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish conten... |
| `keySpec` | `KeyVersionSpec` | Required. Immutable. Used when issuing certificates for this CertificateAuthority. If this Certif... |
| `labels` | `object` | Optional. Labels with user-defined metadata. |
| `lifetime` | `string` | Required. Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_t... |
| `name` | `string` | Identifier. The resource name for this CertificateAuthority in the format `projects/*/locations/*... |
| `pemCaCertificates` | `array<string>` | Output only. This CertificateAuthority's certificate chain, including the current CertificateAuth... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The State for this CertificateAuthority. |
| `subordinateConfig` | `SubordinateConfig` | Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordin... |
| `tier` | `string` | Output only. The CaPool.Tier of the CaPool that includes this CertificateAuthority. |
| `type` | `string` | Required. Immutable. The Type of this CertificateAuthority. |
| `updateTime` | `string` | Output only. The time at which this CertificateAuthority was last updated. |
| `userDefinedAccessUrls` | `UserDefinedAccessUrls` | Optional. User-defined URLs for CA certificate and CRLs. The service does not publish content to ... |

### `CertificateConfig`

A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.

| Property | Type | Description |
|----------|------|-------------|
| `publicKey` | `PublicKey` | Optional. The public key that corresponds to this config. This is, for example, used when issuing... |
| `subjectConfig` | `SubjectConfig` | Required. Specifies some of the values in a certificate that are related to the subject. |
| `subjectKeyId` | `CertificateConfigKeyId` | Optional. When specified this provides a custom SKI to be used in the certificate. This should on... |
| `x509Config` | `X509Parameters` | Required. Describes how some of the technical X.509 fields in a certificate should be populated. |

### `CertificateConfigKeyId`

A KeyId identifies a specific public key, usually by hashing the public key.

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | Required. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 b... |

### `CertificateDescription`

A CertificateDescription describes an X.509 certificate or CSR that has been issued, as an alternative to using ASN.1 / X.509.

| Property | Type | Description |
|----------|------|-------------|
| `aiaIssuingCertificateUrls` | `array<string>` | Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" e... |
| `authorityKeyId` | `KeyId` | Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#... |
| `certFingerprint` | `CertificateFingerprint` | The hash of the x.509 certificate. |
| `crlDistributionPoints` | `array<string>` | Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName desc... |
| `publicKey` | `PublicKey` | The public key that corresponds to an issued certificate. |
| `subjectDescription` | `SubjectDescription` | Describes some of the values in a certificate that are related to the subject and lifetime. |
| `subjectKeyId` | `KeyId` | Provides a means of identifiying certificates that contain a particular public key, per https://t... |
| `tbsCertificateDigest` | `string` | The hash of the pre-signed certificate, which will be signed by the CA. Corresponds to the TBS Ce... |
| `x509Description` | `X509Parameters` | Describes some of the technical X.509 fields in a certificate. |

### `CertificateExtensionConstraints`

Describes a set of X.509 extensions that may be part of some certificate issuance controls.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExtensions` | `array<ObjectId>` | Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_ext... |
| `knownExtensions` | `array<string>` | Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determi... |

### `CertificateFingerprint`

A group of fingerprints for the x509 certificate.

| Property | Type | Description |
|----------|------|-------------|
| `sha256Hash` | `string` | The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate. |

### `CertificateIdentityConstraints`

Describes constraints on a Certificate's Subject and SubjectAltNames.

| Property | Type | Description |
|----------|------|-------------|
| `allowSubjectAltNamesPassthrough` | `boolean` | Required. If this is true, the SubjectAltNames extension may be copied from a certificate request... |
| `allowSubjectPassthrough` | `boolean` | Required. If this is true, the Subject field may be copied from a certificate request into the si... |
| `celExpression` | `Expr` | Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject... |

### `CertificateRevocationList`

A CertificateRevocationList corresponds to a signed X.509 certificate Revocation List (CRL). A CRL contains the serial numbers of certificates that should no longer be trusted.

| Property | Type | Description |
|----------|------|-------------|
| `accessUrl` | `string` | Output only. The location where 'pem_crl' can be accessed. |
| `createTime` | `string` | Output only. The time at which this CertificateRevocationList was created. |
| `labels` | `object` | Optional. Labels with user-defined metadata. |
| `name` | `string` | Identifier. The resource name for this CertificateRevocationList in the format `projects/*/locati... |
| `pemCrl` | `string` | Output only. The PEM-encoded X.509 CRL. |
| `revisionId` | `string` | Output only. The revision ID of this CertificateRevocationList. A new revision is committed whene... |
| `revokedCertificates` | `array<RevokedCertificate>` | Output only. The revoked serial numbers that appear in pem_crl. |
| `sequenceNumber` | `string` | Output only. The CRL sequence number that appears in pem_crl. |
| `state` | `string` | Output only. The State for this CertificateRevocationList. |
| `updateTime` | `string` | Output only. The time at which this CertificateRevocationList was updated. |

### `CertificateTemplate`

A CertificateTemplate refers to a managed template for certificate issuance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this CertificateTemplate was created. |
| `description` | `string` | Optional. A human-readable description of scenarios this template is intended for. |
| `identityConstraints` | `CertificateIdentityConstraints` | Optional. Describes constraints on identities that may be appear in Certificates issued using thi... |
| `labels` | `object` | Optional. Labels with user-defined metadata. |
| `maximumLifetime` | `string` | Optional. The maximum lifetime allowed for issued Certificates that use this template. If the iss... |
| `name` | `string` | Identifier. The resource name for this CertificateTemplate in the format `projects/*/locations/*/... |
| `passthroughExtensions` | `CertificateExtensionConstraints` | Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using thi... |
| `predefinedValues` | `X509Parameters` | Optional. A set of X.509 values that will be applied to all issued certificates that use this tem... |
| `updateTime` | `string` | Output only. The time at which this CertificateTemplate was updated. |

### `DisableCertificateAuthorityRequest`

Request message for CertificateAuthorityService.DisableCertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreDependentResources` | `boolean` | Optional. This field allows this CA to be disabled even if it's being depended on by another reso... |
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |

### `EcKeyType`

Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.

| Property | Type | Description |
|----------|------|-------------|
| `signatureAlgorithm` | `string` | Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature alg... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableCertificateAuthorityRequest`

Request message for CertificateAuthorityService.EnableCertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |

### `EncryptionSpec`

The configuration used for encrypting data at rest.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKmsKey` | `string` | The resource name for a Cloud KMS key in the format `projects/*/locations/*/keyRings/*/cryptoKeys... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExtendedKeyUsageOptions`

KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common OIDs that could be specified as an extended key usage value.

| Property | Type | Description |
|----------|------|-------------|
| `clientAuth` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client authentication", th... |
| `codeSigning` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of downloadable executable... |
| `emailProtection` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email protection". |
| `ocspSigning` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP responses". |
| `serverAuth` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server authentication", th... |
| `timeStamping` | `boolean` | Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the hash of an object to a... |

### `FetchCaCertsRequest`

Request message for CertificateAuthorityService.FetchCaCerts.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |

### `FetchCaCertsResponse`

Response message for CertificateAuthorityService.FetchCaCerts.

| Property | Type | Description |
|----------|------|-------------|
| `caCerts` | `array<CertChain>` | The PEM encoded CA certificate chains of all certificate authorities in this CaPool in the ENABLE... |

### `FetchCertificateAuthorityCsrResponse`

Response message for CertificateAuthorityService.FetchCertificateAuthorityCsr.

| Property | Type | Description |
|----------|------|-------------|
| `pemCsr` | `string` | Output only. The PEM-encoded signed certificate signing request (CSR). |

### `IssuanceModes`

IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.

| Property | Type | Description |
|----------|------|-------------|
| `allowConfigBasedIssuance` | `boolean` | Optional. When true, allows callers to create Certificates by specifying a CertificateConfig. |
| `allowCsrBasedIssuance` | `boolean` | Optional. When true, allows callers to create Certificates by specifying a CSR. |

### `IssuancePolicy`

Defines controls over all certificate issuance within a CaPool.

| Property | Type | Description |
|----------|------|-------------|
| `allowedIssuanceModes` | `IssuanceModes` | Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certi... |
| `allowedKeyTypes` | `array<AllowedKeyType>` | Optional. If any AllowedKeyType is specified, then the certificate request's public key must matc... |
| `backdateDuration` | `string` | Optional. If set, all certificates issued from this CaPool will be backdated by this duration. Th... |
| `baselineValues` | `X509Parameters` | Optional. A set of X.509 values that will be applied to all certificates issued through this CaPo... |
| `identityConstraints` | `CertificateIdentityConstraints` | Optional. Describes constraints on identities that may appear in Certificates issued through this... |
| `maximumLifetime` | `string` | Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing Certific... |
| `passthroughExtensions` | `CertificateExtensionConstraints` | Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through t... |

### `KeyId`

A KeyId identifies a specific public key, usually by hashing the public key.

| Property | Type | Description |
|----------|------|-------------|
| `keyId` | `string` | Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 b... |

### `KeyUsage`

A KeyUsage describes key usage values that may appear in an X.509 certificate.

| Property | Type | Description |
|----------|------|-------------|
| `baseKeyUsage` | `KeyUsageOptions` | Describes high-level ways in which a key may be used. |
| `extendedKeyUsage` | `ExtendedKeyUsageOptions` | Detailed scenarios in which a key may be used. |
| `unknownExtendedKeyUsages` | `array<ObjectId>` | Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions ... |

### `KeyUsageOptions`

KeyUsage.KeyUsageOptions corresponds to the key usage values described in https://tools.ietf.org/html/rfc5280#section-4.2.1.3.

| Property | Type | Description |
|----------|------|-------------|
| `certSign` | `boolean` | The key may be used to sign certificates. |
| `contentCommitment` | `boolean` | The key may be used for cryptographic commitments. Note that this may also be referred to as "non... |
| `crlSign` | `boolean` | The key may be used sign certificate revocation lists. |
| `dataEncipherment` | `boolean` | The key may be used to encipher data. |
| `decipherOnly` | `boolean` | The key may be used to decipher only. |
| `digitalSignature` | `boolean` | The key may be used for digital signatures. |
| `encipherOnly` | `boolean` | The key may be used to encipher only. |
| `keyAgreement` | `boolean` | The key may be used in a key agreement protocol. |
| `keyEncipherment` | `boolean` | The key may be used to encipher other keys. |

### `KeyVersionSpec`

A Cloud KMS key configuration that a CertificateAuthority will use.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All ... |
| `cloudKmsKeyVersion` | `string` | The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/... |

### `ListCaPoolsResponse`

Response message for CertificateAuthorityService.ListCaPools.

| Property | Type | Description |
|----------|------|-------------|
| `caPools` | `array<CaPool>` | The list of CaPools. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCertificateAuthoritiesRequest.pa... |
| `unreachable` | `array<string>` | A list of locations (e.g. "us-west1") that could not be reached. |

### `ListCertificateAuthoritiesResponse`

Response message for CertificateAuthorityService.ListCertificateAuthorities.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorities` | `array<CertificateAuthority>` | The list of CertificateAuthorities. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCertificateAuthoritiesRequest.pa... |
| `unreachable` | `array<string>` | A list of locations (e.g. "us-west1") that could not be reached. |

### `ListCertificateRevocationListsResponse`

Response message for CertificateAuthorityService.ListCertificateRevocationLists.

| Property | Type | Description |
|----------|------|-------------|
| `certificateRevocationLists` | `array<CertificateRevocationList>` | The list of CertificateRevocationLists. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCertificateRevocationListsReques... |
| `unreachable` | `array<string>` | A list of locations (e.g. "us-west1") that could not be reached. |

### `ListCertificateTemplatesResponse`

Response message for CertificateAuthorityService.ListCertificateTemplates.

| Property | Type | Description |
|----------|------|-------------|
| `certificateTemplates` | `array<CertificateTemplate>` | The list of CertificateTemplates. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCertificateTemplatesRequest.page... |
| `unreachable` | `array<string>` | A list of locations (e.g. "us-west1") that could not be reached. |

### `ListCertificatesResponse`

Response message for CertificateAuthorityService.ListCertificates.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<Certificate>` | The list of Certificates. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in ListCertificatesRequest.page_token t... |
| `unreachable` | `array<string>` | A list of locations (e.g. "us-west1") that could not be reached. |

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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `NameConstraints`

Describes the X.509 name constraints extension, per https://tools.ietf.org/html/rfc5280#section-4.2.1.10

| Property | Type | Description |
|----------|------|-------------|
| `critical` | `boolean` | Indicates whether or not the name constraints are marked critical. |
| `excludedDnsNames` | `array<string>` | Contains excluded DNS names. Any DNS name that can be constructed by simply adding zero or more l... |
| `excludedEmailAddresses` | `array<string>` | Contains the excluded email addresses. The value can be a particular email address, a hostname to... |
| `excludedIpRanges` | `array<string>` | Contains the excluded IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation... |
| `excludedUris` | `array<string>` | Contains the excluded URIs that apply to the host part of the name. The value can be a hostname o... |
| `permittedDnsNames` | `array<string>` | Contains permitted DNS names. Any DNS name that can be constructed by simply adding zero or more ... |
| `permittedEmailAddresses` | `array<string>` | Contains the permitted email addresses. The value can be a particular email address, a hostname t... |
| `permittedIpRanges` | `array<string>` | Contains the permitted IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notatio... |
| `permittedUris` | `array<string>` | Contains the permitted URIs that apply to the host part of the name. The value can be a hostname ... |

### `ObjectId`

An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.

| Property | Type | Description |
|----------|------|-------------|
| `objectIdPath` | `array<integer>` | Required. The parts of an OID path. The most significant parts of the path come first. |

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
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PublicKey`

A PublicKey describes a public key.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Required. The format of the public key. |
| `key` | `string` | Required. A public key. The padding and encoding must match with the `KeyFormat` value specified ... |

### `PublishingOptions`

Options relating to the publication of each CertificateAuthority's CA certificate and CRLs and their inclusion as extensions in issued Certificates. The options set here apply to certificates issued by any CertificateAuthority in the CaPool.

| Property | Type | Description |
|----------|------|-------------|
| `encodingFormat` | `string` | Optional. Specifies the encoding format of each CertificateAuthority resource's CA certificate an... |
| `publishCaCert` | `boolean` | Optional. When true, publishes each CertificateAuthority's CA certificate and includes its URL in... |
| `publishCrl` | `boolean` | Optional. When true, publishes each CertificateAuthority's CRL and includes its URL in the "CRL D... |

### `RelativeDistinguishedName`

RelativeDistinguishedName specifies a relative distinguished name which will be used to build a distinguished name.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `array<AttributeTypeAndValue>` | Attributes describes the attribute value assertions in the RDN. |

### `RevocationDetails`

Describes fields that are relavent to the revocation of a Certificate.

| Property | Type | Description |
|----------|------|-------------|
| `revocationState` | `string` | Indicates why a Certificate was revoked. |
| `revocationTime` | `string` | The time at which this Certificate was revoked. |

### `RevokeCertificateRequest`

Request message for CertificateAuthorityService.RevokeCertificate.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | Required. The RevocationReason for revoking this certificate. |
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |

### `RevokedCertificate`

Describes a revoked Certificate.

| Property | Type | Description |
|----------|------|-------------|
| `certificate` | `string` | The resource name for the Certificate in the format `projects/*/locations/*/caPools/*/certificate... |
| `hexSerialNumber` | `string` | The serial number of the Certificate. |
| `revocationReason` | `string` | The reason the Certificate was revoked. |

### `RsaKeyType`

Describes an RSA key that may be used in a Certificate issued from a CaPool.

| Property | Type | Description |
|----------|------|-------------|
| `maxModulusSize` | `string` | Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if se... |
| `minModulusSize` | `string` | Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if se... |

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

### `Subject`

Subject describes parts of a distinguished name that, in turn, describes the subject of the certificate.

| Property | Type | Description |
|----------|------|-------------|
| `commonName` | `string` | The "common name" of the subject. |
| `countryCode` | `string` | The country code of the subject. |
| `locality` | `string` | The locality or city of the subject. |
| `organization` | `string` | The organization of the subject. |
| `organizationalUnit` | `string` | The organizational_unit of the subject. |
| `postalCode` | `string` | The postal code of the subject. |
| `province` | `string` | The province, territory, or regional state of the subject. |
| `rdnSequence` | `array<RelativeDistinguishedName>` | This field can be used in place of the named subject fields. |
| `streetAddress` | `string` | The street address of the subject. |

### `SubjectAltNames`

SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the "common name" in the distinguished name).

| Property | Type | Description |
|----------|------|-------------|
| `customSans` | `array<X509Extension>` | Contains additional subject alternative name values. For each custom_san, the `value` field must ... |
| `dnsNames` | `array<string>` | Contains only valid, fully-qualified host names. |
| `emailAddresses` | `array<string>` | Contains only valid RFC 2822 E-mail addresses. |
| `ipAddresses` | `array<string>` | Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses. |
| `uris` | `array<string>` | Contains only valid RFC 3986 URIs. |

### `SubjectConfig`

These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.

| Property | Type | Description |
|----------|------|-------------|
| `subject` | `Subject` | Optional. Contains distinguished name fields such as the common name, location and organization. |
| `subjectAltName` | `SubjectAltNames` | Optional. The subject alternative name fields. |

### `SubjectDescription`

These values describe fields in an issued X.509 certificate such as the distinguished name, subject alternative names, serial number, and lifetime.

| Property | Type | Description |
|----------|------|-------------|
| `hexSerialNumber` | `string` | The serial number encoded in lowercase hexadecimal. |
| `lifetime` | `string` | For convenience, the actual lifetime of an issued certificate. |
| `notAfterTime` | `string` | The time after which the certificate is expired. Per RFC 5280, the validity period for a certific... |
| `notBeforeTime` | `string` | The time at which the certificate becomes valid. |
| `subject` | `Subject` | Contains distinguished name fields such as the common name, location and / organization. |
| `subjectAltName` | `SubjectAltNames` | The subject alternative name fields. |

### `SubordinateConfig`

Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthority` | `string` | Required. This can refer to a CertificateAuthority that was used to create a subordinate Certific... |
| `pemIssuerChain` | `SubordinateConfigChain` | Required. Contains the PEM certificate chain for the issuers of this CertificateAuthority, but no... |

### `SubordinateConfigChain`

This message describes a subordinate CA's issuer certificate chain. This wrapper exists for compatibility reasons.

| Property | Type | Description |
|----------|------|-------------|
| `pemCertificates` | `array<string>` | Required. Expected to be in leaf-to-root order according to RFC 5246. |

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

### `UndeleteCertificateAuthorityRequest`

Request message for CertificateAuthorityService.UndeleteCertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your ... |

### `UserDefinedAccessUrls`

User-defined URLs for accessing content published by this CertificateAuthority.

| Property | Type | Description |
|----------|------|-------------|
| `aiaIssuingCertificateUrls` | `array<string>` | Optional. A list of URLs where the issuer CA certificate may be downloaded, which appears in the ... |
| `crlAccessUrls` | `array<string>` | Optional. A list of URLs where to obtain CRL information, i.e. the DistributionPoint.fullName des... |

### `X509Extension`

An X509Extension specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.

| Property | Type | Description |
|----------|------|-------------|
| `critical` | `boolean` | Optional. Indicates whether or not this extension is critical (i.e., if the client does not know ... |
| `objectId` | `ObjectId` | Required. The OID for this X.509 extension. |
| `value` | `string` | Required. The value of this X.509 extension. |

### `X509Parameters`

An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExtensions` | `array<X509Extension>` | Optional. Describes custom X.509 extensions. |
| `aiaOcspServers` | `array<string>` | Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in t... |
| `caOptions` | `CaOptions` | Optional. Describes options in this X509Parameters that are relevant in a CA certificate. If not ... |
| `keyUsage` | `KeyUsage` | Optional. Indicates the intended use for keys that correspond to a certificate. |
| `nameConstraints` | `NameConstraints` | Optional. Describes the X.509 name constraints extension. |
| `policyIds` | `array<ObjectId>` | Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/h... |

