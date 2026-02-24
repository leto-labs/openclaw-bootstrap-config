# Certificate Manager API - API Reference

**Version**: `v1` | **Methods**: 36 | **Schemas**: 38

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `certificatemanager.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `certificatemanager.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `certificatemanager.projects.locations.certificates.get` | GET | `v1/{+name}` | Gets details of a single Certificate. |
| `certificatemanager.projects.locations.certificates.create` | POST | `v1/{+parent}/certificates` | Creates a new Certificate in a given project and location. |
| `certificatemanager.projects.locations.certificates.delete` | DELETE | `v1/{+name}` | Deletes a single Certificate. |
| `certificatemanager.projects.locations.certificates.patch` | PATCH | `v1/{+name}` | Updates a Certificate. |
| `certificatemanager.projects.locations.certificates.list` | GET | `v1/{+parent}/certificates` | Lists Certificates in a given project and location. |
| `certificatemanager.projects.locations.certificateMaps.list` | GET | `v1/{+parent}/certificateMaps` | Lists CertificateMaps in a given project and location. |
| `certificatemanager.projects.locations.certificateMaps.create` | POST | `v1/{+parent}/certificateMaps` | Creates a new CertificateMap in a given project and location. |
| `certificatemanager.projects.locations.certificateMaps.delete` | DELETE | `v1/{+name}` | Deletes a single CertificateMap. A Certificate Map can't be deleted if it contains Certificate Ma... |
| `certificatemanager.projects.locations.certificateMaps.get` | GET | `v1/{+name}` | Gets details of a single CertificateMap. |
| `certificatemanager.projects.locations.certificateMaps.patch` | PATCH | `v1/{+name}` | Updates a CertificateMap. |
| `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.get` | GET | `v1/{+name}` | Gets details of a single CertificateMapEntry. |
| `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.delete` | DELETE | `v1/{+name}` | Deletes a single CertificateMapEntry. |
| `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.create` | POST | `v1/{+parent}/certificateMapEntries` | Creates a new CertificateMapEntry in a given project and location. |
| `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.list` | GET | `v1/{+parent}/certificateMapEntries` | Lists CertificateMapEntries in a given project and location. |
| `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.patch` | PATCH | `v1/{+name}` | Updates a CertificateMapEntry. |
| `certificatemanager.projects.locations.trustConfigs.create` | POST | `v1/{+parent}/trustConfigs` | Creates a new TrustConfig in a given project and location. |
| `certificatemanager.projects.locations.trustConfigs.patch` | PATCH | `v1/{+name}` | Updates a TrustConfig. |
| `certificatemanager.projects.locations.trustConfigs.get` | GET | `v1/{+name}` | Gets details of a single TrustConfig. |
| `certificatemanager.projects.locations.trustConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single TrustConfig. |
| `certificatemanager.projects.locations.trustConfigs.list` | GET | `v1/{+parent}/trustConfigs` | Lists TrustConfigs in a given project and location. |
| `certificatemanager.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `certificatemanager.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `certificatemanager.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `certificatemanager.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `certificatemanager.projects.locations.certificateIssuanceConfigs.patch` | PATCH | `v1/{+name}` | Updates a CertificateIssuanceConfig. |
| `certificatemanager.projects.locations.certificateIssuanceConfigs.get` | GET | `v1/{+name}` | Gets details of a single CertificateIssuanceConfig. |
| `certificatemanager.projects.locations.certificateIssuanceConfigs.create` | POST | `v1/{+parent}/certificateIssuanceConfigs` | Creates a new CertificateIssuanceConfig in a given project and location. |
| `certificatemanager.projects.locations.certificateIssuanceConfigs.list` | GET | `v1/{+parent}/certificateIssuanceConfigs` | Lists CertificateIssuanceConfigs in a given project and location. |
| `certificatemanager.projects.locations.certificateIssuanceConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single CertificateIssuanceConfig. |
| `certificatemanager.projects.locations.dnsAuthorizations.delete` | DELETE | `v1/{+name}` | Deletes a single DnsAuthorization. |
| `certificatemanager.projects.locations.dnsAuthorizations.get` | GET | `v1/{+name}` | Gets details of a single DnsAuthorization. |
| `certificatemanager.projects.locations.dnsAuthorizations.list` | GET | `v1/{+parent}/dnsAuthorizations` | Lists DnsAuthorizations in a given project and location. |
| `certificatemanager.projects.locations.dnsAuthorizations.patch` | PATCH | `v1/{+name}` | Updates a DnsAuthorization. |
| `certificatemanager.projects.locations.dnsAuthorizations.create` | POST | `v1/{+parent}/dnsAuthorizations` | Creates a new DnsAuthorization in a given project and location. |

### `certificatemanager.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

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
const res = await certificatemanager.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await certificatemanager.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificates.get`

**GET** `v1/{+name}`

Gets details of a single Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate to describe. Must be in the format `projects/*/locations/*/certificates/*`. |

**Response**: `Certificate`

```typescript
const res = await certificatemanager.certificates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificates.create`

**POST** `v1/{+parent}/certificates`

Creates a new Certificate in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the certificate. Must be in the format `projects/*/locations/*`. |
| `certificateId` | `string` | query | No | Required. A user-provided name of the certificate. |

**Request body**: `Certificate`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificates.delete`

**DELETE** `v1/{+name}`

Deletes a single Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate to delete. Must be in the format `projects/*/locations/*/certificates/*`. |

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificates.patch`

**PATCH** `v1/{+name}`

Updates a Certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the certificate. Certificate names must be unique globally and match pattern `proj... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `Certificate`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificates.list`

**GET** `v1/{+parent}/certificates`

Lists Certificates in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the certificate should be listed, specified in the format `projects/*/l... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the Certificates returned. |
| `orderBy` | `string` | query | No | Optional. A list of Certificate field names used to specify the order of the returned results. The default sorting or... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of certificates to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListCertificatesResponse`. Indicates that this is a continuation of a prior... |

**Response**: `ListCertificatesResponse`

```typescript
const res = await certificatemanager.certificates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.list`

**GET** `v1/{+parent}/certificateMaps`

Lists CertificateMaps in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the certificate maps should be listed, specified in the format `project... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the Certificates Maps returned. |
| `orderBy` | `string` | query | No | Optional. A list of Certificate Map field names used to specify the order of the returned results. The default sortin... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of certificate maps to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListCertificateMapsResponse`. Indicates that this is a continuation of a pr... |

**Response**: `ListCertificateMapsResponse`

```typescript
const res = await certificatemanager.certificateMaps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.create`

**POST** `v1/{+parent}/certificateMaps`

Creates a new CertificateMap in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the certificate map. Must be in the format `projects/*/locations/*`. |
| `certificateMapId` | `string` | query | No | Required. A user-provided name of the certificate map. |

**Request body**: `CertificateMap`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.delete`

**DELETE** `v1/{+name}`

Deletes a single CertificateMap. A Certificate Map can't be deleted if it contains Certificate Map Entries. Remove all the entries from the map before calling this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate map to delete. Must be in the format `projects/*/locations/*/certificateMaps/*`. |

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.get`

**GET** `v1/{+name}`

Gets details of a single CertificateMap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate map to describe. Must be in the format `projects/*/locations/*/certificateMaps/*`. |

**Response**: `CertificateMap`

```typescript
const res = await certificatemanager.certificateMaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.patch`

**PATCH** `v1/{+name}`

Updates a CertificateMap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match patte... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `CertificateMap`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMaps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.get`

**GET** `v1/{+name}`

Gets details of a single CertificateMapEntry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate map entry to describe. Must be in the format `projects/*/locations/*/certificateM... |

**Response**: `CertificateMapEntry`

```typescript
const res = await certificatemanager.certificateMapEntries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.delete`

**DELETE** `v1/{+name}`

Deletes a single CertificateMapEntry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate map entry to delete. Must be in the format `projects/*/locations/*/certificateMap... |

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMapEntries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.create`

**POST** `v1/{+parent}/certificateMapEntries`

Creates a new CertificateMapEntry in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the certificate map entry. Must be in the format `projects/*/locations/*/certificate... |
| `certificateMapEntryId` | `string` | query | No | Required. A user-provided name of the certificate map entry. |

**Request body**: `CertificateMapEntry`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMapEntries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.list`

**GET** `v1/{+parent}/certificateMapEntries`

Lists CertificateMapEntries in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project, location and certificate map from which the certificate map entries should be listed, specifie... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the returned Certificate Map Entries. |
| `orderBy` | `string` | query | No | Optional. A list of Certificate Map Entry field names used to specify the order of the returned results. The default ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of certificate map entries to return. The service may return fewer than this value. If unspe... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListCertificateMapEntriesResponse`. Indicates that this is a continuation o... |

**Response**: `ListCertificateMapEntriesResponse`

```typescript
const res = await certificatemanager.certificateMapEntries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateMaps.certificateMapEntries.patch`

**PATCH** `v1/{+name}`

Updates a CertificateMapEntry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `CertificateMapEntry`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateMapEntries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.trustConfigs.create`

**POST** `v1/{+parent}/trustConfigs`

Creates a new TrustConfig in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the TrustConfig. Must be in the format `projects/*/locations/*`. |
| `trustConfigId` | `string` | query | No | Required. A user-provided name of the TrustConfig. Must match the regexp `[a-z0-9-]{1,63}`. |

**Request body**: `TrustConfig`

**Response**: `Operation`

```typescript
const res = await certificatemanager.trustConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.trustConfigs.patch`

**PATCH** `v1/{+name}`

Updates a TrustConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `pro... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `TrustConfig`

**Response**: `Operation`

```typescript
const res = await certificatemanager.trustConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.trustConfigs.get`

**GET** `v1/{+name}`

Gets details of a single TrustConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TrustConfig to describe. Must be in the format `projects/*/locations/*/trustConfigs/*`. |

**Response**: `TrustConfig`

```typescript
const res = await certificatemanager.trustConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.trustConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single TrustConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TrustConfig to delete. Must be in the format `projects/*/locations/*/trustConfigs/*`. |
| `etag` | `string` | query | No | Optional. The current etag of the TrustConfig. If an etag is provided and does not match the current etag of the reso... |

**Response**: `Operation`

```typescript
const res = await certificatemanager.trustConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.trustConfigs.list`

**GET** `v1/{+parent}/trustConfigs`

Lists TrustConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the TrustConfigs should be listed, specified in the format `projects/*/... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the TrustConfigs returned. |
| `orderBy` | `string` | query | No | Optional. A list of TrustConfig field names used to specify the order of the returned results. The default sorting or... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of TrustConfigs to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListTrustConfigsResponse`. Indicates that this is a continuation of a prior... |

**Response**: `ListTrustConfigsResponse`

```typescript
const res = await certificatemanager.trustConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await certificatemanager.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await certificatemanager.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await certificatemanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.operations.list`

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
const res = await certificatemanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateIssuanceConfigs.patch`

**PATCH** `v1/{+name}`

Updates a CertificateIssuanceConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique gl... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `CertificateIssuanceConfig`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateIssuanceConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateIssuanceConfigs.get`

**GET** `v1/{+name}`

Gets details of a single CertificateIssuanceConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate issuance config to describe. Must be in the format `projects/*/locations/*/certif... |

**Response**: `CertificateIssuanceConfig`

```typescript
const res = await certificatemanager.certificateIssuanceConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateIssuanceConfigs.create`

**POST** `v1/{+parent}/certificateIssuanceConfigs`

Creates a new CertificateIssuanceConfig in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the certificate issuance config. Must be in the format `projects/*/locations/*`. |
| `certificateIssuanceConfigId` | `string` | query | No | Required. A user-provided name of the certificate config. |

**Request body**: `CertificateIssuanceConfig`

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateIssuanceConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateIssuanceConfigs.list`

**GET** `v1/{+parent}/certificateIssuanceConfigs`

Lists CertificateIssuanceConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the certificate should be listed, specified in the format `projects/*/l... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the Certificates Configs returned. |
| `orderBy` | `string` | query | No | Optional. A list of Certificate Config field names used to specify the order of the returned results. The default sor... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of certificate configs to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListCertificateIssuanceConfigsResponse`. Indicates that this is a continuat... |

**Response**: `ListCertificateIssuanceConfigsResponse`

```typescript
const res = await certificatemanager.certificateIssuanceConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.certificateIssuanceConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single CertificateIssuanceConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the certificate issuance config to delete. Must be in the format `projects/*/locations/*/certific... |

**Response**: `Operation`

```typescript
const res = await certificatemanager.certificateIssuanceConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.dnsAuthorizations.delete`

**DELETE** `v1/{+name}`

Deletes a single DnsAuthorization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the dns authorization to delete. Must be in the format `projects/*/locations/*/dnsAuthorizations/*`. |

**Response**: `Operation`

```typescript
const res = await certificatemanager.dnsAuthorizations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.dnsAuthorizations.get`

**GET** `v1/{+name}`

Gets details of a single DnsAuthorization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the dns authorization to describe. Must be in the format `projects/*/locations/*/dnsAuthorization... |

**Response**: `DnsAuthorization`

```typescript
const res = await certificatemanager.dnsAuthorizations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.dnsAuthorizations.list`

**GET** `v1/{+parent}/dnsAuthorizations`

Lists DnsAuthorizations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the dns authorizations should be listed, specified in the format `proje... |
| `filter` | `string` | query | No | Optional. Filter expression to restrict the Dns Authorizations returned. |
| `orderBy` | `string` | query | No | Optional. A list of Dns Authorization field names used to specify the order of the returned results. The default sort... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of dns authorizations to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListDnsAuthorizationsResponse`. Indicates that this is a continuation of a ... |

**Response**: `ListDnsAuthorizationsResponse`

```typescript
const res = await certificatemanager.dnsAuthorizations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.dnsAuthorizations.patch`

**PATCH** `v1/{+name}`

Updates a DnsAuthorization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pa... |
| `updateMask` | `string` | query | No | Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/... |

**Request body**: `DnsAuthorization`

**Response**: `Operation`

```typescript
const res = await certificatemanager.dnsAuthorizations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `certificatemanager.projects.locations.dnsAuthorizations.create`

**POST** `v1/{+parent}/dnsAuthorizations`

Creates a new DnsAuthorization in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dns authorization. Must be in the format `projects/*/locations/*`. |
| `dnsAuthorizationId` | `string` | query | No | Required. A user-provided name of the dns authorization. |

**Request body**: `DnsAuthorization`

**Response**: `Operation`

```typescript
const res = await certificatemanager.dnsAuthorizations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AllowlistedCertificate`

Defines an allowlisted certificate.

| Property | Type | Description |
|----------|------|-------------|
| `pemCertificate` | `string` | Required. PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be... |

### `AuthorizationAttemptInfo`

State of the latest attempt to authorize a domain for certificate issuance.

| Property | Type | Description |
|----------|------|-------------|
| `attemptTime` | `string` | Output only. The timestamp, when the authorization attempt was made. |
| `details` | `string` | Output only. Human readable explanation for reaching the state. Provided to help address the conf... |
| `domain` | `string` | Output only. Domain name of the authorization attempt. |
| `failureReason` | `string` | Output only. Reason for failure of the authorization attempt for the domain. |
| `state` | `string` | Output only. State of the domain for managed certificate issuance. |
| `troubleshooting` | `Troubleshooting` | Output only. Troubleshooting information for the authorization attempt. This field is only popula... |

### `CNAME`

CNAME troubleshooting information.

| Property | Type | Description |
|----------|------|-------------|
| `expectedData` | `string` | Output only. The expected value of the CNAME record for the domain, equals to `dns_resource_recor... |
| `name` | `string` | Output only. The name of the CNAME record for the domain, equals to `dns_resource_record.name` in... |
| `resolvedData` | `array<string>` | Output only. The resolved CNAME chain. Empty list if the CNAME record for `CNAME.name` is not fou... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Certificate`

Defines TLS certificate.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of a Certificate. |
| `description` | `string` | Optional. One or more paragraphs of text description of a certificate. |
| `expireTime` | `string` | Output only. The expiry timestamp of a Certificate. |
| `labels` | `object` | Optional. Set of labels associated with a Certificate. |
| `managed` | `ManagedCertificate` | If set, contains configuration and state of a managed certificate. |
| `managedIdentity` | `ManagedIdentityCertificate` | If set, contains configuration and state of a managed identity certificate. |
| `name` | `string` | Identifier. A user-defined name of the certificate. Certificate names must be unique globally and... |
| `pemCertificate` | `string` | Output only. The PEM-encoded certificate chain. |
| `sanDnsnames` | `array<string>` | Output only. The list of Subject Alternative Names of dnsName type defined in the certificate (se... |
| `scope` | `string` | Optional. Immutable. The scope of the certificate. |
| `selfManaged` | `SelfManagedCertificate` | If set, defines data of a self-managed certificate. |
| `updateTime` | `string` | Output only. The last update timestamp of a Certificate. |
| `usedBy` | `array<UsedBy>` | Output only. The list of resources that use this Certificate. |

### `CertificateAuthorityConfig`

The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorityServiceConfig` | `CertificateAuthorityServiceConfig` | Defines a CertificateAuthorityServiceConfig. |

### `CertificateAuthorityServiceConfig`

Contains information required to contact CA service.

| Property | Type | Description |
|----------|------|-------------|
| `caPool` | `string` | Required. A CA pool resource used to issue a certificate. The CA pool string has a relative resou... |

### `CertificateIssuanceConfig`

CertificateIssuanceConfig specifies how to issue and manage a certificate.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorityConfig` | `CertificateAuthorityConfig` | Required. The CA that issues the workload certificate. It includes the CA address, type, authenti... |
| `createTime` | `string` | Output only. The creation timestamp of a CertificateIssuanceConfig. |
| `description` | `string` | Optional. One or more paragraphs of text description of a CertificateIssuanceConfig. |
| `keyAlgorithm` | `string` | Required. The key algorithm to use when generating the private key. |
| `labels` | `object` | Optional. Set of labels associated with a CertificateIssuanceConfig. |
| `lifetime` | `string` | Required. Workload certificate lifetime requested. |
| `name` | `string` | Identifier. A user-defined name of the certificate issuance config. CertificateIssuanceConfig nam... |
| `rotationWindowPercentage` | `integer` | Required. Specifies the percentage of elapsed time of the certificate lifetime to wait before ren... |
| `updateTime` | `string` | Output only. The last update timestamp of a CertificateIssuanceConfig. |

### `CertificateMap`

Defines a collection of certificate configurations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of a Certificate Map. |
| `description` | `string` | Optional. One or more paragraphs of text description of a certificate map. |
| `gclbTargets` | `array<GclbTarget>` | Output only. A list of GCLB targets that use this Certificate Map. A Target Proxy is only present... |
| `labels` | `object` | Optional. Set of labels associated with a Certificate Map. |
| `name` | `string` | Identifier. A user-defined name of the Certificate Map. Certificate Map names must be unique glob... |
| `updateTime` | `string` | Output only. The update timestamp of a Certificate Map. |

### `CertificateMapEntry`

Defines a certificate map entry.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<string>` | Optional. A set of Certificates defines for the given `hostname`. There can be defined up to four... |
| `createTime` | `string` | Output only. The creation timestamp of a Certificate Map Entry. |
| `description` | `string` | Optional. One or more paragraphs of text description of a certificate map entry. |
| `hostname` | `string` | A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a s... |
| `labels` | `object` | Optional. Set of labels associated with a Certificate Map Entry. |
| `matcher` | `string` | A predefined matcher for particular cases, other than SNI selection. |
| `name` | `string` | Identifier. A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be... |
| `state` | `string` | Output only. A serving state of this Certificate Map Entry. |
| `updateTime` | `string` | Output only. The update timestamp of a Certificate Map Entry. |

### `DnsAuthorization`

A DnsAuthorization resource describes a way to perform domain authorization for certificate issuance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of a DnsAuthorization. |
| `description` | `string` | Optional. One or more paragraphs of text description of a DnsAuthorization. |
| `dnsResourceRecord` | `DnsResourceRecord` | Output only. DNS Resource Record that needs to be added to DNS configuration. |
| `domain` | `string` | Required. Immutable. A domain that is being authorized. A DnsAuthorization resource covers a sing... |
| `labels` | `object` | Optional. Set of labels associated with a DnsAuthorization. |
| `name` | `string` | Identifier. A user-defined name of the dns authorization. DnsAuthorization names must be unique g... |
| `type` | `string` | Optional. Immutable. Type of DnsAuthorization. If unset during resource creation the following de... |
| `updateTime` | `string` | Output only. The last update timestamp of a DnsAuthorization. |

### `DnsResourceRecord`

The structure describing the DNS Resource Record that needs to be added to DNS configuration for the authorization to be usable by certificate.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Output only. Data of the DNS Resource Record. |
| `name` | `string` | Output only. Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com` |
| `type` | `string` | Output only. Type of the DNS Resource Record. Currently always set to "CNAME". |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GclbTarget`

Describes a Target Proxy that uses this Certificate Map.

| Property | Type | Description |
|----------|------|-------------|
| `ipConfigs` | `array<IpConfig>` | Output only. IP configurations for this Target Proxy where the Certificate Map is serving. |
| `targetHttpsProxy` | `string` | Output only. This field returns the resource name in the following format: `//compute.googleapis.... |
| `targetSslProxy` | `string` | Output only. This field returns the resource name in the following format: `//compute.googleapis.... |

### `IPs`

IPs troubleshooting information.

| Property | Type | Description |
|----------|------|-------------|
| `resolved` | `array<string>` | Output only. The list of IP addresses resolved from the domain's A/AAAA records. Can contain both... |
| `serving` | `array<string>` | Output only. The list of IP addresses, where the certificate is attached and port 443 is open. |
| `servingOnAltPorts` | `array<string>` | Output only. The list of IP addresses, where the certificate is attached, but port 443 is not open. |

### `IntermediateCA`

Defines an intermediate CA.

| Property | Type | Description |
|----------|------|-------------|
| `pemCertificate` | `string` | PEM intermediate certificate used for building up paths for validation. Each certificate provided... |

### `IpConfig`

Defines IP configuration where this Certificate Map is serving.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | Output only. An external IP address. |
| `ports` | `array<integer>` | Output only. Ports. |

### `ListCertificateIssuanceConfigsResponse`

Response for the `ListCertificateIssuanceConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `certificateIssuanceConfigs` | `array<CertificateIssuanceConfig>` | A list of certificate configs for the parent resource. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListCertificateMapEntriesResponse`

Response for the `ListCertificateMapEntries` method.

| Property | Type | Description |
|----------|------|-------------|
| `certificateMapEntries` | `array<CertificateMapEntry>` | A list of certificate map entries for the parent resource. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListCertificateMapsResponse`

Response for the `ListCertificateMaps` method.

| Property | Type | Description |
|----------|------|-------------|
| `certificateMaps` | `array<CertificateMap>` | A list of certificate maps for the parent resource. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListCertificatesResponse`

Response for the `ListCertificates` method.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<Certificate>` | A list of certificates for the parent resource. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `ListDnsAuthorizationsResponse`

Response for the `ListDnsAuthorizations` method.

| Property | Type | Description |
|----------|------|-------------|
| `dnsAuthorizations` | `array<DnsAuthorization>` | A list of dns authorizations for the parent resource. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

### `ListTrustConfigsResponse`

Response for the `ListTrustConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `trustConfigs` | `array<TrustConfig>` | A list of TrustConfigs for the parent resource. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ManagedCertificate`

Configuration and state of a Managed Certificate. Certificate Manager provisions and renews Managed Certificates automatically, for as long as it's authorized to do so.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationAttemptInfo` | `array<AuthorizationAttemptInfo>` | Output only. Detailed state of the latest authorization attempt for each domain specified for man... |
| `dnsAuthorizations` | `array<string>` | Optional. Immutable. Authorizations that will be used for performing domain authorization. |
| `domains` | `array<string>` | Optional. Immutable. The domains for which a managed SSL certificate will be generated. Wildcard ... |
| `issuanceConfig` | `string` | Optional. Immutable. The resource name for a CertificateIssuanceConfig used to configure private ... |
| `provisioningIssue` | `ProvisioningIssue` | Output only. Information about issues with provisioning a Managed Certificate. |
| `state` | `string` | Output only. State of the managed certificate resource. |

### `ManagedIdentityCertificate`

Configuration and state of a Managed Identity Certificate. Certificate Manager provisions and renews Managed Identity Certificates automatically, for as long as it's authorized to do so.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `string` | Required. Immutable. SPIFFE ID of the Managed Identity used for this certificate. |
| `provisioningIssue` | `ProvisioningIssue` | Output only. Information about issues with provisioning a managed certificate. |
| `state` | `string` | Output only. State of the managed certificate resource. |

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
| `requestedCancellation` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `statusMessage` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `ProvisioningIssue`

Information about issues with provisioning a Managed Certificate.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Output only. Human readable explanation about the issue. Provided to help address the configurati... |
| `reason` | `string` | Output only. Reason for provisioning failures. |

### `SelfManagedCertificate`

Certificate data for a SelfManaged Certificate. SelfManaged Certificates are uploaded by the user. Updating such certificates before they expire remains the user's responsibility.

| Property | Type | Description |
|----------|------|-------------|
| `pemCertificate` | `string` | Optional. Input only. The PEM-encoded certificate chain. Leaf certificate comes first, followed b... |
| `pemPrivateKey` | `string` | Optional. Input only. The PEM-encoded private key of the leaf certificate. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Troubleshooting`

Troubleshooting information for the authorization attempt.

| Property | Type | Description |
|----------|------|-------------|
| `cname` | `CNAME` | Output only. CNAME troubleshooting information. |
| `ips` | `IPs` | Output only. IPs troubleshooting information. |
| `issues` | `array<string>` | Output only. The list of issues discovered during the authorization attempt. |

### `TrustAnchor`

Defines a trust anchor.

| Property | Type | Description |
|----------|------|-------------|
| `pemCertificate` | `string` | PEM root certificate of the PKI used for validation. Each certificate provided in PEM format may ... |

### `TrustConfig`

Defines a trust config.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistedCertificates` | `array<AllowlistedCertificate>` | Optional. A certificate matching an allowlisted certificate is always considered valid as long as... |
| `createTime` | `string` | Output only. The creation timestamp of a TrustConfig. |
| `description` | `string` | Optional. One or more paragraphs of text description of a TrustConfig. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Optional. Set of labels associated with a TrustConfig. |
| `name` | `string` | Identifier. A user-defined name of the trust config. TrustConfig names must be unique globally an... |
| `spiffeTrustStores` | `object` | Optional. Defines a mapping from a trust domain to a TrustStore. This is used for SPIFFE certific... |
| `trustStores` | `array<TrustStore>` | Optional. Set of trust stores to perform validation against. This field is supported when TrustCo... |
| `updateTime` | `string` | Output only. The last update timestamp of a TrustConfig. |

### `TrustStore`

Defines a trust store.

| Property | Type | Description |
|----------|------|-------------|
| `intermediateCas` | `array<IntermediateCA>` | Optional. Set of intermediate CA certificates used for the path building phase of chain validatio... |
| `trustAnchors` | `array<TrustAnchor>` | Optional. List of Trust Anchors to be used while performing validation against a given TrustStore. |

### `UsedBy`

Defines a resource that uses the certificate.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Full name of the resource https://google.aip.dev/122#full-resource-names, e.g. `//ce... |

